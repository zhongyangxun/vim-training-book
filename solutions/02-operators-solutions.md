# Chapter 02 Operators 练习解决方案

**高效编辑 refactor-example.js 的建议序列**：

1. 定位函数名：`ciw` (光标在 oldFunctionName 上) → 输入新名称
2. 删除重复代码：移动到重复 let 行，使用 `dd` 或 `2dd`
3. 清理 console.log： `ci(` 修改字符串内容，或使用 `.` 重复
4. 缩进调整： `=G` 格式化整个文件 (如果有 indent 配置)
5. 使用 visual 模式 `V` 选中多行后 `>` 批量缩进

**重复操作秘诀**：先做一次完整操作，然后用 `.` 重复。结合 `n.` 对搜索结果重复。

掌握 operators + text objects + `.` 后，你的编辑速度会提升 3-5 倍。

**下一练习**：继续 Chapter 03 的宏练习。
