<div class="row">

	<div class="col-lg-6">

		<div class="c-field u-mb-medium">
			<label class="c-field__label">Batas Postingan Tampil</label> 
			<input class="c-input" type="text" name="blog_limit_post" placeholder="Limit Postingan" value="<?php echo (!empty($site) ? $site['blog_limit_post'] : '') ?>"> 
		</div>

	</div>	

	<div class="col-lg-6">

		<div class="c-field u-mb-medium">
			<label class="c-field__label">Tipe Komentar</label>
			<select required="" name="blog_comment_type" class="c-select select2 select-comment-type">
				<option value="disable" <?php echo ($site['blog_comment']['type']== 'disable') ? 'selected' : ''; ?>>Dinonaktifkan</option>
				<option value="system" <?php echo ($site['blog_comment']['type']== 'system') ? 'selected' : ''; ?>>Sistem</option>
				<option value="disqus" <?php echo ($site['blog_comment']['type']== 'disqus') ? 'selected' : ''; ?>>Diskusi</option>
			</select>
		</div>
	</div>	

	<div style='<?php echo ($site['blog_comment']['type'] == 'system') ? '' : 'display:none'; ?>' class="c-field u-mb-medium col-md-12 type-system">
		<label class="c-field__label">Moderator Komentar</label>
		<select required="" name="blog_moderate" class="c-select select2">
			<option></option>
			<option value="true" <?php echo ($site['blog_comment']['moderate'] == 'true') ? 'selected' : ''; ?>>Ya</option>
			<option value="false" <?php echo ($site['blog_comment']['moderate'] == 'false') ? 'selected' : ''; ?>>Tidak</option>
		</select>
	</div>                          

	<div style='<?php echo ($site['blog_comment']['type'] == 'system') ? '' : 'display:none'; ?>' class="c-field u-mb-medium col-md-12 type-system">
		<label class="c-field__label">Komentar Pesan : </label>
		<textarea required="" class="c-input" name="blog_message"" placeholder="Komentar Pesan"><?php echo (!empty($site) ? $site['blog_comment']['message'] : '') ?></textarea>
	</div>

	<div style='<?php echo ($site['blog_comment']['type'] == 'disqus') ? '' : 'display:none'; ?>' class="c-field u-mb-medium col-md-6 type-disqus">
		<label class="c-field__label">Nama Disqus : </label>
		<input required="" value="<?php echo (!empty($site) ? $site['blog_comment']['disqus_shortname'] : '') ?>" class="c-input" name="blog_disqus_shortname" type="text" placeholder="Nama Disqus">
	</div>

	<div style='<?php echo ($site['blog_comment']['type'] == 'disqus') ? '' : 'display:none'; ?>' class="c-field u-mb-medium col-md-6 type-disqus">
		<label class="c-field__label">Pengembang Disqus : </label>
		<input required="" value="<?php echo (!empty($site) ? $site['blog_comment']['disqus_developer'] : '') ?>" class="c-input" name="blog_disqus_developer" type="text" placeholder="Pengembang Disqus">
	</div>

</div>