# Chapter 06: 在 Cursor 中定制 Vim

> Cursor 提供了优秀的 Vim 支持。本章帮助你配置适合自己的环境。

## 推荐配置 (见 config/example.vimrc)

关键设置：
- `relativenumber` + `number`
- `inoremap jj <Esc>`
- leader 键映射
- statusline 定制

## Cursor 特定技巧

- Vim 模式切换 (Ctrl-Shift-P > Toggle Vim Mode)
- 与 LSP、补全、AI 功能的结合 (`gd` 跳转定义, `K` 显示悬浮)
- 使用 `:set` 命令动态调整
- 推荐在 Cursor settings.json 中配置 Vim 相关选项

## 练习

1. 加载 config/example.vimrc
2. 添加自己的 jj 映射和 leader 键
3. 测试在 Cursor 中复制粘贴系统剪贴板
4. 创建自己的 ~/.vimrc 或 Cursor 配置

**下一章**：高级重构模式。
