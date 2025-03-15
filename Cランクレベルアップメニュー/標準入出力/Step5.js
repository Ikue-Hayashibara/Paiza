
const main = (input) => {
    const n = input;
    let msg = "";
    for (let i = 0; i < n; i++) {
        msg += "paiza ";
    }
    console.log(msg.trim())
}

main(require("fs").readFileSync("/dev/stdin","utf-8"));
