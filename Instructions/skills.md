# 🧩 What Are Skills?

Skills are structured, task-specific instruction sets that guide the Agent on how to execute a particular job in a controlled and repeatable way.

They transform a generic LLM into a specialist for a specific task.

Without skills → the LLM behaves like a generalist.
With skills → the LLM behaves like a Terraform expert, deployment engineer, or security auditor.

🚨 The Problem Skills Solve

Without skills:

You write a long prompt.

The Agent forwards it to the LLM.

The output varies.

The structure is inconsistent.

Tools may be used unpredictably.

Files may be edited unintentionally.

The LLM is powerful — but generic.

This leads to:

Inconsistent Terraform structure

Uncontrolled tool usage

Different output format each time

Reduced predictability

✅ What Skills Do

When you trigger a skill (e.g., /tf-plan):

The Agent reads the skill definition.

The skill contains:

Steps

Allowed tools

Execution rules

Expected output format

The Agent uses that instruction to guide the LLM.

The LLM now behaves as a specialist, not a generalist.

Result:

Same structure every time

Restricted tools

Controlled output

Enforced workflow

Same Agent.
Same LLM.
Different behavior — because of Skills.

🧠 How Skills Work in the Architecture

Architecture components:

Claude.md → Project context (always loaded)

Skills → Task guidance (loaded on demand)

LLM → Reasoning engine

Agent → Orchestrator

Flow When Using a Skill

You type /tf-plan

Agent loads:

Claude.md (always active)

The specific skill (on demand)

Agent combines:

Project context

Task-specific instructions

Agent guides the LLM accordingly

Output is controlled and consistent

Skills do NOT go directly to the LLM.
The Agent reads and interprets them first.

The Agent is always the orchestrator.

📘 Built-in Skills vs Custom Skills
🔹 Built-in Skills (Provided by Claude)

Examples:

Code generation

Presentation creation

PDF generation

These handle generic workflows out of the box.

You do not need to create them.

🔹 Custom Skills (Created by You)

This is where real power lies.

Examples:

Terraform plan workflow

Deployment pipeline execution

Security audit checklist

Drift detection process

Custom skills define:

Exact steps

Exact tools

Exact commands

Allowed behaviors

They encode your team’s DevOps process into the system.

📊 Claude.md vs Skills — Clear Difference
Aspect	Claude.md	Skills
Trigger	Auto-loaded every session	Loaded on demand
Purpose	Project context	Task instruction
Scope	Shapes all decisions	Shapes one specific task
Content	Architecture, conventions, rules	Steps, tools, execution logic
Count	Usually 1 per project	Many per project
🎯 In Simple Terms

Claude.md = Who am I working with?

Architecture

Conventions

Deployment model

Rules

Skills = What should I do right now?

Terraform plan

Deploy app

Audit security

Generate infra

Claude.md sets the foundation.
Skills direct the action.

They are partners — not replacements.

🏢 Simple Analogy

Think of:

Claude.md as the Employee Handbook
(Always active. Applies to everything.)

Skills as Job-Specific Runbooks
(Used only when needed.)

Every employee:

Follows company policies (Claude.md)

Uses department playbooks when performing specific tasks (Skills)

🚀 Why We Need Skills (Even If We Have Claude.md)

You might think:

- “Didn’t Claude.md already guide the Agent?”
- Yes — but at a global level.

Claude.md:
- Shapes overall behavior
- Defines architecture
- Sets conventions

But it does NOT:
- Define step-by-step Terraform workflow
- Restrict tool usage for one task
- Enforce consistent output format
- Lock down execution flow

Skills do that.

Claude.md provides context.
Skills provide execution discipline.

🔐 What Skills Enable in DevOps

With custom skills, you can:
- Enforce Terraform directory structure
- Restrict file edits during planning
- Standardize output format
- Prevent unsafe commands
- Create repeatable deployment workflows

This converts:
- Generic LLM
→ Controlled Specialist System

Convert a general LLM into a specialist

Claude.md defines the environment.
Skills define the action.

Together they create a predictable, controlled, agentic DevOps workflow.

## 🛠 How to Use Skills in Claude Code

Skills are structured, task-specific playbooks that guide the Agent on how to perform one job correctly and safely. They convert a generic LLM into a controlled specialist.

Below are clear notes on how skills work and how to use them effectively.

📁 1️⃣ What a Skill Looks Like

A skill is simply:

A markdown file with YAML configuration on top.

Each skill has two parts:
### 🔹 Part 1 — Formatter (YAML Configuration)

- Located at the top of skill.md between triple dashes (---).

It controls:
- Skill name (command trigger)
- Description (short summary)
- Allowed tools
- Trigger behavior
- Safety configuration

Example Structure
```bash 
name: tfplan
description: Run terraform plan and analyze risks
allowed-tools: bash, read, grep
disable-model-invocation: true
```

What Each Field Does
✅ name
- Becomes the slash command.

name: tfplan → trigger using /tfplan

✅ description
- Short summary of what the skill does.
- First thing the Agent reads.
- Used to determine if the skill matches a request.
- Critical for automatic matching.

✅ allowed-tools
- Restricts what the Agent can do.

Example:

- bash → run commands
- read → read files
- grep → search files

If write or edit is not listed → Agent cannot modify files.

This makes the skill safe.

✅ disable-model-invocation
- true → Only you can trigger it manually.

Agent cannot run it automatically.

Gives full control to the engineer.

### 🔹 Part 2 — Body (Markdown Instructions)

Below the formatter.

This is plain markdown.

It tells the Agent:
- What steps to follow
- What commands to run
- What to analyze
- What to avoid

Example :
```bash
1. Run terraform plan.
2. Analyze the output.
3. Summarize resource changes.
4. Do not modify any files.
```

📂 2️⃣ Where Skills Live

All skills live inside:
```bash
.claude/skills/
```


Each skill gets its own folder:
.claude/skills/
  ├── tfplan/
  │     └── skill.md
  ├── deploy/
  │     └── skill.md
  ├── scaffold-terraform/
  │     ├── skill.md
  │     └── template-spec.md

#### Important Rules :-
- Folder name becomes the skill name.
- Each skill must have skill.md.
- Additional files (like template-spec.md) are optional reference files.