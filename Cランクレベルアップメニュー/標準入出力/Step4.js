const arrMax = (a,b) => {return Math.max(a,b);}

const main = (input) => {
    const lines = input.split("\n");
    const max = lines.reduce(arrMax);
    console.log(max);
}


main(require("fs").readFileSync("/dev/stdin","utf-8"));