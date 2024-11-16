#!/bin/bash

# Define the target URL
URL="http://qubic2.hk.apool.io:8001/api/qubic/epoch_challenge"
TARGET="AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA="

# Send HTTP request and check the content
if curl -s "$URL" | grep -q "$TARGET"; then
    echo "Idle time"
else
    echo "Qubic mining time"
fi
