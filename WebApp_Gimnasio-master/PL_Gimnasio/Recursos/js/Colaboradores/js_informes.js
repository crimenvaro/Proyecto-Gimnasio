
Highcharts.chart('graficoClientes', {

    title: {
        text: 'Clientes Según Plan'
    },

    subtitle: {
        text: 'Cantidad de Clientes por plan'
    },

    yAxis: {
        title: {
            text: 'Planes'
        }
    },

    xAxis: {
        categories: ['Plan Mensual', 'Plan Bimensual', 'Plan Anual']
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
        name: 'Clientes',
        data: [2345, 1322, 340]
    }],

});



Highcharts.chart('graficoFacturas', {

    title: {
        text: 'Facturas por mes'
    },

    subtitle: {
        text: 'Monto recaudado'
    },

    yAxis: {
        title: {
            text: 'Periodo'
        }
    },

    xAxis: {
        categories: ['3-2021', '4-2021','5-2021','6-2021','7-2021','8-2021']
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
        name: 'Monto',
        data: [12500, 15340, 21345, 35040, 56200, 25780]
    }],

});

