#!/bin/sh

GREEN='\033[1;32m'
GRAY='\033[0;37m'
RED='\033[0;31m'
BLUE='\033[1;34m'

echo "${GREEN}第一步：安装 VSCode IDE${GRAY}"
echo "* VSCode IDE 是面向前端编码的 IDE，提供了强大的功能和并做了大量性能优化。"
echo "* 首先请确保已经安装过 VSCode，安装方法请参见：https://code.visualstudio.com"
echo "* 安装完成后，需要将 code 命令写入命令行，打开命令面板（按F1键）输入Shell 命令找到Shell 命令: 在PATH中安装“code”命令。"
echo "* 命令执行完成之后，重启终端工具使新的$PATH可用。现在，您可以简单地在终端中任意文件夹下输入‘code .’来编辑该文件夹下的文件了。"
echo "${BLUE}安装完成并将 code 命令写入命令行，摁下任意键继续${GRAY}"
read -p "..."


echo "${GREEN}第二步：安装常用插件${GRAY}"
echo "* 我们正在为您安装常用插件"
echo "* 比如 IDEA 的快捷键映射插件，之后您可以直接使用 IDEA 熟悉的快捷键操作"
echo "* 以及自动格式化、自动闭合标签等插件"

# 创建code命令别名
alias code="/Applications/Visual\ Studio\ Code.app/Contents/Resources/app/bin/code"

# 安装常用插件
for i in 'steve8708.align' 'mgmcdermott.vscode-language-babel' 'robertohuertasm.vscode-icons' 'wayou.vscode-todo-highlight' 'lefragnani.project-manager' 'christian-kohler.path-intellisense' 'DavidAnson.vscode-markdownlint' 'akamud.vscode-javascript-snippet-pack' 'xabikos.javascriptsnippets' 'oderwat.indent-rainbow' 'wix.vscode-import-cost' 'abusaidm.html-snippets' 'spywhere.guides' 'dbaeumer.vscode-eslint' 'dsznajder.es7-react-js-snippets' 'CoenraadS.bracket-pair-colorizer' 'eamodio.gitlens' 'k--kato.intellij-idea-keybindings' 'formulahendry.auto-close-tag' 'formulahendry.auto-rename-tag' 'esbenp.prettier-vscode' 'EditorConfig.EditorConfig'
do
  code --install-extension $i
done

echo "${GREEN}第四步：写入常用配置信息${GRAY}"
echo "* 下面我们将会写入一些配置信息"
echo "* 这些配置可以帮你自动格式化代码、自动配置换行空格等等"
echo "${RED}* 需要注意：写入配置会覆盖之前的配置信息，以下是你现在的配置：${GRAY}"
cat $HOME/Library/Application\ Support/Code/User/settings.json
echo "${RED}* 我们会帮你保存一个备份在这个目录下，原有配置不会丢失，放心。${GRAY}"
cp $HOME/Library/Application\ Support/Code/User/settings.json $HOME/Library/Application\ Support/Code/User/settings.json.bak
echo "${BLUE}配置已经做好保存，摁下任意键继续${GRAY}"
read -p "..."

# 写入默认配置
echo '{
  "editor.formatOnSave": true,
  "prettier.singleQuote": true,
  "prettier.semi": false,
  "prettier.trailingComma": "all",
  "prettier.arrowParens": "always",
  "window.zoomLevel": 0,
  "javascript.validate.enable": false,
  "editor.tabSize": 2
}
' > $HOME/Library/Application\ Support/Code/User/settings.json

DATE=`date +%Y-%m-%dT%H:%M:%S`
# 写入安装埋点升级的时候，需要 remove 这个代码，避免把其他行为给覆盖掉了
mkdir $HOME/.myvscode/_setting
echo '[{
  "action_type": "vscode",
  "action": "setup",
  "action_detail": "'$DATE'"
}]' > $HOME/.myvscode/_setting/actions.json

echo "${GREEN}第五步：开始流畅的写代码吧！${GRAY}"
code