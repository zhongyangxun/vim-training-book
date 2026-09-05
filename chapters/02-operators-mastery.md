# Chapter 02: Operators Mastery - 操作符的艺术

> 本章重点：将 motions 和 text objects 与 operators 结合，达到「想删就删，想改就改」的境界。学习如何组合出强大命令。

## 2.1 Operators 核心命令

| Operator | 含义 | 典型用法 |
|----------|------|----------|
| `d` | delete (删除并放入寄存器) | `dw` `diw` `dd` `d$` |
| `c` | change (删除并进入 Insert) | `cw` `ciw` `cc` `c$` |
| `y` | yank (复制) | `yw` `yiw` `yy` `yap` |
| `>` `<` | 缩进/反缩进 | `>i{` `>>` |
| `=` | 自动缩进 | `=ip` `==` |
| `g~ gu gU` | 切换/转小/转大写 | `g~iw` `guaw` |

**黄金法则**：Operator + Motion/TextObject = 强大编辑。

## 2.2 高级组合技巧

- `dib` : 删除括号内的内容 (不含括号)
- `ci[` : 修改方括号内
- `yat` : 复制整个 tag (包括标签)
- `>a{` : 缩进包括大括号的内容
- `gUiw` : 将单词转为大写

**重复操作**：
- `.` - 重复上一个 operator + motion 操作 (神器！)
- `n.` - 重复 n 次

## 2.3 练习

> 打开 [exercises/refactor-example.js](exercises/refactor-example.js)，完成以下任务：
> 1. 使用 `ciw` 修改所有变量名
> 2. 使用 `dd` 删除无用行
> 3. 使用 `>` 调整缩进
> 4. 使用 `.` 重复操作加速

> 在 [exercises/prose.txt](exercises/prose.txt) 中：
> - 清理所有重复词
> - 将某些句子转为大写
> - 练习 `yap` 复制段落然后 `p` 粘贴

查看 [solutions/02-operators-solutions.md](solutions/02-operators-solutions.md) 获取提示。

## 2.4 自我评估 & 下一章

完成本章后，你应该能快速清理代码和文本。

**下一章**： [chapters/03-registers-and-macros.md](chapters/03-registers-and-macros.md) - `.` 只能重复上一次改动；下一章会从默认寄存器接到多个剪贴板，以及把多步操作录成宏。

**提示**：多用 `.` 重复命令，这会极大提升效率。
