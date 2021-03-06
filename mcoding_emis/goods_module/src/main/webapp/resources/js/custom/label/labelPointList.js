﻿//员工通讯录
var game_labelPointList = function() {
	var tableId = "tableId";
	var oTable = null;

	// 初始化加载表格数据的表头定义
	var initTableHeaderInfo = function() {
		var aoColumns = [
				{
					"sTitle" : "id",
					"sWidth" : "10%",
					"mData" : "tagsId"
				},
				{
					"sTitle" : "标签名称",
					"sWidth" : "20%",
					"mData" : "tagsName"
				},
				
				/*{		
						"sTitle": "状态",
		            	"sWidth" : "20%",
		            	"mDataProp" : "",
						"sDefaultContent" : "",
		            	"sVisible" : false,
		            	"fnCreatedCell" : function(nTd, sData, oData, iRow, iCol) {
		            		if(oData.tagsState=="1"){
		            			$(nTd).append("启用");
		            		}else if(oData.tagsState=="2"){
		            			$(nTd).append("禁用");
		            		}
		            		else{
		            			$(nTd).append("暂无");
		            		}
		            	}
				},*/
				
				{
					"sTitle" : "创建时间",
					"sWidth" : "40%",
						"mDataProp" : "",
						"sDefaultContent" : "",
						"sVisible" : false,
						"fnCreatedCell" : function(nTd,sData, oData, iRow, iCol) {
								$(nTd).append(changeDateFormat(oData.createTime));
						}
				} ];
		// 渲染特殊的列(操作列)
		var aoColumnDefs = [];
		aoColumns
				.push({
					"sTitle" : "操作",
					"mDataProp" : "",
					"sDefaultContent" : "",
					"sWidth" : "5%",
					"sVisible" : false,
					"fnCreatedCell" : function(nTd, sData, oData, iRow, iCol) {
						if (App.checkUserOperRight("gameQuestionList","editGameQuestion")) {
							$(nTd)
									.append(
											"<span style='margin: 0 5px 0 5px'><span class='btn btn-xs purple ajaxify'"
													+ " href='updateLabelPageView.html?tagsId="
													+ oData.tagsId
													+ "'><i class='fa fa-edit'></i> 编辑 </span>");
						}
						if (App.checkUserOperRight("gameQuestionList",
								"deleteGameQuestion")) {
							$(nTd)
									.append(
											"<span class='btn default btn-xs black' data-toggle='modal' "
													+ "href='#confirmWin' enable='ok' "
													+ "id='"
													+ oData.tagsId
													+ "'>"
													+ "<i class='fa fa-trash-o'></i> 删除 </span>");
						}

					}
				});

		return {
			aoColumns : aoColumns,
			aoColumnDefs : aoColumnDefs
		};
	};

	// 加载datatable表格数据  
	var loadTableData = function() {
		var headerInfo = initTableHeaderInfo();
		var selectWarehouseName=$("#selectWarehouseName").attr("value");
		/*var selectWarehouseState=$("#selectWarehouseState").attr("value");+"&tagsState"+selectWarehouseState*/
		
		var reqUrl="";
		if(selectWarehouseName){
			reqUrl="queryLabelPoinListByPage?tagsName="+selectWarehouseName;
		}else{
			reqUrl="queryLabelPoinListByPage";
		}
		oTable = $('#' + tableId).DataTable({
			"sAjaxSource" : reqUrl,
			"sAjaxDataProp" : "queryResult",
			"bFilter" : false,
			"bInfo" : true,
			"bJQueryUI" : true,
			"bLengthChange" : true,
			"bPaginate" : true,
			"bProcessing" : true,
			"bSort" : true,
			"bSortClasses" : true,
			"bStateSave" : false,
			"bAutoWidth" : true,
			"bSortCellsTop" : true,
			"iTabIndex" : 1,
			"sServerMethod" : "POST",
			"bServerSide" : true,
			"aoColumns" : headerInfo.aoColumns,
			"aLengthMenu" : [ [ 10, 20, 30, 40, -1 ], [ 10, 20, 30, 40, 50 ] ],
			"iDisplayLength" : 10,
			"oLanguage" : {
				"sProcessing" : "努力加载中...",
				"sLengthMenu" : "显示 _MENU_ 条记录",
				"sInfoEmpty" : "搜索结果为0条记录",
				"sInfoFiltered" : "(从 _MAX_ 条记录中过滤出)",
				"sZeroRecords" : "没有您要搜索的内容",
				"sSearch" : "搜索",
				"sInfo" : "当前显示 _START_ 到 _END_ 总共 _TOTAL_ 条记录",
				"oPaginate" : {
					"sFirst" : "首页",
					"sPrevious" : "上一页",
					"sNext" : "下一页",
					"sLast" : "末页"
				}
			}
		});
	};

	$('#btnSearch').click(function() {
		oTable.fnDestroy();
		loadTableData();
	});

	var initToolBar = function() {
		// 触发相关赋值
		$("#confirmWin").on("show.bs.modal", function(e) {
			var id = $(e.relatedTarget).attr("id");
			$("#id").val('').val(id);
		});
		// 删除事件
		$("#deleteBut").on("click", function() {
			var param = {
					tagsId : $("#id").val()
			};
			$.ajax({
				type : "post",
				dataType : "json",
				url : "deleteLabel",
				data : param,
				success : function(data) {
					if (data.code == 0) {
						oTable.fnReloadAjax();
						bootbox.alert("删除成功");
						$("#confirmWin").modal("hide");
					} else {
						bootbox.alert("删除失败");
					}
				}
			});
		});
	};
	
	var queryData=function(data){
		var result = "";
		result += "<option value=''>请选择内购企业</option>";
	    $.each(data, function(index, value){
	    	result += "<option value="+value.id+">"+value.companyname+"</option>";
	    });
	 
	    // $("#selectCompanyId").empty().append(result).change();
	};
	
	var initSelectData=function(){
		$.ajax({
			type : "get",
			dataType : "json",
			url : "selectCompanyByAll",
			data : {
				
			},
			success : function(data) {
				queryData(data.data);
			}
		});
		
	};
	return {
		init : function() {
			loadTableData();
			initToolBar();
			initSelectData();
		},
		loadTableData : loadTableData
	};
}();
