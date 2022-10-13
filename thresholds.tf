locals {
  thresholds = {
    BackupRetentionPeriodStorageUsedEvaluationPeriods = min(max(var.backup_retention_period_storage_used_evaluation_periods, 1), 100)
    BackupRetentionPeriodStorageUsedThreshold         = min(max(var.backup_retention_period_storage_used_threshold, 0), 1000000000000) # 1TB In bytes.
    ServerlessDatabaseCapacityEvaluationPeriods       = min(max(var.serverless_database_capacity_evaluation_periods, 1), 10)
    ServerlessDatabaseCapacityThreshold               = min(max(var.serverless_database_capacity_threshold, 0), 100)
    TotalBackupStorageBilledEvaluationPeriods         = min(max(var.total_backup_storage_billed_evaluation_periods, 1), 100)
    TotalBackupStorageBilledThreshold                 = min(max(var.total_backup_storage_billed_threshold, 0), 1000000000000) # 1TB In bytes.
    VolumeBytesUsedEvaluationPeriods                  = min(max(var.volume_bytes_used_evaluation_periods, 1), 100)
    VolumeBytesUsedThreshold                          = min(max(var.volume_bytes_used_threshold, 0), 1000000000000) # 1TB In bytes.
    VolumeReadIOPsEvaluationPeriods                   = min(max(var.volume_read_iops_evaluation_periods, 1), 10000)
    VolumeReadIOPsThreshold                           = max(var.volume_read_iops_threshold, 0)
    VolumeWriteIOPsEvaluationPeriods                  = min(max(var.volume_write_iops_evaluation_periods, 1), 10000)
    VolumeWriteIOPsThreshold                          = max(var.volume_write_iops_threshold, 0)
  }
}