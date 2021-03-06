<%@ page language="java" pageEncoding="UTF-8" contentType="text/html;charset=utf-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>

	
							<!-- BEGIN PAGE HEADER-->
							<div class="row">
								<div class="col-md-12">
									<!-- BEGIN PAGE TITLE & BREADCRUMB-->
									<h3 class="page-title">
									用户管理 
									</h3>
									<ul class="page-breadcrumb breadcrumb">										
										<li>
											<i class="fa fa-home"></i>
											<a href="index.html">
												首页
											</a>
											<i class="fa fa-angle-right"></i>
										</li>
										<li>
											<a href="#">
												用户管理
											</a>
											<i class="fa fa-angle-right"></i>
										</li>
										<li>
											<a href="#">
												个人资料中心
											</a>
										</li>
									</ul>
									<!-- END PAGE TITLE & BREADCRUMB-->
								</div>
							</div>
							<!-- END PAGE HEADER-->
							<!-- BEGIN PAGE CONTENT-->
							<div class="row profile">
								<div class="col-md-12">
									<!--BEGIN TABS-->
									<div class="tabbable tabbable-custom tabbable-full-width">
										<ul class="nav nav-tabs">
											<li class="active">
												<a href="#tab_1_1" data-toggle="tab">
													 个人履历
												</a>
											</li>
											<!-- <li>
												<a href="#tab_1_3" data-toggle="tab">
													 Account
												</a>
											</li>
											<li>
												<a href="#tab_1_4" data-toggle="tab">
													 Projects
												</a>
											</li>
											<li>
												<a href="#tab_1_6" data-toggle="tab">
													 Help
												</a>
											</li> -->
										</ul>
										<div class="tab-content">
											<div class="tab-pane active" id="tab_1_1">
												<div class="row">
													<div class="col-md-3">
														<ul class="list-unstyled profile-nav">
															<li>
																<img src="${basePath}resources/images/userProfile.png" class="img-responsive" alt=""/>
																<a href="#" class="profile-edit">
																	 修改
																</a>
															</li>
															<!-- <li>
																<a href="#">
																	 Projects
																</a>
															</li>
															<li>
																<a href="#">
																	 Messages
																	<span>
																		 3
																	</span>
																</a>
															</li>
															<li>
																<a href="#">
																	 Friends
																</a>
															</li>
															<li>
																<a href="#">
																	 Settings
																</a>
															</li> -->
														</ul>
													</div>
													<div class="col-md-9">
														<div class="row">
															<div class="col-md-8 profile-info">
																<h1><b>${user.loginName}
																	<span class="badge badge-danger">
																          	星润集团
																    </span>
																<small style="font-size:12px;padding-left:50px;padding-bottom:10px;magin-top:-5px;" class="glyphicon glyphicon-user">
																&nbsp;账户昵称:${user.nickName}</small></b></h1>
																<br>
																<p>
																	<a href="#">
																		Email: ${user.email}
																	</a>
																</p>
																<br>
																<ul class="list-inline">
																	<!-- <li>
																		<i class="fa fa-map-marker"></i> 邦华环球广场
																	</li> -->
																	<li>
																		<i class="glyphicon glyphicon-phone"></i>手机号码： ${user.mobilePhone}
																	</li>
																	<li>
																		<i class="fa fa-heart"></i>创建时间：<fmt:formatDate type="date" value="${user.createTime}"/>
																	</li>																	
																</ul>
															</div>
															<!--end col-md-8-->
														</div>
														<!--end row-->
													</div>
												</div>
											</div>
											<!--tab_1_2-->
											<div class="tab-pane" id="tab_1_3">
												<div class="row profile-account">
													<div class="col-md-3">
														<ul class="ver-inline-menu tabbable margin-bottom-10">
															<li class="active">
																<a data-toggle="tab" href="#tab_1-1">
																	<i class="fa fa-cog"></i> Personal info
																</a>
																<span class="after">
																</span>
															</li>
															<li>
																<a data-toggle="tab" href="#tab_2-2">
																	<i class="fa fa-picture-o"></i> Change Avatar
																</a>
															</li>
															<li>
																<a data-toggle="tab" href="#tab_3-3">
																	<i class="fa fa-lock"></i> Change Password
																</a>
															</li>
															<li>
																<a data-toggle="tab" href="#tab_4-4">
																	<i class="fa fa-eye"></i> Privacity Settings
																</a>
															</li>
														</ul>
													</div>
													<div class="col-md-9">
														<div class="tab-content">
															<div id="tab_1-1" class="tab-pane active">
																<form role="form" action="#">
																	<div class="form-group">
																		<label class="control-label">First Name</label>
																		<input type="text" placeholder="John" class="form-control"/>
																	</div>
																	<div class="form-group">
																		<label class="control-label">Last Name</label>
																		<input type="text" placeholder="Doe" class="form-control"/>
																	</div>
																	<div class="form-group">
																		<label class="control-label">Mobile Number</label>
																		<input type="text" placeholder="+1 646 580 DEMO (6284)" class="form-control"/>
																	</div>
																	<div class="form-group">
																		<label class="control-label">Interests</label>
																		<input type="text" placeholder="Design, Web etc." class="form-control"/>
																	</div>
																	<div class="form-group">
																		<label class="control-label">Occupation</label>
																		<input type="text" placeholder="Web Developer" class="form-control"/>
																	</div>
																	<div class="form-group">
																		<label class="control-label">About</label>
																		<textarea class="form-control" rows="3" placeholder="We are KeenThemes!!!"></textarea>
																	</div>
																	<div class="form-group">
																		<label class="control-label">Website Url</label>
																		<input type="text" placeholder="http://www.mywebsite.com" class="form-control"/>
																	</div>
																	<div class="margiv-top-10">
																		<a href="#" class="btn green">
																			 Save Changes
																		</a>
																		<a href="#" class="btn default">
																			 Cancel
																		</a>
																	</div>
																</form>
															</div>
															<div id="tab_2-2" class="tab-pane">
																<p>
																	 Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod.
																</p>
																<form action="#" role="form">
																	<div class="form-group">
																		<div class="fileinput fileinput-new" data-provides="fileinput">
																			<div class="fileinput-new thumbnail" style="width: 200px; height: 150px;">
																				<img src="http://www.placehold.it/200x150/EFEFEF/AAAAAA&amp;text=no+image" alt=""/>
																			</div>
																			<div class="fileinput-preview fileinput-exists thumbnail" style="max-width: 200px; max-height: 150px;">
																			</div>
																			<div>
																				<span class="btn default btn-file">
																					<span class="fileinput-new">
																						 Select image
																					</span>
																					<span class="fileinput-exists">
																						 Change
																					</span>
																					<input type="file" name="...">
																				</span>
																				<a href="#" class="btn default fileinput-exists" data-dismiss="fileinput">
																					 Remove
																				</a>
																			</div>
																		</div>
																		<div class="clearfix margin-top-10">
																			<span class="label label-danger">
																				 NOTE!
																			</span>
																			<span>
																				 Attached image thumbnail is supported in Latest Firefox, Chrome, Opera, Safari and Internet Explorer 10 only
																			</span>
																		</div>
																	</div>
																	<div class="margin-top-10">
																		<a href="#" class="btn green">
																			 Submit
																		</a>
																		<a href="#" class="btn default">
																			 Cancel
																		</a>
																	</div>
																</form>
															</div>
															<div id="tab_3-3" class="tab-pane">
																<form action="#">
																	<div class="form-group">
																		<label class="control-label">Current Password</label>
																		<input type="password" class="form-control"/>
																	</div>
																	<div class="form-group">
																		<label class="control-label">New Password</label>
																		<input type="password" class="form-control"/>
																	</div>
																	<div class="form-group">
																		<label class="control-label">Re-type New Password</label>
																		<input type="password" class="form-control"/>
																	</div>
																	<div class="margin-top-10">
																		<a href="#" class="btn green">
																			 Change Password
																		</a>
																		<a href="#" class="btn default">
																			 Cancel
																		</a>
																	</div>
																</form>
															</div>
															<div id="tab_4-4" class="tab-pane">
																<form action="#">
																	<table class="table table-bordered table-striped">
																	<tr>
																		<td>
																			 Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus..
																		</td>
																		<td>
																			<label class="uniform-inline">
																			<input type="radio" name="optionsRadios1" value="option1"/>
																			Yes </label>
																			<label class="uniform-inline">
																			<input type="radio" name="optionsRadios1" value="option2" checked/>
																			No </label>
																		</td>
																	</tr>
																	<tr>
																		<td>
																			 Enim eiusmod high life accusamus terry richardson ad squid wolf moon
																		</td>
																		<td>
																			<label class="uniform-inline">
																			<input type="checkbox" value=""/> Yes </label>
																		</td>
																	</tr>
																	<tr>
																		<td>
																			 Enim eiusmod high life accusamus terry richardson ad squid wolf moon
																		</td>
																		<td>
																			<label class="uniform-inline">
																			<input type="checkbox" value=""/> Yes </label>
																		</td>
																	</tr>
																	<tr>
																		<td>
																			 Enim eiusmod high life accusamus terry richardson ad squid wolf moon
																		</td>
																		<td>
																			<label class="uniform-inline">
																			<input type="checkbox" value=""/> Yes </label>
																		</td>
																	</tr>
																	</table>
																	<!--end profile-settings-->
																	<div class="margin-top-10">
																		<a href="#" class="btn green">
																			 Save Changes
																		</a>
																		<a href="#" class="btn default">
																			 Cancel
																		</a>
																	</div>
																</form>
															</div>
														</div>
													</div>
													<!--end col-md-9-->
												</div>
											</div>
											<!--end tab-pane-->
											<div class="tab-pane" id="tab_1_4">
												<div class="row">
													<div class="col-md-12">
														<div class="add-portfolio">
															<span>
																 502 Items sold this week
															</span>
															<a href="#" class="btn icn-only green">
																 Add a new Project <i class="m-icon-swapright m-icon-white"></i>
															</a>
														</div>
													</div>
												</div>
												<!--end add-portfolio-->
												<div class="row portfolio-block">
													<div class="col-md-5">
														<div class="portfolio-text">
															<img src="${basePath}resources/metronic_v2.0.2/assets/img/profile/portfolio/logo_metronic.jpg" alt=""/>
															<div class="portfolio-text-info">
																<h4>Metronic - Responsive Template</h4>
																<p>
																	 Lorem ipsum dolor sit consectetuer adipiscing elit.
																</p>
															</div>
														</div>
													</div>
													<div class="col-md-5 portfolio-stat">
														<div class="portfolio-info">
															 Today Sold
															<span>
																 187
															</span>
														</div>
														<div class="portfolio-info">
															 Total Sold
															<span>
																 1789
															</span>
														</div>
														<div class="portfolio-info">
															 Earns
															<span>
																 $37.240
															</span>
														</div>
													</div>
													<div class="col-md-2">
														<div class="portfolio-btn">
															<a href="#" class="btn bigicn-only">
																<span>
																	 Manage
																</span>
															</a>
														</div>
													</div>
												</div>
												<!--end row-->
												<div class="row portfolio-block">
													<div class="col-md-5 col-sm-12 portfolio-text">
														<img src="${basePath}resources/metronic_v2.0.2/assets/img/profile/portfolio/logo_azteca.jpg" alt=""/>
														<div class="portfolio-text-info">
															<h4>Metronic - Responsive Template</h4>
															<p>
																 Lorem ipsum dolor sit consectetuer adipiscing elit.
															</p>
														</div>
													</div>
													<div class="col-md-5 portfolio-stat">
														<div class="portfolio-info">
															 Today Sold
															<span>
																 24
															</span>
														</div>
														<div class="portfolio-info">
															 Total Sold
															<span>
																 660
															</span>
														</div>
														<div class="portfolio-info">
															 Earns
															<span>
																 $7.060
															</span>
														</div>
													</div>
													<div class="col-md-2 col-sm-12 portfolio-btn">
														<a href="#" class="btn bigicn-only">
															<span>
																 Manage
															</span>
														</a>
													</div>
												</div>
												<!--end row-->
												<div class="row portfolio-block">
													<div class="col-md-5 portfolio-text">
														<img src="${basePath}resources/metronic_v2.0.2/assets/img/profile/portfolio/logo_conquer.jpg" alt=""/>
														<div class="portfolio-text-info">
															<h4>Metronic - Responsive Template</h4>
															<p>
																 Lorem ipsum dolor sit consectetuer adipiscing elit.
															</p>
														</div>
													</div>
													<div class="col-md-5 portfolio-stat">
														<div class="portfolio-info">
															 Today Sold
															<span>
																 24
															</span>
														</div>
														<div class="portfolio-info">
															 Total Sold
															<span>
																 975
															</span>
														</div>
														<div class="portfolio-info">
															 Earns
															<span>
																 $21.700
															</span>
														</div>
													</div>
													<div class="col-md-2 portfolio-btn">
														<a href="#" class="btn bigicn-only">
															<span>
																 Manage
															</span>
														</a>
													</div>
												</div>
												<!--end row-->
											</div>
											<!--end tab-pane-->
											<div class="tab-pane" id="tab_1_6">
												<div class="row">
													<div class="col-md-3">
														<ul class="ver-inline-menu tabbable margin-bottom-10">
															<li class="active">
																<a data-toggle="tab" href="#tab_1">
																	<i class="fa fa-briefcase"></i> General Questions
																</a>
																<span class="after">
																</span>
															</li>
															<li>
																<a data-toggle="tab" href="#tab_2">
																	<i class="fa fa-group"></i> Membership
																</a>
															</li>
															<li>
																<a data-toggle="tab" href="#tab_3">
																	<i class="fa fa-leaf"></i> Terms Of Service
																</a>
															</li>
															<li>
																<a data-toggle="tab" href="#tab_1">
																	<i class="fa fa-info-circle"></i> License Terms
																</a>
															</li>
															<li>
																<a data-toggle="tab" href="#tab_2">
																	<i class="fa fa-tint"></i> Payment Rules
																</a>
															</li>
															<li>
																<a data-toggle="tab" href="#tab_3">
																	<i class="fa fa-plus"></i> Other Questions
																</a>
															</li>
														</ul>
													</div>
													<div class="col-md-9">
														<div class="tab-content">
															<div id="tab_1" class="tab-pane active">
																<div id="accordion1" class="panel-group">
																	<div class="panel panel-default">
																		<div class="panel-heading">
																			<h4 class="panel-title">
																			<a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion1" href="#accordion1_1">
																				 1. Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry ?
																			</a>
																			</h4>
																		</div>
																		<div id="accordion1_1" class="panel-collapse collapse in">
																			<div class="panel-body">
																				 Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird on it squid single-origin coffee nulla assumenda shoreditch et. Nihil anim keffiyeh helvetica, craft beer labore wes anderson cred nesciunt sapiente ea proident. Ad vegan excepteur butcher vice lomo. Leggings occaecat craft beer farm-to-table, raw denim aesthetic synth nesciunt you probably haven't heard of them accusamus labore sustainable VHS.
																			</div>
																		</div>
																	</div>
																	<div class="panel panel-default">
																		<div class="panel-heading">
																			<h4 class="panel-title">
																			<a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion1" href="#accordion1_2">
																				 2. Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry ?
																			</a>
																			</h4>
																		</div>
																		<div id="accordion1_2" class="panel-collapse collapse">
																			<div class="panel-body">
																				 Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird on it squid single-origin coffee nulla assumenda shoreditch et. Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird on it squid single-origin coffee nulla assumenda shoreditch et. Nihil anim keffiyeh helvetica, craft beer labore wes anderson cred nesciunt sapiente ea proident. Ad vegan excepteur butcher vice lomo. Leggings occaecat craft beer farm-to-table, raw denim aesthetic synth nesciunt you probably haven't heard of them accusamus labore sustainable VHS.
																			</div>
																		</div>
																	</div>
																	<div class="panel panel-success">
																		<div class="panel-heading">
																			<h4 class="panel-title">
																			<a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion1" href="#accordion1_3">
																				 3. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor ?
																			</a>
																			</h4>
																		</div>
																		<div id="accordion1_3" class="panel-collapse collapse">
																			<div class="panel-body">
																				 Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird on it squid single-origin coffee nulla assumenda shoreditch et. Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird on it squid single-origin coffee nulla assumenda shoreditch et. Nihil anim keffiyeh helvetica, craft beer labore wes anderson cred nesciunt sapiente ea proident. Ad vegan excepteur butcher vice lomo. Leggings occaecat craft beer farm-to-table, raw denim aesthetic synth nesciunt you probably haven't heard of them accusamus labore sustainable VHS.
																			</div>
																		</div>
																	</div>
																	<div class="panel panel-warning">
																		<div class="panel-heading">
																			<h4 class="panel-title">
																			<a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion1" href="#accordion1_4">
																				 4. Wolf moon officia aute, non cupidatat skateboard dolor brunch ?
																			</a>
																			</h4>
																		</div>
																		<div id="accordion1_4" class="panel-collapse collapse">
																			<div class="panel-body">
																				 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird on it squid single-origin coffee nulla assumenda shoreditch et. Nihil anim keffiyeh helvetica, craft beer labore wes anderson cred nesciunt sapiente ea proident. Ad vegan excepteur butcher vice lomo. Leggings occaecat craft beer farm-to-table, raw denim aesthetic synth nesciunt you probably haven't heard of them accusamus labore sustainable VHS.
																			</div>
																		</div>
																	</div>
																	<div class="panel panel-danger">
																		<div class="panel-heading">
																			<h4 class="panel-title">
																			<a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion1" href="#accordion1_5">
																				 5. Leggings occaecat craft beer farm-to-table, raw denim aesthetic ?
																			</a>
																			</h4>
																		</div>
																		<div id="accordion1_5" class="panel-collapse collapse">
																			<div class="panel-body">
																				 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird on it squid single-origin coffee nulla assumenda shoreditch et. Nihil anim keffiyeh helvetica, craft beer labore wes anderson cred nesciunt sapiente ea proident. Ad vegan excepteur butcher vice lomo. Leggings occaecat craft beer farm-to-table, raw denim aesthetic synth nesciunt you probably haven't heard of them accusamus labore sustainable VHS. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird on it squid single-origin coffee nulla assumenda shoreditch et
																			</div>
																		</div>
																	</div>
																	<div class="panel panel-default">
																		<div class="panel-heading">
																			<h4 class="panel-title">
																			<a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion1" href="#accordion1_6">
																				 6. Leggings occaecat craft beer farm-to-table, raw denim aesthetic synth ?
																			</a>
																			</h4>
																		</div>
																		<div id="accordion1_6" class="panel-collapse collapse">
																			<div class="panel-body">
																				 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird on it squid single-origin coffee nulla assumenda shoreditch et. Nihil anim keffiyeh helvetica, craft beer labore wes anderson cred nesciunt sapiente ea proident. Ad vegan excepteur butcher vice lomo. Leggings occaecat craft beer farm-to-table, raw denim aesthetic synth nesciunt you probably haven't heard of them accusamus labore sustainable VHS. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird on it squid single-origin coffee nulla assumenda shoreditch et
																			</div>
																		</div>
																	</div>
																	<div class="panel panel-default">
																		<div class="panel-heading">
																			<h4 class="panel-title">
																			<a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion1" href="#accordion1_7">
																				 7. Ad vegan excepteur butcher vice lomo. Leggings occaecat craft ?
																			</a>
																			</h4>
																		</div>
																		<div id="accordion1_7" class="panel-collapse collapse">
																			<div class="panel-body">
																				 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird on it squid single-origin coffee nulla assumenda shoreditch et. Nihil anim keffiyeh helvetica, craft beer labore wes anderson cred nesciunt sapiente ea proident. Ad vegan excepteur butcher vice lomo. Leggings occaecat craft beer farm-to-table, raw denim aesthetic synth nesciunt you probably haven't heard of them accusamus labore sustainable VHS. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird on it squid single-origin coffee nulla assumenda shoreditch et
																			</div>
																		</div>
																	</div>
																</div>
															</div>
															<div id="tab_2" class="tab-pane">
																<div id="accordion2" class="panel-group">
																	<div class="panel panel-warning">
																		<div class="panel-heading">
																			<h4 class="panel-title">
																			<a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion2" href="#accordion2_1">
																				 1. Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry ?
																			</a>
																			</h4>
																		</div>
																		<div id="accordion2_1" class="panel-collapse collapse in">
																			<div class="panel-body">
																				<p>
																					 Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird on it squid single-origin coffee nulla assumenda shoreditch et. Nihil anim keffiyeh helvetica, craft beer labore wes anderson cred nesciunt sapiente ea proident. Ad vegan excepteur butcher vice lomo. Leggings occaecat craft beer farm-to-table, raw denim aesthetic synth nesciunt you probably haven't heard of them accusamus labore sustainable VHS.
																				</p>
																				<p>
																					 Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird on it squid single-origin coffee nulla assumenda shoreditch et. Nihil anim keffiyeh helvetica, craft beer labore wes anderson cred nesciunt sapiente ea proident. Ad vegan excepteur butcher vice lomo. Leggings occaecat craft beer farm-to-table, raw denim aesthetic synth nesciunt you probably haven't heard of them accusamus labore sustainable VHS.
																				</p>
																			</div>
																		</div>
																	</div>
																	<div class="panel panel-danger">
																		<div class="panel-heading">
																			<h4 class="panel-title">
																			<a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion2" href="#accordion2_2">
																				 2. Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry ?
																			</a>
																			</h4>
																		</div>
																		<div id="accordion2_2" class="panel-collapse collapse">
																			<div class="panel-body">
																				 Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird on it squid single-origin coffee nulla assumenda shoreditch et. Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird on it squid single-origin coffee nulla assumenda shoreditch et. Nihil anim keffiyeh helvetica, craft beer labore wes anderson cred nesciunt sapiente ea proident. Ad vegan excepteur butcher vice lomo. Leggings occaecat craft beer farm-to-table, raw denim aesthetic synth nesciunt you probably haven't heard of them accusamus labore sustainable VHS.
																			</div>
																		</div>
																	</div>
																	<div class="panel panel-success">
																		<div class="panel-heading">
																			<h4 class="panel-title">
																			<a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion2" href="#accordion2_3">
																				 3. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor ?
																			</a>
																			</h4>
																		</div>
																		<div id="accordion2_3" class="panel-collapse collapse">
																			<div class="panel-body">
																				 Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird on it squid single-origin coffee nulla assumenda shoreditch et. Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird on it squid single-origin coffee nulla assumenda shoreditch et. Nihil anim keffiyeh helvetica, craft beer labore wes anderson cred nesciunt sapiente ea proident. Ad vegan excepteur butcher vice lomo. Leggings occaecat craft beer farm-to-table, raw denim aesthetic synth nesciunt you probably haven't heard of them accusamus labore sustainable VHS.
																			</div>
																		</div>
																	</div>
																	<div class="panel panel-default">
																		<div class="panel-heading">
																			<h4 class="panel-title">
																			<a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion2" href="#accordion2_4">
																				 4. Wolf moon officia aute, non cupidatat skateboard dolor brunch ?
																			</a>
																			</h4>
																		</div>
																		<div id="accordion2_4" class="panel-collapse collapse">
																			<div class="panel-body">
																				 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird on it squid single-origin coffee nulla assumenda shoreditch et. Nihil anim keffiyeh helvetica, craft beer labore wes anderson cred nesciunt sapiente ea proident. Ad vegan excepteur butcher vice lomo. Leggings occaecat craft beer farm-to-table, raw denim aesthetic synth nesciunt you probably haven't heard of them accusamus labore sustainable VHS.
																			</div>
																		</div>
																	</div>
																	<div class="panel panel-default">
																		<div class="panel-heading">
																			<h4 class="panel-title">
																			<a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion2" href="#accordion2_5">
																				 5. Leggings occaecat craft beer farm-to-table, raw denim aesthetic ?
																			</a>
																			</h4>
																		</div>
																		<div id="accordion2_5" class="panel-collapse collapse">
																			<div class="panel-body">
																				 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird on it squid single-origin coffee nulla assumenda shoreditch et. Nihil anim keffiyeh helvetica, craft beer labore wes anderson cred nesciunt sapiente ea proident. Ad vegan excepteur butcher vice lomo. Leggings occaecat craft beer farm-to-table, raw denim aesthetic synth nesciunt you probably haven't heard of them accusamus labore sustainable VHS. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird on it squid single-origin coffee nulla assumenda shoreditch et
																			</div>
																		</div>
																	</div>
																	<div class="panel panel-default">
																		<div class="panel-heading">
																			<h4 class="panel-title">
																			<a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion2" href="#accordion2_6">
																				 6. Leggings occaecat craft beer farm-to-table, raw denim aesthetic synth ?
																			</a>
																			</h4>
																		</div>
																		<div id="accordion2_6" class="panel-collapse collapse">
																			<div class="panel-body">
																				 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird on it squid single-origin coffee nulla assumenda shoreditch et. Nihil anim keffiyeh helvetica, craft beer labore wes anderson cred nesciunt sapiente ea proident. Ad vegan excepteur butcher vice lomo. Leggings occaecat craft beer farm-to-table, raw denim aesthetic synth nesciunt you probably haven't heard of them accusamus labore sustainable VHS. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird on it squid single-origin coffee nulla assumenda shoreditch et
																			</div>
																		</div>
																	</div>
																	<div class="panel panel-default">
																		<div class="panel-heading">
																			<h4 class="panel-title">
																			<a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion2" href="#accordion2_7">
																				 7. Ad vegan excepteur butcher vice lomo. Leggings occaecat craft ?
																			</a>
																			</h4>
																		</div>
																		<div id="accordion2_7" class="panel-collapse collapse">
																			<div class="panel-body">
																				 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird on it squid single-origin coffee nulla assumenda shoreditch et. Nihil anim keffiyeh helvetica, craft beer labore wes anderson cred nesciunt sapiente ea proident. Ad vegan excepteur butcher vice lomo. Leggings occaecat craft beer farm-to-table, raw denim aesthetic synth nesciunt you probably haven't heard of them accusamus labore sustainable VHS. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird on it squid single-origin coffee nulla assumenda shoreditch et
																			</div>
																		</div>
																	</div>
																</div>
															</div>
															<div id="tab_3" class="tab-pane">
																<div id="accordion3" class="panel-group">
																	<div class="panel panel-danger">
																		<div class="panel-heading">
																			<h4 class="panel-title">
																			<a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion3" href="#accordion3_1">
																				 1. Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry ?
																			</a>
																			</h4>
																		</div>
																		<div id="accordion3_1" class="panel-collapse collapse in">
																			<div class="panel-body">
																				<p>
																					 Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird on it squid single-origin coffee nulla assumenda shoreditch et.
																				</p>
																				<p>
																					 Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird on it squid single-origin coffee nulla assumenda shoreditch et.
																				</p>
																				<p>
																					 Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird on it squid single-origin coffee nulla assumenda shoreditch et. Nihil anim keffiyeh helvetica, craft beer labore wes anderson cred nesciunt sapiente ea proident. Ad vegan excepteur butcher vice lomo. Leggings occaecat craft beer farm-to-table, raw denim aesthetic synth nesciunt you probably haven't heard of them accusamus labore sustainable VHS.
																				</p>
																			</div>
																		</div>
																	</div>
																	<div class="panel panel-success">
																		<div class="panel-heading">
																			<h4 class="panel-title">
																			<a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion3" href="#accordion3_2">
																				 2. Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry ?
																			</a>
																			</h4>
																		</div>
																		<div id="accordion3_2" class="panel-collapse collapse">
																			<div class="panel-body">
																				 Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird on it squid single-origin coffee nulla assumenda shoreditch et. Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird on it squid single-origin coffee nulla assumenda shoreditch et. Nihil anim keffiyeh helvetica, craft beer labore wes anderson cred nesciunt sapiente ea proident. Ad vegan excepteur butcher vice lomo. Leggings occaecat craft beer farm-to-table, raw denim aesthetic synth nesciunt you probably haven't heard of them accusamus labore sustainable VHS.
																			</div>
																		</div>
																	</div>
																	<div class="panel panel-default">
																		<div class="panel-heading">
																			<h4 class="panel-title">
																			<a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion3" href="#accordion3_3">
																				 3. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor ?
																			</a>
																			</h4>
																		</div>
																		<div id="accordion3_3" class="panel-collapse collapse">
																			<div class="panel-body">
																				 Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird on it squid single-origin coffee nulla assumenda shoreditch et. Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird on it squid single-origin coffee nulla assumenda shoreditch et. Nihil anim keffiyeh helvetica, craft beer labore wes anderson cred nesciunt sapiente ea proident. Ad vegan excepteur butcher vice lomo. Leggings occaecat craft beer farm-to-table, raw denim aesthetic synth nesciunt you probably haven't heard of them accusamus labore sustainable VHS.
																			</div>
																		</div>
																	</div>
																	<div class="panel panel-default">
																		<div class="panel-heading">
																			<h4 class="panel-title">
																			<a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion3" href="#accordion3_4">
																				 4. Wolf moon officia aute, non cupidatat skateboard dolor brunch ?
																			</a>
																			</h4>
																		</div>
																		<div id="accordion3_4" class="panel-collapse collapse">
																			<div class="panel-body">
																				 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird on it squid single-origin coffee nulla assumenda shoreditch et. Nihil anim keffiyeh helvetica, craft beer labore wes anderson cred nesciunt sapiente ea proident. Ad vegan excepteur butcher vice lomo. Leggings occaecat craft beer farm-to-table, raw denim aesthetic synth nesciunt you probably haven't heard of them accusamus labore sustainable VHS.
																			</div>
																		</div>
																	</div>
																	<div class="panel panel-default">
																		<div class="panel-heading">
																			<h4 class="panel-title">
																			<a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion3" href="#accordion3_5">
																				 5. Leggings occaecat craft beer farm-to-table, raw denim aesthetic ?
																			</a>
																			</h4>
																		</div>
																		<div id="accordion3_5" class="panel-collapse collapse">
																			<div class="panel-body">
																				 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird on it squid single-origin coffee nulla assumenda shoreditch et. Nihil anim keffiyeh helvetica, craft beer labore wes anderson cred nesciunt sapiente ea proident. Ad vegan excepteur butcher vice lomo. Leggings occaecat craft beer farm-to-table, raw denim aesthetic synth nesciunt you probably haven't heard of them accusamus labore sustainable VHS. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird on it squid single-origin coffee nulla assumenda shoreditch et
																			</div>
																		</div>
																	</div>
																	<div class="panel panel-default">
																		<div class="panel-heading">
																			<h4 class="panel-title">
																			<a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion3" href="#accordion3_6">
																				 6. Leggings occaecat craft beer farm-to-table, raw denim aesthetic synth ?
																			</a>
																			</h4>
																		</div>
																		<div id="accordion3_6" class="panel-collapse collapse">
																			<div class="panel-body">
																				 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird on it squid single-origin coffee nulla assumenda shoreditch et. Nihil anim keffiyeh helvetica, craft beer labore wes anderson cred nesciunt sapiente ea proident. Ad vegan excepteur butcher vice lomo. Leggings occaecat craft beer farm-to-table, raw denim aesthetic synth nesciunt you probably haven't heard of them accusamus labore sustainable VHS. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird on it squid single-origin coffee nulla assumenda shoreditch et
																			</div>
																		</div>
																	</div>
																	<div class="panel panel-default">
																		<div class="panel-heading">
																			<h4 class="panel-title">
																			<a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion3" href="#accordion3_7">
																				 7. Ad vegan excepteur butcher vice lomo. Leggings occaecat craft ?
																			</a>
																			</h4>
																		</div>
																		<div id="accordion3_7" class="panel-collapse collapse">
																			<div class="panel-body">
																				 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird on it squid single-origin coffee nulla assumenda shoreditch et. Nihil anim keffiyeh helvetica, craft beer labore wes anderson cred nesciunt sapiente ea proident. Ad vegan excepteur butcher vice lomo. Leggings occaecat craft beer farm-to-table, raw denim aesthetic synth nesciunt you probably haven't heard of them accusamus labore sustainable VHS. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird on it squid single-origin coffee nulla assumenda shoreditch et
																			</div>
																		</div>
																	</div>
																</div>
															</div>
														</div>
													</div>
												</div>
											</div>
											<!--end tab-pane-->
										</div>
									</div>
									<!--END TABS-->
								</div>
				</div>
				<!-- END CONTAINER -->
				
