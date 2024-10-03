#!/bin/bash
set -e

PEM_FILE_PATH="./.certs/aws-ec2-keypair.pem"
INSTANCE_PUBLIC_IP_ADDRESS="ec2-34-227-108-6.compute-1.amazonaws.com"
# "34.227.108.6"


ssh -i "${PEM_FILE_PATH}" ubuntu@${INSTANCE_PUBLIC_IP_ADDRESS}
