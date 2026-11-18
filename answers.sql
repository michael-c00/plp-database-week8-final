-- ============================================================================
-- PLP Academy: Database Systems
-- Week 8 Assignment: MySQL Database Backup and Restore
-- Student: Michael Myeko
-- ============================================================================

-- ============================================================================
-- Question 1: Creating a Complete Database Backup
-- ============================================================================
-- Task: Write the mysqldump command to create a complete backup of the sales database.
-- Requirements:
--   1. Use root as your MySQL username.
--   2. Ensure the command prompts for your database password.
--   3. Save the backup in a file named sales_backup.sql.
--   4. Explain what the command does and why regular database backups are important.

-- Terminal Command:
-- mysqldump -u root -p sales > sales_backup.sql

/*
Explanation:
- The `mysqldump` utility connects to the MySQL server, extracts the structure 
  and data of the target database (`sales`), and exports it as a script of SQL statements.
- `-u root` specifies the administrative username.
- `-p` prompts the user securely for the database password.
- `sales > sales_backup.sql` directs the exported SQL output into a backup file.
- Why Regular Backups Are Important: Regular backups safeguard against data loss 
  caused by hardware failure, accidental deletion, software bugs, or malicious attacks, 
  ensuring business continuity and disaster recovery.
*/


-- ============================================================================
-- Question 2: Backing Up All Databases
-- ============================================================================
-- Task: Write the mysqldump command to back up all databases on your MySQL server.
-- Requirements:
--   1. Use the appropriate option to export all databases (--all-databases).
--   2. Use root as your MySQL username.
--   3. Ensure the command prompts for your password.
--   4. Save the backup in a file named all_databases_backup.sql.
--   5. Explain why backing up all databases is important before migrating to another server.

-- Terminal Command:
-- mysqldump -u root -p --all-databases > all_databases_backup.sql

/*
Explanation:
- The `--all-databases` flag tells `mysqldump` to iterate through and export every 
  database hosted on the MySQL server (including system databases like `mysql`, 
  `information_schema`, etc., alongside user databases like `sales`).
- `-u root` and `-p` handle root authentication and password prompting.
- `> all_databases_backup.sql` saves the entire server dump into a single backup file.
- Why Backing Up All Databases is Important Before Migration: When migrating to a new 
  server, you need to preserve not only user application data (like the sales database) 
  but also global configurations, user accounts, privileges, stored routines, and 
  metadata stored in system tables. This guarantees a seamless transition and identical 
  server state on the new host.
*/
