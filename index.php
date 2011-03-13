<?php
/*
 *      index.php
 * 		Website newsletter.geany.org
 *
 *      (C) Copyright 2011 by Dominic Hopf <dmaphy@googlemail.com>
 *      Version: 1.0.0
 *      Last Change: 2011-03-13
 */

define('CONTENTPATH','./content/');

if (isset($_GET['site']))
{
	if (file_exists(CONTENTPATH . $_GET['site'] . '.html'))
	{
		define('CONTENTFILE', CONTENTPATH . $_GET['site'] . '.html');
	}

	elseif (file_exists(CONTENTPATH . $_GET['site'] . '.php'))
	{
		define('CONTENTFILE', CONTENTPATH . $_GET['site'] . '.php');
	}

	else
	{
		define('CONTENTFILE', CONTENTPATH . '404.html');
	}
}

else
{
	define('CONTENTFILE', CONTENTPATH . 'newsletters.php');
}

print '<?xml version="1.0"?>';
?>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.1//EN"
	"http://www.w3.org/TR/xhtml11/DTD/xhtml11.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en">

<head>
	<title>Plugins for Geany</title>
	<meta http-equiv="content-type" content="text/html;charset=utf-8" />
	<link rel="stylesheet" type="text/css" href="./stylesheets/mainstyle.css" />
</head>
<body>
	<div id="header">
		<a href="./">
		<img src="./images/geany.png" alt="Geany Logo" style="width: 48px; height: 48px; float: left; margin-right: 5%;" /></a>
		<h1>Geany Newsletters</h1>
	</div>

	<div id="navigation">
		<ul>
			<a href="index.php?site=newsletters">Newsletters</a>
		</ul>

		<hr />

		<ul>
			<li><a href="index.php?site=about">About</a></li>
		</ul>

		<hr />

		<ul>
			<li><a href="http://geany.org/">Geany</a></li>
		</ul>
	</div>

	<div id="content">
		<?php include_once CONTENTFILE; ?>
	</div>

	<div id="footer">
		<p>&copy; Dominic Hopf<br />
		Contact <a href="http://dominichopf.de/">Dominic Hopf</a> or the
		<a href="http://www.geany.org/Support/MailingList">Geany Team</a>
		for questions.</p>
	</div>
</body>
</html>
