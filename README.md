
# AWS S3 Lifecycle Policies

### Transition to Standard-IA

`aws s3api put-bucket-lifecycle-configuration --bucket your-bucket-name --lifecycle-configuration file://lifecycle-standard-ia.json`

### Transition to One Zone-IA
`aws s3api put-bucket-lifecycle-configuration --bucket your-bucket-name --lifecycle-configuration file://lifecycle-onezone-ia.json`

### Transition for Specific Prefixes or Tags

`aws s3api put-bucket-lifecycle-configuration --bucket your-bucket-name --lifecycle-configuration file://lifecycle-back-to-standard.json`

### Transition to Glacier

`aws s3api put-bucket-lifecycle-configuration --bucket your-bucket-name --lifecycle-configuration file://lifecycle-to-glacier.json`

###  Transition to Glacier Deep Archive

`aws s3api put-bucket-lifecycle-configuration --bucket your-bucket-name --lifecycle-configuration file://lifecycle-to-glacier-deep-archive.json`

### Object Lock

`aws s3api put-object-lock-configuration --bucket your-bucket-name  --object-lock-configuration file://object-lock.json`

### Expire Objects

`aws s3api put-bucket-lifecycle-configuration --bucket your-bucket-name --lifecycle-configuration file://lifecycle-expire-objects.json`

### Expire Previous Versions

`aws s3api put-bucket-lifecycle-configuration --bucket your-bucket-name --lifecycle-configuration file://lifecycle-expire-previous-versions.json`

### Combined Lifecycle Policy

`aws s3api put-bucket-lifecycle-configuration --bucket your-bucket-name --lifecycle-configuration file://lifecycle-policy-combined.json`

### Noncurrent Version Expiration

`aws s3api put-bucket-lifecycle-configuration --bucket your-bucket-name --lifecycle-configuration file://lifecycle-noncurrent-version-expiration.json`

### Noncurrent Version Transition

`aws s3api put-bucket-lifecycle-configuration --bucket your-bucket-name --lifecycle-configuration file://lifecycle-noncurrent-version-transition.json`

### Delete Marker Cleanup

`aws s3api put-bucket-lifecycle-configuration --bucket your-bucket-name --lifecycle-configuration file://lifecycle-delete-marker-cleanup.json`

### Transition to Intelligent-Tiering

`aws s3api put-bucket-lifecycle-configuration --bucket your-bucket-name --lifecycle-configuration file://lifecycle-transition-to-intelligent-tiering.json`

### Transition Noncurrent Versions to S3 Glacier Deep Archive

`aws s3api put-bucket-lifecycle-configuration --bucket your-bucket-name --lifecycle-configuration file://lifecycle-noncurrent-version-to-glacier-deep-archive.json`

### Transition on Object Creation Date

`aws s3api put-bucket-lifecycle-configuration --bucket your-bucket-name --lifecycle-configuration file://lifecycle-transition-on-object-creation-date.json`

### Remove Incomplete Multipart Uploads

`aws s3api put-bucket-lifecycle-configuration --bucket your-bucket-name --lifecycle-configuration file://lifecycle-remove-incomplete-multipart-uploads.json`

### Transition to Deep Archive Based on Object Size

`aws s3api put-bucket-lifecycle-configuration --bucket your-bucket-name --lifecycle-configuration file://lifecycle-transition-to-deep-archive-based-on-size.json`




