- 安装nvim插件，version >= 0.7，https://github.com/neovim/neovim/wiki/Installing-Neovim
- 安装clangd，在.bashrc中，将clangnd的lib以及bin路径分别设置到PATH以及LD_LIBRARY_PATH中
  - export PATH = $PATH:'clangd install dir';
  - export LD_LIBRARY_PATH = $LD_LIBRARY_PATH:'clangd lib dir'

默认使用clangd作为lsp server，如需替换clangd为ccls, 打开~/.config/nvim/lua/config/autocomplete.lua
```
将 local servers = {'clangd'}替换为 local servers = {'ccls'}
```

leader键位为：space

一些常用快捷键:
```
leader ff 搜索文件
leader gd 找到函数定义
leader gi 找到函数实现，用于子类或者虚函数
leader gr 找到函数引用
leader rn 替换变量名
ctrl t 打开目录explore
```
