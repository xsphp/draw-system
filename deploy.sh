#!/bin/bash

# GitHub Pages 部署脚本
# 使用方法：./deploy.sh 你的 GitHub 用户名

if [ -z "$1" ]; then
    echo "❌ 请提供 GitHub 用户名"
    echo "用法：./deploy.sh 你的用户名"
    echo "例如：./deploy.sh zhangsan"
    exit 1
fi

USERNAME=$1
REPO_NAME="draw-system"
REPO_URL="https://github.com/${USERNAME}/${REPO_NAME}.git"

echo "🚀 开始部署到 GitHub Pages"
echo "📦 仓库：${REPO_URL}"
echo ""

cd /home/admin/openclaw/workspace/draw-system

# 检查 git 是否已初始化
if [ ! -d ".git" ]; then
    echo "📝 初始化 Git 仓库..."
    git init
fi

# 添加所有文件
echo "📂 添加文件..."
git add .

# 提交
echo "💾 提交更改..."
git commit -m "Deploy to GitHub Pages - $(date '+%Y-%m-%d %H:%M:%S')"

# 检查远程仓库是否存在
if ! git remote | grep -q origin; then
    echo "🔗 关联远程仓库..."
    git remote add origin $REPO_URL
fi

# 设置分支
git branch -M main

# 推送
echo "⬆️ 推送到 GitHub..."
echo "⚠️  可能需要输入 GitHub 用户名和 Token/密码"
echo ""
git push -u origin main

if [ $? -eq 0 ]; then
    echo ""
    echo "✅ 部署成功！"
    echo ""
    echo "📱 接下来请完成以下步骤："
    echo ""
    echo "1️⃣  访问：https://github.com/${USERNAME}/${REPO_NAME}/settings/pages"
    echo ""
    echo "2️⃣  在 Pages 设置中："
    echo "    - Source: Deploy from a branch"
    echo "    - Branch: main"
    echo "    - Folder: /(root)"
    echo ""
    echo "3️⃣  等待 1-2 分钟后访问："
    echo "    https://${USERNAME}.github.io/${REPO_NAME}/"
    echo ""
    echo "📖 详细说明请查看：DEPLOY.md"
    echo ""
else
    echo ""
    echo "❌ 推送失败，请检查："
    echo "   - GitHub 用户名是否正确"
    echo "   - 仓库是否已创建"
    echo "   - 是否使用了正确的认证方式（建议使用 Token）"
    echo ""
    echo "💡 创建 Token: https://github.com/settings/tokens"
    echo "   需要勾选 'repo' 权限"
fi
