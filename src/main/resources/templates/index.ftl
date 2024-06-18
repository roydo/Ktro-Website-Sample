<!DOCTYPE html>
<html lang="en">
<head>
   <meta charset="UTF-8">
   <meta name="viewport" content="width=device-width, initial-scale=1.0">
   <title>My First Ktor</title>
   <style>
       body {
            margin-block: 0; margin: 0;
            background: black;
            font-family: sans-serif;
            background: black;
        }
        div {
            width: 100%;
            text-align: center;
        }
        div, form {
            background: black;
        }
        .title_container {
            position: relative;
            z-index: 1;
        }
        .title_container::before {
            content: "";
            position: absolute;
            display: block;
            height: 50%;
            width: 100%;
            background: black;
            bottom: 0;
            z-index: -1;
        }
        h1 {
            font-family: sans-serif;
            width: fit-content;
            margin: auto;
            color: black;
            background: white;
            padding: 32px;
            border: solid 3px; 
            border-radius: 10px;
        }
   </style>
</head>
<body>
    <div style="background: white;">
        <img src="/static/ktor-cat.png" width="500" height="500" alt="Ktorオリジナルロゴ">
        <div class="title_container" style="padding-bottom: 32px; background: white;">
            <h1>My Ktor Journey</h1>
        </div>
        <form action="/" method="post">
            <input type="text" name="comment">
            <button>送信</button>
        </form>
        <div style="padding: 32px 0 64px;">
            <ul style="margin: 0; color: white;">
            <#list comments as comment>
                <li>${comment}</li>
                </#list>
            </ul>
        </div>
    </div>
</body>
</html>
