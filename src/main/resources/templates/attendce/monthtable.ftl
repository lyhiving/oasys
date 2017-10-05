<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<#include "/common/commoncss.ftl">
<link href="css/common/checkbox.css" rel="stylesheet" />
<link href="css/common/iconfont.css" rel="stylesheet" />
<link href="css/attendce/monthtable.css" rel="stylesheet"/>
<script type="text/javascript" src="js/iconfont.js"></script> 
<script	type="text/javascript" src="plugins/My97DatePicker/WdatePicker.js"></script>
<script type="text/javascript" src="js/attendce/monthtable.js"></script>
</head>
<body>
	<div class="row" style="padding-top: 10px">
		<div class="col-md-2">
			<h1 style="font-size: 24px; margin: 0;" class="">考勤月报表</h1>
		</div>
		<div class="col-md-10 text-right">
			<a href="##"><span class="glyphicon glyphicon-home"></span> 首页</a> >
			<a disabled="disabled">考勤月报表</a>
		</div>
	</div>
	<div class="row">
	<div class="col-md-12">
	<div class="box">
		<div class="box-header ">
			<a class="label  label-back lastmonth"> <span
				class="glyphicon glyphicon-chevron-left"></span> 上一月
			</a> <a class=" label  label-back nextmonth"> <span
				class="glyphicon glyphicon-chevron-right"></span> 下一月
			</a>
			<span id="month"></span>
			<div class="input-group" style="width: 150px; float: right;">
				<input type="text" class="form-control input-sm pull-right"
					placeholder="查找..." />
				<div class="input-group-btn" style="top: -1px;">
					<a class="btn btn-sm btn-default glyphicon glyphicon-search btn-change"
						href=""></a>
				</div>
			</div>


		</div>
		<div class="box-body">
			<div id="refresh" class="thistable">
				<#include "/attendce/realmonthtable.ftl">
			</div>
		</div>
         </div>
         </div>
	</div>