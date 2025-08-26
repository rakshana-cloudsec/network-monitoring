# 🌐 Real-Time Network Traffic Monitoring

## 🔒 Overview
This project demonstrates **real-time network traffic monitoring** by combining:  
- **Wireshark** & **tcpdump** for packet capture  
- **SigNoz** & **OpenTelemetry** for telemetry dashboards  

The goal is to enhance **network visibility**, detect **suspicious anomalies**, and provide actionable insights for **incident response**.

## ⚙️ Features
- 📡 Deep packet inspection with Wireshark and tcpdump  
- 📊 SigNoz dashboards deployed via Docker Compose  
- 🔎 Telemetry streaming using OpenTelemetry Collector  
- 🚨 Detect anomalies: brute-force attempts, port scans, latency spikes  
- 🖥️ Visualization: throughput, error rates, protocol distribution  

## 🛠️ Tools & Technologies
- **Wireshark** – GUI for packet inspection  
- **tcpdump** – CLI packet capture utility  
- **SigNoz** – Observability & dashboards (self-hosted Grafana-like)  
- **OpenTelemetry Collector** – Unified telemetry ingestion  
- **Docker Compose** – Orchestration for local deployment  
- **Ubuntu Server 20.04** – Testing environment  

## 🚀 Usage
1. Clone this repository:
---
Start the observability stack (SigNoz + Otel Collector):
docker-compose up -d

Capture live traffic using tcpdump:
sudo tcpdump -i eth0 -w traffic.pcap

Import captured packets into Wireshark:
wireshark traffic.pcap

Open SigNoz dashboards at:
http://localhost:3000

## 📂 Project Structure
- network-monitoring/
- ├── docker-compose.yml        # Observability stack (SigNoz + Otel)
- ├── otel-config.yaml          # OpenTelemetry collector config
- ├── capture-script.sh         # Automated tcpdump wrapper
- ├── README.md                 # Documentation
- ├── docs/
- │   └── security-report.md    # Detailed report
- └── images/
- |   └── signoz-dashboard.png
- |   └── wireshark-capture.png


## 📘 Documentation
See [docs/security-report.md](./docs/security-report.md) for:
- Network observability architecture  
- Telemetry flow & detection methods  
- Compliance mapping (e.g., NIST SI-4)  
- Safe deployment & testing guidelines  

## 🔮 Future Enhancements
- 📢 Add alerting system (e.g., email/Slack alerts on anomalies)  
- 🛡️ Integrate IDS tools (Suricata or Zeek) for deeper threat detection  
- 📑 Centralize logs with ELK stack or Grafana Loki  
- ☁️ Cloud-native deployment (Kubernetes + Helm charts)  

## 👤 Author
**Rakshana Kannaya Muralidharan**  
Master of Cybersecurity | Cloud Security & Observability Enthusiast  

🔗 [GitHub](https://github.com/rakshana-cloudsec) • [LinkedIn](#)

