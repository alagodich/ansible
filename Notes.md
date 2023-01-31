### GKE
To make kubeconfig, run `KUBECONFIG=/Volumes/case-sensitive/development/kubernetes/cluster-config/signup-gke.yaml gcloud container clusters get-credentials autopilot-cluster-1 --region us-central1 --project optimal-design-375118`

### AWS profile example:
```
[profile AdministratorAccess-kms]
sso_start_url = https://northernlight.awsapps.com/start
sso_region = us-east-1
sso_account_id = 9999999999
sso_role_name = AdministratorAccess
region = us-east-1
```