let launchDate = new Date("may 28, 2023 12:00:00").getTime();
let timer = setInterval(tick, 1000);

function tick (){
    let now = new Date().getTime();
    let t = launchDate - now;

    if (t>0){
        let days = Math.floor(t / (1000 * 60 * 60 * 24));
        if (days < 0){ days = "0" + days; }
        let hours = Math.floor((t % (1000 * 60 * 60 * 24)) / (1000 * 60 * 60));
        if (hours < 0){ hours = "0" + hours; }
        let mins = Math.floor((t % (1000 * 60 * 60)) / (1000 * 60));
        if (mins < 0){ mins = "0" + mins; }
        let secs = Math.floor((t % (1000 * 60)) / 1000);
        if (secs < 0){ secs = "0" + mins; }

        let time = `${days} days   : ${hours} hrs   : ${mins} mins   : ${secs} secs`;

        document.querySelector('.countdown h3').innerText = time;
    }
}
