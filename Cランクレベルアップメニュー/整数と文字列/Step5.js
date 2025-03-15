const main = (input) => {
    const lines = input.split(":");
    const a = Number(lines[0]);
    const b = Number(lines[1]);
    console.log(`${a}\n${b}`);
}

main(require("fs").readFileSync("/dev/stdin","utf-8"));
