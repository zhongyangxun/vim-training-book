# Chapter 03: Registers & Macros - 寄存器与宏录制

> 本章是生产力飞跃的关键。寄存器让你管理多个剪贴板，宏让你自动化重复任务。这是中级到高级的标志。

## 3.1 Registers (寄存器)

Vim 有 多个寄存器：

- `""` : 默认 (unnamed) 寄存器
- `"0` - `"9` : 最近 yank/delete 历史
- `"a` - `"z` : 命名寄存器 (你自己管理)
- `"_` : blackhole (删除不保存)
- `"+` : 系统剪贴板 (Cursor 中有效)
- `"/` : 最后搜索模式

**常用命令**：
- `"ay` : yank 到寄存器 a
- `"ap` : paste 寄存器 a
- `"_dd` : 删除但不影响任何寄存器
- `:reg` : 查看寄存器内容

**技巧**：
- 使用小写字母覆盖，大写字母 (`"A`) 追加内容
- `"+y` 复制到系统剪贴板

## 3.2 Macros (宏) - 杀手级功能

录制序列并重复：

1. `qa` - 开始录制到寄存器 a
2. 执行一系列操作 (motions, edits)
3. `q` - 停止录制
4. `@a` - 执行宏 a
5. `@@` - 重复最后执行的宏
6. `100@@` - 执行 100 次

**批量应用**：
- 选中多行后 `:norm @a`
- 或 `:%norm @a` 对整个文件

## 3.3 练习

> 在 [exercises/refactor-example.js](exercises/refactor-example.js) 中：
> - 录制一个宏来批量重命名函数 (qa ... q)
> - 使用寄存器复制不同部分代码
> - 练习 `"_dd` 删除注释不污染寄存器

> 创建一个练习：录制宏来为列表添加项目符号。

查看 [solutions/03-macros-solutions.md](solutions/03-macros-solutions.md)

## 3.4 自我评估

- [ ] 能使用命名寄存器在多个位置复制粘贴
- [ ] 成功录制并回放一个有用的宏
- [ ] 知道何时使用 blackhole 寄存器
- [ ] 能用 `:norm` 批量应用宏

**下一章**： [chapters/04-search-replace-global.md](chapters/04-search-replace-global.md)

坚持练习宏，它会改变你的工作方式。
