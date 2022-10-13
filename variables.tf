variable "backup_retention_period_storage_used_evaluation_periods" {
  description = "The number of periods threshold must be breached to alarm."
  type        = number
  default     = 5
}

variable "backup_retention_period_storage_used_threshold" {
  description = "The total amount of backup storage used to support the point-in-time restore feature within the Aurora DB cluster's backup retention window. Exceeding this value will trigger an alert."
  type        = number
  default     = 1000000000000 # 1TB In bytes.
}

variable "create_backup_retention_period_storage_used_alarm" {
  description = "Toggle to create backup_retention_period_storage_used serverless alarm."
  type        = bool
  default     = true
}

variable "create_serverless_database_capacity_alarm" {
  description = "Toggle to create serverless_database_capacity serverless alarm."
  type        = bool
  default     = true
}

variable "create_total_backup_storage_billed_alarm" {
  description = "Toggle to create total_backup_storage_billed serverless alarm."
  type        = bool
  default     = true
}

variable "create_volume_bytes_used_alarm" {
  description = "Toggle to create volume_bytes_used serverless alarm."
  type        = bool
  default     = true
}

variable "create_volume_read_iops_alarm" {
  description = "Toggle to create volume_read_iops serverless alarm."
  type        = bool
  default     = true
}

variable "create_volume_write_iops_alarm" {
  description = "Toggle to create volume_write_iops serverless alarm."
  type        = bool
  default     = true
}

variable "db_instance_id" {
  description = "Name of the serverless instance to monitor."
  type        = string
}

variable "serverless_database_capacity_evaluation_periods" {
  description = "The number of periods threshold must be breached to alarm."
  type        = number
  default     = 5
}

variable "serverless_database_capacity_threshold" {
  description = "The current capacity of an Aurora Serverless DB v1 cluster. Exceeding this value will trigger an alert."
  type        = number
  default     = 100
}

variable "sns_topic_name" {
  description = "The name of the SNS topic to publish alerts to."
  type        = string
}

variable "tags" {
  description = "Required tags to be added to all resources."
  type        = map(string)
}

variable "total_backup_storage_billed_evaluation_periods" {
  description = "The number of periods threshold must be breached to alarm."
  type        = number
  default     = 5
}

variable "total_backup_storage_billed_threshold" {
  description = "The total amount of backup storage consumed by all Aurora snapshots for an Aurora DB cluster outside its backup retention window. Exceeding this value will trigger an alert."
  type        = number
  default     = 1000000000000 # 1TB In bytes.
}

variable "volume_bytes_used_evaluation_periods" {
  description = "The number of periods threshold must be breached to alarm."
  type        = number
  default     = 5
}

variable "volume_bytes_used_threshold" {
  description = "The amount of storage used by this DB instance. Exceeding this value will trigger an alert."
  type        = number
  default     = 1000000000000 # 1TB In bytes.
}

variable "volume_read_iops_evaluation_periods" {
  description = "The number of periods threshold must be breached to alarm."
  type        = number
  default     = 5
}

variable "volume_read_iops_threshold" {
  description = "The number of billed read I/O operations from a cluster volume within a 5-minute interval that will trigger an alert."
  type        = number
  default     = 10000
}

variable "volume_write_iops_evaluation_periods" {
  description = "The number of periods threshold must be breached to alarm."
  type        = number
  default     = 5
}

variable "volume_write_iops_threshold" {
  description = "The number of billed write I/O operations from a cluster volume within a 5-minute interval. Exceeding this value will trigger an alert."
  type        = number
  default     = 10000
}
