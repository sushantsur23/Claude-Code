# 🚀 Project Objective

This project demonstrates how to deploy a professional static HTML portfolio website to AWS S3 + CloudFront using an agent-driven DevOps workflow, without manually writing Terraform or CI/CD YAML files.

Instead of spending weeks authoring infrastructure code, this approach shifts the engineer’s role from infrastructure typist to infrastructure architect.

The objective is to:
- Automate Terraform generation using AI agents
- Standardize CI/CD using GitHub Actions + OIDC
- Enforce security guardrails and conventions
- Use Claude.md as a project-wide engineering context

Use Skills to turn a general LLM into task-specific DevOps specialists

By the end, infrastructure provisioning and deployment can move from weeks to hours.

## 🎯 Core Objective

To build a fully functional, production-grade cloud deployment pipeline where:

AI agents generate Terraform, CI/CD workflows, IAM policies, and infrastructure configurations.

Engineers operate as reviewers, decision-makers, and controllers — not repetitive code authors.

Safety guardrails prevent destructive actions before execution.

Context, memory, and external integrations ensure reliable and scalable automation.

## 🧠 Key Principles

- Skills: Modular, reusable capabilities that scaffold infrastructure (e.g., Terraform, CI/CD, deployment workflows).

- Agents: Specialized AI assistants with defined responsibilities (e.g., Security Auditor, Cost Optimizer, Drift Detector, Terraform Writer).

- Hooks & Guardrails: Protective controls to prevent misconfigurations and destructive actions.

- Memory & MCP Integration: Persistent context and external tool connectivity for continuous, state-aware automation.

## 🏗 High-Level Architecture

The system consists of:

### 1️⃣ Engineer (You)
- Interact through VS Code or Terminal.

### 2️⃣ IDE (Interface Layer)
- Sends prompts to the Agent and displays responses.

### 3️⃣ Agent (Core Engine)
- Reads Claude.md
- Loads Skills when triggered
- Decides which tools to use
- Guides the LLM

### 4️⃣ Tools (Execution Layer)

Examples:
- bash
- read
- write
- grep

### 5️⃣ LLM (Intelligence Layer)
- Provides reasoning and code generation.

### 6️⃣ Claude.md (Foundation)
- Always auto-loaded
- Defines architecture, conventions, and rules
- Shapes all decisions

### 7️⃣ Skills (Task Layer)
- Loaded on demand
- Restrict tools
- Define step-by-step instructions
- Convert LLM into Terraform / Deployment specialist

📦 Required Dependencies

Before running this project, ensure the following tools are installed and configured:

🧑‍💻 Development Environment
- Visual Studio Code
- GitHub Account

☁️ Cloud & Infrastructure
- AWS CLI (configured and authenticated)
- Terraform CLI

🐳 Container Runtime
- Docker

⚙️ CLI Runtime
- uv / uvx

🤖 AI Agent Platform
- Claude Code Pro Subscription (Required)

## 🏗 Outcome

By the end of this project, you will:

Deploy a production-ready website on AWS S3 + CloudFront.

Implement an AI-orchestrated DevOps workflow.

Establish secure, review-first infrastructure automation.

Transition from “infrastructure coder” to “infrastructure architect.”