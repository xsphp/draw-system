# 网站文件结构

```
/workspace
├── index.html                    # 主页
├── .github/
│   └── workflows/
│       └── deploy.yml           # GitHub Actions 部署配置
├── assets/
│   └── css/
│       └── style.css            # 全局样式
└── tools/
    ├── presentation-lottery/    # 述职抽签工具箱
    │   └── index.html
    ├── image-stitching/         # 图片拼接工具
    │   └── index.html
    ├── fullscreen-countdown/    # 全屏倒计时
    │   └── index.html
    ├── communication-practice/  # 沟通汇报练习
    │   └── index.html
    └── video-to-audio/          # 视频转音频
        └── index.html
```

## 页面路径

- **主页**: `https://你的用户名.github.io/仓库名/`
- **述职抽签**: `https://你的用户名.github.io/仓库名/tools/presentation-lottery/`
- **图片拼接**: `https://你的用户名.github.io/仓库名/tools/image-stitching/`
- **全屏倒计时**: `https://你的用户名.github.io/仓库名/tools/fullscreen-countdown/`
- **沟通汇报练习**: `https://你的用户名.github.io/仓库名/tools/communication-practice/`
- **视频转音频**: `https://你的用户名.github.io/仓库名/tools/video-to-audio/`

## 集成现有工具

将你的工具文件复制到对应目录：

### 述职抽签工具箱
```bash
# 将你的文件复制到：
tools/presentation-lottery/
```

### 图片拼接工具
```bash
# 将你的文件复制到：
tools/image-stitching/
```

## 部署步骤

1. 在 GitHub 创建新仓库（不要初始化 README）
2. 告诉我仓库地址，我帮你推送
3. 在仓库 Settings → Pages 启用 GitHub Actions
4. 等待部署完成

## 注意事项

- 工具文件中的相对路径需要调整（如引用 CSS/JS）
- 确保所有资源路径使用相对路径（`../../assets/...`）
- 图片等静态资源放在各自工具目录内
