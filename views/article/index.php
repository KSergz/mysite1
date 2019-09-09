<?php require_once ROOT.'/views/layouts/header.php' ?>
	<div id="page">
		<div id="page-bgtop">
			<div id="page-bgbtm">
				<div id="content">
					<?php foreach ($articleList as $articleItem):?>
					<div class="post">
						<h2 class="title"><a href='/articles/'><?php echo $articleItem['title'].' # '.$articleItem['id'];?></a></h2>
						<p class="meta">Posted by <a href="https://dou.ua/lenta/articles/how-to-develop-eq/"><?php echo $articleItem['author_name'];?></a> on <?php echo $articleItem['date'];?>
						<div class="entry">
                           <p><img src="<?php echo Article::getImage ($articleItem['id']); ?>"  alt="" /></p>
							<p><?php echo $articleItem['content'];?></p>
						</div>
					</div>
				<?php endforeach;?>
					<div style="clear: both;">&nbsp;</div>
				</div>
				<!-- end #content -->
<?php require_once ROOT.'/views/layouts/sidebar.php' ?>
<?php require_once ROOT.'/views/layouts/footer.php' ?>

