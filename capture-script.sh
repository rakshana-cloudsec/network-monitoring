#!/bin/bash
# ------------------------------------------------------------
# Automated tcpdump wrapper for network traffic capture
# Author: Rakshana Kannaya Muralidharan
# ------------------------------------------------------------

OUTPUT_DIR="./captures"
mkdir -p $OUTPUT_DIR

TIMESTAMP=$(date +"%Y%m%d_%H%M%S")
PCAP_FILE="$OUTPUT_DIR/capture_$TIMESTAMP.pcap"

echo "[INFO] Capturing traffic on interface eth0..."
echo "[INFO] Saving to $PCAP_FILE"

sudo tcpdump -i eth0 -w $PCAP_FILE

echo "[SUCCESS] Capture saved: $PCAP_FILE"
echo "[INFO] Open with Wireshark using:"
echo "wireshark $PCAP_FILE"
