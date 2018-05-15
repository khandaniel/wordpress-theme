<li class="list-group-item" id="comment-<?= $comment->comment_ID ?>">
    <div class="row">
        <div class="col-md-2 profile-thumb">
            <a href="#">
                <img class="media-object" src="https://www.gravatar.com/avatar/<?= md5($comment->comment_author_email);  ?>" alt="<?= $comment->comment_author ?>">
            </a>
        </div>

        <div class="col-md-10">
            <h4><a href="mailto:<?= $comment->comment_author_email ?>"><?= $comment->comment_author ?></a></h4>
            <p><?= $comment->comment_content ?></p>
            <span class="date"><i class="fa fa-clock-o color-gray-light"></i> <?= date("d M Y" ,strtotime($comment->comment_date)) ?></span>
        </div>
    </div>
</li>