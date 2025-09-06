<!-- Begin Footer
	================================================== -->
	<div class="footer">
		<?php
			// Safeguards untuk menghindari akses offset pada boolean/null
			$site_title = (is_array($site) && isset($site['title'])) ? $site['title'] : '';

			$footer_pages = (isset($widget['footer_pages']) && is_array($widget['footer_pages'])) ? $widget['footer_pages'] : [];
			$footer_status = isset($footer_pages['status']) ? $footer_pages['status'] : '';
			$footer_content = (isset($footer_pages['content']) && is_array($footer_pages['content'])) ? $footer_pages['content'] : [];
		?>
		<p class="pull-left">
			<?php echo $this->lang->line('copyright'); ?>
			<?php echo " ©" . date('Y ') . $site_title; ?>.
			<?php echo $this->lang->line('rendered_in'); ?> {elapsed_time} <?php echo $this->lang->line('seconds'); ?>
		</p>

		<?php if ($footer_status === 'active'): ?>
			<p class="pull-right">
				<?php foreach ($footer_content as $page): ?>
					<?php
						$page_title = is_array($page) && isset($page['title']) ? $page['title'] : '';
						$page_url   = is_array($page) && isset($page['url']) ? $page['url'] : '#';
					?>
					<a title="<?php echo $page_title; ?>" href="<?php echo $page_url; ?>">
						<?php echo $page_title; ?>
					</a>
				<?php endforeach; ?>
			</p>
		<?php endif; ?>

		<div class="clearfix"></div>
	</div>
<!-- End Footer
================================================== -->
