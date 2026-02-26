
# 🛠 Required Tools & Platforms

Before working on this project, ensure your local development environment is properly configured. The agentic workflow relies on a clean, verified toolchain. Each tool below is required either for infrastructure provisioning, container tooling, CI/CD integration, or agent orchestration.

1️⃣ 🧑‍💻 Visual Studio Code (Editor)
2️⃣ 🗂 GitHub Account (CI/CD Platform)
3️⃣ ☁️ AWS CLI (Cloud Authentication & Execution)
4️⃣ 🏗 Terraform CLI (Infrastructure as Code Engine)
5️⃣ 🐳 Docker (Container Runtime for MCP & Tooling)
6️⃣ ⚡ uv / uvx (Agent Runtime Utilities)
7️⃣ 🤖 Claude Code Pro Subscription (Core Requirement)

🎯 Why This Matters
- This project is not about manually typing infrastructure.
- It is about building an agent-driven DevOps workflow.

For that to work:
- Authentication must be valid
- Infrastructure tooling must be available
- Containers must run cleanly
- CI/CD platform must be ready


## 📘 Claude.md — Project Context File for AI
🔎 What is Claude.md?

Claude.md is a project-specific markdown file that lives at the root of your repository, alongside README.md.

Every time you start a new Claude Code session, the system automatically reads this file first.
You do not need to configure anything.
You do not need to manually instruct Claude to load it.

It is always loaded at session start.

## 🎯 Purpose

Claude.md acts as an AI onboarding document.

Think of it as the document you would give to a new engineer joining your team — except this one is written for the AI agent.

It provides:

- Architecture overview
- Folder structure expectations
- Tooling configuration
- Naming conventions
- Project rules
- Explicit technical specifications
- Guardrails for decision-making

Instead of guessing, Claude operates with defined context.

## 📘 Claude.md — Engineering Context Layer for AI

Every line written in this file reduces repetitive clarification later because Claude reads it automatically:

- On every session start
- Across every skill
- Across every agent
- Across every decision

This file becomes the decision framework for your AI infrastructure team.

📂 Location

```bash
project-root/
├── README.md
├── Claude.md
├── terraform/
├── .github/
└── ...
```
In an agentic workflow:
- Engineers write instructions
- Claude writes implementation

The quality of instruction directly determines the quality of output. 
Claude.md is the foundation of that instruction layer.

### 1️⃣ Project Overview (High-Signal Summary)

Example:

Static HTML portfolio website deployed to AWS using S3 + CloudFront, provisioned with Terraform and automated via GitHub Actions.

This single sentence communicates:
- Technology: HTML + CSS
- Hosting: S3
- CDN: CloudFront
- IaC: Terraform
- Automation: GitHub Actions

Claude now understands the full stack immediately. Every future decision flows through this context.

### 2️⃣ Architecture Section

Split into three layers:

#### Application

Explicitly list:
- index.html
- about.html
- privacy.html
- terms.html
- /images

Critical constraint:
- Pure HTML + CSS. No JavaScript. No build step.

This prevents:
- React suggestions
- TypeScript suggestions
- Build tools
- Framework scaffolding

Claude respects intentional simplicity.

#### Infrastructure

Explicit specifications:
- AWS S3 bucket (private, OAC-based access)
- CloudFront distribution with S3 origin
- GitHub OIDC provider + IAM role (keyless CI/CD auth)
- Terraform state in S3 backend
- DynamoDB state locking
- Mandatory tagging: project, environment

Impact:
- Terraform auto-tags resources
- No need to re-explain tagging later
- Secure, modern authentication (no static keys)

#### CI/CD

Defined behavior:
- Trigger on push to main
- Sync site to S3
- Invalidate CloudFront
- Use OIDC authentication

Claude now understands deployment end-to-end.

### 3️⃣ MCP Server Definition

Two external tools declared:

- AWS MCP server (live AWS API access)
- Terraform MCP server (provider documentation access)

Purpose:
- Real-time API interaction
- Accurate Terraform provider knowledge

Without declaring this, Claude guesses capabilities.

### 4️⃣ Custom Agents

Defined specialized AI workers:
- Terraform Code Writer
- Security Auditor
- Cost Optimizer
- Drift Detector

Each:
- Has specific responsibility
- Uses different tools
- Operates with different model configuration

This enables task delegation instead of generic generation.

### 5️⃣ Skills

10 predefined skills such as:
- Scaffold Terraform
- Run tf plan
- Deploy infrastructure
- Other automation tasks

These skills standardize execution.
You define them once.Claude uses them consistently.

### 6️⃣ Commands Section

Explicit command definitions:
```bash
terraform init
terraform plan
terraform apply
```
- Local preview commands
- Manual S3 sync command (with exclusions)

Why this matters:
- Without it → Claude guesses flags, paths, directories
- With it → Claude runs exact commands correctly


Refer the link for documentation.
https://code.claude.com/docs/en/features-overview


🏗 Architecture Explained in the Simplest Way

👨‍💻 1️⃣ You — The Engineer
You work inside VS Code or Terminal.
You type prompts or questions


🖥 2️⃣ IDE (Interface Layer)
- Sends your prompt to the Agent.
- Displays the response.
- Lets you review code.

🧠 3️⃣ Agent (Core Engine)

This is the decision-maker.

When you ask something, the Agent:-

Reads your prompt / Thinks about the task / Makes a plan

It decides:
- Should I read a file?
- Should I run a command?
- Should I ask for clarification?

🛠 4️⃣ Tools (Execution Layer)

These are the capabilities available to the Agent.
- bash → run terminal commands
- read → read files
- write → create/update files
- grep → search content

Flow:
- Agent decides which tool to use.
- Tool executes the action.
- Result goes back to Agent.

Tools do the work.
Agent decides what work to do.

🤖 5️⃣ LLM (Intelligence Layer)

This is the brain behind the system.
Models like:
- Sonnet
- Opus

The LLM:
- Understands language
- Generates answers
- Produces code
- Performs reasoning

📘 6️⃣ Claude.md (Foundation Layer)

This is the most important part. Claude.md sits at the bottom of the system.

It is Auto-loaded at every session, Read before anything else

Injected into Agent context

It contains:
- Architecture
- File structure
- Conventions
- Deployment flow
- Rules
- Guardrails

Claude.md shapes how the Agent thinks.

🔁 How Everything Connects
Step-by-Step Flow
- You type a question in IDE.
- IDE sends it to Agent.
- Agent has already loaded Claude.md.
- Agent uses project context from Claude.md.
- Agent may use tools if needed.
- Agent asks LLM to generate response using that context.
- Response comes back to IDE.

You see the final answer.






