			</div>
			<!-- Content -->
			
			<!-- jika front end atau bukan -->
			<?php if (is_front_page()) { 
		    	get_template_part('front'); 
			} else { 
		    	get_sidebar(); 
			} ?>
			</div>
			<!-- Container -->			
			<div class="footer">
				<div class="follow us" style="text-align:center">
				<h3 style="color:#f7f7f7; font:bold 18px 'Open Sans';"> Follow Us On	</h3>
				<ul class="zoom-social-icons-list zoom-social-icons-list--with-canvas zoom-social-icons-list--rounded zoom-social-icons-list--no-labels">

			
								<li class="zoom-social_icons-list__item">
					<a class="zoom-social_icons-list__link" href="https://www.facebook.com/nagari.sontangcubadak.7" target="_blank">
																		
                                                    <span class="screen-reader-text">facebook</span>
                        
						<span class="zoom-social_icons-list-span socicon socicon-facebook" data-hover-rule="background-color" data-hover-color="#3b5998" style="background-color: rgb(221, 51, 51); font-size: 18px; padding: 8px;" data-old-color="rgb(221, 51, 51)"></span>

											</a>
				</li>

			
								<li class="zoom-social_icons-list__item">
					<a class="zoom-social_icons-list__link" href="https://plus.google.com/u/0/115285111482583576702" target="_blank">
																		
                                                    <span class="screen-reader-text">google</span>
                        
						<span class="zoom-social_icons-list-span socicon socicon-google" data-hover-rule="background-color" data-hover-color="#55acee" style="background-color: rgb(221, 51, 51); font-size: 18px; padding: 8px;" data-old-color="rgb(221, 51, 51)"></span>

											</a>
				</li>

			
								<li class="zoom-social_icons-list__item">
					<a class="zoom-social_icons-list__link" href="https://www.youtube.com/channel/UCZcsmv5C9NTi9x4rURxgteg" target="_blank">
																		
                                                    <span class="screen-reader-text">youtube</span>
                        
						<span class="zoom-social_icons-list-span socicon socicon-youtube" data-hover-rule="background-color" data-hover-color="#E1306C" style="background-color : #dd3333; font-size: 18px; padding:8px"></span>

											</a>
				</li>

			
		</ul>
				
				
				</div>
				<div class="copyright">Copyright &copy; 2018 <a href="<?php echo home_url(); ?>"><?php bloginfo('name'); ?></a><br />
					<!--<span><?php _e('Didukung oleh', 'ndeso'); ?> <a href="http://wordpress.org">WordPress</a>. <?php _e('Tema Ndeso oleh', 'ndeso'); ?> <a href="http://main-css.com">Main CSS</a></span>-->
					
				</div>
			</div>
		</div>
		<!-- Page generated: <?php timer_stop(1); ?> s, <?php echo get_num_queries(); ?> queries -->
		<?php wp_footer(); ?>

	</body>
</html>
