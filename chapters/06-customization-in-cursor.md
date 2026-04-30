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

## Vim Keybinding Conflicts (常见问题解决)

Cursor (VS Code 基础) 中 Vim 扩展 (VSCodeVim) 常与 IDE 快捷键冲突，尤其是 `Ctrl-i` (Vim jumplist forward) 与 "Toggle Sidepanel" 或补全建议冲突。这在 [Chapter 01](01-motions-and-text-objects.md) 的跳转部分已提及。

**推荐 settings.json 配置** (Preferences: Open Settings (JSON))：

```json
{
  "vim.useCtrlKeys": false,
  "vim.handleKeys": {
    "<C-o>": true,
    "<C-i>": true
  }
}
```

- `useCtrlKeys: false` 恢复 IDE 对大多数 Ctrl 键的控制。
- `handleKeys` 明确让 Vim 处理跳转历史 (jumplist)。

**keybindings.json 精细覆盖** (Preferences: Open Keyboard Shortcuts (JSON)) 示例：

```json
[
  {
    "key": "ctrl+i",
    "command": "-workbench.action.toggleSidebarVisibility",
    "when": "editorTextFocus && vim.active && vim.mode == 'Normal'"
  },
  {
    "key": "ctrl+i",
    "command": "extension.vim_ctrl+i",
    "when": "editorTextFocus && vim.active && vim.mode == 'Normal' && !suggestWidgetVisible && !inDebugRepl"
  }
]
```

重启窗口或 Reload Window 后生效。详见 VSCodeVim 文档和 Cursor 键盘快捷键设置。

## 练习

1. 加载 `config/example.vimrc`
2. 添加自己的 `jj` 映射和 leader 键
3. 在 settings.json 添加上述 Vim 配置，测试 `Ctrl-o` / `Ctrl-i` 在 motions 章节是否正常 (结合侧边栏)
4. 测试在 Cursor 中复制粘贴系统剪贴板
5. 创建自己的 `~/.vimrc` 或 Cursor 配置，并记录常用冲突解决方法

**下一章**：高级重构模式。
