var seconds
var minutes
var nIntervID

eel.turnOff()()
eel.turnOn()()

//start timer
function timerTrack()
{
	console.log("download timer", minutes.toString() + " : " + seconds.toString())
	document.getElementById("timeText").innerHTML = minutes.toString() + " : " + seconds.toString();

	//if second = 0
	if (seconds == 0)
	{
		if (minutes == 0)
		{
			eel.turnOff()()
			window.open("index.html","_self");
		}
		else
		{
			seconds = 60
			minutes = minutes - 1
		}
	}

	seconds = seconds - 1
}

//call every 1 sec
function setTimer(time)
{ 
    console.log(time)
    seconds = time.split(" ")[1]
    minutes = time.split(" ")[0]
    nIntervID = setInterval(timerTrack, 1000)
}	
	
//get the time
console.log("get time")
eel.getTime()(setTimer)

function stop()
{
	eel.turnOff()()
	clearInterval(nIntervID);
}
function start()
{
	eel.turnOn()()
	nIntervID = setInterval(timerTrack, 1000)
}
function reset()
{
	eel.turnOff()()
	window.open("index.html", "_self")
}