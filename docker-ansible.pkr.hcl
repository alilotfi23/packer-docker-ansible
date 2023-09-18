source "docker" "ansible" {
  commit = true
  image  = "ubuntu:16.04"
}
build {
  sources = ["source.docker.ansible"]

  provisioner "ansible-local" {
    playbook_dir  = "."
    playbook_file = "./pkg.yml"
  }

  post-processors {
    post-processor "docker-tag" {
      repository = "https://hub.docker.com/ubuntu:16.04"
      tag        = ["0.1", "uubuntu-ansible", ]
    }
    post-processor "docker-push" {
    }
  }
}
