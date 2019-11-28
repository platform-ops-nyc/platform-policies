package main

deny_if_memory_over_allocated[msg] {
    vmType := [type |
        input.resources[i].identifier == "diego_cell"
        type := input.resources[i]
    ]
    true == true

    msg = sprintf("%v", [vmType])
}