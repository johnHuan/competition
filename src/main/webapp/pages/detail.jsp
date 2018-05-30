<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: zhanghuan
  Date: 2018/1/22
  Time: 9:35
  Author: John_3
  Email: yz30.com@aliyun.com
  QQ: 248404941
  技术支持： 张桓
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" isELIgnored="false" %>

<jsp:include page="header.jsp"></jsp:include>





<div class="well">
    <h2 class="text-center">第五届 全国高等学校大学生测绘技能大赛 实施细则</h2>
    <p class="size">根据教育部高等学校测绘类专业教学指导委员会、国家测绘地理信息局职业技能鉴定指导中心和中国测绘地理信息学会关于举办第五届全国大学生测绘技能大赛的决定，特制定本细则。</p>
    <h3>一、竞赛项目</h3>
    <ol>
        <li class="size">1. 二等水准测量</li>
        <li class="size">2. 1: 500数字测图</li>
        <li class="size">3. 测量程序设计</li>
    </ol>
    <h3>二、参赛队伍</h3>
    <p class="size">凡开设测绘工程专业的本科院校均可组队报名参赛。每个学校（学院）限报 1 支队伍，不得跨校组合。每个参赛队由 4-6 名选手（其中 4 名选手参加前两项竞赛，2 名选手参加程序设计竞赛）组成，设队长 1 名。参赛选手必须是在校本科生。</p>
    <p>指导教师的人数不得多于参赛的项目数。</p>
    <h3>三、技术标准</h3>
    <ol>
        <li class="size">1.《1:500 1:1000 1:2000 外业数字测图技术规程》GB/T 14912—2005。</li>
        <li class="size">2.《国家基本比例尺地图图式第一部分 1:500 1:1000 1:2000 地形图图式》GB/T 20257.1—2007。</li>
        <li class="size">3.《城市测量规范》CJJ/T 8-2011。</li>
        <li class="size">4.《国家一、二等水准测量规范》GB/T12897—2006。</li>
        <li class="size">5.《全球定位（GPS）测量规范》GB/T 18314—2001。</li>
        <li class="size">6. 本竞赛技术规范。</li>
        <li class="size">凡上述国家标准与本细则不一致的内容，以本细则为准。</li>
    </ol>
    <h3>四、竞赛的仪器设备</h3>
    <ol>
        <li class="size">1. 广州天宇全站仪：CTS-6002R6M 全站仪。</li>
        <li class="size">2. 广州天宇 CL04 数字水准仪及其数码标尺。</li>
        <li class="size">3. 广州天宇 GNSS 接收机：天河 X1 接收机。</li>
        <li class="size">4. 绘图用计算机由组委会提供，成图软件使用南方 CASS 9.2 数字测图软件。软件平台是中望 CAD。</li>
        <li class="size">5. 测量程序设计竞赛的计算机由竞赛委员会提供。</li>
    </ol>
    <p class="size">　　各队竞赛用的仪器设备全部由广州天宇公司提供（包括棱镜）。</p>
    <h3>五、竞赛要求</h3>
    <h4>（一）水准测量、数字测图的竞赛要求 </h4>
    <ol>
        <li class="size">1. 各队按照自己的竞赛出场顺序，在规定的时间由大赛工作人员指引下，到现场熟悉竞赛场地，同时做好竞赛的各项准备工作。</li>
        <li class="size">2. 各队必须在规定的时间完成竞赛任务，竞赛时间规定：</li>
        <table class="table table1 size">
            <tr>
                <td>数字测图（内外业）</td>
                <td>160分钟</td>
            </tr>
            <tr>
                <td>水准测量</td>
                <td>70分钟</td>
            </tr>
            <tr>
                <td>测量程序设计</td>
                <td>300分钟</td>
            </tr>
        </table>
        <p class="size">凡超过规定的时间，立即终止竞赛。</p>
        <li class="size">3. 竞赛开始前，参赛队的仪器必须装箱，脚架收拢。</li>
        <li class="size">4. 竞赛过程中，选手不得携带仪器设备（包括脚架和棱镜）跑步。</li>
        <li class="size">5. 裁判宣布竞赛开始，同时竞赛计时开始，计时精确到秒。</li>
        <li class="size">6. 竞赛过程中，若仪器发生故障，由参赛队员报告现场裁判，仪器工程师到现场检查确认、并经裁判认可后可以更换仪器重测。若经工程师检查仪器无故障，检查时间计入竞赛时间。</li>
        <li class="size">7. 竞赛可以重测或者返工，但初测、计算或绘图、重测及返工的总时间不能超过竞赛总时间。重测或者返工时必须四名选手集体到场。</li>
        <li class="size">8. 竞赛结束，上交成果资料之时，各参赛队仪器必须装箱、脚架收好，竞赛计时结束。</li>
        <li class="size">9. 成果一旦提交就不得以任何借口要求修改或者重测。</li>
        <li class="size">10. 规定轮换测量的竞赛项目必须轮换。</li>
        <li class="size">11. 参赛队员必须独立完成所有竞赛任务，参赛队员在竞赛过程中不能使用手机等通讯设备，也不能以其他任何方式与外界联系。</li>
        <li class="size">12. 竞赛过程中，选手须严格遵守操作规程，确保人身及设备安全，并接受裁判员的监督和警示。由于选手造成设备故障或损坏，无法继续竞赛的，停止竞赛，不能重赛。</li>
    </ol>
    <h4>（二）程序设计要求 </h4>
    <ol>
        <li class="size">1. 参赛选手凭参赛证进入竞赛现场，不得携带与竞赛无关的物品（如手机等通信设备、存储设备等），违者取消参赛资格。</li>
        <li class="size">2. 每队参加竞赛选手 2 人，指导教师不得进入竞赛现场。</li>
        <li class="size">3. 程序设计竞赛中使用的数据文件在竞赛题目确定后分发给参赛选手。</li>
        <li class="size">4. 竞赛完成后，按照规定要求提交源程序、运算结果和开发文档。开发文档内容应包括功能简介、算法设计与流程图、主要函数和变量说明等，开发文档要求手写。</li>
        <li class="size">5. 编程语言限制为 VB、VC、C#，不允许使用二次开发平台（如 Matlab,AutoCAD、ArcGIS 等）。</li>
        <li class="size">6. 数据输入要求具有手工输入和文件导入两种功能。</li>
        <li class="size">参赛者必须尊重裁判，服从裁判，不得刁难、攻击裁判。参赛队对裁判有意见，可在赛后 2 小时内向赛会仲裁组申诉，过时不予受理。</li>
    </ol>
    <h3>六、竞赛技术规定</h3>
    <h4>（一）二等水准测量竞赛</h4>
    <p class="size">水准（附合和闭合）路线分为四个测段。参赛队在规定的时间内测算完成现场抽签点组合确定的水准路线，现场完成高程误差配赋计算，并填写高程点成果表。上交成果为：《二等水准测量竞赛成果资料》。</p>
    <p class="size tips">遵守以下规定：</p>
    <ol>
        <li class="size tips2">1．观测使用竞赛委员会规定的仪器设备，2m 标尺，测站视线长度、前后视距差及其累计、视线高度和数字水准仪重复测量次数等按表 1 规定。</li>
        <table class="table table2 table-bordered">
            <caption class="text-center center-pilled">表1 二等水准测量技术要求（2m水准标尺）</caption>
            <tr>
                <td nowrap="true">视线长度/m</td>
                <td nowrap="true">前后视距差/m</td>
                <td nowrap="true">前后视距累积差/m</td>
                <td nowrap="true">实现高度/m</td>
                <td nowrap="true">两次读数所得高差之差/mm</td>
                <td nowrap="true">水准仪重复测量次数/mm</td>
                <td nowrap="true">测段、环线闭合差/mm</td>
            </tr>
            <tr>
                <td nowrap="true">≥3且≤50</td>
                <td nowrap="true">≤1.5</td>
                <td nowrap="true">≤6.0</td>
                <td nowrap="true">≤1.85且≥0.55</td>
                <td nowrap="true">≤0.6</td>
                <td nowrap="true">≥2次</td>
                <td nowrap="true" class="formula">\[≤​4\sqrt{L} \qquad \]</td>
            </tr>
        </table>
        <p class="size">注： L为路线的总长度，以km为单位。</p>
        <li class="size">2. 参赛队信息只在竞赛成果资料封面规定的位置填写，成果资料内部的任何位置不得填写与竞赛测量数据无关的任何信息。</li>
        <li class="size">3. 竞赛使用 3kg 尺垫，可以使用自带的撑杆，也可以不使用撑杆。</li>
        <li class="size">4. 竞赛过程中不得携带仪器或标尺跑步。</li>
        <li>
            <p class="size">5. 竞赛记录及计算均必须使用竞赛委员会统一提供的《二等水准测量记录计算成果》本。记录及计算一律使用铅笔填写，记录完整。</p>
            <p class="size">观测记录的数字与文字力求清晰，整洁，不得潦草，并遵守附录 1 的规定。平差计算表可以用橡皮擦，但必须保持整洁，字迹清晰，不得划改。</p>
        </li>
        <li class="size">6. 水准路线采用单程观测，每测站读两次高差，奇数站观测水准尺的顺序为：后-前-前-后；偶数站观测水准尺的顺序为：前-后-后-前。</li>
        <li class="size">7. 同一标尺两次读数不设限差，但两次读数所测高差之差应满足表 1 的规定。</li>
        <li class="size">8. 观测记录的错误数字与文字应用单横线正规划去，在其上方写上正确的数字与文字，并在备注栏注明原因：“测错”或“记错”，计算错误不必注明原因。记录格式见附录 2。</li>
        <li class="size">9. 因测站观测误差超限，在本站检查发现后可立即重测，重测必须变换仪器高。若迁站后才发现，应退回到本测段的起点重测。</li>
        <li class="size">10. 无论何种原因使尺垫移动，应退回到本测段的起点重测。</li>
        <li class="size">11. 超限成果应当正规划去，超限重测的应在备注栏注明“超限”。</li>
        <li class="size">12. 水准路线各测段的测站数必须为偶数。</li>
        <li class="size">13. 每测站的记录和计算全部完成后方可迁站。</li>
        <li class="size">14. 测量、记录和扶尺都必须轮换，每人观测 1 测段、记录 1 测段。</li>
        <li class="size">15. 现场完成高程误差配赋计算，不得使用非赛会提供的计算器。</li>
        <li class="size">16. 竞赛结束，参赛队上交成果时，应将仪器脚架收好，计时结束。</li>
        <li class="size">17. 高程误差配赋计算，距离取位到 0.1m，高差及其改正数取位到0.00001m，高程取位到 0.001m。写出闭合差和闭合差允许值。计算格式见附录 3。</li>
    </ol>
    <h4>（二）1:500数字测图</h4>
    <p class="size">测图通视条件良好，地物、地貌要素齐全，难度适中，能多个队同时开始测图竞赛。大赛为每个参赛队提供 2 个控制点和 1 个检查点，控制点之间可能互不通视，参赛队利用 GNSS 流动站在已知点上测量确定坐标系转换参数后测图。</p>
    <p class="size">对于测区内 GNSS 卫星定位仪不能直接测定的地物，需要用全站仪测定。</p>
    <p class="size">内业编辑成图在规定的机房内完成，竞赛委员会提供安装有中望 CAD 平台的数字测图软件 CASS9.2 的计算机。</p>
    <ol>
        <li class="size">1. 测量及绘图要求</li>
        <p class="size">（1）各参赛队小组成员共同完成规定区域内碎部点数据采集和编辑成图，队员的工作可以不轮换。</p>
        <p class="size">（2）竞赛过程中选手不得携带仪器设备跑步。</p>
        <p class="size">（3）碎部点数据采集模式只限 “草图法”，不得采用其它方式。</p>
        <p class="size">（4）用 GNSS 接收机确定全站仪的测站点时必须使用脚架。</p>
        <p class="size">（5）必须采用 GNSS 接收机配合全站仪的测图模式，全站仪测量的点位不少于 15 点。凡是全站仪测量点数不足 15 个点的，每少一点扣 0.3 分。</p>
        <p class="size">上交的绘图成果上不得填写参赛队及观测者、绘图者姓名等信息。</p>
        <p class="size">（6）GNSS 设备和全站仪不能同时使用。不使用的一种设备应放置在规定的位置。违规1次扣5分。</p>
        <p class="size">（7）草图必须绘在竞赛委员会配发的数字测图野外草图本上。</p>
        <p class="size">（8）按规范要求表示高程注记点，除指定区域外，其他地区不表示等高线。</p>
        <p class="size">（9）绘图：按图式要求进行点、线、面状地物绘制和文字、数字、符号注记。注记的文字字体采用绘图软件默认字体。</p>
        <p class="size">（10）图廓整饰内容：采用任意分幅（四角坐标注记坐标单位为 km，取整至50 米）、图名、测图比例尺、内图廓线及其四角的坐标注记、外图廓线、坐标系统、高程系统、等高距、图式版本和测图时间。（图上不注记测图单位、接图表、图号、密级、直线比例尺、附注及其作业员信息等内容）。</p>
        <li class="size">2. 上交成果</li>
        <p class="size">（1）原始测量数据文件（全站仪测点和 GNSS 测点的 2 个 dat 格式的数据文件）。
        <p class="size">（2）野外草图。</p>
        <p class="size">（3）dwg 格式的地形图数据文件。</p>
    </ol>
    <h4>（三）测量程序设计竞赛</h4>
    <ol>
        <li class="size">1. 竞赛形式</li>
        <p class="size">参赛组同时全封闭进行测量程序设计竞赛，在规定时间内根据现场随机抽取的题目完成程序设计，并提交软件开发文档（应包括程序功能简介、算法设计与流程图、主要函数和变量说明等）、程序源代码、可执行文件与计算结果，并进行现场演示，回答评委提出的问题。</p>
        <li class="size">2. 竞赛内容</li>
        <p class="size">组委会提前发布程序设计竞赛的选题范围和数据文件格式范围，在竞赛现场由竞赛监督随机抽取程序设计竞赛题目、输入和输出数据文件格式，参赛选手采用规定的编程语言，进行程序设计。</p>
        <p class="size">1）选题范围</p>
        <p class="size">主要在测绘基础知识方面选题，除完成计算外，还需进行图形绘制。</p>
        <p class="size">选题范围如下：</p>
        <li class="size">（1）附合导线近似平差计算</li>
        <li class="size">（2）附合水准路线近似平差计算</li>
        <li class="size">（3）三角高程近似平差计算（包括高差计算）</li>
        <li class="size">（4）测角交会定点（包括前方交会和后方交会）计算</li>
        <li class="size">（5）规则格网法体积计算</li>
        <li class="size">（6）不规则三角网法体积计算</li>
        <li class="size">（7）线路曲线（包括圆曲线和缓和曲线）要素计算</li>
        <li class="size">（8）坐标转换（大地坐标、空间直角坐标、平面坐标）</li>
        <li class="size">（9）大地坐标正反算</li>
        <li class="size">（10）纵、横断面计算</li>
        <p class="size">2）数据格式范围</p>
        <p class="size">输入、输出数据格式主要有文本文件(.txt)、Excel 文件(.xls 或.xlsx)和AutoCAD 图形交换文件（.dxf）。</p>


    </ol>




</div>
<script type="text/javascript" src="http://cdn.mathjax.org/mathjax/latest/MathJax.js?config=TeX-AMS-MML_HTMLorMML"></script>
<script type="text/x-mathjax-config">
    MathJax.Hub.Config({
        tex2jax: {inlineMath: [['$', '$']]},
        messageStyle: "none"
    });
</script>



<jsp:include page="footer.jsp"></jsp:include>