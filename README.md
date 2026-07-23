# 🚀 Production EKS DevOps Platform

A production-grade Kubernetes platform built on Amazon EKS using Infrastructure as Code, Helm, GitOps, and AWS managed services.

---

# Platform Overview

This project demonstrates how to build a complete production-ready Kubernetes platform from scratch.

The platform includes:

- Amazon EKS
- Terraform
- Helm
- AWS Load Balancer Controller
- Metrics Server
- cert-manager
- External Secrets Operator
- Amazon RDS PostgreSQL
- Prometheus
- Grafana
- ArgoCD
- ArgoCD Image Updater
- GitHub Actions
- Amazon ECR
- GitOps Deployment Pipeline

---

# Architecture

```
                    Developer
                         │
                         ▼
                    GitHub Repository
                         │
                         ▼
                  GitHub Actions CI
                         │
                         ▼
                 Amazon Elastic Container Registry
                         │
                         ▼
               ArgoCD Image Updater
                         │
                         ▼
                 Helm Charts Repository
                         │
                         ▼
                      ArgoCD
                         │
                         ▼
                 Amazon EKS Cluster
                         │
          ┌──────────────┴──────────────┐
          ▼                             ▼
     Backend Application         Monitoring Stack
          │                             │
          ▼                             ▼
   Amazon RDS PostgreSQL        Prometheus + Grafana

Secrets:
AWS Secrets Manager
        │
        ▼
External Secrets Operator
        │
        ▼
Kubernetes Secrets
```

---

# Learning Objectives

By completing this workshop you will learn:

- Provision AWS infrastructure using Terraform
- Deploy a production-ready EKS cluster
- Install Kubernetes platform components
- Configure AWS Load Balancer Controller
- Secure workloads using External Secrets
- Deploy applications with Helm
- Configure Monitoring using Prometheus & Grafana
- Implement GitOps using ArgoCD
- Automate deployments using ArgoCD Image Updater
- Build CI/CD pipelines with GitHub Actions

---

# Deployment Flow

The workshop is divided into 14 chapters.

| Chapter | Description |
|----------|-------------|
| 01 | Prerequisites |
| 02 | Connect to Amazon EKS |
| 03 | Platform Bootstrap |
| 04 | Install Metrics Server |
| 05 | Install cert-manager |
| 06 | Install AWS Load Balancer Controller |
| 07 | Install External Secrets |
| 08 | Install Monitoring Stack |
| 09 | Deploy Backend Application |
| 10 | Configure PostgreSQL |
| 11 | Install ArgoCD |
| 12 | Install ArgoCD Image Updater |
| 13 | GitOps Demonstration |
| 14 | Final Architecture Review |

---

# Documentation

Start here:

- 📘 [01 - Prerequisites](docs/01-prerequisites.md)
- 📘 [02 - Connect to EKS Cluster](docs/02-connect-to-cluster.md)
- 📘 [03 - Platform Bootstrap](docs/03-platform-bootstrap.md)
- 📘 [04 - Metrics Server](docs/04-metrics-server.md)
- 📘 [05 - cert-manager](docs/05-cert-manager.md)
- 📘 [06 - AWS Load Balancer Controller](docs/06-aws-load-balancer-controller.md)
- 📘 [07 - External Secrets](docs/07-external-secrets.md)
- 📘 [08 - Monitoring Stack](docs/08-monitoring.md)
- 📘 [09 - Backend Deployment](docs/09-backend-deployment.md)
- 📘 [10 - PostgreSQL](docs/10-postgresql.md)
- 📘 [11 - ArgoCD](docs/11-argocd.md)
- 📘 [12 - ArgoCD Image Updater](docs/12-argocd-image-updater.md)
- 📘 [13 - Live GitOps Demo](docs/13-gitops-demo.md)
- 📘 [14 - Final Architecture Review](docs/14-platform-review.md)

---

# Project Structure

```
production-eks-devops-platform/

├── applications/
├── charts/
├── docs/
├── modules/
├── platform/
├── scripts/
└── terraform/
```

---

# Skills Covered

- AWS
- Linux
- Docker
- Kubernetes
- Helm
- Terraform
- GitHub Actions
- GitOps
- Amazon ECR
- Amazon EKS
- Amazon RDS
- Prometheus
- Grafana
- ArgoCD
- External Secrets
- AWS Load Balancer Controller

---

# Target Audience

- DevOps Engineers
- Cloud Engineers
- Platform Engineers
- Kubernetes Administrators
- Students learning Production Kubernetes

---


---

# 📚 Production EKS DevOps Platform Documentation

```text
docs/
│
├── README.md                          <-- Documentation Home
│
├── 01-prerequisites.md
├── 02-connect-to-eks.md
├── 03-platform-bootstrap.md
├── 04-metrics-server.md
├── 05-cert-manager.md
├── 06-aws-load-balancer-controller.md
├── 07-external-secrets.md
├── 08-monitoring.md
├── 09-backend-deployment.md
├── 10-postgresql.md
├── 11-argocd.md
├── 12-argocd-image-updater.md
├── 13-gitops-demo.md
├── 14-platform-review.md
│
├── troubleshooting/
│     ├── alb.md
│     ├── argocd.md
│     ├── external-secrets.md
│     ├── monitoring.md
│     └── image-updater.md
│
└── images/
```

---

# Every chapter should follow the same template

This gives your documentation a consistent, professional structure.

---

```markdown
# Chapter X - Title

---

## Learning Objectives

At the end of this chapter you will be able to:

- ...
- ...
- ...

---

## Prerequisites

- Terraform completed
- kubectl configured
- Helm installed

---

## Architecture

(diagram)

---

## Theory

Explain:

- Why this component exists
- Why Kubernetes needs it
- Production use cases

---

## Installation

(step-by-step commands)

---

## Verification

(commands)

Expected Output

(screenshot)

---

## What Happened?

Explain internally what Kubernetes created.

---

## Live Demonstration

What to show students.

---

## Common Errors

Problem

↓

Reason

↓

Solution

---

## Interview Questions

Q1

Q2

Q3

---

## Summary

Students learned...

---

Next Chapter →
```

---

# Chapter 1

## 01-prerequisites.md

Topics

```
Cloud Architecture

↓

Terraform

↓

Infrastructure Created

↓

Admin Host

↓

kubectl

↓

Helm
```

Explain

* VPC
* Public Subnet
* Private Subnet
* NAT Gateway
* Route Tables
* Security Groups
* IAM
* OIDC
* EKS
* RDS

Students should understand the AWS architecture before touching Kubernetes.

---

# Chapter 2

## Connect to EKS

Explain

```
Developer Laptop

↓

SSH

↓

Admin Host

↓

kubectl

↓

Amazon EKS
```

Commands

```bash
aws sts get-caller-identity

kubectl config current-context

kubectl get nodes
```

Explain

What is kubeconfig?

Why Bastion Host?

Why not expose API Server?

---

# Chapter 3

## Platform Bootstrap

Explain

Why Helm?

Why repositories?

Why CLI tools?

Run

```
platform/install.sh
```

Explain every line inside the script.

---

# Chapter 4

## Metrics Server

Explain

```
CPU

↓

Memory

↓

Metrics API

↓

kubectl top

↓

HPA
```

Demo

```
kubectl top nodes
```

---

# Chapter 5

## cert-manager

Explain

Difference between

```
TLS

↓

Certificate

↓

ACM

↓

cert-manager
```

Students usually confuse ACM and cert-manager.

Explain both.

---

# Chapter 6

## AWS Load Balancer Controller

Architecture

```
Ingress

↓

Controller

↓

AWS API

↓

ALB

↓

Route53

↓

Internet
```

Open AWS Console.

Refresh.

Students literally watch the ALB being created.

Very impactful.

---

# Chapter 7

## External Secrets

Architecture

```
Secrets Manager

↓

ESO

↓

ExternalSecret

↓

Secret

↓

Application
```

Open AWS Console.

Show

```
Database Password
```

Refresh Kubernetes.

Show Secret created automatically.

---

# Chapter 8

## Monitoring

Architecture

```
Node Exporter

↓

Prometheus

↓

Grafana
```

Demo

Open Grafana.

Show

CPU

Memory

Pods

Nodes

Network

Filesystem

---

# Chapter 9

## Backend Deployment

Explain Helm.

Show folder.

```
Chart.yaml

↓

values.yaml

↓

templates
```

Deploy.

Explain every Kubernetes object created.

Deployment

Service

Ingress

ExternalSecret

---

# Chapter 10

## PostgreSQL

Explain

```
Application

↓

Service

↓

Amazon RDS
```

Connect

```
psql
```

Insert data.

Call API.

Students see live database.

---

# Chapter 11

## ArgoCD

Architecture

```
Git

↓

ArgoCD

↓

Kubernetes
```

Open UI.

Explain

Applications

Repositories

Clusters

Projects

Tree View

Manifest View

History

Sync

Health

---

# Chapter 12

## Image Updater

Architecture

```
GitHub Actions

↓

Amazon ECR

↓

Image Updater

↓

Git Repository
```

Open logs.

Students watch

```
Detected Image

↓

Updating Git

↓

Commit

↓

Push
```

---

# Chapter 13

## GitOps Demo

This becomes the highlight of the course.

Students literally watch

```
VS Code

↓

Git Commit

↓

GitHub

↓

GitHub Actions

↓

Docker Build

↓

Amazon ECR

↓

Image Updater

↓

Git Commit

↓

ArgoCD

↓

Rolling Update

↓

Application Updated
```

This is where students usually say

"Wow."

---

# Chapter 14

## Platform Review

Finish with one architecture diagram.

```
                    Developer
                         │
                         ▼
                   GitHub Repository
                         │
                         ▼
                 GitHub Actions
                         │
                         ▼
                 Amazon ECR
                         │
                         ▼
             ArgoCD Image Updater
                         │
                         ▼
               Helm Charts Repository
                         │
                         ▼
                     ArgoCD
                         │
                         ▼
                Amazon EKS Cluster
          ┌──────────────┴──────────────┐
          ▼                             ▼
     Backend Application         Monitoring Stack
          │                             │
          ▼                             ▼
 Amazon RDS PostgreSQL         Prometheus + Grafana
          ▲
          │
AWS Secrets Manager
          │
          ▼
External Secrets Operator
```

---

# Troubleshooting Section

This is something most GitHub repositories are missing but is extremely useful.

Create a separate `docs/troubleshooting/` directory with focused guides such as:

* **alb.md** – Common ALB/Ingress issues (`CertificateNotFound`, missing ADDRESS, target registration problems).
* **argocd.md** – Applications stuck in `Progressing`, sync errors, login issues.
* **external-secrets.md** – IRSA problems, SecretStore configuration, synchronization failures.
* **monitoring.md** – Prometheus, Grafana, and Metrics Server troubleshooting.
* **image-updater.md** – ECR authentication, IRSA, Git write-back, and Argo CD Image Updater issues (many of the scenarios you've already solved).

Each guide can include:

* Symptoms
* Root cause
* Verification commands
* Resolution steps

---
