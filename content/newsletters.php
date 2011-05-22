<?php
define('NEWSLETTER_DIRECTORY','./');

if ($listing = scandir(NEWSLETTER_DIRECTORY, 1))
{
	print '<ul>';
	foreach ($listing as $item)
	{
		if (preg_match('/^vol_/',$item))
		{
			$number = explode('_',$item); $number = $number[1];
			print '<li>';
			print 'Newsletter Vol. '.$number;
			print '&nbsp';
			print '<a href="'.$item.'/newsletter_'.$number.'.html">HTML</a>';
			print '&nbsp';
			print '<a href="'.$item.'/newsletter_'.$number.'.pdf">PDF</a>';
			print '&nbsp';
			print '<a href="'.$item.'/newsletter_'.$number.'.txt">Plain Text</a>';
			print '</li>';
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
