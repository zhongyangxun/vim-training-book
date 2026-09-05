# Vim 练习样本 - Chapter 03 专用

按 [chapters/03-registers-and-macros.md](../chapters/03-registers-and-macros.md) 的指示练习。
用完可用 `:e!` 重置到上次保存（或 git checkout）再练一遍。

## 练习 A：两个剪贴板 + blackhole

### 片段 alpha（建议 `"ay` 整段，含 function 那几行）

function greet(name) {
return 'hello ' + name;
}

### 不要的注释（建议 `"_dd`，不要用普通 `dd`）

这行注释删掉，且不要覆盖你刚 yank 进 a 的内容。

### 片段 beta（建议 `"by` 或 `"+y`）

const items = [
{ id: 1, name: 'alpha' },
{ id: 2, name: 'beta' },
];

---

## 练习 B：第一条宏（结构相同的行）

目标：每一行变成 `- apple` 这种项目符号。
在第一行 `qa` 录制，插入 `- ` 后 `j` 停在下一行行首，`q` 结束，再 `@a` / `@@`。

apple
banana
cherry
date
elderberry
fig
grape
honeydew

---

## 练习 C（可选）：略长一点的同构宏

目标：`console.log` 改成 `console.warn`，行尾加上 ` // reviewed`。
仍然要求：宏结束时光标在下一行行首。

console.log('alpha');
console.log('beta');
console.log('gamma');
console.log('delta');

---

贴回练习 2 的缓冲区（先不要写内容，用 `"ap` / `"bp` 填）：

alpha 应出现在下面：

beta 应出现在下面：
