
# 🌐 Network Monitoring Security Report

## 🔒 Overview
This project sets up **real-time network traffic monitoring** using Wireshark, tcpdump, and SigNoz (via OpenTelemetry).  
It enables **deep packet inspection, anomaly detection, and observability dashboards** for incident response and compliance.

---

## 🧩 Key Components
### 1. Packet Capture
- **Wireshark** for GUI packet inspection  
- **tcpdump** for CLI automated capture (`capture-script.sh`)  

### 2. Observability Stack
- **SigNoz** deployed via Docker Compose  
- **OpenTelemetry Collector** for ingestion & forwarding  

### 3. Visualization
- Dashboards for throughput, latency, error rates, protocol distribution  
- Detects anomalies: brute-force attempts, port scans, DDoS patterns  

---

## ⚠️ Risks & Mitigations
| Risk                        | Mitigation Strategy                                |
|-----------------------------|----------------------------------------------------|
| Sensitive data in packet captures | Encrypt storage, limit access to `.pcap` files |
| Misconfigured observability stack | Default configs in `docker-compose.yml` secured |
| Alert fatigue / false positives  | Baseline tuning in SigNoz / OpenTelemetry rules |
| Insider misuse of tools          | Apply RBAC & restrict access to dashboards      |

---

## 📊 Compliance Mapping
| Control Area        | Implementation                  | Compliance Standard  |
|---------------------|----------------------------------|----------------------|
| Continuous Monitoring | SigNoz dashboards + alerts     | NIST SI-4, ISO A.12  |
| Audit Logging         | tcpdump capture logs           | NIST AU-2, ISO A.12.4|
| Secure Configuration  | Docker Compose + Otel configs  | CIS Benchmarks       |
| Incident Response     | Wireshark + detection reports  | ISO A.16, NIST IR-5  |

---

## 🔮 Future Enhancements
- Add **alerting hooks** (Slack/Email integration)  
- Integrate IDS tools (Suricata, Zeek) for deeper analysis  
- Store metrics in **ELK stack / Grafana Loki**  
- Deploy on **Kubernetes with Helm** for scalability  

---

## 👤 Author
**Rakshana Kannaya Muralidharan**  
Master of Cybersecurity | Cloud Security & Observability Enthusiast  
