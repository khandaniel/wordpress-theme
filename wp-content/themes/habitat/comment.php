<!-- Comment Form -->
<li class="list-group-item">
    <div class="blog-comment-form">
        <div class="row margin-top-20">
            <div class="col-md-12">
                <div class="pull-left">
                    <h3>Leave a Comment</h3>
                </div>
            </div>
        </div>
        <div class="row margin-top-20">
            <div class="col-md-12">
                <form action="<?php echo esc_url( site_url( '/wp-comments-post.php' ) ); ?>"
                      method="post" id="respond">
                    <label>Name</label>
                    <div class="row margin-bottom-20">
                        <div class="col-md-7 col-md-offset-0">
                            <input class="form-control" name="author" type="text">
                        </div>
                    </div>
                    <label>Email
                        <span>*</span>
                    </label>
                    <div class="row margin-bottom-20">
                        <div class="col-md-7 col-md-offset-0">
                            <input class="form-control" name="email" type="email">
                            <input type="hidden" name="comment_post_ID" value="<?= $post->ID ?>">
                        </div>
                    </div>
                    <label>Message</label>
                    <div class="row margin-bottom-20">
                        <div class="col-md-11 col-md-offset-0">
                            <textarea class="form-control" name="comment" rows="8"></textarea>
                        </div>
                    </div>
                    <p>
                        <button class="btn btn-primary" type="submit">Send Message</button>
                    </p>
                </form>
            </div>
        </div>
    </div>
</li>
<!-- End Comment Form -->