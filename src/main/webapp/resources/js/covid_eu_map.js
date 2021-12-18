/**
 * This script is used to draw a map using external data.
 */

document.addEventListener('DOMContentLoaded', function () {

    /**
     * Countries we want to analyze
     */
    let countries = ['Austria', 'Belgium', 'Denmark', 'Croatia', 'Estonia', 'Finland', 'France',
        'Germany', 'Slovenia', 'Iceland', 'Spain', 'Switzerland']

    /**
     * Tuple array needed for the chart
     */
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

    /**
     * Fetches a JSON  and fills a field of the tuple array.
     * @param item country name
     * @param i array index
     */
    function getJson(item, i) {
        $.getJSON('https://covid-api.mmediagroup.fr/v1/cases?country=' + item, function (result) {
            country_data[i].value = result["All"]["confirmed"]
        })
    }

    /**
     * Asynchronous method which prepares all data and then call the next method.
     */
    (async () => {
        await countries.forEach(function (item, i) {
            getJson(item, i)
        })
    })().then(drawChartAfterTimeout)

    /**
     * Calls drawChart method after a quick delay
     */
    function drawChartAfterTimeout() {
        setTimeout(() => drawChart(), 200)
    }

    /**
     * Draws a map using Highcharts API
     */
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
