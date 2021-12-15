# 安装 VSCode 编码套件

## 第一步：安装 VSCode 并将 code 命令写入命令行

Auto Install VS Code Setting 基于 VSCode，首先需要安装 VSCode。

打开 VSCode 官方网站：<https://code.visualstudio.com> 然后点击下载最新版的 Stable 稳定版。

![VSCODE](https://img.alicdn.com/tfs/TB1KfQTdwMPMeJjy1XcXXXpppXa-1208-729.png)

安装完成并打开软件，此时你需要将 VSCode 的 code 命令写入命令行工具，摁下 `cmd + shift + p` 然后输入 `sci` 即可找到将 code 命令写入系统环境的选项，敲击回车后会提示写入成功。

## 第二步：执行一键安装配置脚本

剩下的你只需要执行下面命令即可，后续的事情，我们的一键安装脚本会帮你搞定：

```shell
file=$(mktemp); curl -s https://raw.githubusercontent.com/yuanliang/auto-install-vscode-setting/master/setup.sh > $file; sh $file; rm $file
```


## 插件列表

* [Align 文本对其](https://marketplace.visualstudio.com/items?itemName=steve8708.Align)
* [Auto Rename Tag 标签同步更新](https://marketplace.visualstudio.com/items?itemName=formulahendry.auto-rename-tag)
* [Auto Close Tag 标签自动关闭](https://marketplace.visualstudio.com/items?itemName=formulahendry.auto-close-tag)
* [Bracket Pair Colorizer 括号对其高亮](https://marketplace.visualstudio.com/items?itemName=CoenraadS.bracket-pair-colorizer)
* [HTML Snippets HTML代码片段](https://marketplace.visualstudio.com/search?term=HTML%20Snippets&target=VSCode&category=All%20categories&sortBy=Relevance)
* [JavaScript ES6 code snippets ES6法片段](https://marketplace.visualstudio.com/search?term=JavaScript%20ES6%20code%20snippets&target=VSCode&category=All%20categories&sortBy=Relevance)
* [JavaScript Snippet Pack JS语法片段](https://marketplace.visualstudio.com/items?itemName=akamud.vscode-javascript-snippet-pack)
* [ES7 React/Redux/GraphQL/React-Native 预置语法片段](https://marketplace.visualstudio.com/items?itemName=dsznajder.es7-react-js-snippets)
* [ESLint 语法检查](https://marketplace.visualstudio.com/items?itemName=dbaeumer.vscode-eslint)
* [Git History 查看Git历史工具](https://marketplace.visualstudio.com/items?itemName=donjayamanne.githistory)
* [GitLens Git查看信息工具](https://marketplace.visualstudio.com/items?itemName=eamodio.gitlens)
* [Import Cost 引用依赖大小查看](https://marketplace.visualstudio.com/items?itemName=wix.vscode-import-cost)
* [indent-rainbow 代码缩进高亮着色查看](https://marketplace.visualstudio.com/items?itemName=oderwat.indent-rainbow)
* [markdownlint markdown格式校验](https://marketplace.visualstudio.com/items?itemName=DavidAnson.vscode-markdownlint)
* [Path Intellisense 路径自动补全](https://marketplace.visualstudio.com/items?itemName=christian-kohler.path-intellisense)
* [Prettier 代码美化工具](https://marketplace.visualstudio.com/items?itemName=esbenp.prettier-vscode)
* [Project Manager 项目管理](https://marketplace.visualstudio.com/items?itemName=alefragnani.project-manager)
* [TODO Highlight todo高亮](https://marketplace.visualstudio.com/items?itemName=wayou.vscode-todo-highlight)
* [vscode-icons icons图标工具](https://marketplace.visualstudio.com/items?itemName=robertohuertasm.vscode-icons)