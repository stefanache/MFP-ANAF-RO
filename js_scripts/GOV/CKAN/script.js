function parseResults(datasets) {
    $list = $('#list')
    for (var i in datasets) {
        $list.append('<li>' + datasets[i] + '</li>')
    }
}

function onButtonClick(event) {
    $.ajax({
        url: "https://data.gov.ro/api/3/action/package_list",
        dataType: "jsonp",
        success: function(response) {
            parseResults(response.result)
        },
    })
}
