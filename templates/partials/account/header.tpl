<!-- IMPORT partials/breadcrumbs.tpl -->

<div class="cover" component="account/cover" style="background-image: url({cover:url}); background-position: {cover:position};" style="height: 400px !important">
	
	<a href="{config.relative_path}/user/{userslug}/edit" class="btn btn-xs btn-primary" style="margin-top: 30px; margin-right: 20px; float: right; padding: 10px">
		[[user:edit]]
	</a>
	
	<div class="avatar-wrapper" data-uid="{uid}">
		<!-- IF picture -->
		<img src="{picture}" class="avatar avatar-xl avatar-rounded" />
		<!-- ELSE -->
        <img src="https://mindcureglobal.com/static/images/boss.png" class="avatar avatar-xl avatar-rounded" />    
		<!-- ENDIF picture -->
		<i component="user/status" class="fa fa-circle status {status}" title="[[global:{status}]]"></i>

		<!-- IF loggedIn -->
		<!-- IF !isSelf -->
		<button class="btn-morph fab <!-- IF isFollowing -->heart<!-- ELSE -->plus<!-- ENDIF isFollowing --><!-- IF banned --> hide<!-- ENDIF banned -->" title="<!-- IF isFollowing -->[[global:unfollow]]<!-- ELSE -->[[global:follow]]<!-- ENDIF isFollowing -->">
			<span>
				<span class="s1"></span>
				<span class="s2"></span>
				<span class="s3"></span>
			</span>
		</button>
		<!-- ENDIF !isSelf -->
		<!-- ENDIF loggedIn -->
	</div>

	<div class="container">
		<!-- IMPORT partials/account/menu.tpl -->

		<!-- IF allowCoverPicture -->
		<!-- IF canEdit -->
		<div class="controls">
			<span class="upload"><i class="fa fa-fw fa-4x fa-upload"></i></span>
			<span class="resize"><i class="fa fa-fw fa-4x fa-arrows"></i></span>
			<span class="remove"><i class="fa fa-fw fa-4x fa-times"></i></span>
		</div>
		<div class="save">[[groups:cover-save]] <i class="fa fa-fw fa-floppy-o"></i></div>
		<div class="indicator">[[groups:cover-saving]] <i class="fa fa-fw fa-refresh fa-spin"></i></div>
		<!-- ENDIF canEdit -->
		<!-- ENDIF allowCoverPicture -->

		<div class="account-stats">
			<!-- IF !reputation:disabled -->
			<div class="stat" style="font-size: 15px; min-width: 50px;">
				<span style="display: inline-block; color: gold"><i class="fa fa-star"></i></span>
				<div class="human-readable-number" style="display: inline-block" title="{reputation}">{reputation}</div>
				<!-- <span class="stat-label">[[global:reputation]]</span> -->
			</div>
			<!-- ENDIF !reputation:disabled -->

			<div class="stat" style="font-size: 15px; min-width: 50px;">
				<span style="display: inline-block; color: burlywood"><i class="fa fa-download"></i></span>
				<div class="human-readable-number" style="display: inline-block" title="{postcount}">{postcount}</div>
				<!--  <span class="stat-label">[[global:posts]]</span> -->
			</div>

			<div class="stat" style="font-size: 15px; min-width: 50px;">
				<span style="display: inline-block; color: cadetblue"><i class="fa fa-eye"></i></span>
				<div class="human-readable-number" style="display: inline-block" title="{profileviews}">{profileviews}</div>
				<!--  <span class="stat-label">[[user:profile_views]]</span> -->
			</div>

			<div class="stat" style="font-size: 15px; min-width: 50px;">
				<span style="display: inline-block; color: chocolate"><i class="fa fa-users"></i></span>
				<div class="human-readable-number" style="display: inline-block" title="{followerCount}">{followerCount}</div>
				<!--  <span class="stat-label">[[user:followers]]</span> -->
			</div>

			<div class="stat" style="font-size: 15px; min-width: 50px;">
				<span style="display: inline-block; color: lightcoral"><i class="fa fa-user"></i></span>
				<div class="human-readable-number"  style="display: inline-block" title="{followingCount}">{followingCount}</div>
				<!--  <span class="stat-label">[[user:following]]</span> -->
			</div>
		</div>
	</div>
</div>