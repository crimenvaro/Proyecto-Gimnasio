Highcharts.chart('graficoPeso', {

    title: {
        text: 'Peso Kg'
    },

    subtitle: {
        text: 'Progreso Octubre-2020 a Junio-2021'
    },

    yAxis: {
        title: {
            text: 'Kg'
        }
    },

    xAxis: {
        categories: ['10-2020', '11-2020', '12-2020', '01-2021', '02-2021', '03-2021', '04-2021', '05-2021', '06-2021']
    },

    legend: {
        layout: 'vertical',
        align: 'right',
        verticalAlign: 'middle'
    },

    plotOptions: {
        series: {
            label: {
                connectorAllowed: false
            }
        }
    },

    series: [{
        name: 'Peso',
        data: [72, 71.7, 70.1, 68.5, 69.3, 68.8, 67.1, 65.5, 63.8]
    }],
    
});

Highcharts.chart('graficoGrasa', {

    title: {
        text: 'Grasa %'
    },

    subtitle: {
        text: 'Progreso Octubre-2020 a Junio-2021'
    },

    yAxis: {
        title: {
            text: '%'
        }
    },

    xAxis: {
        categories: ['10-2020', '11-2020', '12-2020', '01-2021', '02-2021', '03-2021', '04-2021', '05-2021', '06-2021']
    },

    legend: {
        layout: 'vertical',
        align: 'right',
        verticalAlign: 'middle'
    },

    plotOptions: {
        series: {
            label: {
                connectorAllowed: false
            }
        }
    },

    series: [ {
        name: '% Grasa',
        data: [32.1, 30.8, 29.4, 28.9, 27.3, 27.5, 27.1, 26.2, 27.3]
    }],
        
});

Highcharts.chart('graficoMusculo', {

    title: {
        text: 'Masa Muscular %'
    },

    subtitle: {
        text: 'Progreso Octubre-2020 a Junio-2021'
    },

    yAxis: {
        title: {
            text: '%'
        }
    },

    xAxis: {
        categories: ['10-2020', '11-2020', '12-2020', '01-2021', '02-2021', '03-2021', '04-2021', '05-2021', '06-2021']
    },

    legend: {
        layout: 'vertical',
        align: 'right',
        verticalAlign: 'middle'
    },

    plotOptions: {
        series: {
            label: {
                connectorAllowed: false
            }
        }
    },

    series: [ {
        name: '% Masa Muscular',
        data: [42.1, 42.8, 43.4, 43.9, 44.3, 44.5, 44.1, 45.2, 45.4]
    }],
        
});

Highcharts.chart('graficoHueso', {

    title: {
        text: 'Masa ósea %'
    },

    subtitle: {
        text: 'Progreso Octubre-2020 a Junio-2021'
    },

    yAxis: {
        title: {
            text: '%'
        }
    },

    xAxis: {
        categories: ['10-2020', '11-2020', '12-2020', '01-2021', '02-2021', '03-2021', '04-2021', '05-2021', '06-2021']
    },

    legend: {
        layout: 'vertical',
        align: 'right',
        verticalAlign: 'middle'
    },

    plotOptions: {
        series: {
            label: {
                connectorAllowed: false
            }
        }
    },

    series: [ {
        name: '% Hueso',
        data: [2.3, 2.2, 2.3, 2.1, 2.2, 2.4, 2.2, 2.4, 2.2]
    }],
    
});

Highcharts.chart('graficoAgua', {

    title: {
        text: 'Agua %'
    },

    subtitle: {
        text: 'Progreso Octubre-2020 a Junio-2021'
    },

    yAxis: {
        title: {
            text: '%'
        }
    },

    xAxis: {
        categories: ['10-2020', '11-2020', '12-2020', '01-2021', '02-2021', '03-2021', '04-2021', '05-2021', '06-2021']
    },

    legend: {
        layout: 'vertical',
        align: 'right',
        verticalAlign: 'middle'
    },

    plotOptions: {
        series: {
            label: {
                connectorAllowed: false
            }
        }
    },

    series: [ {
        name: '% Agua',
        data: [39.4, 40.3, 40.8, 41.1, 41.3, 41.5, 41.6, 42.2, 42.5]
    }],  

});


Highcharts.chart('graficoIMC', {

    title: {
        text: 'Indice de Masa Corporal IMC'
    },

    subtitle: {
        text: 'Progreso Octubre-2020 a Junio-2021'
    },

    yAxis: {
        title: {
            text: 'Valor'
        }
    },

    xAxis: {
        categories: ['10-2020', '11-2020', '12-2020', '01-2021', '02-2021', '03-2021', '04-2021', '05-2021', '06-2021']
    },

    legend: {
        layout: 'vertical',
        align: 'right',
        verticalAlign: 'middle'
    },

    plotOptions: {
        series: {
            label: {
                connectorAllowed: false
            }
        }
    },

    series: [{
        name: 'IMC',
        data: [27.4, 26.5,26.2, 24.3, 24.1, 23.9, 23.4, 23.2, 23.1]
    }],

});

