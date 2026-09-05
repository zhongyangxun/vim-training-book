# Chapter 03 Registers & Macros 解决方案

对照 [exercises/registers-macros-practice.md](../exercises/registers-macros-practice.md)。下列按键是一种高效做法，不是唯一答案。

## 练习 1 — `""` 被 `dd` 覆盖

1. 光标停在任意一行，`yy`
2. `j` 移到下一行，`dd`
3. `p`：贴出的是刚删的行
4. `"0p`：贴出的是步骤 1 yank 的那一行
5. `:reg`：看 `""` 和 `0` 内容不同

## 练习 2 — `"a` / `"b` / `"_`

1. 光标放到 `function greet` 那一行，`V` 选中整个函数（到 `}`），`"ay`
2. 移到「不要的注释」那一行，`"_dd`（若普通 `dd`，`""` 会被覆盖，但 `"a` 仍应完好）
3. 光标放到 `const items` 那一行，`V` 选到 `];`，`"by`（或 `"+y`）
4. 到文件末尾「alpha 应出现在下面」的空行，`"ap`
5. 「beta 应出现在下面」的空行，`"bp`

若 alpha 贴不回来，多半是步骤 1 没进 `"a`，或后来又用 `"ay` 覆盖了。`:reg a b` 可检查。

## 练习 3 — 列表加 `- `

光标在 `apple` 行首：

1. `qa`
2. `I- <Esc>`（行首插入 `- `，回到 Normal）
3. `j`（停在 `banana` 行首，这是回放的关键）
4. `q`
5. `@a` 检查一行，再 `6@a` 或连按 `@@`

常见失败：录制时用了 `i` 而光标不在行首，或结束时忘了 `j`。重新 `qa` 会覆盖寄存器 a。

## 练习 4（可选）— 同构的 `console.log`

光标在第一行行首，一种写法：

1. `qa`
2. `0f.lciwwarn<Esc>`（`log` → `warn`）
3. `A // reviewed<Esc>`
4. `j`
5. `q`
6. `3@a`

也可以 `^` 后 `cwconsole.warn` 再改行尾，只要每一步对每一行都成立即可。

不要把这套宏拿到 [exercises/refactor-example.js](../exercises/refactor-example.js) 上硬套：那里两个函数形状不同，应留给第 4 章的 `:%s` / `*` 或第 7 章的重构练习。

## 和 `.` 的分工（复习）

- 同一处、同一种改动：`ciw` 一次，然后 `.`
- 改完还要移动、再改下一处：录宏，让光标自己走到下一处
