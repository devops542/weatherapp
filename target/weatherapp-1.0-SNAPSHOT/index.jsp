<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>Weather App</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background: linear-gradient(to right, #74ebd5, #ACB6E5);
            text-align: center;
            padding: 50px;
            color: #333;
        }
        h1 {
            color: #222;
        }
        input[type="text"] {
            padding: 10px;
            width: 200px;
            border: none;
            border-radius: 5px;
            margin: 10px 0;
        }
        button {
            padding: 10px 20px;
            background-color: #0b79d0;
            color: white;
            border: none;
            border-radius: 5px;
            cursor: pointer;
        }
        .weather-info {
            margin-top: 30px;
            font-size: 18px;
        }
    </style>
</head>
<body>
    <h1>🌤️ Weather App</h1>
    <form action="weather" method="get">
        <input type="text" name="city" placeholder="Enter city name" required />
        <button type="submit">Get Weather</button>
    </form>

    <div class="weather-info">
        <% 
            String city = request.getParameter("city");
            if (city != null && !city.trim().isEmpty()) {
        %>
            <p>Showing weather for: <strong><%= city %></strong></p>
            <p>Temperature: 28°C</p>
            <p>Condition: Sunny ☀️</p>
        <% 
            } 
        %>
    </div>
</body>
</html>

