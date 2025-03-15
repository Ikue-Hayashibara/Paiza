const main = (input) => {
    const n = input;
    while (n.length < 3) {
        n = "0" + n;
    }
    console.log(n);
}

main(require("fs").readFileSync("/dev/stdin","utf-8"));
