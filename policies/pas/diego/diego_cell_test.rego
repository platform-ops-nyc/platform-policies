package main

test_find_key {
  deny_if_memory_over_allocated[_] with input as mock_api_call
}

mock_api_call = {
  "resources": [
    {
      "identifier": "mysql_monitor",
      "description": "Monitors the MySQL Cluster",
      "instances": "",
      "instances_best_fit": 1,
      "instance_type_id": "",
      "instance_type_best_fit": "micro"
    },
    {
      "identifier": "clock_global",
      "description": "Schedules asynchronous tasks for cloud controller",
      "instances": "",
      "instances_best_fit": 0,
      "instance_type_id": "",
      "instance_type_best_fit": "medium.disk"
    },
    {
      "identifier": "cloud_controller_worker",
      "description": "Worker for cloud controller asynchronous tasks",
      "instances": "",
      "instances_best_fit": 0,
      "instance_type_id": "",
      "instance_type_best_fit": "micro"
    },
    {
      "identifier": "diego_cell",
      "description": "Diego Cell",
      "instances": "",
      "instances_best_fit": 0,
      "instance_type_id": "medium",
      "instance_type_best_fit": "xlarge.disk"
    }
  ]
}