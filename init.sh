# 5. Create project structure
echo "📂 Setting up project structure..."

mkdir -p .claude
mkdir -p .claude/skills
mkdir -p .claude/skills/scaffold-terraform
mkdir -p .claude/skills/deploy
mkdir -p .claude/skills/tf-plan
mkdir -p .claude/skills/tf-apply
touch .claude/skills/deploy/SKILL.md
touch .claude/skills/scaffold-terraform/template-spec.md
touch .claude/skills/scaffold-terraform/SKILL.md
touch .claude/skills/tf-plan/SKILL.md
touch .claude/skills/tf-apply/SKILL.md

# Fixed the missing closing quote below
echo "✅ Setup complete and ready to run!" 
echo "✅ Project structure is ready."