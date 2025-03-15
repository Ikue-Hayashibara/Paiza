const main = (input) => {
    const lines = input.trim().split("\n");
    const n = lines[0];
    lines.shift();
    lines.sort((a,b) => a - b);
    lines.map(item => console.log(item));
}

main(require("fs").readFileSync("/dev/stdin","utf-8"));