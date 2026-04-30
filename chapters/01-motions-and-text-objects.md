# Chapter 01: Motions 与 Text Objects - Vim 的移动艺术

> 本章重点：掌握高效移动光标和选中文本的方法。这是成为熟练 Vim 用户的基础。目标是让移动变成下意识反应，不再依赖箭头键或鼠标。

## 1.1 为什么 Motions 如此重要？

在 Vim 中，**几乎所有操作都是 operator + motion** 的组合：
- `d + motion` = 删除到某个位置
- `c + motion` = 修改到某个位置
- `y + motion` = 复制到某个位置

掌握 motions = 掌握 Vim 80% 的威力。

**练习心态**：把 hjkl 当成你的「手」，把 `wbe` 当成「单词跳跃」，把 text objects 当成「智能选中」。

## 1.2 核心 Motion 命令表

### 字符与单词级移动
| 命令 | 功能 | 推荐练习 |
|------|------|----------|
| `h j k l` | 左 下 上 右 | 避免使用箭头键 |
| `w b e` | 下一个词/上一个词/词尾 | `W B E` 忽略标点 |
| `f{char}` `F{char}` | 向前/后查找字符 | `;` `,` 重复/反向 |
| `t{char}` `T{char}` | 到字符前/后 | 非常实用 |
| `0 ^ $` | 行首/第一个非空/行尾 | `^` 常用 |

### 更大范围跳转
- `gg` / `G` : 文件首/尾
- `{` / `}` : 段落跳转
- `(` / `)` : 句子跳转
- `Ctrl-o` / `Ctrl-i` : 跳转回退/前进
- `` ` `` / `'` : 标记跳转 (`ma` 设置标记 a)

> **Cursor 用户注意**：`Ctrl-i` 常与 Cursor 的侧边栏切换（Toggle Sidepanel）或补全建议冲突。这是 IDE+Vim 常见问题。推荐配置见 [Chapter 06](06-customization-in-cursor.md) 中的 "Vim Keybinding Conflicts" 部分，使用 `vim.handleKeys` 让 Vim 正确处理跳转历史，同时保留 IDE 功能。

### Text Objects - 本章重点 (必须反复练习！)

**语法规则**： `[operator][i|a][object]`

**常用 objects**：
- `w` / `W` : 单词
- `"` / `'` / `` ` `` : 引号
- `(` `)` `b` : 小括号
- `{` `}` `B` : 大括号
- `[` `]` : 方括号
- `t` : XML/HTML tag
- `p` : 段落

**强大组合示例**：
- `ciw` - **change inner word**：修改当前单词（最常用！）
- `ci"` - 修改引号内的内容
- `di{` - 删除大括号内的内容
- `yat` - 复制整个 HTML tag
- `cit` - 修改 tag 内的内容 (HTML/JSX 超神)
- `va}` - visual 选中包括大括号的内容

## 1.3 练习 (在 exercises/ 目录练习)

> **练习 1**：打开 [exercises/sample-text.md](exercises/sample-text.md)，将光标移动到每个段落的第一个句子开头，使用 `^` 和 `w` 练习。目标：不看键盘完成 20 次移动。

> **练习 2**：使用 `f` / `t` 快速定位到特定字符（如找到所有 `,` 或 `(` ）。练习 `;` 重复查找。

> **练习 3 - Text Objects 专项训练**：
> - 将光标放在一个单词上，练习 `ciw` `diw` `yiw` `viw`
> - 练习 `ci"` `ci'` `ci(` `ci{`
> - 练习 `cit` (如果有 HTML)
> - 目标：10 秒内完成一个 `ciw` 操作

> **练习 4**：使用 `ma` 设置标记，移动到文件其他位置，然后 `` `a `` 跳转回去。练习多次。

> **练习 5**：在 sample-text.md 中，使用 motions 重构一段文字（删除多余词，修改句子）。

使用 `gf` 命令跳转到练习文件开始练习。

完成后，查看 [solutions/01-motions-solutions.md](solutions/01-motions-solutions.md) 对比高效做法。

## 1.4 自我评估

- [ ] 能不看键盘使用 hjkl + wbe 移动
- [ ] 熟练 `fFtT` 和 `;` `,`
- [ ] 能快速使用 `ciw`、`ci"`、`ci{` 等 text objects
- [ ] 知道 `i` vs `a` 的区别 (inner vs around)
- [ ] 能在 5 秒内修改一个单词或括号内的内容

如果以上都能做到，恭喜！你已掌握 Vim 移动的核心。

**下一章**：使用 `:e ../02-operators-mastery.md` 或 `gf` 跳转到 [chapters/02-operators-mastery.md](chapters/02-operators-mastery.md) 学习如何将 motions 与 operators 完美结合。

**提示**：本文件本身也可以作为练习素材。尝试用 `ciw` 修改本章中的「练习」两个字。

**参考**：`:help motion` 和 `:help text-objects`
