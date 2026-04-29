# Vim 速查表（中级到熟练版）

本文件设计为在 Vim 中快速翻阅。使用 `/` 搜索关键词，或使用 `[[` `]]` 跳转章节（需配置 folds 或手动）。

所有命令默认在 **Normal 模式** 下执行（按 ESC 确保）。插入模式下用 `<C-o>` 临时执行 Normal 命令。

## 1. 基础移动 (Motions) - 核心中的核心

### 字符/单词/行移动
- `h j k l` - 左下上右（推荐用 `hjkl` 代替箭头）
- `w b e` - 单词前/后/末尾 (W B E 大写忽略标点)
- `0 ^ $` - 行首/第一个非空字符/行尾
- `gg G` - 文件开头/结尾
- `f{char} F{char}` - 向前/向后查找字符 (`, ;` 重复)
- `t{char} T{char}` - 到字符前/后
- `{` `}` - 段落跳转
- `(` `)` - 句子跳转

### 跳转与标记
- `` ` `` `` ' `` - 跳转到标记 (`` `a `` 精确位置, `'a` 行首)
- `m{a-z}` - 设置标记 a-z
- `Ctrl-o` `Ctrl-i` - 跳转历史 (back/forward)
- `gd` - 跳转到定义 (Cursor 中增强)
- `%` - 匹配括号跳转

### Text Objects （最强大功能！必须熟练）
**格式**： `operator + [i|a] + object`

- `iw aw` - inner/around word
- `iW aW` - inner/around WORD (空格分隔)
- `i" a" i' a'` - 引号内/外
- `i( i) i{ i} i[ i]` / `ib iB` - 括号/大括号/方括号
- `it at` - XML/HTML tags 内/外 (`cit` 改 tag 内容超实用)
- `i\` `a\` - 反引号
- `ip ap` - 段落 (paragraph)

**练习提示**： `ciw` = change inner word, `di"` = delete inside quotes, `yi{` = yank inside brace, `va}` = visual around brace。

## 2. 操作符 (Operators) - 与 motions 组合使用

- `d` - delete (剪切)
- `c` - change (删除并进入插入)
- `y` - yank (复制)
- `>` `<` - indent/outdent
- `=` - 自动格式化
- `g~` - 切换大小写
- `gu` `gU` - 转小写/大写
- `!` - 通过外部命令过滤 (e.g. `!sort`)

**组合示例**：
- `dw` 删除单词
- `ct,` 改到逗号前
- `yap` 复制段落
- `>i{` 缩进大括号内内容
- `=ip` 格式化段落

## 3. 寄存器 (Registers) - 复制粘贴进阶

- `"{reg}` - 指定寄存器 (a-z, ", 0-9, -, +, *, /)
- `"ay` - 复制到寄存器 a
- `"ap` - 粘贴寄存器 a
- `""` - unnamed register (默认)
- `"_` - blackhole register (不影响寄存器，如 `"_dd` 删除不进剪贴板)
- `"+` ` "*` - 系统剪贴板 (Cursor 中通常工作良好)
- `:reg` - 查看所有寄存器

**技巧**： `"+y` 复制到系统剪贴板， `"0p` 粘贴最后 yank（不被 delete 覆盖）。

## 4. 宏 (Macros) - 重复操作神器

- `qa` ... `q` - 录制到寄存器 a
- `@a` - 执行宏 a
- `@@` - 重复上次宏
- `100@a` - 执行 100 次
- `qA` - 追加到已有宏

**最佳实践**：
1. 在一行上测试宏
2. 用 `qa` 录制
3. 用 `@a` 测试
4. 用 `:%norm @a` 或 visual 块选择后 `:norm @a` 批量应用

## 5. 搜索、替换与 Global

- `/pattern` `?pattern` - 向前/向后搜索 (n N 下一个)
- `* #` - 搜索当前单词
- `:s/old/new/g` - 当前行替换
- `:%s/old/new/gc` - 全文件替换并确认
- `:g/pattern/command` - global 执行 (e.g. `:g/TODO/d` 删除所有 TODO 行)
- `:v/pattern/command` - 反向 global

**正则技巧**： `\w` 单词字符, `\s` 空白, `\< \>` 词首词尾。

## 6. 多文件与视图

- `:e file` - 编辑文件
- `:bnext :bprev :buffers` - buffer 切换 (`:ls`, Ctrl-^ 切换上一个)
- `:split :vsplit` - 分屏 (`:sp file`, Ctrl-w w 切换窗口)
- `:tabnew :tabnext` - 标签页
- `Ctrl-w` + `h j k l` - 窗口间移动
- `Ctrl-w` + `=` - 均分窗口大小
- `zo zc` - 折叠打开/关闭 (需设置 foldmethod)

## 7. Cursor 环境特定技巧

- Cursor Vim 模式下许多插件已内置 (LSP, treesitter 等)
- `:set number relativenumber` - 显示相对行号 (超级有用)
- `leader` 键通常是 `\` 或 `Space` (可在 .vimrc 配置)
- `jj` 或 `jk` 映射为 <Esc> (推荐)
- `Ctrl-p` / `Ctrl-n` 在插入模式补全
- 使用 `gd` `K` 等 LSP 功能

**推荐 .vimrc 设置** (见 config/example.vimrc)：
```vim
set number relativenumber
set ignorecase smartcase
set incsearch
nnoremap <leader>w :w<CR>
inoremap jj <Esc>
```

## 8. 高级与调试

- `q:` - 查看命令历史
- `Ctrl-r` - 在插入模式粘贴寄存器
- `gv` - 重新选择上次 visual
- `:set list` - 显示不可见字符
- `ga` - 查看字符编码
- `g Ctrl-g` - 查看文件统计

## 练习建议
- 每天挑选 3-5 个命令，在 exercises/ 目录下文件反复练习直到成为肌肉记忆
- 录制宏练习重复操作
- 用本文件自身作为练习素材：尝试用 `ciw` 修改单词等

**下一章**：打开 [chapters/01-motions-and-text-objects.md](chapters/01-motions-and-text-objects.md) 开始系统训练。

**提示**：按 `u` 撤销，`Ctrl-r` 重做。遇到问题 `:help {command}`。

更新日期: 2026-04-30
