<div class="col-lg-9">

<div class="panel panel-default">
	<div class="panel-heading">Pagination Settings</div>
	<div class="panel-body">
		<form>
			<div class="checkbox">
				<label>
					<input type="checkbox" data-field="usePagination"> <strong>Paginate topics and posts instead of using infinite scroll.</strong>
				</label>
			</div>
		</form>
	</div>
</div>

<div class="panel panel-default">
	<div class="panel-heading">Topic Pagination</div>
	<div class="panel-body">
		<form>
			<strong>Posts per Page</strong><br /> <input type="text" class="form-control" value="20" data-field="postsPerPage">
		</form>
	</div>
</div>

<div class="panel panel-default">
	<div class="panel-heading">Category Pagination</div>
	<div class="panel-body">
		<form>
			<strong>Topics per Page</strong><br /> <input type="text" class="form-control" value="20" data-field="topicsPerPage"><br />
			<strong>Initial Number of Topics to Load on Unread, Recent, and Popular</strong><br /> <input type="text" class="form-control" value="20" data-field="topicsPerList">
		</form>
	</div>
</div>

</div>
<span class="hidden" id="csrf" data-csrf="{csrf}"></span>

<div class="col-lg-3">
	<div class="panel panel-default">
		<div class="panel-heading">Save Settings</div>
		<div class="panel-body">
			<button class="btn btn-primary btn-md" id="save">Save Changes</button>
			<button class="btn btn-warning btn-md" id="revert">Revert Changes</button>
		</div>
	</div>
</div>

<script>
	require(['admin/settings'], function(Settings) {
		Settings.prepare();
	});
</script>