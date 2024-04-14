function parseResults(datasets) {
    $list = $('#list')
    for (var i in datasets) {
        $list.append('<li>' + datasets[i] + '</li>')
    }
}

function onButtonClick(event) {
    $.ajax({
        url: "https://data.gov.ro/api/3/action/package_list",
        //url: "https://data.gov.ro/en/api/3/action/datastore_search?limit=5&q=jones&resource_id=6ee318d9-2452-485c-9bb0-7a7626d7ad06",
        dataType: "jsonp",
        success: function(response) {
            parseResults(response.result)
        },
    })
}
