window.addEventListener("load", function(){
    this.setTimeout(
        function open(event){
            document.querySelector(".popup").style.display ="block";
        },
        10000
    )
});

document.querySelector(".accept").addEventListener("click", function(){
    document.querySelector(".popup").style.display = "none";
});
document.querySelector("#close").addEventListener("click", function(){
    document.querySelector(".popup").style.display = "none";
});

