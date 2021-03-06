
<div class="cover" component="account/cover" style="background-image: url({cover:url}); background-position: {cover:position};">
	
	<!-- IF loggedIn -->
	<!-- IF !isSelf -->
	<button class="btn-morph fab follow-icon <!-- IF isFollowing -->heart<!-- ELSE -->plus<!-- ENDIF isFollowing --><!-- IF banned --> hide<!-- ENDIF banned -->" title="<!-- IF isFollowing -->[[global:unfollow]]<!-- ELSE -->[[global:follow]]<!-- ENDIF isFollowing -->">
		<span style="margin-left: 20px;font-size: 16px;">
			<span class="s1"></span>
			<span class="s2"></span>
			<span class="s3"></span>
		</span>
	</button>
	<!-- ENDIF !isSelf -->
	<!-- ENDIF loggedIn -->

	<!-- IF isSelf -->
	<a href="{config.relative_path}/user/{userslug}/edit" class="btn btn-xs btn-primary" style="margin-top: 30px; margin-right: 30px; float: right; padding: 10px">
		[[user:edit]]
	</a>
	<!-- ENDIF isSelf -->
	
	<div class="avatar-wrapper" data-uid="{uid}">
		<!-- IF picture -->
		<img src="{picture}" class="avatar avatar-xl avatar-rounded" />
		<!-- ELSE -->
        <img src="https://mindcureglobal.com/static/images/boss.png" class="avatar avatar-xl avatar-rounded" />    
		<!-- ENDIF picture -->
		<i component="user/status" class="fa fa-circle status {status}" title="[[global:{status}]]"></i>

	</div>

	<div class="container">
		<!-- IMPORT partials/account/old_menu.tpl -->
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
	</div>
</div>