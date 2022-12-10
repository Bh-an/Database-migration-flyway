### Database Migration

# Pre-requisites:

- All the SQL scripts should reside in this "migration/" directory

## Steps:

- Build Docker Image
```
docker build -t csye7125group01/db_migration .
```

- Push Docker Image
```
docker push csye7125group01/db_migration
```

- Apply Initial Migration (Flyway Baseline -> FIRST TIME ONLY)
``` 
kubectl apply -f db_baseline.yml
```

- Delete Baseline Pod
```
kubectl delete pod db-baseline
```

- Deploy all your other resources in upper directory
```
cd ..
```

- Testing:
```
kubectl logs deployment/webapp-deploy -c schema-migration
kubectl delete pod db-baseline
kubectl delete deployment webapp-deploy
kubectl delete configmap webapp-config
kubectl delete service webapp-service
```