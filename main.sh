#!/bin/bash
# Log all output to /var/log/user_data.log
exec > >(tee /var/log/user_data.log|logger -t user-data -s 2>/dev/console) 2>&1

