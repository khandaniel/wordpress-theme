<!-- Top Menu -->
<div id="hornav" class="bottom-border-shadow">
    <div class="container no-padding border-bottom">
        <div class="row">
            <div class="col-md-8 no-padding">
                <div class="visible-lg">
                    <ul id="hornavmenu" class="nav navbar-nav">
                        <?php wp_nav_menu([
                            'menu' => 'hornav',
                            'container' => '',
                            'items_wrap' => '%3$s',
                            'walker' => new HabitatWalkerNavMenu()
                        ]) ?>
                    </ul>
                </div>
            </div>
            <div class="col-md-4 no-padding">
                <ul class="social-icons pull-right">
                    <li class="social-rss">
                        <a href="#" target="_blank" title="RSS"></a>
                    </li>
                    <li class="social-twitter">
                        <a href="#" target="_blank" title="Twitter"></a>
                    </li>
                    <li class="social-facebook">
                        <a href="#" target="_blank" title="Facebook"></a>
                    </li>
                    <li class="social-googleplus">
                        <a href="#" target="_blank" title="Google+"></a>
                    </li>
                </ul>
            </div>
        </div>
    </div>
</div>
<!-- End Top Menu -->