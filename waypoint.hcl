project = "hey"

app "hey" {
  labels = {
    "service" = "hey",
  }

  build {
    use "docker-pull" {
        image = "dominikbraun/hey"
        tag = "latest"
    }
  }

  deploy {
    use "kubernetes" {
      probe_path = "/"
      
      service_port = 8000
    }
  }

  release {
    use "kubernetes" {
      load_balancer = true
      node_port = 8000
    }
  }
}
