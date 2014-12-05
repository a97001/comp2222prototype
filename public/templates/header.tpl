<!DOCTYPE html>
<html>
<head>
	<title>{browserTitle}</title>
	<!-- BEGIN metaTags -->
	{function.buildMetaTag}
	<!-- END metaTags -->
	<link rel="stylesheet" type="text/css" href="{relative_path}/stylesheet.css?{css-buster}" />
	<!-- IF bootswatchCSS --><link href="{bootswatchCSS}" rel="stylesheet" media="screen"><!-- ENDIF bootswatchCSS -->
	<!-- BEGIN linkTags -->
	<link<!-- IF linkTags.link --> link="{linkTags.link}"<!-- ENDIF linkTags.link --><!-- IF linkTags.rel --> rel="{linkTags.rel}"<!-- ENDIF linkTags.rel --><!-- IF linkTags.type --> type="{linkTags.type}"<!-- ENDIF linkTags.type --><!-- IF linkTags.href --> href="{linkTags.href}"<!-- ENDIF linkTags.href --> />
	<!-- END linkTags -->
	<!-- IF useCustomCSS -->
	<style type="text/css">{customCSS}</style>
	<!-- ENDIF useCustomCSS -->

	<!--[if lt IE 9]>
  		<script src="//cdnjs.cloudflare.com/ajax/libs/es5-shim/2.3.0/es5-shim.min.js"></script>
  		<script src="//cdnjs.cloudflare.com/ajax/libs/html5shiv/3.7/html5shiv.js"></script>
  		<script src="//cdnjs.cloudflare.com/ajax/libs/respond.js/1.4.2/respond.js"></script>
  		<script>__lt_ie_9__ = 1;</script>
	<![endif]-->

	<script>
		var RELATIVE_PATH = "{relative_path}";
	</script>
	<script src="{relative_path}/nodebb.min.js?{script-buster}"></script>
	<script>
		require.config({
			baseUrl: "{relative_path}/src/modules",
			waitSeconds: 3,
			urlArgs: "{cache-buster}",
			paths: {
				'forum': '../forum',
				'vendor': '../../vendor'
			}
		});
	</script>
	<!-- IF useCustomJS -->
	{customJS}
	<!-- ENDIF useCustomJS -->
</head>

<body>
	<div class="navbar navbar-inverse navbar-fixed-top header" role="navigation" id="header-menu">
		<div class="container">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
				</button>
				<div>
					<a href="{relative_path}/">
						<img class="{brand:logo:display} forum-logo" src="{brand:logo}" />
					</a>
					<!-- IF showSiteTitle -->
					<a href="{relative_path}/">
						<h1 class="navbar-brand forum-title">{title}</h1>
					</a>
					<!-- ENDIF showSiteTitle -->

					<div class="header-topic-title visible-xs">
						<span></span>
					</div>
				</div>
			</div>

			<div class="navbar-collapse collapse navbar-ex1-collapse">
				<!-- IF !maintenanceHeader -->
				<ul id="main-nav" class="nav navbar-nav pull-left">
					<!-- IF loggedIn -->
                    <li>
                        <a href="{relative_path}/unread" title="[[global:header.unread]]">
                            <i id="unread-count" class="fa fa-fw fa-inbox" data-content="0" ></i>[[global:header.unread]]<span class="visible-xs-inline"> [[global:header.unread]]</span>
                        </a>
                    </li>
					<!-- ENDIF loggedIn -->
                    
                    <!-- IF loggedIn -->
                    <li>
                        <a href="{relative_path}/user/{user.userslug}/favourites" title="[[user:favourites]]">
                            <i class="fa fa-fw fa-bookmark-o" data-content="0" ></i>[[user:favourites]]<span class="visible-xs-inline"> [[user:favourites]]</span>
                        </a>
                    </li>
                    <!-- ENDIF loggedIn -->

<!--
					<li>
						<a href="{relative_path}/recent" title="[[global:header.recent]]">
							<i class="fa fa-fw fa-clock-o"></i><span class="visible-xs-inline"> [[global:header.recent]]</span>
						</a>
					</li>
-->
<!--
					<li>
						<a href="{relative_path}/tags" title="[[global:header.tags]]">
							<i class="fa fa-fw fa-tags"></i><span class="visible-xs-inline"> [[global:header.tags]]</span>
						</a>
					</li>
-->
<!--
					<li>
						<a href="{relative_path}/popular" title="[[global:header.popular]]">
							<i class="fa fa-fw fa-fire"></i><span class="visible-xs-inline"> [[global:header.popular]]</span>
						</a>
					</li>
-->
					<li>
						<!-- IF function.displayUsersLink -->
<!--
						<a href="{relative_path}/users" title="[[global:header.users]]">
							<i class="fa fa-fw fa-users"></i><span class="visible-xs-inline"> [[global:header.users]]</span>
						</a>
-->
						<!-- ENDIF function.displayUsersLink -->
					</li>
					<!-- IF isAdmin -->
					<li>
						<a href="{relative_path}/admin" title="[[global:header.admin]]" target="_top">
							<i class="fa fa-fw fa-cogs"></i><span class="visible-xs-inline"> [[global:header.admin]]</span>
						</a>
					</li>
					<!-- ENDIF isAdmin -->
					<!-- IF searchEnabled -->
					<li class="visible-xs">
						<a href="{relative_path}/search" title="[[global:header.search]]" id="mobile-search-button" >
							<i class="fa fa-search fa-fw" ></i> [[global:header.search]]
						</a>
					</li>
					<!-- ENDIF searchEnabled -->
					<!-- BEGIN navigation -->
					<li class="{navigation.class}">
						<a href="{relative_path}{navigation.route}" title="{navigation.title}">
							<!-- IF navigation.iconClass -->
							<i class="fa fa-fw {navigation.iconClass}"></i>
							<!-- ENDIF navigation.iconClass -->

							<!-- IF navigation.text -->
							<span class="{navigation.textClass}">{navigation.text}</span>
							<!-- ENDIF navigation.text -->
						</a>
					</li>
					<!-- END navigation -->
				</ul>

				<!-- IF loggedIn -->
				<ul id="logged-in-menu" class="nav navbar-nav navbar-right pull-right">
					<li class="notifications dropdown text-center hidden-xs">
						<a href="#" title="[[global:header.notifications]]" class="dropdown-toggle" data-toggle="dropdown" id="notif_dropdown">
                            <i class="fa fa-fw fa-bell-o" data-content="0"></i>[[global:header.notifications]]
						</a>
						<ul id="notif-list" class="dropdown-menu" aria-labelledby="notif_dropdown">
							<li>
								<a href="#"><i class="fa fa-refresh fa-spin"></i> [[global:notifications.loading]]</a>
							</li>
						</ul>
					</li>

					<li class="visible-xs">
						<a href="{relative_path}/notifications" title="[[notifications:title]]">
							<i class="fa fa-bell-o fa-fw"></i> [[notifications:title]]
						</a>
					</li>

<!--
					<li class="chats dropdown">
						<a class="dropdown-toggle" data-toggle="dropdown" href="#" title="[[global:header.chats]]" id="chat_dropdown">
							<i id="chat-count" class="fa fa-comment-o fa-fw"></i> <span class="visible-xs-inline">[[global:header.chats]]</span>
						</a>
						<ul id="chat-list" class="dropdown-menu" aria-labelledby="chat_dropdown">
							<li>
								<a href="#"><i class="fa fa-refresh fa-spin"></i> [[global:chats.loading]]</a>
							</li>
						</ul>
					</li>
-->

					<li id="user_label" class="dropdown">
						<a class="dropdown-toggle" data-toggle="dropdown" href="#" id="user_dropdown" title="[[global:header.profile]]">
                            <img id="user-header-picture" src="{user.picture}"/> [[global:header.profile]]
						</a>
						<ul id="user-control-list" class="dropdown-menu" aria-labelledby="user_dropdown">
							<li>
								<a id="user-profile-link" href="{relative_path}/user/{user.userslug}">
									<i class="fa fa-fw fa-circle status {user.status}"></i> <span id="user-header-name">{user.username}</span>
								</a>
							</li>
							<li role="presentation" class="divider"></li>
                            <li>
                                <a href="#" class="user-status" data-status="online">
                                    <i class="fa fa-fw fa-filter"></i><span>Filter</span>
                                </a>
                            </li>
<!--
							<li>
								<a href="#" class="user-status" data-status="online">
									<i class="fa fa-fw fa-circle status online"></i><span> [[global:online]]</span>
								</a>
							</li>
							<li>
								<a href="#" class="user-status" data-status="away">
									<i class="fa fa-fw fa-circle status away"></i><span> [[global:away]]</span>
								</a>
							</li>
							<li>
								<a href="#" class="user-status" data-status="dnd">
									<i class="fa fa-fw fa-circle status dnd"></i><span> [[global:dnd]]</span>
								</a>
							</li>
							<li>
								<a href="#" class="user-status" data-status="offline">
									<i class="fa fa-fw fa-circle status offline"></i><span> [[global:invisible]]</span>
								</a>
							</li>
							<li role="presentation" class="divider"></li>
-->
							<li id="logout-link">
								<a href="#"><i class="fa fa-fw fa-sign-out"></i><span> [[global:logout]]</span></a>
							</li>
						</ul>
					</li>
				</ul>
				<!-- ELSE -->
				<ul id="logged-out-menu" class="nav navbar-nav navbar-right pull-right">
					<!-- IF allowRegistration -->
					<li>
						<a href="{relative_path}/register">
							<i class="fa fa-pencil visible-xs-inline"></i>
							<span>[[global:register]]</span>
						</a>
					</li>
					<!-- ENDIF allowRegistration -->
					<li>
						<a href="{relative_path}/login">
							<i class="fa fa-sign-in visible-xs-inline"></i>
							<span>[[global:login]]</span>
						</a>
					</li>
				</ul>
				<!-- ENDIF loggedIn -->
				<!-- IF searchEnabled -->
				<ul class="nav navbar-nav navbar-right">
					<li>
						<form id="search-form" class="navbar-form navbar-right hidden-xs" role="search" method="GET" action="">
							<div class="hide" id="search-fields">
								<div class="form-group">
									<input type="text" class="form-control" placeholder="[[global:search]]" name="query" value="">
								</div>
								<button type="submit" class="btn btn-default hide">[[global:search]]</button>
							</div>
							<button id="search-button" type="button" class="btn btn-link"><i class="fa fa-search fa-fw" title="[[global:header.search]]"></i></button>
						</form>
					</li>
				</ul>
				<!-- ENDIF searchEnabled -->

				<ul class="nav navbar-nav navbar-right pull-right">
					<li>
						<a href="#" id="reconnect" class="hide" title="Connection to {title} has been lost, attempting to reconnect...">
							<i class="fa fa-check"></i>
						</a>
					</li>
				</ul>

				<ul class="nav navbar-nav navbar-right pagination-block hidden visible-lg visible-md">
					<li class="dropdown">
						<i class="fa fa-angle-double-up pointer fa-fw pagetop"></i>
						<i class="fa fa-angle-up pointer fa-fw pageup"></i>

						<a href="#" class="dropdown-toggle" data-toggle="dropdown">
							<span id="pagination"></span>
						</a>

						<i class="fa fa-angle-down pointer fa-fw pagedown"></i>
						<i class="fa fa-angle-double-down pointer fa-fw pagebottom"></i>

						<div class="progress-container">
							<div class="progress-bar"></div>
						</div>

						<ul class="dropdown-menu" role="menu">
  							<input type="text" class="form-control" id="indexInput" placeholder="[[global:pagination.enter_index]]">
  						</ul>
					</li>
				</ul>

				<div class="header-topic-title hidden-xs">
					<span></span>
				</div>
				<!-- ELSE -->
				<ul class="nav navbar-nav navbar-right pull-right">
					<li>
						<a href="{relative_path}/login">
							<i class="fa fa-sign-in visible-xs-inline"></i>
							<span>[[global:login]]</span>
						</a>
					</li>
				</ul>
				<!-- ENDIF !maintenanceHeader -->
			</div>
		</div>
	</div>

	<div class="container" id="content">
	<noscript>
		<div class="alert alert-danger">
			<p>
				Your browser does not seem to support JavaScript. As a result, your viewing experience will be diminished, and you have been placed in <strong>read-only mode</strong>.
			</p>
			<p>
				Please download a browser that supports JavaScript, or enable it if it's disabled (i.e. NoScript).
			</p>
		</div>
	</noscript>