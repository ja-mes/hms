// Reservations

function todaysDate() {

}

$('document').ready(function() {
    let utils = new Utils();

    let arrivalDate = $('#new_reservation input[type="date"]')[0];
    let departureDate = $('#new_reservation input[type="date"]')[1];
    let days = $("#reservation_num_days");

    let today = new Date();
    let tomorrow = new Date();
    tomorrow.setDate(today.getDate() + 1);

    $(arrivalDate).val(utils.formatDate(today));
    $(days).val(1);
    $(departureDate).val(utils.formatDate(tomorrow));

    $(days).focusout(function() {
        let newNumDays = parseInt($(this).val());


        let new_depature = new Date();
        new_depature.setDate(today.getDate() + newNumDays);

        $(departureDate).val(utils.formatDate(new_depature));
    });
});