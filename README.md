# DevOps Project – Saed Ismail
This project demonstrates infrastructure automation, CI/CD, monitoring, and more.

A full-cycle DevOps project that demonstrates Infrastructure as Code (IaC), containerization, CI/CD automation, cloud deployment, monitoring, and observability using modern DevOps tools.

---

## 📆 Stack Used

| Layer                | Tool/Service                       |
| -------------------- | ---------------------------------- |
| Cloud Infrastructure | AWS (EC2, VPC, Security Groups)    |
| IaC                  | Terraform                          |
| Containerization     | Docker, Docker Compose             |
| CI/CD                | GitHub Actions                     |
| App                  | Node.js                            |
| Monitoring           | Prometheus, Grafana, Node Exporter |
| Deployment           | SSH-based to EC2                   |

---

## 📁 Project Structure

```
devops-portfolio/
├── terraform/                  # Infrastructure provisioning
│   ├── main.tf
│   ├── variables.tf
│   └── outputs.tf
├── app/                        # Node.js application
│   ├── Dockerfile
│   └── app.js
├── .github/workflows/          # GitHub Actions CI/CD
│   └── deploy.yml
├── monitoring/                 # Monitoring stack
│   ├── docker-compose.yml
│   └── prometheus/
│       └── prometheus.yml
├── Makefile                    # Optional workflow automation
└── README.md
```

---

## 🌐 Live Architecture Overview

```
+-----------------------------+
|   GitHub Actions (CI/CD)   |
|    - Docker build & push   |
|    - SSH Deploy to EC2     |
+-----------------------------+
              |
              v
+-----------------------------+
|         AWS EC2            |
|  - Dockerized Node.js App  |
|  - Prometheus + Grafana    |
|  - Node Exporter           |
+-----------------------------+
```

---

## 🛠️ Key Features

### ✅ Infrastructure as Code (Terraform)

* Provisioned VPC, subnets, Internet Gateway, EC2, and Security Groups.
* Reusable and modular configuration.

### ✅ Containerized Application (Docker)

* Dockerized a simple Node.js app.
* Image pushed to [Docker Hub](https://hub.docker.com/u/Saed-Ismail).

### ✅ CI/CD Pipeline (GitHub Actions)

* Auto-build and push Docker image.
* SSH deploy to EC2 instance on code push.

### ✅ Monitoring & Observability

* **Prometheus** scrapes metrics from Node.js app and Node Exporter.
* **Grafana** visualizes CPU, memory, heap usage, event loop lag, and more.
* Used pre-built dashboards (e.g., [ID 1860](https://grafana.com/grafana/dashboards/1860)).

---

## 💻 How to Run

### 1. Clone the repo

```bash
git clone https://github.com/Saed-Ismail/devops-portfolio.git
cd devops-portfolio
```

### 2. Provision Infrastructure

```bash
cd terraform
terraform init
terraform apply
```

### 3. Build & Push Docker Image

```bash
cd app
docker build -t saedismail/node-docker-app:latest .
docker push saedismail/node-docker-app:latest
```

### 4. Setup CI/CD via GitHub Actions

* Add SSH private key, EC2 IP, username to GitHub Secrets.
* Push code and watch deploy happen automatically.

### 5. Run Monitoring Stack

```bash
cd monitoring
docker compose up -d
```

---

## 📊 Grafana Dashboards

| Dashboard Name           | Import ID |
| ------------------------ | --------- |
| Node Exporter Full       | `1860`    |
| Docker Container Metrics | `179`     |
| Prometheus 2.0 Stats     | `3662`    |

> 🔍 Visit `http://YOUR_EC2_PUBLIC_IP:3001` to access Grafana.

---

## ✅ Skills Demonstrated

* ☁️ AWS EC2 provisioning
* 🔐 SSH key-based automation
* ⚙️ Terraform (IaC)
* 🐳 Docker + Compose
* 🚀 GitHub Actions (CI/CD)
* 📈 Prometheus + Grafana monitoring
* 🧠 Observability with Node Exporter

---

## 🙌 Acknowledgements

* [Node Exporter Dashboard](https://grafana.com/grafana/dashboards/1860)
* [Prometheus](https://prometheus.io/)
* [Grafana](https://grafana.com/)
* [GitHub Actions](https://docs.github.com/en/actions)

---

## 📢 Contact

Feel free to connect with me:

* 💼 [LinkedIn](https://linkedin.com/in/Saed-Ismail)
* 📆 [Docker Hub](https://hub.docker.com/u/Saed-Ismail)
* 💻 [GitHub](https://github.com/Saed-Ismail)

---

