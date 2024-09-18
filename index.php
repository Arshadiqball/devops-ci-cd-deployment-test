
<?php
require 'db.php';

// Fetch all blog posts
$posts = get_all_posts();

?>
<!DOCTYPE html>
<html>
<head>
    <title>Basic PHP Blog</title>
</head>
<body>
    <h1>Blog Posts</h1>
    <ul>
        <?php foreach ($posts as $post): ?>
            <li><strong><?php echo $post['title']; ?></strong>: <?php echo $post['content']; ?></li>
        <?php endforeach; ?>
    </ul>
</body>
</html>
