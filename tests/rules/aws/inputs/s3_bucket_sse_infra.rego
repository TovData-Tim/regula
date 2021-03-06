# This package was automatically generated from:
#
#     tests/rules/gcp/inputs/s3_bucket_sse_infra.tf
#
# using `generate_test_inputs.sh` and should not be modified
# directly.
package tests.rules.s3_bucket_sse
mock_input = {
  "format_version": "0.1",
  "terraform_version": "0.12.18",
  "planned_values": {
    "root_module": {
      "resources": [
        {
          "address": "aws_kms_key.key",
          "mode": "managed",
          "type": "aws_kms_key",
          "name": "key",
          "provider_name": "aws",
          "schema_version": 0,
          "values": {
            "customer_master_key_spec": "SYMMETRIC_DEFAULT",
            "deletion_window_in_days": null,
            "enable_key_rotation": false,
            "is_enabled": true,
            "key_usage": "ENCRYPT_DECRYPT",
            "tags": null
          }
        },
        {
          "address": "aws_s3_bucket.aes_encrypted",
          "mode": "managed",
          "type": "aws_s3_bucket",
          "name": "aes_encrypted",
          "provider_name": "aws",
          "schema_version": 0,
          "values": {
            "acl": "private",
            "bucket_prefix": null,
            "cors_rule": [],
            "force_destroy": true,
            "grant": [],
            "lifecycle_rule": [],
            "logging": [],
            "object_lock_configuration": [],
            "policy": null,
            "replication_configuration": [],
            "server_side_encryption_configuration": [
              {
                "rule": [
                  {
                    "apply_server_side_encryption_by_default": [
                      {
                        "kms_master_key_id": null,
                        "sse_algorithm": "AES256"
                      }
                    ]
                  }
                ]
              }
            ],
            "tags": null,
            "website": []
          }
        },
        {
          "address": "aws_s3_bucket.kms_encrypted",
          "mode": "managed",
          "type": "aws_s3_bucket",
          "name": "kms_encrypted",
          "provider_name": "aws",
          "schema_version": 0,
          "values": {
            "acl": "private",
            "bucket_prefix": null,
            "cors_rule": [],
            "force_destroy": true,
            "grant": [],
            "lifecycle_rule": [],
            "logging": [],
            "object_lock_configuration": [],
            "policy": null,
            "replication_configuration": [],
            "server_side_encryption_configuration": [
              {
                "rule": [
                  {
                    "apply_server_side_encryption_by_default": [
                      {
                        "sse_algorithm": "aws:kms"
                      }
                    ]
                  }
                ]
              }
            ],
            "tags": null,
            "website": []
          }
        },
        {
          "address": "aws_s3_bucket.unencrypted",
          "mode": "managed",
          "type": "aws_s3_bucket",
          "name": "unencrypted",
          "provider_name": "aws",
          "schema_version": 0,
          "values": {
            "acl": "private",
            "bucket_prefix": null,
            "cors_rule": [],
            "force_destroy": true,
            "grant": [],
            "lifecycle_rule": [],
            "logging": [],
            "object_lock_configuration": [],
            "policy": null,
            "replication_configuration": [],
            "server_side_encryption_configuration": [],
            "tags": null,
            "website": []
          }
        }
      ]
    }
  },
  "resource_changes": [
    {
      "address": "aws_kms_key.key",
      "mode": "managed",
      "type": "aws_kms_key",
      "name": "key",
      "provider_name": "aws",
      "change": {
        "actions": [
          "create"
        ],
        "before": null,
        "after": {
          "customer_master_key_spec": "SYMMETRIC_DEFAULT",
          "deletion_window_in_days": null,
          "enable_key_rotation": false,
          "is_enabled": true,
          "key_usage": "ENCRYPT_DECRYPT",
          "tags": null
        },
        "after_unknown": {
          "arn": true,
          "description": true,
          "id": true,
          "key_id": true,
          "policy": true
        }
      }
    },
    {
      "address": "aws_s3_bucket.aes_encrypted",
      "mode": "managed",
      "type": "aws_s3_bucket",
      "name": "aes_encrypted",
      "provider_name": "aws",
      "change": {
        "actions": [
          "create"
        ],
        "before": null,
        "after": {
          "acl": "private",
          "bucket_prefix": null,
          "cors_rule": [],
          "force_destroy": true,
          "grant": [],
          "lifecycle_rule": [],
          "logging": [],
          "object_lock_configuration": [],
          "policy": null,
          "replication_configuration": [],
          "server_side_encryption_configuration": [
            {
              "rule": [
                {
                  "apply_server_side_encryption_by_default": [
                    {
                      "kms_master_key_id": null,
                      "sse_algorithm": "AES256"
                    }
                  ]
                }
              ]
            }
          ],
          "tags": null,
          "website": []
        },
        "after_unknown": {
          "acceleration_status": true,
          "arn": true,
          "bucket": true,
          "bucket_domain_name": true,
          "bucket_regional_domain_name": true,
          "cors_rule": [],
          "grant": [],
          "hosted_zone_id": true,
          "id": true,
          "lifecycle_rule": [],
          "logging": [],
          "object_lock_configuration": [],
          "region": true,
          "replication_configuration": [],
          "request_payer": true,
          "server_side_encryption_configuration": [
            {
              "rule": [
                {
                  "apply_server_side_encryption_by_default": [
                    {}
                  ]
                }
              ]
            }
          ],
          "versioning": true,
          "website": [],
          "website_domain": true,
          "website_endpoint": true
        }
      }
    },
    {
      "address": "aws_s3_bucket.kms_encrypted",
      "mode": "managed",
      "type": "aws_s3_bucket",
      "name": "kms_encrypted",
      "provider_name": "aws",
      "change": {
        "actions": [
          "create"
        ],
        "before": null,
        "after": {
          "acl": "private",
          "bucket_prefix": null,
          "cors_rule": [],
          "force_destroy": true,
          "grant": [],
          "lifecycle_rule": [],
          "logging": [],
          "object_lock_configuration": [],
          "policy": null,
          "replication_configuration": [],
          "server_side_encryption_configuration": [
            {
              "rule": [
                {
                  "apply_server_side_encryption_by_default": [
                    {
                      "sse_algorithm": "aws:kms"
                    }
                  ]
                }
              ]
            }
          ],
          "tags": null,
          "website": []
        },
        "after_unknown": {
          "acceleration_status": true,
          "arn": true,
          "bucket": true,
          "bucket_domain_name": true,
          "bucket_regional_domain_name": true,
          "cors_rule": [],
          "grant": [],
          "hosted_zone_id": true,
          "id": true,
          "lifecycle_rule": [],
          "logging": [],
          "object_lock_configuration": [],
          "region": true,
          "replication_configuration": [],
          "request_payer": true,
          "server_side_encryption_configuration": [
            {
              "rule": [
                {
                  "apply_server_side_encryption_by_default": [
                    {
                      "kms_master_key_id": true
                    }
                  ]
                }
              ]
            }
          ],
          "versioning": true,
          "website": [],
          "website_domain": true,
          "website_endpoint": true
        }
      }
    },
    {
      "address": "aws_s3_bucket.unencrypted",
      "mode": "managed",
      "type": "aws_s3_bucket",
      "name": "unencrypted",
      "provider_name": "aws",
      "change": {
        "actions": [
          "create"
        ],
        "before": null,
        "after": {
          "acl": "private",
          "bucket_prefix": null,
          "cors_rule": [],
          "force_destroy": true,
          "grant": [],
          "lifecycle_rule": [],
          "logging": [],
          "object_lock_configuration": [],
          "policy": null,
          "replication_configuration": [],
          "server_side_encryption_configuration": [],
          "tags": null,
          "website": []
        },
        "after_unknown": {
          "acceleration_status": true,
          "arn": true,
          "bucket": true,
          "bucket_domain_name": true,
          "bucket_regional_domain_name": true,
          "cors_rule": [],
          "grant": [],
          "hosted_zone_id": true,
          "id": true,
          "lifecycle_rule": [],
          "logging": [],
          "object_lock_configuration": [],
          "region": true,
          "replication_configuration": [],
          "request_payer": true,
          "server_side_encryption_configuration": [],
          "versioning": true,
          "website": [],
          "website_domain": true,
          "website_endpoint": true
        }
      }
    }
  ],
  "configuration": {
    "provider_config": {
      "aws": {
        "name": "aws",
        "expressions": {
          "region": {
            "constant_value": "us-east-1"
          }
        }
      }
    },
    "root_module": {
      "resources": [
        {
          "address": "aws_kms_key.key",
          "mode": "managed",
          "type": "aws_kms_key",
          "name": "key",
          "provider_config_key": "aws",
          "schema_version": 0
        },
        {
          "address": "aws_s3_bucket.aes_encrypted",
          "mode": "managed",
          "type": "aws_s3_bucket",
          "name": "aes_encrypted",
          "provider_config_key": "aws",
          "expressions": {
            "force_destroy": {
              "constant_value": true
            },
            "server_side_encryption_configuration": [
              {
                "rule": [
                  {
                    "apply_server_side_encryption_by_default": [
                      {
                        "sse_algorithm": {
                          "constant_value": "AES256"
                        }
                      }
                    ]
                  }
                ]
              }
            ]
          },
          "schema_version": 0
        },
        {
          "address": "aws_s3_bucket.kms_encrypted",
          "mode": "managed",
          "type": "aws_s3_bucket",
          "name": "kms_encrypted",
          "provider_config_key": "aws",
          "expressions": {
            "force_destroy": {
              "constant_value": true
            },
            "server_side_encryption_configuration": [
              {
                "rule": [
                  {
                    "apply_server_side_encryption_by_default": [
                      {
                        "kms_master_key_id": {
                          "references": [
                            "aws_kms_key.key"
                          ]
                        },
                        "sse_algorithm": {
                          "constant_value": "aws:kms"
                        }
                      }
                    ]
                  }
                ]
              }
            ]
          },
          "schema_version": 0
        },
        {
          "address": "aws_s3_bucket.unencrypted",
          "mode": "managed",
          "type": "aws_s3_bucket",
          "name": "unencrypted",
          "provider_config_key": "aws",
          "expressions": {
            "force_destroy": {
              "constant_value": true
            }
          },
          "schema_version": 0
        }
      ]
    }
  }
}
