<div class="categories">
	<div class="col-lg-9">
		<div class="panel panel-default">
			<div class="panel-heading"><i class="fa fa-folder"></i> Categories</div>
			<div class="panel-body">
				<ul class="nav nav-pills">
					<li class='active'><a href='/admin/manage/categories/active'>Active</a></li>
					<li class=''><a href='/admin/manage/categories/disabled'>Disabled</a></li>
				</ul>

				<div class="row admin-categories">
					<ul class="col-md-12" id="entry-container">
					<!-- BEGIN categories -->
						<li data-cid="{categories.cid}" class="entry-row">
							<div class="well">
								<form class="form">
									<div class="row">
										<div class="col-sm-2 hidden-xs text-center">
											<div class="preview-box" style="
												<!-- IF categories.backgroundImage -->background-image: url({categories.backgroundImage});<!-- ENDIF categories.backgroundImage -->
												<!-- IF categories.bgColor -->background-color: {categories.bgColor};<!-- ENDIF categories.bgColor -->
												color: {categories.color};
												background-size:cover;
											">
												<div class="icon">
													<i data-name="icon" value="{categories.icon}" class="fa {categories.icon} fa-2x"></i>
												</div>
											</div><br />
											<button type="button" data-name="image" data-value="{categories.image}" class="btn btn-default upload-button"><i class="fa fa-upload"></i> Image</button>
											<!-- IF categories.image -->
											<br/>
											<small class="pointer delete-image"><i data-name="icon" value="fa-times" class="fa fa-times"></i> Delete Image</small>
											<!-- ENDIF categories.image -->
										</div>
										<div class="col-sm-10">
											<div class="pull-right text-right">
												<div class="form-group">
													<div class="dropdown">
														<button type="button" class="btn btn-default" data-toggle="dropdown"><i class="fa fa-cogs"></i> Options</button>
														<ul class="dropdown-menu" role="menu">
															<li class="permissions"><a href="#"><i class="fa fa-ban"></i> Access Control</a></li>
															<hr />
															<li data-disabled="{categories.disabled}">
																<!-- IF categories.disabled -->
																	<a href="#"><i class="fa fa-power-off"></i> Enable</a>
																<!-- ELSE -->
																	<a href="#"><i class="fa fa-power-off"></i> Disable</a>
																<!-- ENDIF categories.disabled -->
															</li>
															<li><a href="#" class="purge"><i class="fa fa-eraser"></i> Purge</a></li>
														</ul>


														<button class="btn btn-primary save">Save</button>

													</div>
												</div>
											</div>
											<h3 data-edit-target="#cid-{categories.cid}-name"><span>{categories.name}</span> <small><i class="fa fa-edit"></i></small></h3>
											<input id="cid-{categories.cid}-name" type="text" class="form-control hide" placeholder="Category Name" data-name="name" value="{categories.name}" />
											<h4 data-edit-target="#cid-{categories.cid}-description"><span>{categories.description}</span> <small><i class="fa fa-edit"></i></small></h4>
											<input id="cid-{categories.cid}-description" data-name="description" placeholder="Category Description" value="{categories.description}" class="form-control category_description input-sm description hide"></input>

											<fieldset>
												<div class="col-xs-12">
													<div class="form-group">
														<label for="cid-{categories.cid}-parentCid">Parent Category</label>
														<!-- IF categories.parent.name -->
														<div class="btn-group">
															<button type="button" class="btn btn-default" data-action="setParent" data-parentCid="{categories.parent.cid}"><i class="fa {categories.parent.icon}"></i> {categories.parent.name}</button>
															<button type="button" class="btn btn-warning" data-action="removeParent" data-parentCid="{categories.parent.cid}"><i class="fa fa-times"></i></button>
														</div>
														<!-- ELSE -->
														<button type="button" class="btn btn-default form-control" data-action="setParent"><i class="fa fa-sitemap"></i> (None)</button>
														<!-- ENDIF categories.parent.name -->
													</div>
												</div>
											</fieldset>
											<fieldset>
												<div class="col-sm-4 col-xs-12">
													<div class="form-group">
														<label for="cid-{categories.cid}-bgColor">Background Colour</label>
														<input id="cid-{categories.cid}-bgColor" placeholder="#0059b2" data-name="bgColor" value="{categories.bgColor}" class="form-control category_bgColor" />
													</div>
												</div>
												<div class="col-sm-4 col-xs-12">
													<div class="form-group">
														<label for="cid-{categories.cid}-color">Text Colour</label>
														<input id="cid-{categories.cid}-color" placeholder="#fff" data-name="color" value="{categories.color}" class="form-control category_color" />
													</div>
												</div>
												<div class="col-sm-4 col-xs-12">
													<div class="form-group">
														<label for="cid-{categories.cid}-imageClass">Image Class</label>
															<select id="cid-{categories.cid}-imageClass" class="form-control" data-name="imageClass" data-value="{categories.imageClass}">
															<option value="auto">auto</option>
															<option value="cover">cover</option>
															<option value="contain">contain</option>
														</select>
													</div>
												</div>
												<div class="col-sm-4 col-xs-12">
													<div class="form-group">
														<label for="cid-{categories.cid}-class">Custom Class</label>
														<input id="cid-{categories.cid}-class" type="text" class="form-control" placeholder="col-md-6 col-xs-6" data-name="class" value="{categories.class}" />
													</div>
												</div>
												<div class="col-sm-4 col-xs-12">
													<div class="form-group">
														<label for="cid-{categories.cid}-numRecentReplies"># of Recent Replies Displayed</label>
														<input id="cid-{categories.cid}-numRecentReplies" type="text" class="form-control" placeholder="2" data-name="numRecentReplies" value="{categories.numRecentReplies}" />
													</div>
												</div>
												<div class="col-sm-4 col-xs-12">
													<div class="form-group">
														<label for="cid-{categories.cid}-link">External Link</label>
														<input id="cid-{categories.cid}-link" type="text" class="form-control" placeholder="http://domain.com" data-name="link" value="{categories.link}" />
													</div>
												</div>
											</fieldset>

											<input type="hidden" data-name="order" data-value="{categories.order}"></input>
										</div>
									</div>
								</form>
							</div>
						</li>
					<!-- END categories -->
					</ul>
				</div>				
			</div>
		</div>
	</div>

	<div class="col-lg-3">
		<div class="panel panel-default">
			<div class="panel-heading">Categories Control Panel</div>
			<div class="panel-body">
				<button class="btn btn-primary" id="addNew">Create New Category</button>
				<button class="btn btn-default" id="revertChanges">Revert Changes</button>
			</div>
		</div>
	</div>
	
	<span class="hidden" id="csrf" data-csrf="{csrf}"></span>

	<div id="new-category-modal" class="modal" tabindex="-1" role="dialog" aria-labelledby="Add New Modal" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
					<h3>Create New Category</h3>
				</div>
				<div class="modal-body">
					<div>
						<form class='form-horizontal'>
							<div class="control-group">
								<label class="control-label" for="inputName">Name</label>
								<div class="controls">
									<input class="form-control" type="text" id="inputName" placeholder="Name" value="">
								</div>
							</div>

							<div class="control-group">
								<label class="control-label" for="inputDescription">Description</label>
								<div class="controls">
									<input class="form-control" type="text" id="inputDescription" placeholder="Description" value="">
								</div>
							</div>

							<div class="control-group">
								<label class="control-label" for="inputIcon">Icon</label>
								<div class="controls">
									<div class="icon">
										<i data-name="icon" value="fa-pencil" class="fa fa-pencil fa-2x"></i>
									</div>
								</div>
							</div>
						</form>
					</div>
				</div>
				<div class="modal-footer">
					<button type="button" id="create-category-btn" href="#" class="btn btn-primary btn-lg btn-block">Create</button>
				</div>
			</div><!-- /.modal-content -->
		</div><!-- /.modal-dialog -->
	</div><!-- /.modal -->
	<div id="category-permissions-modal" class="modal permissions-modal fade" tabindex="-1" role="dialog" aria-labelledby="Category Permissions" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
					<h3>Category Permissions</h3>
				</div>
				<div class="modal-body">
					<p>The following users have access control permissions in this Category</p>
					<ul class="members"></ul>

					<hr />
					<form role="form">
						<div class="form-group">
							<label for="permission-search">User Search</label>
							<input class="form-control" type="text" id="permission-search" />
						</div>
					</form>
					<ul class="search-results users"></ul>

					<hr />
					<form role="form">
						<div class="form-group">
							<label for="permission-group-pick">User Groups</label>
						</div>
					</form>
					<ul class="search-results groups"></ul>

				</div>
			</div>
		</div>
	</div>
<div class="modal fade" id="setParent" tabindex="-1" role="dialog" aria-labelledby="setParentLabel" aria-hidden="true">
	<div class="modal-dialog">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
				<h4 class="modal-title" id="setParentLabel">Set Parent Category</h4>
			</div>
			<div class="modal-body">
<ul class="category-list">
	<!-- BEGIN categories -->
	<li style="
			<!-- IF categories.bgColor -->background-color: {categories.bgColor};<!-- ENDIF categories.bgColor -->
			<!-- IF categories.color -->color: {categories.color};<!-- ENDIF categories.color -->
		"
		class="<!-- IF categories.disabled -->disabled<!-- ENDIF categories.disabled -->"
		data-cid="{categories.cid}"
	><i class="fa fa-fw {categories.icon}"></i> {categories.name}</li>
	<!-- END categories -->
</ul>
			</div>
			<div class="modal-footer">
				<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
			</div>
		</div>
	</div>
</div>
	<div id="icons" style="display:none;">
		<div class="icon-container">
			<div class="row fa-icons">
				<i class="fa fa-doesnt-exist"></i>
<i class="fa fa-adjust"></i><i class="fa fa-adn"></i><i class="fa fa-align-center"></i><i class="fa fa-align-justify"></i><i class="fa fa-align-left"></i><i class="fa fa-align-right"></i><i class="fa fa-ambulance"></i><i class="fa fa-anchor"></i><i class="fa fa-android"></i><i class="fa fa-angellist"></i><i class="fa fa-angle-double-down"></i><i class="fa fa-angle-double-left"></i><i class="fa fa-angle-double-right"></i><i class="fa fa-angle-double-up"></i><i class="fa fa-angle-down"></i><i class="fa fa-angle-left"></i><i class="fa fa-angle-right"></i><i class="fa fa-angle-up"></i><i class="fa fa-apple"></i><i class="fa fa-archive"></i><i class="fa fa-area-chart"></i><i class="fa fa-arrow-circle-down"></i><i class="fa fa-arrow-circle-left"></i><i class="fa fa-arrow-circle-o-down"></i><i class="fa fa-arrow-circle-o-left"></i><i class="fa fa-arrow-circle-o-right"></i><i class="fa fa-arrow-circle-o-up"></i><i class="fa fa-arrow-circle-right"></i><i class="fa fa-arrow-circle-up"></i><i class="fa fa-arrow-down"></i><i class="fa fa-arrow-left"></i><i class="fa fa-arrow-right"></i><i class="fa fa-arrow-up"></i><i class="fa fa-arrows"></i><i class="fa fa-arrows-alt"></i><i class="fa fa-arrows-h"></i><i class="fa fa-arrows-v"></i><i class="fa fa-asterisk"></i><i class="fa fa-at"></i><i class="fa fa-backward"></i><i class="fa fa-ban"></i><i class="fa fa-bar-chart"></i><i class="fa fa-barcode"></i><i class="fa fa-bars"></i><i class="fa fa-beer"></i><i class="fa fa-behance"></i><i class="fa fa-behance-square"></i><i class="fa fa-bell"></i><i class="fa fa-bell-o"></i><i class="fa fa-bell-slash"></i><i class="fa fa-bell-slash-o"></i><i class="fa fa-bicycle"></i><i class="fa fa-binoculars"></i><i class="fa fa-birthday-cake"></i><i class="fa fa-bitbucket"></i><i class="fa fa-bitbucket-square"></i><i class="fa fa-bold"></i><i class="fa fa-bolt"></i><i class="fa fa-bomb"></i><i class="fa fa-book"></i><i class="fa fa-bookmark"></i><i class="fa fa-bookmark-o"></i><i class="fa fa-briefcase"></i><i class="fa fa-btc"></i><i class="fa fa-bug"></i><i class="fa fa-building"></i><i class="fa fa-building-o"></i><i class="fa fa-bullhorn"></i><i class="fa fa-bullseye"></i><i class="fa fa-bus"></i><i class="fa fa-calculator"></i><i class="fa fa-calendar"></i><i class="fa fa-calendar-o"></i><i class="fa fa-camera"></i><i class="fa fa-camera-retro"></i><i class="fa fa-car"></i><i class="fa fa-caret-down"></i><i class="fa fa-caret-left"></i><i class="fa fa-caret-right"></i><i class="fa fa-caret-square-o-down"></i><i class="fa fa-caret-square-o-left"></i><i class="fa fa-caret-square-o-right"></i><i class="fa fa-caret-square-o-up"></i><i class="fa fa-caret-up"></i><i class="fa fa-cc"></i><i class="fa fa-cc-amex"></i><i class="fa fa-cc-discover"></i><i class="fa fa-cc-mastercard"></i><i class="fa fa-cc-paypal"></i><i class="fa fa-cc-stripe"></i><i class="fa fa-cc-visa"></i><i class="fa fa-certificate"></i><i class="fa fa-chain-broken"></i><i class="fa fa-check"></i><i class="fa fa-check-circle"></i><i class="fa fa-check-circle-o"></i><i class="fa fa-check-square"></i><i class="fa fa-check-square-o"></i><i class="fa fa-chevron-circle-down"></i><i class="fa fa-chevron-circle-left"></i><i class="fa fa-chevron-circle-right"></i><i class="fa fa-chevron-circle-up"></i><i class="fa fa-chevron-down"></i><i class="fa fa-chevron-left"></i><i class="fa fa-chevron-right"></i><i class="fa fa-chevron-up"></i><i class="fa fa-child"></i><i class="fa fa-circle"></i><i class="fa fa-circle-o"></i><i class="fa fa-circle-o-notch"></i><i class="fa fa-circle-thin"></i><i class="fa fa-clipboard"></i><i class="fa fa-clock-o"></i><i class="fa fa-cloud"></i><i class="fa fa-cloud-download"></i><i class="fa fa-cloud-upload"></i><i class="fa fa-code"></i><i class="fa fa-code-fork"></i><i class="fa fa-codepen"></i><i class="fa fa-coffee"></i><i class="fa fa-cog"></i><i class="fa fa-cogs"></i><i class="fa fa-columns"></i><i class="fa fa-comment"></i><i class="fa fa-comment-o"></i><i class="fa fa-comments"></i><i class="fa fa-comments-o"></i><i class="fa fa-compass"></i><i class="fa fa-compress"></i><i class="fa fa-copyright"></i><i class="fa fa-credit-card"></i><i class="fa fa-crop"></i><i class="fa fa-crosshairs"></i><i class="fa fa-css3"></i><i class="fa fa-cube"></i><i class="fa fa-cubes"></i><i class="fa fa-cutlery"></i><i class="fa fa-database"></i><i class="fa fa-delicious"></i><i class="fa fa-desktop"></i><i class="fa fa-deviantart"></i><i class="fa fa-digg"></i><i class="fa fa-dot-circle-o"></i><i class="fa fa-download"></i><i class="fa fa-dribbble"></i><i class="fa fa-dropbox"></i><i class="fa fa-drupal"></i><i class="fa fa-eject"></i><i class="fa fa-ellipsis-h"></i><i class="fa fa-ellipsis-v"></i><i class="fa fa-empire"></i><i class="fa fa-envelope"></i><i class="fa fa-envelope-o"></i><i class="fa fa-envelope-square"></i><i class="fa fa-eraser"></i><i class="fa fa-eur"></i><i class="fa fa-exchange"></i><i class="fa fa-exclamation"></i><i class="fa fa-exclamation-circle"></i><i class="fa fa-exclamation-triangle"></i><i class="fa fa-expand"></i><i class="fa fa-external-link"></i><i class="fa fa-external-link-square"></i><i class="fa fa-eye"></i><i class="fa fa-eye-slash"></i><i class="fa fa-eyedropper"></i><i class="fa fa-facebook"></i><i class="fa fa-facebook-square"></i><i class="fa fa-fast-backward"></i><i class="fa fa-fast-forward"></i><i class="fa fa-fax"></i><i class="fa fa-female"></i><i class="fa fa-fighter-jet"></i><i class="fa fa-file"></i><i class="fa fa-file-archive-o"></i><i class="fa fa-file-audio-o"></i><i class="fa fa-file-code-o"></i><i class="fa fa-file-excel-o"></i><i class="fa fa-file-image-o"></i><i class="fa fa-file-o"></i><i class="fa fa-file-pdf-o"></i><i class="fa fa-file-powerpoint-o"></i><i class="fa fa-file-text"></i><i class="fa fa-file-text-o"></i><i class="fa fa-file-video-o"></i><i class="fa fa-file-word-o"></i><i class="fa fa-files-o"></i><i class="fa fa-film"></i><i class="fa fa-filter"></i><i class="fa fa-fire"></i><i class="fa fa-fire-extinguisher"></i><i class="fa fa-flag"></i><i class="fa fa-flag-checkered"></i><i class="fa fa-flag-o"></i><i class="fa fa-flask"></i><i class="fa fa-flickr"></i><i class="fa fa-floppy-o"></i><i class="fa fa-folder"></i><i class="fa fa-folder-o"></i><i class="fa fa-folder-open"></i><i class="fa fa-folder-open-o"></i><i class="fa fa-font"></i><i class="fa fa-forward"></i><i class="fa fa-foursquare"></i><i class="fa fa-frown-o"></i><i class="fa fa-futbol-o"></i><i class="fa fa-gamepad"></i><i class="fa fa-gavel"></i><i class="fa fa-gbp"></i><i class="fa fa-gift"></i><i class="fa fa-git"></i><i class="fa fa-git-square"></i><i class="fa fa-github"></i><i class="fa fa-github-alt"></i><i class="fa fa-github-square"></i><i class="fa fa-gittip"></i><i class="fa fa-glass"></i><i class="fa fa-globe"></i><i class="fa fa-google"></i><i class="fa fa-google-plus"></i><i class="fa fa-google-plus-square"></i><i class="fa fa-google-wallet"></i><i class="fa fa-graduation-cap"></i><i class="fa fa-h-square"></i><i class="fa fa-hacker-news"></i><i class="fa fa-hand-o-down"></i><i class="fa fa-hand-o-left"></i><i class="fa fa-hand-o-right"></i><i class="fa fa-hand-o-up"></i><i class="fa fa-hdd-o"></i><i class="fa fa-header"></i><i class="fa fa-headphones"></i><i class="fa fa-heart"></i><i class="fa fa-heart-o"></i><i class="fa fa-history"></i><i class="fa fa-home"></i><i class="fa fa-hospital-o"></i><i class="fa fa-html5"></i><i class="fa fa-ils"></i><i class="fa fa-inbox"></i><i class="fa fa-indent"></i><i class="fa fa-info"></i><i class="fa fa-info-circle"></i><i class="fa fa-inr"></i><i class="fa fa-instagram"></i><i class="fa fa-ioxhost"></i><i class="fa fa-italic"></i><i class="fa fa-joomla"></i><i class="fa fa-jpy"></i><i class="fa fa-jsfiddle"></i><i class="fa fa-key"></i><i class="fa fa-keyboard-o"></i><i class="fa fa-krw"></i><i class="fa fa-language"></i><i class="fa fa-laptop"></i><i class="fa fa-lastfm"></i><i class="fa fa-lastfm-square"></i><i class="fa fa-leaf"></i><i class="fa fa-lemon-o"></i><i class="fa fa-level-down"></i><i class="fa fa-level-up"></i><i class="fa fa-life-ring"></i><i class="fa fa-lightbulb-o"></i><i class="fa fa-line-chart"></i><i class="fa fa-link"></i><i class="fa fa-linkedin"></i><i class="fa fa-linkedin-square"></i><i class="fa fa-linux"></i><i class="fa fa-list"></i><i class="fa fa-list-alt"></i><i class="fa fa-list-ol"></i><i class="fa fa-list-ul"></i><i class="fa fa-location-arrow"></i><i class="fa fa-lock"></i><i class="fa fa-long-arrow-down"></i><i class="fa fa-long-arrow-left"></i><i class="fa fa-long-arrow-right"></i><i class="fa fa-long-arrow-up"></i><i class="fa fa-magic"></i><i class="fa fa-magnet"></i><i class="fa fa-male"></i><i class="fa fa-map-marker"></i><i class="fa fa-maxcdn"></i><i class="fa fa-meanpath"></i><i class="fa fa-medkit"></i><i class="fa fa-meh-o"></i><i class="fa fa-microphone"></i><i class="fa fa-microphone-slash"></i><i class="fa fa-minus"></i><i class="fa fa-minus-circle"></i><i class="fa fa-minus-square"></i><i class="fa fa-minus-square-o"></i><i class="fa fa-mobile"></i><i class="fa fa-money"></i><i class="fa fa-moon-o"></i><i class="fa fa-music"></i><i class="fa fa-newspaper-o"></i><i class="fa fa-openid"></i><i class="fa fa-outdent"></i><i class="fa fa-pagelines"></i><i class="fa fa-paint-brush"></i><i class="fa fa-paper-plane"></i><i class="fa fa-paper-plane-o"></i><i class="fa fa-paperclip"></i><i class="fa fa-paragraph"></i><i class="fa fa-pause"></i><i class="fa fa-paw"></i><i class="fa fa-paypal"></i><i class="fa fa-pencil"></i><i class="fa fa-pencil-square"></i><i class="fa fa-pencil-square-o"></i><i class="fa fa-phone"></i><i class="fa fa-phone-square"></i><i class="fa fa-picture-o"></i><i class="fa fa-pie-chart"></i><i class="fa fa-pied-piper"></i><i class="fa fa-pied-piper-alt"></i><i class="fa fa-pinterest"></i><i class="fa fa-pinterest-square"></i><i class="fa fa-plane"></i><i class="fa fa-play"></i><i class="fa fa-play-circle"></i><i class="fa fa-play-circle-o"></i><i class="fa fa-plug"></i><i class="fa fa-plus"></i><i class="fa fa-plus-circle"></i><i class="fa fa-plus-square"></i><i class="fa fa-plus-square-o"></i><i class="fa fa-power-off"></i><i class="fa fa-print"></i><i class="fa fa-puzzle-piece"></i><i class="fa fa-qq"></i><i class="fa fa-qrcode"></i><i class="fa fa-question"></i><i class="fa fa-question-circle"></i><i class="fa fa-quote-left"></i><i class="fa fa-quote-right"></i><i class="fa fa-random"></i><i class="fa fa-rebel"></i><i class="fa fa-recycle"></i><i class="fa fa-reddit"></i><i class="fa fa-reddit-square"></i><i class="fa fa-refresh"></i><i class="fa fa-renren"></i><i class="fa fa-repeat"></i><i class="fa fa-reply"></i><i class="fa fa-reply-all"></i><i class="fa fa-retweet"></i><i class="fa fa-road"></i><i class="fa fa-rocket"></i><i class="fa fa-rss"></i><i class="fa fa-rss-square"></i><i class="fa fa-rub"></i><i class="fa fa-scissors"></i><i class="fa fa-search"></i><i class="fa fa-search-minus"></i><i class="fa fa-search-plus"></i><i class="fa fa-share"></i><i class="fa fa-share-alt"></i><i class="fa fa-share-alt-square"></i><i class="fa fa-share-square"></i><i class="fa fa-share-square-o"></i><i class="fa fa-shield"></i><i class="fa fa-shopping-cart"></i><i class="fa fa-sign-in"></i><i class="fa fa-sign-out"></i><i class="fa fa-signal"></i><i class="fa fa-sitemap"></i><i class="fa fa-skype"></i><i class="fa fa-slack"></i><i class="fa fa-sliders"></i><i class="fa fa-slideshare"></i><i class="fa fa-smile-o"></i><i class="fa fa-sort"></i><i class="fa fa-sort-alpha-asc"></i><i class="fa fa-sort-alpha-desc"></i><i class="fa fa-sort-amount-asc"></i><i class="fa fa-sort-amount-desc"></i><i class="fa fa-sort-asc"></i><i class="fa fa-sort-desc"></i><i class="fa fa-sort-numeric-asc"></i><i class="fa fa-sort-numeric-desc"></i><i class="fa fa-soundcloud"></i><i class="fa fa-space-shuttle"></i><i class="fa fa-spinner"></i><i class="fa fa-spoon"></i><i class="fa fa-spotify"></i><i class="fa fa-square"></i><i class="fa fa-square-o"></i><i class="fa fa-stack-exchange"></i><i class="fa fa-stack-overflow"></i><i class="fa fa-star"></i><i class="fa fa-star-half"></i><i class="fa fa-star-half-o"></i><i class="fa fa-star-o"></i><i class="fa fa-steam"></i><i class="fa fa-steam-square"></i><i class="fa fa-step-backward"></i><i class="fa fa-step-forward"></i><i class="fa fa-stethoscope"></i><i class="fa fa-stop"></i><i class="fa fa-strikethrough"></i><i class="fa fa-stumbleupon"></i><i class="fa fa-stumbleupon-circle"></i><i class="fa fa-subscript"></i><i class="fa fa-suitcase"></i><i class="fa fa-sun-o"></i><i class="fa fa-superscript"></i><i class="fa fa-table"></i><i class="fa fa-tablet"></i><i class="fa fa-tachometer"></i><i class="fa fa-tag"></i><i class="fa fa-tags"></i><i class="fa fa-tasks"></i><i class="fa fa-taxi"></i><i class="fa fa-tencent-weibo"></i><i class="fa fa-terminal"></i><i class="fa fa-text-height"></i><i class="fa fa-text-width"></i><i class="fa fa-th"></i><i class="fa fa-th-large"></i><i class="fa fa-th-list"></i><i class="fa fa-thumb-tack"></i><i class="fa fa-thumbs-down"></i><i class="fa fa-thumbs-o-down"></i><i class="fa fa-thumbs-o-up"></i><i class="fa fa-thumbs-up"></i><i class="fa fa-ticket"></i><i class="fa fa-times"></i><i class="fa fa-times-circle"></i><i class="fa fa-times-circle-o"></i><i class="fa fa-tint"></i><i class="fa fa-toggle-off"></i><i class="fa fa-toggle-on"></i><i class="fa fa-trash"></i><i class="fa fa-trash-o"></i><i class="fa fa-tree"></i><i class="fa fa-trello"></i><i class="fa fa-trophy"></i><i class="fa fa-truck"></i><i class="fa fa-try"></i><i class="fa fa-tty"></i><i class="fa fa-tumblr"></i><i class="fa fa-tumblr-square"></i><i class="fa fa-twitch"></i><i class="fa fa-twitter"></i><i class="fa fa-twitter-square"></i><i class="fa fa-umbrella"></i><i class="fa fa-underline"></i><i class="fa fa-undo"></i><i class="fa fa-university"></i><i class="fa fa-unlock"></i><i class="fa fa-unlock-alt"></i><i class="fa fa-upload"></i><i class="fa fa-usd"></i><i class="fa fa-user"></i><i class="fa fa-user-md"></i><i class="fa fa-users"></i><i class="fa fa-video-camera"></i><i class="fa fa-vimeo-square"></i><i class="fa fa-vine"></i><i class="fa fa-vk"></i><i class="fa fa-volume-down"></i><i class="fa fa-volume-off"></i><i class="fa fa-volume-up"></i><i class="fa fa-weibo"></i><i class="fa fa-weixin"></i><i class="fa fa-wheelchair"></i><i class="fa fa-wifi"></i><i class="fa fa-windows"></i><i class="fa fa-wordpress"></i><i class="fa fa-wrench"></i><i class="fa fa-xing"></i><i class="fa fa-xing-square"></i><i class="fa fa-yahoo"></i><i class="fa fa-yelp"></i><i class="fa fa-youtube"></i><i class="fa fa-youtube-play"></i><i class="fa fa-youtube-square"></i>
			</div>
		</div>
	</div>
</div>