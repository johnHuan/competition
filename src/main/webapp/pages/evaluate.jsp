<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: zhanghuan
  Date: 2018/1/22
  Time: 9:36
  Author: John_3
  Email: yz30.com@aliyun.com
  QQ: 248404941
  技术支持： 张桓
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" isELIgnored="false" %>
<jsp:include page="header.jsp"></jsp:include>


<div class="well">
    <h2 class="text-center">第五届 全国高等学校大学生测绘技能大赛 成绩评定</h2>
    <h3>成绩评定</h3>
    <p class="size">前两项竞赛成绩评定主要从参赛队的测量过程、成果质量和竞赛用时等方面考虑，采用百分制。其中测量过程及成果质量成绩 70 分，竞赛用时成绩30 分。测量程序设计竞赛成绩评定主要是从参赛队的程序设计质量和竞赛用时考虑，程序设计质量 70 分，竞赛用时 30 分。</p>
    <ol>
        <li class="size">1. 竞赛用时成绩</li>
        <p class="size">竞赛用时成绩计算方法：$S_{i} = (1 - \frac{T_{i} - T_l}{T_n - T_l}~$ × 40%) × 30</p>
        <p>式中：$T_i$为第 $i$ 组竞赛实际用时</p>
        <p>$T_l$为所有参赛队中用时最少的时间</p>
        <p>$T_n$为所有参赛队中用时最多的时间</p>
        <li class="size">2. 竞赛过程及成果质量</li>
        <p class="size">1）二等水准测量</p>
        <p class="size">成绩评定从测量过程和测量成果质量两方面考虑：</p>
        <p class="size">（1）测量过程</p>
        <table class="table table-bordered">
            <tr>
                <th>测评内容</th>
                <td>评分标准</td>
                <td>扣分</td>
            </tr>
            <tr>
                <td>携带仪器设备（标尺）跑步</td>
                <td>警告无效，跑 1 步扣 1 分</td>
                <td> </td>
            </tr>
            <tr>
                <td>观测、记录轮换  </td>
                <td>违规 1 次扣 2 分</td>
                <td></td>
            </tr>
            <tr>
                <td>骑在脚架腿上观测</td>
                <td>违规 1 次扣 1 分</td>
                <td></td>
            </tr>
            <tr>
                <td>高差测量</td>
                <td>2 次中丝读数少读 1 次（后视或前视）扣 5 分</td>
                <td></td>
            </tr>
            <tr>
                <td>视距测量</td>
                <td>不读或者故意读错 1 次扣 2 分 </td>
                <td></td>
            </tr>
            <tr>
                <td>测站记录计算未完成就迁站</td>
                <td>违规 1 次扣 2 分</td>
                <td></td>
            </tr>
            <tr>
                <td>记录转抄</td>
                <td>违规 1 次扣 2 分</td>
                <td></td>
            </tr>
            <tr>
                <td>违规显示高差</td>
                <td>违规 1 次扣 2 分</td>
                <td></td>
            </tr>
            <tr>
                <td>使用电话、对讲机等通讯工具</td>
                <td>出现 1 次扣 2 分</td>
                <td></td>
            </tr>
            <tr>
                <td>观测记录不同步</td>
                <td>违 规 1 次扣 2 分</td>
                <td></td>
            </tr>
            <tr>
                <td>观测手簿用橡皮擦</td>
                <td>违 规 </td>
                <td>二类</td>
            </tr>
            <tr>
                <td>整测站划改</td>
                <td>超过 1/3 扣 5 分 </td>
                <td></td>
            </tr>
            <tr>
                <td>故意干扰别人测量</td>
                <td>造成重测后果的扣 10 分</td>
                <td></td>
            </tr>
            <tr>
                <td>仪器设备</td>
                <td>水准仪及标尺摔倒落地</td>
                <td>取消资格</td>
            </tr>
            <tr>
                <td>合计扣分</td>
                <td colspan="2"></td>
            </tr>
        </table>
        <p class="size">注：测量过程扣分直接在总成绩中减。</p>
        <p class="size">（2）成果质量</p>
        <table class="table-bordered table">
            <tr>
                <th colspan="2">评测内容</th>
                <th>评分标准</th>
                <th>扣分</th>
            </tr>
            <tr>
                <td rowspan="11">观测与记录40分</td>
                <td>每测段测站数为偶数</td>
                <td>奇数测站</td>
                <td>二类</td>
            </tr>
            <tr>
                <td>测站限差</td>
                <td>视线长度、视线高度、前后视距差、前后视距累计差、高差较差等超限</td>
                <td>二类</td>
            </tr>
            <tr>
                <td>观测记录</td>
                <td>连环涂改</td>
                <td>二类</td>
            </tr>
            <tr>
                <td>记录手簿</td>
                <td>手簿内部出现与测量数据无关的文字符号等</td>
                <td>二类</td>
            </tr>
            <tr>
                <td>手簿记录空栏或空页</td>
                <td>空 1 栏扣 2 分，空 1 页扣 5 分。 </td>
                <td></td>
            </tr>
            <tr>
                <td>手簿计算</td>
                <td>每缺少 1 项或错误 1 处扣 1 分 </td>
                <td></td>
            </tr>
            <tr>
                <td>记录规范性</td>
                <td>就字改字字迹模糊影响识读 1 处扣 2 分 </td>
                <td></td>
            </tr>
            <tr>
                <td>手簿划改不用尺子或不是单横线</td>
                <td>违规 1 处扣 1 分，最多扣 4 分。 </td>
                <td></td>
            </tr>
            <tr>
                <td>同一数据划改超过 1 次</td>
                <td>违规 1 处扣 1 分，最多扣 4 分。</td>
                <td></td>
            </tr>
            <tr>
                <td>划改后不注原因或注明原因不规范</td>
                <td>1 处扣 0.5 分，最多扣 2 分 </td>
                <td></td>
            </tr>
            <tr>
                <td>手簿划改太多</td>
                <td>超过有效成果记录的 1/3 扣 5 分。 </td>
                <td></td>
            </tr>
            <tr>
                <td rowspan="6">内业计算30分</td>
                <td>水准路线闭合差</td>
                <td>超 限 </td>
                <td nowrap="true">二类</td>
            </tr>
            <tr>
                <td rowspan="2">平差计算（20 分）</td>
                <td>一处计算错误扣 1+0.5n 分，n 为影响后续计算的项目数，扣完为止。</td>
                <td></td>
            </tr>
            <tr>
                <td>全部未计算扣 20 分；只计算路线闭合差扣 15 分；未计算闭合差限差扣 3 分；其它计算缺项或未完成酌情扣分。</td>
                <td></td>
            </tr>
            <tr>
                <td>待定点高程检查</td>
                <td>与标准值比较不超过±5mm 不超限，超限 1 点扣 2 分</td>
                <td></td>
            </tr>
            <tr>
                <td>成果表</td>
                <td>不填写成果表扣 2 分；填写错误每点扣 1 分。 </td>
                <td></td>
            </tr>
            <tr>
                <td>计算表整洁</td>
                <td>每一处非正常污迹扣 0.5 分 </td>
                <td></td>
            </tr>
        </table>
        <table class="table-bordered table tfooter">
            <tr>
                <td class="totalDiscount">合计扣分</td>
                <td class="score"></td>
                <td class="totalScore">合计得分</td>
                <td class="score"></td>
            </tr>
        </table>

        <p class="size">2）数字测图成果质量成绩</p>
        <p class="size">（1）测量过程评分</p>
        <table class="table table-bordered">
            <tr>
                <th>评测内容</th>
                <th>评分标准</th>
                <th>扣分</th>
                <th>备注</th>
            </tr>
            <tr>
                <td>故意遮挡其他参赛队观测</td>
                <td>不听裁判劝阻</td>
                <td>取消资格</td>
                <td></td>
            </tr>
            <tr>
                <td>使用非赛会提供的设备</td>
                <td>违规</td>
                <td>取消资格</td>
                <td></td>
            </tr>
            <tr>
                <td>全站仪、棱镜、GNSS 接收机</td>
                <td>摔倒落地</td>
                <td>取消资格</td>
                <td></td>
            </tr>
            <tr>
                <td>使用电话、对讲机等通讯工具使用电话、对讲机等通讯工具</td>
                <td>违规</td>
                <td>取消资格</td>
                <td></td>
            </tr>
            <tr>
                <td>使用非赛会提供的草图纸</td>
                <td>违规</td>
                <td>取消资格</td>
                <td></td>
            </tr>
            <tr>
                <td>测定全站仪测站点和定向点不用脚架</td>
                <td>违规 1 次扣 3 分</td>
                <td></td>
                <td></td>
            </tr>
            <tr>
                <td>全站仪和 GNSS 接收机不得同时使用</td>
                <td>违规 1 次扣 5 分</td>
                <td></td>
                <td></td>
            </tr>
            <tr>
                <td>指导教师及其他非参赛人员入场</td>
                <td>出现 1 次扣 2 分</td>
                <td></td>
                <td></td>
            </tr>
            <tr>
                <td>携带仪器设备跑步</td>
                <td>跑 1 步扣 1 分</td>
                <td></td>
                <td></td>
            </tr>
            <tr>
                <td>仪器设备不安全操作行为</td>
                <td>每 1 次扣 2 分</td>
                <td></td>
                <td></td>
            </tr>
            <tr>
                <td>其它特殊情况记录</td>
                <td colspan="2"></td>
                <td></td>
            </tr>
            <tr>
                <td><strong>合计扣分</strong></td>
                <td colspan="2"></td>
                <td></td>
            </tr>
        </table>
        <p class="size">注：测量过程扣分直接在总成绩中减。</p>
        <p>（2）成果质量评分</p>
        <table class="table table-bordered">
            <tr>
                <th>项目与分值</th>
                <th>评分标准</th>
                <th>扣分</th>
            </tr>
            <tr>
                <td>方法完整性（5 分）</td>
                <td>全站仪测点不少于 15 点，每少 1 点扣 0.5 分。</td>
                <td></td>
            </tr>
            <tr>
                <td>点位精度（10 分）</td>
                <td>要求误差小于 0.15 米。检查 10 处，每超限 1 处扣 1 分。</td>
                <td></td>
            </tr>
            <tr>
                <td>边长精度（5 分）</td>
                <td>要求误差小于 0.15 米。检查 5 处，每超限 1 处扣 1 分。</td>
                <td></td>
            </tr>
            <tr>
                <td>高程精度（5 分）</td>
                <td>要求误差小于 1/3 等高距（0.15 米）。检查5处，每超限 1 处扣 1 分。</td>
                <td></td>
            </tr>
            <tr>
                <td>错误或违规（10 分）</td>
                <td>重大错误或违规扣 10 分；一般错误或违规扣 1-5 分。</td>
                <td></td>
            </tr>
            <tr>
                <td>完整性（15 分）</td>
                <td>图上内容取舍合理，主要地物漏测一项扣 2 分，次要地物漏测一项扣 1 分。</td>
                <td></td>
            </tr>
            <tr>
                <td>符号和注记（10 分）</td>
                <td>地形图符号和注记用错一项扣 1 分。 </td>
                <td></td>
            </tr>
            <tr>
                <td>整 饰（5 分）</td>
                <td>地形图整饰应符合规范要求，缺、错少一项扣 1 分</td>
                <td></td>
            </tr>
            <tr>
                <td>等高线（5 分）</td>
                <td>未绘制等高线扣 5 分。等高线与高程发生矛盾，1 处扣1 分。</td>
                <td></td>
            </tr>
        </table>
        <table class="table-bordered table table3">
            <tr>
                <td><strong>合计扣分</strong></td>
                <td></td>
                <td>合计得分</td>
                <td></td>
            </tr>
        </table>
        <p class="size">3）程序设计评分</p>
        <p>评分标准见下表</p>
        <table class="table table-bordered">
            <tr>
                <td>项目</td>
                <td>评分细则及标准（取至整分）</td>
                <td>得 分</td>
                <td>小计</td>
            </tr>
            <tr>
                <td rowspan="3"><strong>程序完整性（20分）</strong></td>
                <td>开发完成且已编译成可执行文件（10 分）</td>
                <td></td>
                <td></td>
            </tr>
            <tr>
                <td>代码结构清晰（5 分）</td>
                <td></td>
                <td></td>
            </tr>
            <tr>
                <td>注释规范（5 分）</td>
                <td></td>
                <td></td>
            </tr>
            <tr>
                <td rowspan="2"><strong>程序正确性（20  分）</strong></td>
                <td>运行结果正确（10 分）</td>
                <td></td>
                <td></td>
            </tr>
            <tr>
                <td>输入、输出格式正确（10 分）</td>
                <td></td>
                <td></td>
            </tr>
            <tr>
                <td rowspan="3"><strong>程序优化性 （15分）</strong></td>
                <td>容错性、鲁棒性好（5 分）</td>
                <td></td>
            </tr>
            <tr>
                <td>程序界面友好（5 分）</td>
                <td></td>
                <td></td>
            </tr>
            <tr>
                <td>同时具有手工输入与文件导入功能（5 分）</td>
                <td></td>
                <td></td>
            </tr>
            <tr>
                <td rowspan="2"><strong>开发文档（15）</strong></td>
                <td>算法设计与流程图（5 分）</td>
            </tr>
            <tr>
                <td>主要函数和变量说明（5 分）</td>
                <td></td>
                <td></td>
            </tr>
            <tr>
                <td colspan="2"><strong>总分</strong></td>
                <td colspan="2">　　　　</td>
            </tr>
        </table>
        <p class="size">本细则未尽事宜，由竞赛委员会负责解释。</p>
    </ol>
</div>

<script type="text/javascript" src="http://cdn.mathjax.org/mathjax/latest/MathJax.js?config=TeX-AMS-MML_HTMLorMML"></script>
<script type="text/x-mathjax-config">
    MathJax.Hub.Config({
        tex2jax: {inlineMath: [['$', '$']]},
        messageStyle: "none"
    });
</script>
<jsp:include page="footer.jsp" ></jsp:include>