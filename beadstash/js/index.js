function processData(data) {

    var jsonData = JSON.parse(data);
    var output = '<table class="table table-striped table-bordered">';

    output +=   '<thead>' +
        '<tr>' +
        '<th style="text-align: center;">Naam Kraal</th>' +
        '<th style="text-align: center;">Plaatje</th>' +
        '</tr>' +
        '</thead>' +
        '<tbody>';

    $.each(jsonData, function(index  , value) {
        console.log(value);
        output +=   '<tr>' +
            '<td style="text-align: center;">' + value.naam_kraal + '</td>' +
			'<td style="text-align: center;">' + '<img class="kraal_plaatjes" src="http://www.projectbead.ao-alfa.nl/JanWillem/img/' + value.img_url+'">' + '</td>'
            '</tr>';

    });

    output += '</tbody></table>';

    $('#valuta-tabel').html(output);
}
function callData(kleur_keuze, type_keuze){
	$.get('http://www.projectbead.ao-alfa.nl/JanWillem/vraagkraal.php',{'kleurKeuze': kleur_keuze, 'typeKeuze': type_keuze}, function(data) {
    	processData(data);
    });
}
(function() {
	var kleur_keuze = $('#kleur_keuze').val();
	var type_keuze = $('#type_keuze').val();
	callData(kleur_keuze, type_keuze);
    $('#sbmit').click(function(){
		kleur_keuze = $('#kleur_keuze').val();
		type_keuze = $('#type_keuze').val();
		callData(kleur_keuze, type_keuze);
	});

}());
