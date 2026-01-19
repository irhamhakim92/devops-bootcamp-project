# devops-bootcamp-project
# DevOps Bootcamp Final Project 🚀

This project demonstrates a complete DevOps pipeline using **Terraform, Ansible, Docker, GitHub Actions, Amazon ECR, Prometheus, Grafana, and Alertmanager**.

It provisions AWS infrastructure, deploys containerized services, implements monitoring & alerting, and enables CI/CD for automated deployments.

---

## 🏗 Architecture Overview

- Terraform provisions:
  - VPC, Subnets, Internet Gateway, Route Tables
  - Security Groups
  - EC2 Instances:
    - Web Server
    - Monitoring Server
    - Ansible Controller
  - S3 backend for Terraform state
  - Amazon ECR repository

- Ansible configures:
  - Docker on all nodes
  - NGINX Web App
  - Prometheus + Grafana + Alertmanager
  - Node Exporter on all servers

- GitHub Actions:
  - Builds Docker images
  - Pushes to Amazon ECR
  - Deploys to Web Server via SSH

---

## 🌐 Live Services

| Service        | URL                                     |
|---------------|------------------------------------------|
| Web App       | http://54.169.143.43                     |
| Prometheus    | http://54.254.45.67:9090                 |
| Grafana       | http://54.254.45.67:3000                 |
| Alertmanager  | http://54.254.45.67:9093                 |

---

## ⚙️ Tech Stack

- **Infrastructure:** Terraform, AWS (EC2, VPC, ECR, S3)
- **Configuration:** Ansible
- **Containers:** Docker
- **Monitoring:** Prometheus, Grafana, Node Exporter
- **Alerting:** Alertmanager
- **CI/CD:** GitHub Actions (OIDC + ECR Push + SSH Deploy)

---

## 🚀 CI/CD Pipeline Flow

1. Developer pushes code to GitHub
2. GitHub Actions:
   - Builds Docker image
   - Pushes image to Amazon ECR
   - SSH into Web EC2
   - Pulls latest image
   - Restarts container

---

## 🧪 Monitoring Stack

### Metrics Collected
- CPU Usage
- Memory Usage
- Disk Usage
- Network Traffic
- Container Health

### Dashboards
- Grafana Dashboard ID: `1860` (Node Exporter Full)

---

## 🚨 Alerting

Alertmanager rules:
- High CPU usage (>80% for 2 min)
- High Memory usage (>80% for 2 min)
- Instance down

Alerts can be sent to:
- Slack
- Email
- PagerDuty (configurable)

---

## 📦 Terraform Commands

```bash
terraform init
terraform plan
terraform apply
terraform destroy
