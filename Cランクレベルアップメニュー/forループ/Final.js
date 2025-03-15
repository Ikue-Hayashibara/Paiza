const main = (input) => {
    
    const inputArr = input.trim().split("\n");
    const nmkArr = inputArr[0].split(" ");
    inputArr.shift();
    const writeNumArr = inputArr.map(item => item.split(" "))
    const N = nmkArr[0] //参加人数
    const M = nmkArr[1]; //最初の整数
    const K = nmkArr[2]; //あたり数
    let pointArr = writeNumArr.map(item => item.filter(item => item === K).length);
    
    pointArr.map(item => console.log(item));
    
}
main(require("fs").readFileSync("/dev/stdin","utf-8"));