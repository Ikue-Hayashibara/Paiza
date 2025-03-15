const main = (input) => {
    const lines = input.split("\n");
    const n = lines.shift();
    const num  = lines.find(item => item === "7");
    
    console.log(num === "7" ? "YES" : "NO");

}


main(require("fs").readFileSync("/dev/stdin","utf-8"));