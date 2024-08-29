# Adjust if the version required is higher/different
terraform {
  required_version = ">= 1.0"
}

provider "aws" {
  region = "us-west-2"
}

resource "aws_s3_bucket" "mybucket" {
  bucket = "mytestingbuckt19283746-20240829-2"

  # object_lock_enabled = true

  # Enable bucket versioning, required for Object Lock
  # versioning {
  #   enabled = true
  # }
}

resource "aws_s3_bucket_lifecycle_configuration" "bucket-config" {
  bucket = aws_s3_bucket.mybucket.id


  rule {
    id     = "transition-to-standard-ia"
    status = "Enabled"

    transition {
      days          = 30
      storage_class = "STANDARD_IA"
    }
  }

  # rule {
  #   id     = "transition-to-onezone-ia"
  #   status = "Enabled"

  #   transition {
  #     days          = 60
  #     storage_class = "ONEZONE_IA"
  #   }
  # }

  # rule {
  #   id     = "transition-for-prefix-or-tag-to-glacier"
  #   status = "Enabled"

  #   filter {
  #     prefix = "documents/"

  #     tags = {
  #       key   = "priority"
  #       value = "high"
  #     }
  #   }

  #   transition {
  #     days          = 90
  #     storage_class = "GLACIER"
  #   }
  # }

  # rule {
  #   id     = "transition-to-glacier"
  #   status = "Enabled"

  #   transition {
  #     days          = 180
  #     storage_class = "GLACIER"
  #   }
  # }

  # rule {
  #   id     = "transition-to-deep-archive"
  #   status = "Enabled"

  #   transition {
  #     days          = 365
  #     storage_class = "DEEP_ARCHIVE"
  #   }
  # }

  # rule {
  #   id     = "expire-objects"
  #   status = "Enabled"

  #   expiration {
  #     days = 730
  #   }
  # }

  # rule {
  #   id     = "expire-previous-versions"
  #   status = "Enabled"

  #   noncurrent_version_expiration {
  #     noncurrent_days = 90
  #   }
  # }

  # rule {
  #   id     = "noncurrent-version-transition"
  #   status = "Enabled"

  #   noncurrent_version_transition {
  #     noncurrent_days = 30
  #     storage_class   = "GLACIER"
  #   }
  # }

  # rule {
  #   id     = "delete-marker-cleanup"
  #   status = "Enabled"

  #   expiration {
  #     expired_object_delete_marker = true
  #   }
  # }

  # rule {
  #   id     = "transition-to-intelligent-tiering"
  #   status = "Enabled"

  #   transition {
  #     days          = 0
  #     storage_class = "INTELLIGENT_TIERING"
  #   }
  # }

  # rule {
  #   id     = "transition-noncurrent-versions-to-deep-archive"
  #   status = "Enabled"

  #   noncurrent_version_transition {
  #     noncurrent_days = 90
  #     storage_class   = "DEEP_ARCHIVE"
  #   }
  # }

  # rule {
  #   id     = "transition-on-object-creation-date"
  #   status = "Enabled"

  #   filter {
  #     and {
  #       prefix = "logs/"
  #       tags = {
  #         key   = "archive"
  #         value = "true"
  #       }
  #     }
  #   }

  #   transition {
  #     date          = "2025-01-01T00:00:00Z"
  #     storage_class = "GLACIER"
  #   }
  # }

  # rule {
  #   id     = "remove-incomplete-multipart-uploads"
  #   status = "Enabled"

  #   abort_incomplete_multipart_upload {
  #     days_after_initiation = 7
  #   }
  # }

  # rule {
  #   id     = "transition-to-deep-archive-based-on-size"
  #   status = "Enabled"

  #   filter {
  #     prefix = "large-files/"
  #   }

  #   transition {
  #     days          = 90
  #     storage_class = "DEEP_ARCHIVE"
  #   }
  # }
}


# resource "aws_s3_bucket_object_lock_configuration" "mybucket_lock" {
#   bucket = aws_s3_bucket.mybucket.id

#   rule {
#     default_retention {
#       mode = "GOVERNANCE"  # Options are "GOVERNANCE" or "COMPLIANCE"
#       days = 365           # Number of days for the retention period
#     }
#   }
# }


# Not needed for a new bucket
#
# resource "aws_s3_bucket_acl" "mybucket_test_acl" {
#   bucket = aws_s3_bucket.mybucket.id
#   acl    = "private"
# }

