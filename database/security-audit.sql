-- ==========================================================
-- Project: Secure Banking Infrastructure Audit
-- Purpose: Monitor suspicious activities and verify data integrity
-- Target: Oracle 19c on RHEL 9
-- ==========================================================

-- 1. Check for failed login attempts (Brute Force Monitoring)
SELECT username, userhost, timestamp, action_name 
FROM dba_audit_trail 
WHERE returncode != 0 
ORDER BY timestamp DESC;

-- 2. Monitor access to sensitive Banking Tables
-- This verifies who accessed the 'Asia Corporate Account'
SELECT os_username, username, terminal, timestamp 
FROM dba_audit_trail 
WHERE obj_name = 'BANK_ACCOUNTS' 
AND action_name = 'SELECT';

-- 3. Verify Database Integrity after Recovery
-- Ensures that the control files and data files are synchronized
SELECT name, open_mode, database_role, protection_mode 
FROM v$database;

-- 4. Audit Network Connections from the Internal User
-- Matches traffic allowed by pfSense Port 1521
SELECT machine, program, status, last_call_et 
FROM v$session 
WHERE type = 'USER' 
AND machine LIKE '%192.168.1.20%';
