<div class="c-field u-mb-small">
	<label class="c-field__label">Jenis</label>
	<select required="" name="schema" class="c-select select2 select-schema">
		<option value="Person" <?php echo ($meta['schema']['type'] == 'Person') ? 'selected' : ''; ?>>Individu</option>
		<option value="Organization" <?php echo ($meta['schema']['type'] == 'Organization') ? 'selected' : ''; ?>>Organisasi</option>
	</select>
</div>

<div style='<?php echo ($meta['schema']['type'] == 'Organization') ? '' : 'display:none'; ?>' class="row type-organization">
	<div class="u-mb-medium u-mt-medium col-md-12">
		<label class="c-field__label u-border-bottom">Data Organisasi : </label>
	</div>

	<div class="c-field u-mb-small col-md-6">
		<label class="c-field__label">Nama Organisasi : </label>
		<input required="" class="c-input" name="organization_name" type="text" value="<?php echo $meta['schema']['content']['organization_name'] ?>">
	</div>
	<div class="c-field u-mb-small col-md-6">
		<label class="c-field__label">URL Organisasi : </label>
		<input required="" class="c-input" name="organization_url" type="text" value="<?php echo $meta['schema']['content']['organization_url'] ?>">
	</div>

	<div class="c-field u-mb-small col-md-6">
		<label class="c-field__label">No. Telepon Organisasi : </label>
		<input required="" class="c-input" name="organization_contactPoint_telephone" type="text" value="<?php echo $meta['schema']['content']['organization_contactPoint_telephone'] ?>">
	</div>
	<div class="c-field u-mb-small col-md-6">
		<label class="c-field__label">Tipe Kontak Organisasi : </label>
		<input required="" class="c-input" name="organization_contactPoint_contactType" type="text" value="<?php echo $meta['schema']['content']['organization_contactPoint_contactType'] ?>">
	</div>
	<div class="c-field u-mb-small col-md-12">
		<label class="c-field__label">Kesamaan Organisasi : </label>
		<input required="" class="c-input" name="organization_sameAs" type="text" value="<?php echo $meta['schema']['content']['organization_sameAs'] ?>">
	</div>

	<div class="c-field u-mb-small col-md-12">
		<div style="max-width: 250px;margin: auto;text-align: center">
			<label class="c-field__label">Logo Organisasi Digunakan: </label>
			<img style="width: 120px" src="<?php echo base_url('storage/uploads/site/thumbnail/'.$meta['schema']['content']['organization_logo_url']) ?>" alt="organization_logo_url">
			<label class="c-field__label">Logo Baru Organisasi (optional) : </label>
			<input type="hidden" name="organization_logo_url_old" value="<?php echo $meta['schema']['content']['organization_logo_url'] ?>">
			<input class="c-input" name="organization_logo_url" type="file">
			<div class="u-text-mute u-text-small">Minimum ukuran pixel gambar 112px X 112px.</div>
		</div>
	</div>
</div>

<div style='<?php echo ($meta['schema']['type'] == 'Person') ? '' : 'display:none'; ?>' class="row type-person">

	<div class="u-mb-medium u-mt-medium col-md-12">
		<label class="c-field__label u-border-bottom">Data Individu : </label>
	</div>

	<div class="c-field u-mb-small col-md-6">
		<label class="c-field__label">Nama : </label>
		<input required="" class="c-input" name="person_name" type="text" value="<?php echo $meta['schema']['content']['person_name'] ?>">
	</div>

	<div class="c-field u-mb-small col-md-6">
		<label class="c-field__label">Panggilan : </label>
		<input required="" class="c-input" name="person_alternateName" type="text" value="<?php echo $meta['schema']['content']['person_alternateName'] ?>">
	</div>

	<div class="c-field u-mb-small col-md-6">
		<label class="c-field__label">Jenis Kelamin : </label>
		<input required="" class="c-input" name="person_gender" type="text" value="<?php echo $meta['schema']['content']['person_gender'] ?>">
	</div>

	<div class="c-field u-mb-small col-md-6">
		<label class="c-field__label">Tinggi Badan : </label>
		<input required="" class="c-input" name="person_height" type="text" value="<?php echo $meta['schema']['content']['person_height'] ?>">
	</div>

	<div class="c-field u-mb-small col-md-6">
		<label class="c-field__label">Tanggal Lahir : </label>
		<input required="" class="c-input" name="person_birthDate" type="text" value="<?php echo $meta['schema']['content']['person_birthDate'] ?>">
	</div>

	<div class="c-field u-mb-small col-md-6">
		<label class="c-field__label">Tempat Lahir : </label>
		<input required="" class="c-input" name="person_birthPlace" type="text" value="<?php echo $meta['schema']['content']['person_birthPlace'] ?>">
	</div>

	<div class="c-field u-mb-small col-md-6">
		<label class="c-field__label">Kewarganegaraan : </label>
		<input required="" class="c-input" name="person_nationality" type="text" value="<?php echo $meta['schema']['content']['person_nationality'] ?>">
	</div>


	<div class="c-field u-mb-small col-md-6">
		<label class="c-field__label">Alumni : </label>
		<input required="" class="c-input" name="person_alumniOf" type="text" value="<?php echo $meta['schema']['content']['person_alumniOf'] ?>">
	</div>

	<div class="c-field u-mb-small col-md-12">
		<label class="c-field__label">Keaggotaan : </label>
		<input required="" class="c-input" name="person_memberOf" type="text" value="<?php echo $meta['schema']['content']['person_memberOf'] ?>">
	</div>

	<div class="c-field u-mb-small col-md-12">
		<div style="max-width: 250px;margin: auto;text-align: center">
			<label class="c-field__label">Foto yang digunakan : </label>
			<img style="width: 200px" src="<?php echo base_url('storage/uploads/site/thumbnail/'.$meta['schema']['content']['person_image']) ?>" alt="person_image">
			<label class="c-field__label">Foto Baru (optional) : </label>
			<input type="hidden" name="person_image_old" value="<?php echo $meta['schema']['content']['person_image'] ?>">
			<input class="c-input" name="person_image" type="file">
		</div>
	</div>

	<div class="u-mb-medium u-mt-medium col-md-12 u-border-bottom">
		<label class="c-field__label">Alamat : </label>
	</div>

	<div class="c-field u-mb-small col-md-6">
		<label class="c-field__label">Jalan : </label>
		<input required="" class="c-input" name="person_streetAddress" type="text" value="<?php echo $meta['schema']['content']['person_streetAddress'] ?>">
	</div>

	<div class="c-field u-mb-small col-md-6">
		<label class="c-field__label">Kabupaten : </label>
		<input required="" class="c-input" name="person_addressLocality" type="text" value="<?php echo $meta['schema']['content']['person_addressLocality'] ?>">
	</div>

	<div class="c-field u-mb-small col-md-6">
		<label class="c-field__label">Provinsi : </label>
		<input required="" class="c-input" name="person_addressRegion" type="text" value="<?php echo $meta['schema']['content']['person_addressRegion'] ?>">
	</div>

	<div class="c-field u-mb-small col-md-6">
		<label class="c-field__label">Kode Pos : </label>
		<input required="" class="c-input" name="person_postalCode" type="text" value="<?php echo $meta['schema']['content']['person_postalCode'] ?>">
	</div>

	<div class="c-field u-mb-small col-md-6">
		<label class="c-field__label">E-Mail : </label>
		<input required="" class="c-input" name="person_email" type="text" value="<?php echo $meta['schema']['content']['person_email'] ?>">
	</div>

	<div class="c-field u-mb-small col-md-6">
		<label class="c-field__label">No. Telepon : </label>
		<input required="" class="c-input" name="person_telephone" type="text" value="<?php echo $meta['schema']['content']['person_telephone'] ?>">
	</div>

	<div class="c-field u-mb-small col-md-6">
		<label class="c-field__label">Alamat Web : </label>
		<input required="" class="c-input" name="person_url" type="text" value="<?php echo $meta['schema']['content']['person_url'] ?>">
	</div>  

	<div class="c-field u-mb-small col-md-6">
		<label class="c-field__label">Keaggotaan : </label>
		<input required="" class="c-input" name="person_sameAs" type="text" value="<?php echo $meta['schema']['content']['person_sameAs'] ?>">
	</div>

	<div class="u-mb-medium u-mt-medium col-md-12 u-border-bottom">
		<label class="c-field__label">Pekerjaan : </label>
	</div>

	<div class="c-field u-mb-small col-md-6">
		<label class="c-field__label">Pekerjaan : </label>
		<input required="" class="c-input" name="person_jobTitle" type="text" value="<?php echo $meta['schema']['content']['person_jobTitle'] ?>">
	</div>

	<div class="c-field u-mb-small col-md-6">
		<label class="c-field__label">Nama Kantor : </label>
		<input required="" class="c-input" name="person_worksFor_name" type="text" value="<?php echo $meta['schema']['content']['person_worksFor_name'] ?>">
	</div>

	<div class="c-field u-mb-small col-md-12">
		<label class="c-field__label">Keaggotaan : </label>
		<input required="" class="c-input" name="person_worksFor_sameAs" type="text" value="<?php echo $meta['schema']['content']['person_worksFor_sameAs'] ?>">
	</div>          

</div>