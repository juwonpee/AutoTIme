var seconds = 0
var minutes = 0
var timeText = ""
var online = "1"
var timeString = ""

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

function add0() {
    if (length(timeString) <= 3) {
        timeString = "0" + timeString
    }
}

function add1() {
    if (length(timeString) <= 3) {
        timeString = "1" + timeString
    }
}

function add2() {
    if (length(timeString) <= 3) {
        timeString = "2" + timeString
    }
}

function add3() {
    if (length(timeString) <= 3) {
        timeString = "3" + timeString
    }
}

function add4() {
    if (length(timeString) <= 3) {
        timeString = "4" + timeString
    }
}

function add5() {
    if (length(timeString) <= 3) {
        timeString = "5" + timeString
    }
}

function add6() {
    if (length(timeString) <= 3) {
        timeString = "6" + timeString
    }
}

function add7() {
    if (length(timeString) <= 3) {
        timeString = "7" + timeString
    }
}

function add8() {
    if (length(timeString) <= 3) {
        timeString = "8" + timeString
    }
}

function add9() {
    if (length(timeString) <= 3) {
        timeString = "9" + timeString
    }

}

function formatTime() {
    if (length(timeString) > 1) {
        document.getElementById("timeText").innerHTML = ;
    }

}
//function setTime()
//{
//    window.open("timer.html","_self");
//}
function manualRun() {
    eel.setTime(minutes.toString() + " " + seconds.toString())()
    window.open("timer.html", "_self");
}