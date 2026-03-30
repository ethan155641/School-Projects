function multiplyBy() {
    var firstNumber = document.getElementById("first-number").value;
    var secondNumber = document.getElementById("second-number").value;
    document.getElementById("result").innerHTML = firstNumber * secondNumber;
}

function addTogether() {
    var firstNumber = document.getElementById("first-number").value;
    var secondNumber = document.getElementById("second-number").value;
    document.getElementById("result").innerHTML = parseInt(firstNumber) + parseInt(secondNumber);
}
