# Chapter 07 重构练习参考

**使用 Vim 高效重构 refactor-example.js 的流程**：

1. **函数重命名**：光标置于函数名，使用 `*` 查找所有出现，结合 `cgn` (change next) 或录制宏 `qa cgnNewName<Esc> n @a` 循环。

2. **清理重复代码**：使用 `V` visual line 选中重复块，然后 `d` 删除。或 `:g/let x = 1/d`。

3. **JS 清理**： 
   - `:g/console.log/s//console.info/g` 替换
   - 使用 visual block (Ctrl-v) 编辑多列数据

4. **宏应用**：录制一个清理 log 的宏，然后在多处应用 `@@`。

**最终效果**：代码干净、可读性高，所有操作均在 Normal 模式下完成，无需鼠标。

**验证**：打开文件后运行 `:set number relativenumber` 并练习。

本训练书的目标已达成 —— 你现在拥有了系统化的 Vim 练习材料。

返回 [README.md](../README.md) 查看完整 checklist 并开始你的每日 drill。
