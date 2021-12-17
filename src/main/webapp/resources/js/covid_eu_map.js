document.addEventListener('DOMContentLoaded', function () {
    let countries = ['Austria', 'Belgium', 'Denmark', 'Croatia', 'Estonia', 'Finland', 'France',
        'Germany', 'Slovenia', 'Iceland', 'Spain', 'Switzerland']

    var country_data = [
        {
            "hc-key": "at",
            "value": 10,
        }, {
            "hc-key": "be",
            "value": 10,
        }, {
            "hc-key": "dk",
            "value": 10,
        }, {
            "hc-key": "hr",
            "value": 10,
        }, {
            "hc-key": "ee",
            "value": 10,
        }, {
            "hc-key": "fi",
            "value": 10,
        }, {
            "hc-key": "fr",
            "value": 10,
        }, {
            "hc-key": "de",
            "value": 10,
        }, {
            "hc-key": "si",
            "value": 10,
        }, {
            "hc-key": "is",
            "value": 10,
        }, {
            "hc-key": "es",
            "value": 10,
        }, {
            "hc-key": "ch",
            "value": 10,
        }]


    async function getJson(item, i) {
        const response = await fetch('https://covid-api.mmediagroup.fr/v1/cases?country=' + item);
        const json = await response.json(); //extract JSON from the http response
        country_data[i].value = await json["All"]["confirmed"]
    }

    (async () => {
        await countries.forEach(function (item, i) {
            getJson(item, i)
        })
    })().then(drawChartAfterTimeout)
    
    function drawChartAfterTimeout() {
        setTimeout(() => drawChart(), 200)
    }

    function drawChart() {
        Highcharts.mapChart('container', {
            chart: {
                map: 'custom/europe',
                borderWidth: 1,
                height: '70%'
            },
            title: {
                text: 'Europe COVID-19 total cases'
            },
            subtitle: {
                text: 'Source map: <a href="https://code.highcharts.com/mapdata/custom/europe.js">Europe</a>'
            },
            mapNavigation: {
                enabled: true,
                buttonOptions: {
                    verticalAlign: 'top'
                }
            },
            colorAxis: {
                min: 0
            },
            series: [{
                data: country_data,
                name: 'COVID cases',
                states: {
                    hover: {
                        color: '#FFFFFF'
                    }
                },
                dataLabels: {
                    enabled: true,
                    format: '{point.name}'
                }
            }]
        });
    }


})