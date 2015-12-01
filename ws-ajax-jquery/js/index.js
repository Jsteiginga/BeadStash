var idBegin = 35;
var idEnd = 40;

function processData(data) {
    var jsonData = JSON.parse(data);
    var output = '<table class="table table-striped table-bordered">';

    output +=   '<thead>' +
                    '<tr>' +
                        '<th style="text-align: center;">ID</th>' +
                        '<th style="text-align: center;">Valuta</th>' +
                        '<th style="text-align: center;">&euro;&nbsp;1,00 kost:</th>' +
                    '</tr>' +
                '</thead>' +
                '<tbody>';

    $.each(jsonData, function(index, value) {
        console.log(value);
        output +=   '<tr>' +
                        '<td style="text-align: center;">' + value.ID + '</td>' +
                        '<td style="text-align: center;">' + value.CurrencyName + '</td>' +
                        '<td style="text-align: right;">' + value.CurrencyValue + '</td>' +
                    '</tr>';

    });
    // for (var record in jsonData) {
    //     console.log(record);
    //     output += '<tr><td>' + record.ID +
    //               '</td><td>' + record.CurrencyName +
    //               '</td><td>' + record.CurrencyValue + '</td></tr>';
    // }

    output += '</tbody></table>';

    $('#valuta-tabel').html(output);
}

(function() {
    $.get('http://localhost/school/workshops/ws-ajax-jquery/valuta.php', {'id': idBegin, 'idend': idEnd}, function(data) {
        // Dit is een callback functie, die pas wordt uitgevoerd op het moment
        // dat er een reactie van de server terug komt.
        // Zolang er nog geen reactie terug is, gaan we gewoon verder met de rest
        // van de javascript.
        processData(data);
    });

    // Hier staat de code die gewoon uitgevoerd wordt na de get call naar de
    // php script.
    console.log('We gaan gewoon verder');
}());
