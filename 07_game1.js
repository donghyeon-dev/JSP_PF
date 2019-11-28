var game = document.querySelector("#game1");
var node = [];
var num = 0;
var backNum = 25;
var timer;
var time = 0;
var count = 0;
divide = 10.0;
k = 0;

function start() {
	if(timer == null){
    timer = setInterval('increment()', 1000 / divide);
	}
	
}
function increment() {
    k ++;
    document.querySelector(".timer").innerHTML = (k / divide);
    time = (k/divide);
}
function stop() {
    clearInterval(timer);
}
function reset() {
	stop();
    k = 0;
    document.querySelector(".timer").innerHTML = "0.0";
}


function tdEvent(event) {
        var target = event.target;
        for (var y = 0; y < 5; y++) {
            for (var x = 0; x < 5; x++) {
                if (node[y][x] == target && node[y][x].textContent < 25 && node[y][x].textContent == num) {
                    if (timer == undefined) {
                        start();
                        console.log("start() 실행");
                    }
                    target.textContent = backNum;
                    backNum += 1;
                    num += 1;
                } else if (node[y][x] == target && node[y][x].textContent >= 25 && node[y][x].textContent == num) {
                    target.textContent = "★";
                    console.log(num);
                    num += 1;
                }
            }
        }


}

function setRandom() {


        for (var n = 0; n < 1000; n++) {
            var rx = Math.floor((Math.random() * 5));
            var ry = Math.floor((Math.random() * 5));

            var temp = node[rx][ry].textContent;
            node[rx][ry].textContent = node[0][0].textContent;
            node[0][0].textContent = temp;


        }

}

function basic() {
        var i = 0;
        var frag = document.createDocumentFragment();
        var table = document.createElement("table");
        frag.append(table);

        for (var y = 0; y < 5; y++) {
            var tr = document.createElement("tr");
            table.append(tr);
            node.push([]);
            console.log(node);
            for (var x = 0; x < 5; x++) {
                var td = document.createElement("td");
                td.addEventListener("click", tdEvent);
                td.addEventListener("mouseover", tdMouseover);
                td.addEventListener("mouseout", tdMouseout);
                td.textContent = i;
                tr.append(td);
                node[y].push(td);
                i += 1;
            }
        }
        game.append(frag);
}





function tdMouseover(e) {
        var target = e.target;
        for (var y = 0; y < 5; y++) {
            for (var x = 0; x < 5; x++) {
                if (node[y][x] == target) {
                    target.style.border = "2px solid blue";
                }
            }
        }
}

function tdMouseout(e) {
        var target = e.target;
        for (var y = 0; y < 5; y++) {
            for (var x = 0; x < 5; x++) {
                if (node[y][x] == target) {
                    target.style.border = "2px solid black";
                }
            }
        }
}