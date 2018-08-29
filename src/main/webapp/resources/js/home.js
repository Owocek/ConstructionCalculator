document.addEventListener("DOMContentLoaded", function(event) {
    // Handler for .ready() called.
    var tooltips = document.querySelectorAll(".tooltip");

    function show() {
        console.log("działa");
        tooltips.dataset.text;
    }

    // function hide(id) {
    //     document.getElementById(id).style.visibility = "hidden";
    // }
});