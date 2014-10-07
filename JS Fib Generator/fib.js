function fib(num) {
    if(num <= 1) {
        return num;
    } else {
        return (fib(num - 1) + fib(num - 2));
    }
}

function popup() {
    var userNum = window.prompt("Please enter a Fibonacci sequence number: ", "");
    var result = fib(userNum);
    var message =  "The " + userNum + " element in the Fibonacci sequence is: " + result;
    document.getElementById("displayRes").innerHTML = message;
}
