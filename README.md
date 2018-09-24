# guestbook

1) run `make`
2) you should see something similar to:

```shell
NAME                            READY     STATUS    RESTARTS   AGE
redis-master-6b464554c8-942nc   1/1       Running   0          22m
redis-slave-b58dc4644-7kx75     1/1       Running   0          1m
redis-slave-b58dc4644-wbvvt     1/1       Running   0          1m
kubectl get service
NAME           CLUSTER-IP      EXTERNAL-IP   PORT(S)    AGE
kubernetes     100.64.0.1      <none>        443/TCP    58m
redis-master   100.65.137.15   <none>        6379/TCP   9m
redis-slave    100.70.140.87   <none>        6379/TCP   16s	
```