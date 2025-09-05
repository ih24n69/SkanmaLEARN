<div class="row">

	<div class="col-lg-12">

		<div class="c-field u-mb-medium">
			<label class="c-field__label">Batas Pengguna Tampil</label> 
			<input class="c-input" type="text" name="user_limit_data" placeholder="Limit Pengguna" value="<?php echo (!empty($site) ? $site['user_limit_data'] : '') ?>"> 
		</div>

		<div class="c-field u-mb-medium">
			<label class="c-field__label">Perlu Verifikasi E-mail ?</label>
			<select required="" name="vertification_email" class="c-select select2">
				<option></option>
				<option value="Yes" <?php echo ($site['vertification_email'] == 'Yes') ? 'selected' : ''; ?>>Ya</option>
				<option value="No" <?php echo ($site['vertification_email'] == 'No') ? 'selected' : ''; ?>>Tidak</option>
			</select>
		</div>	

	</div>	

</div>