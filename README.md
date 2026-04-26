#  Linux Monitoring Scripts

##  Overview
This project contains basic Linux monitoring scripts to check application availability, Docker container status, and system resource usage.

##  Purpose
To simulate real-world monitoring in a DevOps/SRE environment using simple Bash scripts and cron automation.

---

## Technologies Used
- Linux (Amazon Linux 2023)
- Bash scripting
- Docker
- Cron (scheduled tasks)

---

## Features

### Application Health Check
- Checks if the web application is running on port 8080
- Returns HTTP status code

### Docker Container Monitoring
- Verifies if `nginx-container` is running
- Detects container failures

### System Resource Monitoring
- CPU usage
- Memory usage
- Disk usage

### Automation
- Scripts are scheduled using cron
- Logs are generated for monitoring history

---

## Cron Configuration

```bash
*/5 * * * * /home/ec2-user/monitoring/app_health_check.sh >> /home/ec2-user/monitoring/app.log
*/5 * * * * /home/ec2-user/monitoring/container_check.sh >> /home/ec2-user/monitoring/container.log
*/10 * * * * /home/ec2-user/monitoring/system_check.sh >> /home/ec2-user/monitoring/system.log
