const main = (input) => {
    const lines = input.split("\n");
    const n = lines[0];
    for (let i = 1; i <= n; i++) {
        console.log(lines[i]);
    }
}

main(require("fs").readFileSync("/dev/stdin","utf-8"));