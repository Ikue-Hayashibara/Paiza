const main = (input) => {
    const lines = input.split("\n");
    let multiple3 = lines[1].split(" ").filter(item => item % 3 === 0);
    console.log(multiple3.length);

}


main(require("fs").readFileSync("/dev/stdin","utf-8"));