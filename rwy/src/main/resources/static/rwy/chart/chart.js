var myChart = echarts.init(document.getElementById('echarts-pie-chart'));
option = {
    title : {
        text: '本周统计',
        subtext: '各项问题百分比',
        x:'center'
    },
    tooltip : {
        trigger: 'item',
        left: 'left',
        formatter: "{a} <br/>{b} : {c} ({d}%)"
    },
    series : [
        {
            name: '问题统计',
            type: 'pie',
            radius : '100%',
            center: ['80%', '80%'],
            data:[
                {value:335, name:'审计问题'},
                {value:310, name:'数据库问题'},
                {value:234, name:'实名问题'},
                {value:135, name:'计费问题'},
                {value:1548, name:'龙付通问题'}
            ],
            itemStyle: {
                emphasis: {
                    shadowBlur: 10,
                    shadowOffsetX: 0,
                    shadowColor: 'rgba(0, 0, 0, 0.5)'
                }
            }
        }
    ]
};
myChart.setOption(option);