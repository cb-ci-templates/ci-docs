# CCR/Artifact Repository

* GCR is EOL May 2024
  * https://cloud.google.com/container-registry/docs/pushing-and-pulling
  * ```
    Container Registry is deprecated and scheduled for shutdown. After May 15, 2024, Artifact Registry will host images for the gcr.io domain in projects without previous Container Registry usage. After March 18, 2025, Container Registry will be shut down.
    To get started with managing containers on Google Cloud, use Artifact Registry. If you use Container Registry, learn how to transition to Artifact Registry to manage your containers on Google Cloud.
    For more information on the deprecation and shutdown, see the deprecations page and release notes.
    ```
* So we use Artifact Registry
  * https://cloud.google.com/artifact-registry/docs

## Auth 
* https://cloud.google.com/artifact-registry/docs/docker/authentication
* https://cloud.google.com/artifact-registry/docs/docker/authentication#json-key 
* https://cloud.google.com/artifact-registry/docs/access-control#console

### Create Service Account 


create account
* https://cloud.google.com/iam/docs/service-accounts-create#creating
```
gcloud iam service-accounts create sa-kaniko-push \
  --description="sa-kaniko-push" \
  --display-name="sa-kaniko-push"
```

create keypair
* https://cloud.google.com/iam/docs/keys-create-delete#gcloud
```
gcloud iam service-accounts keys create sa-kaniko-push-keypair.jsom \
    --iam-account=sa-kaniko-push@acaternberg.iam.gserviceaccount.com
```

base64 encode

```
base64 -i FILE-NAME -o NEW-FILE-NAME
```