function add30Minutes(time) {
    
    let [hours, minutes] = time.split(":").map(Number);
    let totalMinutes = hours * 60 + minutes + 30; //30分後のトータルの分換算
    
    let newHours = Math.floor(totalMinutes / 60) % 24; //小数点(分)切り捨てで24時間表記に対応
    let newMinutes = totalMinutes % 60; //分
    
    return `${String(newHours).padStart(2, '0')}:${String(newMinutes).padStart(2, '0')}`;
}

const main = (input) => {
    console.log(add30Minutes(input));
}

main(require("fs").readFileSync("/dev/stdin","utf-8"));
