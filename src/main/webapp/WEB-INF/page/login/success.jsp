<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>华为商城</title>

<style type ="text/css">
	#div1 {
		width:100%;
		height:50px;
		background-color:#CCC;
		
	}
	
	#div6 {
		width:100%;
		height:100px;
		background-color:white;
		
	}
	
	#div12{
		width:410px;
		height:72px;
		background:url('res/image/9.jpg')
		
	}
	#div13{
		width:678px;
		height:100px;
		float: right;
		margin-top: -72px;
		background-color:#FCC;
    
		
	}
	
	
	#div7 {
		width:100%;
		height:300px;
		background-color:red;
		
	}
	
	
	#div8 {
		width:60%;
		height:300px;
		background-color:black;
		background:url('res/image/7-1.jpg');
	}
	
	#div9{
		width:40%;
		height:150px;
		background-color:blue;
		float:right;
		margin-top: -300px;
		background:url('res/image/4-2.jpg');
	}
	
	#div10 {
		width:40%;
		height:150px;
		background-color:red;
		float:right;
		margin-top: -150px;
		background:url('res/image/5-1.jpg');
	}
	
	#div11 {
		width:100%;
		height:50px;
		background-color:#999;
	
		
	}
	
	#div2 {
		width:25%;
		height:400px;
	
		float:left;
		
		
		
	}
	
	#div3 {
		width:75%;
		height:400px;
		
		margin-left:290px;
		
	}
	
	#div4 {
		width:290px;
		height:350px;
		background-color:white;
		margin-top:70px;
		margin-left:650px;
		
	}
	
	
	#div5 {
		width:25%;
		height:400px;
		float:right;
		
		margin-top:-400px;
		background:url('res/image/3-1-1-1.jpg');
		
	}
	
	.a5{
            display: block;
            font-size: 16px;
            color: #F00;
            text-decoration: none;/*隐藏超链接默认下划线*/
        }
        .a5:hover{
	color: #F00;
	font-size: 23px;
        }
	
#menu{
width: 150px;
border: 1px solid #999;


}
#menu ul{
margin:0px;
padding: 0px;
list-style:none; 
}
#menu ul li{
background:#F00;
height:36px;
line-height:36px;
text-align:center;
border-bottom:1px solid #999;
position: relative;
}
a{
display:block;
font-size:13px;
color: #fff;
text-decoration:none;
}
a:hover{
color:#f00;
font-size:14px;
}
/*创建二级菜单*/
#menu ul li ul{
display: none;
top: 0px;
width: 130px;
border: 1px solid #ccc;
border-bottom: none;
position: absolute;
left: 160px;
}
#menu ul li:hover ul{
display: block;
}
#menu ul li :hover ul li a{
display: block;
}
body,ul{
	margin:0;
	padding:0;
}
ul{
	list-style:none;
	}
	
	
#picBan{
	
	top:0px;
	left:0px;	
	width:850px;
	height:400px;
	border:1px solid red;
	position:relative;
	}
	#picBan #picBox {	
	width:850px;
	height:400px;
	position:relative;
	border:1px solid pink;
	}
#picBan #picBox ul li{
	position:absolute;
	top:0;
	left:0;
	
	
	}

	
	#circle{
	width:120px;
	height:18px;
	border:1px solid red;
	position:absolute;
	right:3px;
	bottom:15px;		
		}
		#circle ul li{
			width:10px;
			height:10px;
			border:3px solid pink;
			float:left;
			margin-left:10px;
			
			border-radius:50%;
			cursor:pointer;
			
		}
	#arrouwBox{
	width: 850px;
	height: 40px;
	/*background-color:yellow;*/
	margin: 0 auto;
	position: absolute;
	top: 50%;
	margin-top: -20px;
	padding: 0 20px;
	box-sizing: border-box;
	}
	#arrouwBox a{
		height:40px;
		width:20px;
		color:#000;
		font-size:28px;
		color:white;
		
		opacity:1;
		cursor:pointer;
		text-align:center;
		line-height:40px;
		
		
		}
		#arrouwBox a:hover{
			background-color:black;
			
		
			}
	#arrouwBox #leftArr{float:left;
				border-radius:0 5px 5px 0;
				
	         }
	#arrouwBox #rightArr{ float:right;
						 border-radius:5px 0 0 5px;}
	
		
		
		img{
			cursor:auto;
				opacity:0;			
			}
		/*#arrouwBox a:hover b{color:red;
		opacity:1;}
	*/
	.on{
	opacity:0.7;
	
	}
	.changeColor{
		background-color:yellow;
		opacity:1;
		width:25px;
		}
		
		
		    * {
    margin: 0;
    padding: 0;
}
.container {
    height: 48px;
    width: 350px;
   margin-top: 30px;
   margin-left:350px;
}
.parent {
    position: relative;
}
.search {
    width: 300px;
    height: 40px;
    border-radius: 18px;
    outline: none;
    border: 1px solid #ccc;
    padding-left: 20px;
    position: absolute;
}
.btn {
    height: 35px;
    width: 35px;
    position: absolute;
    background: url("images/topbar.png") no-repeat -2px -99px;
    top: 6px;
    left: 285px;
    border: none;
    outline: none;
    cursor: pointer;
}
	
</style>

</head>
<body onload="getLongDate()">

<div id="div1">
	<table width="100%" border="0">
  <tbody>
    <tr>
      <td width="16%">华为商城首页</td> 
      <td width="16%"><a href="/ssm-test/login" class="a5">请登录</a></td>
      <td width="16%"><a href="/ssm-test/register" class="a5">免费注册</a></td>
      <td width="16%"><a href="" class="a5">客户服务</a><a href="**********@qq.com"></a></td>
      <td width="16%"><a href="https://www.vmall.com/" class="a5">网站导航</a></td>
      <td width="16%"><a href="https://m.vmall.com/" class="a5">手机华为</a></td>
    </tr>
  </tbody>
</table>	
</div>

<div id ="div6">
<div id ="div12" >
</div>
<div id ="div13" >
<table width="100%" border="0">
  <tbody>
    <tr>
      <td width="16%"></td> 
      <td width="16%"><a href="test/dl.asp" class="a5">推荐</a></td>
      <td width="16%"><a href="https://www.vmall.com/huawei" class="a5">华为</a></td>
      <td width="16%"><a href="https://www.vmall.com/honor" class="a5">荣耀</a><a href="**********@qq.com"></a></td>
      <td width="16%"><a href="https://sale.vmall.com/hwmate.html" class="a5">Mate30系列</a></td>
      <td width="16%"><a class = "a5">数码惠</a></td>
    </tr>
  </tbody>
</table>	

<div class="container">
    <form action="" class="parent">
        <input type="text" class="search" placeholder="搜索">
        <input type="button" name="" id="" class="btn">
    </form>
</div>
</div>

</div>

<div style="width:100%;height:500px;">
	<div id="div2">
    <div id="menu">
    	<ul>
<li><a href="">家用电器</a>
<ul>
<li><a href="">电视</a></li>
<li><a href="">空调</a></li>
<li><a href="">冰箱洗衣机</a></li>
<li><a href="">生活电器</a></li>
<li><a href="">厨房小电</a></li>
</ul>
</li>

<li><a href="">手机</a><a href=""></a>
<ul>
<li><a href="">手机配件</a></li>
<li><a href="">手机通讯</a></li>
<li><a href="">手机维修</a></li>
<li><a href="">手机资讯</a></li>
<li><a href="手机.html">玩转手机</a></li>
</ul>
</li>

<li><a href="">家居</a>
<ul>
<li><a href="">厨具</a></li>
<li><a href="">生活日用品</a></li>
<li><a href="">家纺</a></li>
<li><a href="">灯具</a></li>
</ul>
</li>

<li><a href="">服饰</a>
<ul>
<li><a href="">男装</a></li>
<li><a href="">女装</a></li>
<li><a href="">童装</a></li>
<li><a href="">箱包</a></li>
</ul>
</li>

<li><a href="">食品生鲜</a>
<ul>
<li><a href="">进口食品</a></li>
<li><a href="">新鲜水果</a></li>
<li><a href="">精选肉类</a></li>
<li><a href="">海鲜水产</a></li>
<li></li>
</ul>
</li>
<li><a href="">图书文娱</a>
<ul>
<li><a href="">图书</a></li>
<li><a href="">文娱</a></li>
<li><a href="">教育</a></li>
<li><a href="">电子书</a></li>
</ul>
</li>

<li><a href="">电脑办公</a>
<ul>
<li><a href="">电脑设备</a></li>
<li><a href="">外设产品</a></li>
<li><a href="">网络产品</a></li>
</ul>
</li>

<li><a href="">玩具乐器</a>
<ul>
<li><a href="">动漫玩具</a></li>
<li><a href="">乐器</a></li>
</ul>
</li>

<li><a href="">运动户外</a>
<ul>
<li><a href="">户外鞋服</a></li>
<li><a href="">户外装备</a></li>
<li><a href="">骑行运动</a></li>
</ul>
</li>


</ul>
	</div>
	</div>
	<div id="div3">
    
  <div id="right" class=""><div id="picBan">
<div id="picBox">
   <ul>
   <li > <a href=  "#">  <img src="res/image/4-2-1.jpg" class="on" width="850" height="400"></a></li>
   <li> <a href="#">  <img src="res/image/5.jpg" width="850" height="400"></a></li>
   <li> <a href="#">  <img src="res/image/6.jpg" width="850"height="400"></a></li>
   <li> <a href="#">  <img src="res/image/7.jpg" width="850" height="400"></a></li>
   </ul>
</div>
<div id="arrouwBox">
<a id="leftArr"><b>&lt;</b></a>
<a id="rightArr"><b>&gt;</b></a>
</div>
<div id="circle">
<ul>
<li class="changeColor"></li>
<li></li>
<li></li>
<li></li>
</ul>
</div>	
   	</div>
</div>
<div id = "div5">


</div>
</div>
<div id ="div7">

<div id="div8">

</div>

<div id="div9">

</div>

<div id="div10">

</div>
</div>

<div id = "div11">

<marquee>
<div id="dateStr" ></div>
</marquee>
</div>

<script>
var  oImg = document.querySelectorAll("#picBox ul img");
var oRightBtn= document.querySelector("#rightArr");
var oLeftBtn= document.querySelector("#leftArr");
var  oCircleLi = document.querySelectorAll("#circle ul li");
console.log(oRightBtn);
console.log( oImg);
var index=0;
oRightBtn.onclick = function() {
	console.log("click");
	oImg[index].className="";
	 oCircleLi[index].className="";
	index=index+1;//index++;index+=1;
	console.log(index);
	if(index>3) index=0;
	oImg[index].className="on";
	 oCircleLi[index].className="changeColor";
}
oLeftBtn.onclick = function(){
	oImg[index].className="";
	oCircleLi[index].className="";
	index=index-1;
	if(index<0) index=3;
	oImg[index].className="on";
	 oCircleLi[index].className="changeColor";
	}	
</script>

<script>
        function getLongDate() {
            //创建当前系统时间的Date对象
            var dateObj = new Date();
            //获取完整年份值
            var year = dateObj.getFullYear();
            //获取月份
            var month = dateObj.getMonth() + 1;
            //获取月份中的日
            var date = dateObj.getDate();
            //获取星期值
            var day = dateObj.getDay();
            var weeks = ["星期日", "星期一", "星期二", "星期三", "星期四", "星期五", "星期六"];
            //根据星期值，从数组中获取对应的星期字符串
            var week = weeks[day];
            //获取小时
            var hour = dateObj.getHours();
            //获取分钟
            var minute = dateObj.getMinutes();
            //获取秒钟
            var second = dateObj.getSeconds();
            //如果月、日、时、分、秒的值小于10，在前面补0
            if (month<10) {
                month="0"+month;
            }
            if (date<10) {
                date="0"+date;
            }
            if (hour<10) {
                hour="0"+hour;
            }
            if (minute<10) {
                minute="0"+minute;
            }
            if (second<10) {
                second="0"+second;
            }
            var newDate=year+"年"+month+"月"+date+"日 "+week+" "+hour+":"+minute+":"+second;
            document.getElementById("dateStr").innerHTML="系统公告:["+newDate+"]";
            setTimeout("getLongDate()",1000);//每隔一秒重新调用一次该函数
            /*
                在实时显示系统时间时，还可以使用window对象的setIntervar()方法，
                setIntervar()方法类似于setTimeout()方法。
                不同之处是调用window对象的setIntervar()方法后，
                会一直执行setIntervar()方法所调用的JavaScript方法，
                而setTimeout()方法只能被执行一次。
                如果要通过setTimeout()方法一直执行某个JavaScript方法，
                setTimeout()必须写在被调用的JavaScript方法体内

            */
        }
    </script>
</body>
</html>