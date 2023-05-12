### Database Migration

# Pre-requisites:

- All the SQL scripts should reside in this "migration/" directory

## Steps:

(in migration directory)
- Build Docker Image
```
docker build -t <docker_repo>/<docker_iamge> <path_to_dockerfile>
```

- Push Docker Image
```
docker push <docker_repo>/<docker_iamge>
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
```
