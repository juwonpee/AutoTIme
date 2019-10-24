var seconds = 0
var secondString = ""
var minutes = 0
var minuteString = ""
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


function add0() {
    if (timeString.length <= 3) {
        timeString = timeString + "0";
    }
    formatTime();
    console.log("pass formatTime")
}

function add1() {
    if (timeString.length <= 3) {
        timeString = "1" + timeString;
    }
    formatTime();
}

function add2() {
    if (timeString.length <= 3) {
        timeString = "2" + timeString;
    }
    formatTime();
}

function add3() {
    if (timeString.length <= 3) {
        timeString = "3" + timeString;
    }
    formatTime();
}

function add4() {
    if (timeString.length <= 3) {
        timeString = "4" + timeString;
    }
    formatTime();
}

function add5() {
    if (timeString.length <= 3) {
        timeString = "5" + timeString;
    }
    formatTime();
}

function add6() {
    if (timeString.length <= 3) {
        timeString = "6" + timeString;
    }
    formatTime();
}

function add7() {
    if (timeString.length <= 3) {
        timeString = "7" + timeString;
    }
    formatTime();
}

function add8() {
    if (timeString.length <= 3) {
        timeString = "8" + timeString;
    }
    formatTime();
}

function add9() {
    if (timeString.length <= 3) {
        timeString = "9" + timeString;
    }
    formatTime();
}

function formatTime() {
    if (timeString.length >= 1) {
        if (timeString.length == 1 || timeString.length == 2) {
            second = timeString;
            minute = "0"
        }
        else if (timeString.length == 3) {
            second = timeString[1] + timeString[0];
            minute = timeString[2];
        }
        else if (timeString.length == 4) {
            
            seconds = timeString[1] + timeString[0];
            minutes = timeString[3] + timeString[2];
        }
    }
    document.getElementById("timeText").innerHTML = minutes + " : " + seconds;

}
//function setTime()
//{
//    window.open("timer.html","_self");
//}
function manualRun() {
    if (minutes > 60 || seconds >= 59) {
        document.getElementById("timeText").innerHTML = "Wrong Time!";
    }
    else {
        eel.setTime(minutes + " " + seconds)()
        window.open("timer.html", "_self");
    }
}