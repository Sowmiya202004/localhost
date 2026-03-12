<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
    <title>Java App</title>

    <script>
        function callApi() {
            fetch('api/hello')
                .then(response => response.json())
                .then(data => {
                    document.getElementById("result").innerText = data.message;
                })
                .catch(error => {
                    document.getElementById("result").innerText = "API call failed";
                });
        }
        function calculate() {

            let num1 = parseFloat(document.getElementById("num1").value);
            let num2 = parseFloat(document.getElementById("num2").value);
            let operator = document.getElementById("operator").value;
        
            let result;
        
            if(operator == "+")
                result = num1 + num2;
        
            else if(operator == "-")
                result = num1 - num2;
        
            else if(operator == "*")
                result = num1 * num2;
        
            else if(operator == "/")
                result = num1 / num2;
        
            document.getElementById("result").innerText = "Result: " + result;
        }
</script>
    </script>
</head>
<body>
    <h2>Basic Calculator</h2>
    
    <label>Number 1:</label>
    <input type="number" id="num1"><br><br>
    
    <label>Number 2:</label>
    <input type="number" id="num2"><br><br>
    
    <label>Operation:</label>
    <select id="operator">
        <option value="+">Addition (+)</option>
        <option value="-">Subtraction (-)</option>
        <option value="*">Multiplication (*)</option>
        <option value="/">Division (/)</option>
    </select>
    
    <br><br>
    
    <button onclick="calculate()">Calculate</button>
    
    <button onclick="callApi()">Call API</button>
    
    <p id="result"></p>

</body>
</html>


