<?php if (isset($post['comment_post']) && is_array($post['comment_post'])): ?>
    
    <?php if (isset($post['comment_post']['type']) && $post['comment_post']['type'] == 'disqus'): ?>
        <?php echo $post['comment_post']['data'] ?? ''; ?>
    <?php endif; ?>

    <?php if (isset($post['comment_post']['type']) && $post['comment_post']['type'] == 'system'): ?>
        <div class="alert alert-info">
            <?php echo $this->lang->line('comment_not_support'); ?>
        </div>
    <?php endif; ?>

<?php else: ?>
    <div class="alert alert-warning">
        <?php echo $this->lang->line('comment_not_available') ?? 'Komentar tidak tersedia.'; ?>
    </div>
<?php endif; ?>