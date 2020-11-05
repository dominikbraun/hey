![hey](hey.png)

---

### Run in Docker

```shell script
$ docker container run -p 8000:8000 dominikbraun/hey
```

### Run in Kubernetes

```shell script
$ kubectl apply -f https://dominikbraun.io/hey.yml
$ kubectl logs pod/hey
```

### Access it

hey will be available at [localhost:8000](http://localhost:8000).
