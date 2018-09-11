$(document).ready(function () {

    var tooltip = $(".tooltip");

    tooltip.on("mouseover", function () {
        var dataText = $(this).data("text");
        var createDiv = $("<div class='tooltipText'>" + dataText + "</div>");
        $(this).append(createDiv);
    });

    tooltip.on("mouseout", function () {
        $(this).children(".tooltipText").remove();
    });

});