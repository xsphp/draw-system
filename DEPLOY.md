# GitHub Pages 部署指南

## 🚀 5 分钟完成部署

### 方式一：使用 Git 命令行（推荐）

**第 1 步：创建 GitHub 仓库**

1. 访问 https://github.com/new
2. 仓库名：`draw-system`（或你喜欢的名字）
3. 设为 **Public**（公开）
4. 不要初始化 README
5. 点击「Create repository」

**第 2 步：初始化并推送代码**

在终端执行以下命令（替换 `你的用户名` 为实际 GitHub 用户名）：

```bash
cd /home/admin/openclaw/workspace/draw-system

# 初始化 git
git init
git add .
git commit -m "Initial commit: 述职抽签系统"

# 关联远程仓库（替换为你的仓库地址）
git remote add origin https://github.com/你的用户名/draw-system.git

# 推送到 GitHub
git branch -M main
git push -u origin main
```

**第 3 步：启用 GitHub Pages**

1. 进入你的 GitHub 仓库页面
2. 点击 **Settings**（设置）
3. 左侧菜单点击 **Pages**
4. 在「Build and deployment」下：
   - Source: 选择 **Deploy from a branch**
   - Branch: 选择 **main**，文件夹选择 **/(root)**
5. 点击 **Save**

**第 4 步：等待部署完成**

- 等待约 1-2 分钟
- 刷新 Pages 设置页面，会显示部署成功的 URL
- 格式：`https://你的用户名.github.io/draw-system/`

---

### 方式二：使用 GitHub Desktop（图形界面）

**第 1 步：下载并安装**

https://desktop.github.com/

**第 2 步：添加项目**

1. 打开 GitHub Desktop
2. File → Add Local Repository
3. 选择 `/home/admin/openclaw/workspace/draw-system`
4. 点击「Add repository」

**第 3 步：发布到 GitHub**

1. 点击右上角「Publish repository」
2. 填写仓库名（如 `draw-system`）
3. 确保「Keep this code private」未勾选（Pages 需要公开仓库）
4. 点击「Publish repository」

**第 4 步：启用 Pages**

同上，在 GitHub 仓库设置中启用 Pages。

---

### 方式三：使用部署脚本（自动化）

创建一个部署脚本：

```bash
#!/bin/bash
# deploy.sh

REPO_URL="https://github.com/你的用户名/draw-system.git"

cd /home/admin/openclaw/workspace/draw-system

# 初始化 git
git init
git add .
git commit -m "Deploy to GitHub Pages"

# 关联远程仓库
git remote add origin $REPO_URL

# 推送
git branch -M main
git push -u origin main

echo "✅ 部署完成！请在 GitHub 仓库设置中启用 Pages"
```

执行：
```bash
chmod +x deploy.sh
./deploy.sh
```

---

## 🔐 使用私有仓库？

GitHub Pages **支持私有仓库免费使用**！

- 公开仓库：任何人都可以访问你的页面
- 私有仓库：只有你和协作者可以访问

**设置方法相同**，只是在创建仓库时选择「Private」即可。

---

## 🌐 自定义域名（可选）

如果有自己的域名，可以自定义访问地址：

1. 在 GitHub Pages 设置中找到「Custom domain」
2. 输入你的域名（如 `draw.example.com`）
3. 在 DNS 服务商处添加 CNAME 记录：
   ```
   draw.example.com CNAME 你的用户名.github.io
   ```

---

## 📱 访问链接

部署成功后，你的抽签系统可以通过以下地址访问：

```
https://你的用户名.github.io/draw-system/
```

在手机、平板、电脑上都可以使用！

---

## ⚠️ 常见问题

**Q: 推送时需要密码怎么办？**

A: 建议使用 GitHub Token：
1. 访问 https://github.com/settings/tokens
2. 生成新 token，勾选 `repo` 权限
3. 推送时使用 token 代替密码

**Q: 页面显示 404？**

A: 等待 1-2 分钟，GitHub 需要时间构建。如果仍然 404，检查：
- 是否正确启用了 Pages
- `index.html` 是否在仓库根目录

**Q: 更新代码后如何重新部署？**

A: 修改文件后，执行：
```bash
git add .
git commit -m "Update"
git push
```
GitHub 会自动重新部署（约 1 分钟）。

---

## 📞 需要帮助？

如果遇到问题，可以：
1. 查看 GitHub Pages 文档：https://pages.github.com/
2. 检查 GitHub Actions 中的部署日志
3. 联系技术支持

---

**现在就开始部署吧！🎉**
