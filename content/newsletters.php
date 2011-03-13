<?php
define('NEWSLETTER_DIRECTORY','./');

if ($listing = scandir(NEWSLETTER_DIRECTORY))
{
	print '<ul>';
	foreach ($listing as $item)
	{
		if (preg_match('/^vol_/',$item))
		{
			$number = split('_',$item); $number = $number[1];
			print '<li><a href="'.$item.'/newsletter_'.$number.'.html">Newsletter Vol. '.$number.'</a></li>';
		}
	}
	print '</ul>';
}

else
{
	print 'Could not scan for Newsletters.';
	return false;
}

?>
