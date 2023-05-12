# Database Migration

### Pre-requisites:

- All the SQL scripts to be migrated should reside in the "migration/" directory and follow the naming convention

## Steps:

(in migration directory)
- Build Docker Image
```
docker build -t <docker_repo>/<docker_iamge> <path_to_dockerfile>
```
> This builds a dockerfile containing all the migrations to be applied (.sql files)

- Push Docker Image
```
docker push <docker_repo>/<docker_iamge>
```
(in root directory)

- Add docker secrets to kube context
```
kubectl create secret docker-registry regcred --docker-server=docker.io --docker-username=<Username> --docker-password=<Password> --docker-email=<Email>
```

- Apply Initial Migration (Flyway Baseline -> FIRST TIME ONLY)
``` 
kubectl apply -f db_baseline.yaml
```
This applies the baseline for the first time flyway sets up on kube

- Delete Baseline Pod
```
kubectl delete pod db-baseline
```

- Deploy flyway migration
```
kubectl apply -f flyway.yaml
```
This starts the migration, using the dockerfile pushed earlier as a template. To further modify, dockerfile should be updated with .sql files and deployment should be rerun

- Testing:
```
kubectl logs deployment/webapp-deploy -c schema-migration
```
