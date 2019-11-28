var game = document.querySelector("#game");
var color = ["red", "red", "orange", "orange", "yellow", "yellow",
    "green", "green", "blue", "blue"];
var data = [];
var num = 1;
var td;
function basic() {
    var frag = document.createDocumentFragment();
    var n = 0;
    for (var y = 0; y < 2; y++) {
        num = 0;
        var tr = document.createElement("tr");
        frag.append(tr);
        var num = 1;
        for (var x = 0; x < 5; x++) {
            td[x] = document.createElement("td");
            tr.append(td[x]);
            data.push(n);
            td[x].addEventListener('click', clickBtn);
            td[x].className = "close" + num;
            num += 1;
            n += 1;
            console.log("td[",x,"]className : ",td[x].className);
            console.log("data : ",data);
        }
    }
    game.append(frag);
}

var firSelected;
var firOp;
var secSelected;
var secOp;
var clickBtn = function (e) {
    var target = e.target;
    
    if(target.className ==="open"){

    }else if(target.className ===("close1")){
        target.className = "open1";
        if(firSelected === undefined){
            firSelected = "close1";
            firOp = "open1";
        }
        else{
            secSelected = "close1";
            secOp = "open1";
        }
        setTimeout(function() {
            target.className = ("close1");   
        }, 3000);
    }else if(target.className ===("close2")){
        target.className = "open2";
        setTimeout(function() {
            target.className = ("close2");
            if(firSelected === undefined){
                firSelected = "close2";
                firOp = "open2";
            }
            else{
                secSelected = "close2";
                secOp = "open2";
            }
        }, 1000);
    }else if(target.className ===("close3")){
        target.className = "open3";
        setTimeout(function() {
            target.className === ("close3");
            if(firSelected = undefined){
                firSelected = "close3";
                firOp = "open3";
            }
            else{
                secSelected = "close3";
                secOp = "open3";
            }
        }, 1000);
    }else if(target.className ===("close4")){
        target.className = "open4";
        setTimeout(function() {
            target.className = ("close4");
            if(firSelected === undefined){
                firSelected = "close4";
                firOp = "open4";
            }
            else{
                secSelected = "close4";
                secOp = "open4";
            }
        }, 1000);
    }else if(target.className ===("close5")){
        target.className = "open5";
        setTimeout(function() {
            target.className = ("close5");
            if(firSelected === undefined){
                firSelected = "close5";
                firOp = "open5";
            }
            else{
                secSelected = "close5";
                secOp = "open5";
            }
        }, 1000);
    }
    judge();

    console.log("firstSelectd : ", firSelected);
    console.log("firOp : ", firOp);
    console.log("SecSelected : ", secSelected);
    console.log("secOp : ",secOp);
}

function judge(){
    if(firSelected != undefined && secSelected != undefined){
        if(firSelected === secSelected){
            for(var h = 0; h < 5; h++){
                if(td[h].className === firSelected){
                td[h].className = firOp;
                }
            }
        }
    }
}

var timer;
var count = 0;
divide = 10.0;
k = 0;

function start() {
	if(timer == null){
    timer = setInterval('increment()', 1000 / divide);
	}
	
}
function increment() {
    k += 1;
    document.querySelector(".timer").innerHTML = (k / divide);
}
function stop() {
    clearInterval(timer);
    timer = null;
}
function reset() {
	stop();
    k = 0;
    document.querySelector(".timer").innerHTML = "0.0";
}