# Vim 训练书 - 从中级到熟练掌握

**目标**：帮助你在 Cursor 中熟练使用 Vim，实现「唯快不破」的编辑效率。专为中级用户设计（已能基本操作，但想掌握 motions、text objects、宏、寄存器、重构技巧等）。

预计**2 周**坚持练习，每天 20-30 分钟，即可显著提升速度，达到无鼠标、高效盲打的水平。

## 如何使用本训练书

1. 进入目录：
   ```bash
   cd vim-training-book
   ```

2. 使用 Vim 打开章节文件开始练习（推荐）：
   ```bash
   vim chapters/01-motions-and-text-objects.md
   ```

3. **重要练习方法**：
   - 每个章节都有「> 练习指令」块，按指示在对应 exercises/ 文件中操作
   - 使用 `gf` 命令跳转到链接的文件（光标放在文件名上按 gf）
   - 完成练习后可查看 solutions/ 对应文件对比高效命令
   - 每天完成 1-2 个章节 + 对应 exercises
   - **坚持用 Vim 编辑所有文件**，包括本训练书本身

4. **进度跟踪**：在下方表格中记录完成日期，或使用本文件末尾的 checklist。

5. 结合 Cursor 的 Vim 模式：确保 Cursor 设置中 Vim 扩展已启用，并加载本项目的 config/example.vimrc 作为参考。

## 学习路径

参见计划中的 Mermaid 图（可在 cheat-sheet.md 中查看完整版）：
- 第 1-2 章：巩固基础动作与操作符（motions & text objects）
- 第 3-4 章：寄存器、宏、搜索替换（核心生产力提升）
- 第 5 章：多文件管理（buffers, windows, tabs）
- 第 6 章：Cursor 环境下的个性化配置 (含 Vim keybinding 冲突解决，如 Ctrl-i)
- 第 7-8 章：高级模式、重构实战、日常 drill

**每日 Routine 建议**（15-20 分钟）：
- 10 分钟章节阅读 + 练习
- 5 分钟在 exercises/ 文件中重复 drill（使用宏录制重复练习）
- 5 分钟回顾 cheat-sheet.md 中的关键命令

运行 `vimtutor` 作为补充（如果系统安装了）。

## 进度跟踪表

| 章节 | 状态 | 完成日期 | 备注 |
|------|------|----------|------|
| README + cheat-sheet | 已完成 | 2026-04-30 | 包含详细使用说明和速查表 |
| Chapter 01: Motions & Text Objects | 已完成 | 2026-04-30 | 重点练习 motions 和 text objects |
| Chapter 02: Operators Mastery | 已完成 | 2026-04-30 | operators + . 重复 |
| Chapter 03: Registers & Macros | 已完成 | 2026-04-30 | 宏和命名寄存器 |
| Chapter 04: Search/Replace & Global | 已完成 | 2026-04-30 | :s :g 命令 |
| Chapter 05: Buffers/Windows/Tabs | 已完成 | 2026-04-30 | 多文件管理 |
| Chapter 06: Cursor 定制 | 已完成 | 2026-04-30 | 包含 example.vimrc |
| Chapter 07: Advanced Refactoring | 已完成 | 2026-04-30 | 实战重构 |
| Chapter 08: Daily Drills | 已完成 | 2026-04-30 | 日常练习 routine |
| 所有 exercises 熟练掌握 | 推荐练习 | - | 包含 JS、HTML、文本样本 |

**完成 checklist**：
- [ ] 能盲打所有基本 motions (hjk l w b e f F t T)
- [ ] 熟练使用 text objects (ciw, ci", ci{, dit 等)
- [ ] 掌握宏录制与回放 (@a, @@)
- [ ] 能高效使用寄存器进行复制粘贴
- [ ] 熟悉分屏与 buffer 切换
- [ ] 自定义了适合自己的 .vimrc / Cursor 配置
- [ ] 能在实际项目中不使用鼠标完成 80% 编辑任务

## 推荐资源
- [简明 Vim 练级攻略](https://coolshell.cn/articles/5426.html)
- Vim Galore (进阶必读)
- `:help usr_02.txt` （Vim 内置教程）
- 本项目 `cheat-sheet.md` 作为快速参考

---

**开始练习**：使用 `gf` 跳转到 [cheat-sheet.md](cheat-sheet.md) 或直接打开 [chapters/01-motions-and-text-objects.md](chapters/01-motions-and-text-objects.md)。

坚持练习，你会爱上 Vim 的强大！

> 「Vim 就是四个字：唯快不破」—— 池建强

本训练书所有内容可在 Vim 中直接编辑和练习。欢迎随时修改补充。
