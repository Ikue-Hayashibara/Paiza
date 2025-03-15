function add30Minutes(time) {
    
    let realTime = time.shift();
    
    let [hours, minutes] = realTime.split(":").map(Number);
    let [addHours, addMinutes] = time.map(Number);
    let addTotalMinutes = addHours * 60 + minutes + addMinutes;
    let totalMinutes = hours * 60 + addTotalMinutes;
    
    
    let newHours = Math.floor(totalMinutes / 60) % 24; //小数点(分)切り捨てで24時間表記に対応
    let newMinutes = totalMinutes % 60; //分
    
    return `${String(newHours).padStart(2, '0')}:${String(newMinutes).padStart(2, '0')}`;
}

const main = (input) => {
    const lines = input.split("\n");
    const lines2 = lines.map(num => num.split(" "));
    const n = lines[0];
    for (var i = 1; i <= n; i++) {
        console.log(add30Minutes(lines2[i]))
    }
}

main(require("fs").readFileSync("/dev/stdin","utf-8"));
