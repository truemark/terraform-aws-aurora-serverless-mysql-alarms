# terraform-aws-aurora-serverless-mysql-alarms

This repo defines alarms specific to MySQL on RDS Aurora Serverless v1.

Each alarm listed below is created by default. Creation can be disabled by setting the associated alarm create parameter to false. For example, to not create the alarm serverless_database_capacity, set the parameter create_serverless_database_capacity_alarm to false.

Threshold alarms are included. Anomaly alarm creation can be disabled by setting the variable create_anomaly_alarms to false.

- backup_retention_period_storage_used
- serverless_database_capacity
- total_backup_storage_billed
- volume_bytes_used
- volume_read_iops
- volume_write_iops

The [documentation](https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/Aurora.AuroraMySQL.Monitoring.Metrics.html) describes each cluster metric in detail. 