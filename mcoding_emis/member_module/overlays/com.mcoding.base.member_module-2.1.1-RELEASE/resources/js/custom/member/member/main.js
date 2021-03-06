var DataTableList = function () {
	var tableId = "dataTable";
	var oTable = null;
	
	// 初始化加载表格数据的表头定义
    var initTableHeaderInfo = function(){
        var aoColumns = [
            { "sTitle" : "id", "mData" : "id" },                         
            { "sTitle" : "昵称", "mData" : "name" },
			{ "sTitle" : "真实姓名", "mData" : "trueName" },
			{ "sTitle" : "电话", "mData" : "mobilephone" },
			{
				"sTitle": "性别", 
				"mDataProp" : "",
				"sDefaultContent" : "",
				"sVisible" : false, 
				"fnCreatedCell":function(nTd,sData, oData, iRow, iCol){
					if(oData.gender == 1){
						$(nTd).append('男');
					}else if(oData.gender == 2){
						$(nTd).append('女');
					}else{
						$(nTd).append('未登记');
					}
				}
			},{
				"sTitle": "来源", 
				"mDataProp" : "",
				"sDefaultContent" : "",
				"sVisible" : false, 
				"fnCreatedCell":function(nTd,sData, oData, iRow, iCol){
					if(oData.source == 1){
						$(nTd).append('微信');
					}else if(oData.source == 2){
						$(nTd).append('qq');
					}else if(oData.source == 3){
						$(nTd).append('微博');
					}else{
						$(nTd).append('未知');
					}
				}
			},
			{ "sTitle" : "会员级别", "mData" : "mobilephone" },
			{ "sTitle" : "会员积分", "mData" : "mobilephone" },
			{
				"sTitle": "注册时间", 
				"mDataProp" : "",
				"sDefaultContent" : "",
				"sVisible" : false, 
				"fnCreatedCell":function(nTd,sData, oData, iRow, iCol){
					if(oData.createTime){
						$(nTd).append(moment(oData.createTime).format('YYYY-MM-DD HH:mm:ss'));
					}
				}
			},
			{
				"sTitle": "状态", 
				"mDataProp" : "",
				"sDefaultContent" : "",
				"sVisible" : false, 
				"fnCreatedCell":function(nTd,sData, oData, iRow, iCol){
					if(oData.isEnable == 1){
						$(nTd).append('正常');
					}else{
						$(nTd).append('禁用');
					}
				}
			},
        ];
        
        aoColumns.push({
        	"sTitle": "操作",
        	"mDataProp" : "",
        	"sDefaultContent" : "",
        	"sVisible" : false, 
        	"fnCreatedCell": function(nTd,sData, oData, iRow, iCol){
        		var memberId = 0;
        		var isEnableValue = '未知';
        		var setIsEnableValue = '-1';
        		
        		if(oData.id){
        			memberId = oData.id;
        		}
        		
        		if(oData.isEnable == 1){
        			isEnableValue = '禁用';
        			setIsEnableValue = 0;
        		}else{
        			isEnableValue = '启用';
        			setIsEnableValue = 1;
        		}
        		
        		var btnSetIsEnableHtml = "<span class='btn btn-xs purple'><i class='fa fa-edit'></i> "+isEnableValue;
        		var btnSetIsEnableObj = $('<span>', {
        			style : "margin: 0 5px 0 5px",
        			click : function(){disableHandler(memberId, setIsEnableValue); }
        		});
        		btnSetIsEnableObj.append(btnSetIsEnableHtml);
        		btnSetIsEnableObj.appendTo($(nTd));
        		
//        		var btnUpdateByIdHtml = "<span style='margin: 0 5px 0 5px'><span class='btn btn-xs purple ajaxify' href='member/service/toUpdateViewById?id="+oData.id+"'><i class='fa fa-edit'></i> 更改 </span>";
//        		var btnUpdateByIdObj = $(btnUpdateByIdHtml).appendTo($(nTd));
        		
        	}
        });
        
        // 渲染特殊的列(操作列)
        var aoColumnDefs =[];
        return {
            aoColumns : aoColumns,
            aoColumnDefs : aoColumnDefs
        };
    };
    
    
    // 加载datatable表格数据
    var loadTableData = function(){
        var headerInfo = initTableHeaderInfo();
        oTable = $('#'+tableId).DataTable({
        	"fnServerParams": function (aoData) {
                // aoData.push({"name": "orgId", "value": currtOrgId});
            },
            "sAjaxSource": "member/service/findByPage",
            "sAjaxDataProp": "queryResult",
            "bFilter" : true,
            "bInfo": true,
            "bJQueryUI": true,
            "bLengthChange": true,
            "bPaginate": true,
            "bProcessing": true,
            "bSort": false,
            "bSortClasses": true,
            "bStateSave": false,
            "bAutoWidth":true,
            "bSortCellsTop": true,
            "iTabIndex": 1,
            "sServerMethod": "POST",
            "bServerSide": true,
            "aoColumns": headerInfo.aoColumns,
            "aLengthMenu": [
                [10, 20, 30, 40, -1],
                [10, 20, 30, 40, 50]
            ],
            "iDisplayLength": 10,
            "oLanguage": {
            	"sProcessing" : "努力加载中...",
                "sLengthMenu": "显示 _MENU_ 条记录",
                "sInfoEmpty" : "搜索结果为0条记录",
                "sInfoFiltered": "(从 _MAX_ 条记录中过滤出)",
                "sZeroRecords" : "没有您要搜索的内容", 
                "sSearch" : "搜索(昵称、真实姓名、电话)：", 
                "sInfo": "当前显示 _START_ 到 _END_ 总共 _TOTAL_ 条记录",
                "oPaginate": {
                    "sFirst":"首页",
                    "sPrevious": "上一页",
                    "sNext": "下一页",
                    "sLast":"末页"
                }
            }
        });
    };
    
    var disableHandler = function(member, isEnable){
    	var msg = isEnable == 1 ? "确认禁用吗?": "确认启用吗?"
    	
    	bootbox.confirm(msg, function(result) {
    		if (!result) {
				return;
			}
			var url = 'member/service/setIsEnableById?id=' +member+'&isEnable=' + isEnable;
			
			$.getJSON(url, function(json){
				if(json && json.status == '00'){
					bootbox.alert("操作成功");
					oTable.fnReloadAjax();
					return;
				}else{
					return bootbox.alert("操作失败,请刷新后重试");
				}
			});
		});
    };

    return {
        init: function () {
            loadTableData();
        }
    };
}();

