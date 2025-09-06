<div class="another-posts">
    <div class="row no-gutters">

        <!-- Prev Post -->
        <div class="col-12 col-md-6">
            <?php if (isset($post['prev_post']) && is_array($post['prev_post']) && !empty($post['prev_post']['title'])): ?>
                <div class="another-post_block prev-post">
                    <div class="post-mini-img text-left">
                        <a title="<?php echo $post['prev_post']['title']; ?>" href="<?php echo $post['prev_post']['url'] ?>">
                            <?php if (!empty($post['prev_post']['image']['thumbnail'])): ?>   
                                <img src="<?php echo $post['prev_post']['image']['thumbnail']; ?>" alt="<?php echo $post['prev_post']['title']; ?>">                        
                            <?php else: ?>
                                <img src="<?php echo $post['prev_post']['image']['no_image']; ?>" alt="<?php echo $post['prev_post']['title']; ?>">        
                            <?php endif ?>
                        </a>
                    </div>
                    <div class="post-title">
                        <p>Sebelumnya</p>
                        <a title="<?php echo $post['prev_post']['title']; ?>" href="<?php echo $post['prev_post']['url'] ?>">
                            <?php echo $post['prev_post']['title'] ?>
                        </a>
                    </div>
                </div>
            <?php endif ?>
        </div>

        <!-- Next Post -->
        <div class="col-12 col-md-6">
            <?php if (isset($post['next_post']) && is_array($post['next_post']) && !empty($post['next_post']['title'])): ?>
                <div class="another-post_block text-right next-post">
                    <div class="post-title">
                        <p>Selanjutnya</p>
                        <a title="<?php echo $post['next_post']['title']; ?>" href="<?php echo $post['next_post']['url'] ?>">
                            <?php echo $post['next_post']['title'] ?>
                        </a>
                    </div>
                    <div class="post-mini-img text-right">
                        <a title="<?php echo $post['next_post']['title']; ?>" href="<?php echo $post['next_post']['url'] ?>">
                            <?php if (!empty($post['next_post']['image']['thumbnail'])): ?>   
                                <img src="<?php echo $post['next_post']['image']['thumbnail']; ?>" alt="<?php echo $post['next_post']['title']; ?>">                        
                            <?php else: ?>
                                <img src="<?php echo $post['next_post']['image']['no_image']; ?>" alt="<?php echo $post['next_post']['title']; ?>">        
                            <?php endif ?>                        
                        </a>
                    </div>
                </div>
            <?php endif ?>
        </div>

    </div>
</div>
