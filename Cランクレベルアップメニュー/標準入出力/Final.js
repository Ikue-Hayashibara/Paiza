const main = (input) => {
    const lines = input.split("\n");
    const n = lines[0];
    
    for (let i = 1; i <= n; i++) {
        const a = lines[i].split(" ")[0];
        const b = Number(lines[i].split(" ")[1]) + 1;
        console.log(`${a} ${b}`);
    }
}

main(require("fs").readFileSync("/dev/stdin","utf-8"));