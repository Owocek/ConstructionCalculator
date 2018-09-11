$(document).ready(function () {

    var tooltip = $(".imageDiv");

    tooltip.on({
        mousedown: function() {
            $("#informationText").empty();
            $("#informationButton").empty();

        },
        mouseup: function () {
            var dataText = $(this).data("text");
            $("#informationText").append($("#informationText").innerHTML = dataText);

            var buttonAddress = $(this).data("button");
            var createButton = $("<a href='" + buttonAddress + "'><div class='startCalcButton'></div></a>");
            $("#informationButton").append(createButton);
        }

    });



});