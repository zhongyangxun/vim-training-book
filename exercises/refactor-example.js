// Vim 重构练习 - Chapter 02 & 07 使用
// 任务：使用 Vim operators 和 motions 清理和重构此文件
// 目标：尽量少用箭头键和鼠标，练习 ciw, dd, . 等

function oldFunctionName(paramOne, paramTwo) {
    const veryLongVariableNameThatShouldBeShorter = "hello world";
    console.log("This is a very long log message that needs to be cleaned up");
    if (veryLongVariableNameThatShouldBeShorter === "hello world") {
        console.log("Condition met");
    }
    return paramOne + paramTwo;
}

// TODO: 这个函数需要重构
function anotherOldFunction() {
    let x = 1;
    let y = 2;
    // 很多重复代码
    let x = 1;
    let y = 2;
    return x * y;
}

// 更多需要清理的代码
const data = [
    { id: 1, name: "item one" },
    { id: 2, name: "item two with very long name" }
];

console.log("End of file - please clean me up using Vim motions and operators");

module.exports = { oldFunctionName, anotherOldFunction };
