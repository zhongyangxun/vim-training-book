# Chapter 04: Search, Replace & Global 命令

> 掌握搜索和替换，能让你在大型代码库中高效工作。

## 核心命令

- `/pattern` , `n` `N` : 搜索
- `*` `#` : 搜索当前词
- `:s/from/to/g` : 替换 (当前行)
- `:%s/from/to/gc` : 全文件替换并确认 (c=confirm)
- `:g/pattern/d` : 删除匹配行
- `:g/pattern/s/old/new/g` : 在匹配行上替换
- `:v/pattern/command` : 对不匹配的行执行

**正则基础**：
- `\v` - very magic 模式
- `\<word\>` - 整词匹配

## 练习

在 exercises/refactor-example.js 中练习全局替换函数名，使用 `:g` 删除 TODO 行。

**下一章**：buffers 和窗口管理。
