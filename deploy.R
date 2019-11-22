library(googleComputeEngineR)
project = "scpworkshop"
gce_global_project(project)

(tag = "gcr.io/scpworkshop/testgooglecloud:1570224")

gce_global_zone("us-central1-a")
gce_vm(template = "rstudio",
       name = "machine1",
       disk_size_gb = 30,
       predefined_type = "n1-standard-1",
       dynamic_image = tag,
       user = "rstudio",
       password = "pushu")