var seconds = 0
var minutes = 0
var timeText = ""
var online = "1"

checkOnline()
async function checkOnline() {
    let online = await eel.checkIfOnline()()
    if (online == "1") {
        document.getElementById("status").innerHTML = "online";
    } else if (online == "0") {
        document.getElementById("status").innerHTML = "offline";
    }
    console.log(online)
}


function barcodeRun(event) {
    //check online status

    //See notes about 'which' and 'key'
    if (event.keyCode == 13) {
        //get value
        var barNum = document.getElementById("barcodeText").value;
        console.log("get barnum" + barNum)
        if (online == "1") {
            queryOnline()
            async function queryOnline() {
                eel.queryWebBarcode(barNum)(printNum)
            }
        } else if (online == "0") {
            queryOffline()
            async function queryOffline() {
                eel.queryLocalBarcode(barNum)(printNum)
            }
        }

        //callback function
        function printNum(time) {
            console.log("returned " + time)
            window.open("timer.html", "_self")
                //document.getElementById("timeText").innerHTML = time;
        }
    }
}

function reset() {
    window.open("main.html", "_self")
}

function sec5() {
    seconds = seconds + 5
    if (seconds >= 60) {
        seconds = 0
        minutes = minutes + 1
    }
    document.getElementById("timeText").innerHTML = minutes.toString() + " : " + seconds.toString();
}

function sec10() {
    seconds = seconds + 10
    if (seconds >= 60) {
        seconds = 0
        minutes = minutes + 1
    }
    document.getElementById("timeText").innerHTML = minutes.toString() + " : " + seconds.toString();
}

function sec30() {
    seconds = seconds + 30
    if (seconds >= 60) {
        seconds = 0
        minutes = minutes + 1
    }
    document.getElementById("timeText").innerHTML = minutes.toString() + " : " + seconds.toString();
}

function min1() {
    minutes = minutes + 1
    document.getElementById("timeText").innerHTML = minutes.toString() + " : " + seconds.toString();
}

//function setTime()
//{
//    window.open("timer.html","_self");
//}
function manualRun() {
    eel.setTime(minutes.toString() + " " + seconds.toString())()
    window.open("timer.html", "_self");
}