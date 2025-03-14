// 2
// c
// d
// 2
// cat
// dog

const main = (input) => {
    
    const lines = input.trim().split("\n");
    const n = Number(lines[0]);
    const m = lines[n + 1];
    const sLines = lines.slice(n + 2);
    const cLines = lines.slice(1,n + 1);

    let answer = sLines.map(item => item.indexOf(cLines.map(citem => citem))> 0 ? "YES" : "NO");

    //answer.forEach(item => console.log(item));
    
}

main(require("fs").readFileSync("/dev/stdin","utf-8"));