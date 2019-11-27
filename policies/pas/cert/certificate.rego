package main

parse_certificate(cert) = parsedCertificate {
    strippedCert := replace(replace(cert, "-----END CERTIFICATE-----", ""), "-----BEGIN CERTIFICATE-----", "")
    parsedCertificate := crypto.x509.parse_certificates(strippedCert)
}

get_certificate_expiry(cert) = expiryDate {
    parsedCert := parse_certificate(cert)
    expiryDate := parsedCert[_]["NotAfter"]
}

determine_if_expired(date) = isExpired {
    thirty_days_in_nanoseconds := 2592000000000000

    currentTime_nano := time.now_ns()
    certExpiryDate_nano := time.parse_rfc3339_ns(date)

    timeDelta := certExpiryDate_nano - currentTime_nano

    isExpired := timeDelta <= thirty_days_in_nanoseconds   
}

deny_thirty_days[msg]{
    # must manually define path to cert. JSON input
    # key values are accessed using bracket notation rather than dot "." notation
    cert := input #you will need to provide a path to a cert
    expiry := get_certificate_expiry(cert)
    isExpired := determine_if_expired(expiry)

    isExpired == true

	msg = sprintf("Your certificate expires on this date %v please update cert", [substring(expiry,0,10)])
}
