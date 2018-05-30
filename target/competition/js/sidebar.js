window.onload = function (){
    var html = $("<div id='sidebar-tianyu'><span class='text-info' title='天宇杯测绘技能大赛'>“天宇杯”第五届 <br> 全国高等学校 <br>大学生测绘技能大赛</span></div>");
    html.appendTo(document.body);
    $("#sidebar-tianyu").css({
        'z-index': 9999,
        'position': 'fixed',
        'display': 'block',
        'right': 20,
        'top': 200,
        'width': 180,
        'height': 150,
        'padding-top': 20,
        'background': '#fff url("images/blue_logo.png") no-repeat 50% 80%',
        '-webkit-background-size': '50%',
        'background-size': '50%',
        'border': '1px solid #103667',
        '-webkit-border-radius': '10px',
        '-moz-border-radius': '10px',
        'border-radius': '100px',
        'font-size': '16px',
        'text-align': 'center',
        'cursor': 'pointer'
    }).click(function () {
        window.open("./index.html");
    });

};