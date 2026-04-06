<!DOCTYPE html>
<html lang="ja">
<head>
<meta charset="UTF-8">
<title>ルーレット</title>
</head>

<body>
<h1>1〜5ルーレット</h1>
<div id="result">？</div>
<button onclick="spin()">回す</button>

<script>
const items = [1,2,3,4,5];
let cheatResult = 3;

function spin(){
  let count = 0;

  let interval = setInterval(()=>{
    let rand = items[Math.floor(Math.random()*items.length)];
    document.getElementById("result").textContent = rand;

    count++;

    if(count > 20){
      clearInterval(interval);
      document.getElementById("result").textContent = cheatResult;
    }

  },100);
}
</script>
</body>
</html>
