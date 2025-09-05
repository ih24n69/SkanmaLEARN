<div class="row">

	<div class="col-lg-12">

		<div class="c-field u-mb-medium">
			<label class="c-field__label">Batas Kelas Tampil</label> 
			<input class="c-input" type="text" name="lms_limit_post" placeholder="Limit Postingan" value="<?php echo (!empty($site) ? $site['lms_limit_post'] : '') ?>"> 
		</div>

		<div class="c-field u-mb-medium">
			<label class="c-field__label">Tampilkan Kelas Gratis ?</label>
			<select required="" name="lms_free_courses_readable" class="c-select select2">
				<option></option>
				<option value="Yes" <?php echo ($site['lms_free_courses_readable'] == 'Yes') ? 'selected' : ''; ?>>Ya</option>
				<option value="No" <?php echo ($site['lms_free_courses_readable'] == 'No') ? 'selected' : ''; ?>>Tidak</option>
			</select>
		</div>	

	</div>	

</div>