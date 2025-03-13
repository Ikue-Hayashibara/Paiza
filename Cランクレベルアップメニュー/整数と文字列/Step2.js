const main = (input) => {
    const lines = input.split("\n");
    const a = lines[0];
    const S = lines[1];
    if (S.indexOf(a) >= 0) {
        console.log("YES");
    } else {
        console.log("NO");
    }
}

main(require("fs").readFileSync("/dev/stdin","utf-8"));