<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="mcoding" uri="http://mcoding.cn/jsp/common"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<div class="row">
	<div class="col-md-12 ">
		<div class="portlet box blue">
			<div class="portlet-title">
				<div class="caption">
					<i class="fa fa-reorder"></i>
					增加仓库地址
				</div>
			</div>
			<div class="portlet-body form">
				<div class="form-body">
					<form action="#" id="submitForm" class="form-horizontal">
						<div class="form-group">
							<label class="col-md-3 control-label">仓库名称 <span
								class="required">*</span>
							</label>
							<div class="col-md-9" id="warehouseNameDiv">
								<input type="text" name="warehouseName" id="warehouseName"
									class="form-control input-inline input-medium"
									placeholder="请输入仓库名称">
							</div>
						</div>
						<div class="form-group">
								<label class="col-md-3 control-label">仓库地址信息<span class="required">*</span>
								</label>
								<div class="col-md-9" id="warehouseAddressDiv">
									<input type="text" name="warehouseAddress" id="warehouseAddress"
										class="form-control input-inline input-medium"
										placeholder="请输入仓库地址">
								</div>
						</div>
						<div class="form-group">
								<label class="col-md-3 control-label">仓库编号<span class="required">*</span>
								</label>
								<div class="col-md-9" id="warehouseNumberDiv">
									<input type="text" name="warehouseNumber" id="warehouseNumber"
										class="form-control input-inline input-medium"
										placeholder="请输入仓库编号">
								</div>
						</div>
						<div class="form-group">
								<label class="col-md-3 control-label">配送范围(公里)<span class="required">*</span>
								</label>
								<div class="col-md-9" id="deliveryAreaDiv">
									<input type="number"  name="deliveryArea" id="deliveryArea" 
										class="form-control" style="width: 140px;">
								</div>
								
						</div>
					</form>
				</div>

				<div class="form-actions fluid">
					<div class="col-md-offset-3 col-md-9">
						<button id="singleAdd" type="button" class="btn purple">
							<i class="fa fa-check"></i> 提 交
						</button>
						<button id="backListPage" href="warehouseList.html"
							type="button" class="btn default ajaxify">返 回</button>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
<script
	src="${basePath}resources/js/custom/warehouse/addWarehouse.js"
	type="text/javascript">
</script>
<script type="text/javascript">
	mallgame_addGamblingManager.init();
</script>
