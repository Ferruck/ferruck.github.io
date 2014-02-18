<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:template match="/">
		<!--[if lt IE 7 ]><html class="ie ie6" lang="en"> <![endif]-->
		<!--[if IE 7 ]><html class="ie ie7" lang="en"> <![endif]-->
		<!--[if IE 8 ]><html class="ie ie8" lang="en"> <![endif]-->
		<!--[if (gte IE 9)|!(IE)]><!--><html lang="de" xmlns="http://www.w3.org/1999/xhtml"> <!--<![endif]-->
			<head>
				<meta charset="utf-8"/>
				<title>Philipp Trommler - Blog</title>
				<meta name="description" content=""/>
				<meta name="author" content="Philipp Trommler"/>
				<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1"/>
				<link rel="stylesheet" href="stylesheets/base.css"/>
				<link rel="stylesheet" href="stylesheets/skeleton.css"/>
				<link rel="stylesheet" href="stylesheets/layout.css"/>
				<!--[if lt IE 9]>
					<script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
				<![endif]-->
				<link rel="shortcut icon" href="images/favicon.ico"/>
				<link rel="apple-touch-icon" href="images/apple-touch-icon.png"/>
				<link rel="apple-touch-icon" sizes="72x72" href="images/apple-touch-icon-72x72.png"/>
				<link rel="apple-touch-icon" sizes="114x114" href="images/apple-touch-icon-114x114.png"/>
			</head>
			<body>
				<div class="container">
					<header class="sixteen columns">
						<h1 class="remove-bottom" style="margin-top: 40px">Philipp Trommler</h1>
						<h2>Blog</h2>
						<hr />
					</header>
					<xsl:for-each select="//article">
						<article class="one-third column">
							<h3><xsl:value-of select="title"/></h3>
							<p><xsl:value-of select="text"/></p>
							<a><xsl:attribute name="href"/><xsl:value-of select="link"/></xsl:attribute>weiterlesen</a>
						</article>
					</xsl:for-each>
					<div class="one-third column">
						<h3>About Skeleton?</h3>
						<p>Skeleton is a small collection of well-organized CSS files that can help you rapidly develop sites that look beautiful at any size, be it a 17" laptop screen or an iPhone. It's based on a responsive grid, but also provides very basic CSS for typography, buttons, forms and media queries. Go ahead, resize this super basic page to see the grid in action.</p>
					</div>
					<div class="one-third column">
						<h3>Three Core Principles</h3>
						<p>Skeleton is built on three core principles:</p>
						<ul class="square">
							<li><strong>A Responsive Grid Down To Mobile</strong>: Elegant scaling from a browser to tablets to mobile.</li>
							<li><strong>Fast to Start</strong>: It's a tool for rapid development with best practices</li>
							<li><strong>Style Agnostic</strong>: It provides the most basic, beautiful styles, but is meant to be overwritten.</li>
						</ul>
					</div>
					<div class="one-third column">
						<h3>Docs &amp; Support</h3>
						<p>The easiest way to really get started with Skeleton is to check out the full docs and info at <a href="http://www.getskeleton.com">www.getskeleton.com.</a>. Skeleton is also open-source and has a <a href="https://github.com/dhgamache/skeleton">project on git</a>, so check that out if you want to report bugs or create a pull request. If you have any questions, thoughts, concerns or feedback, please don't hesitate to email me at <a href="mailto:hi@getskeleton.com">hi@getskeleton.com</a>.</p>
					</div>
					<footer class="sixteen columns">
						Hi!
					</footer>
				</div>
			</body>
		</html>
	</xsl:template>
</xsl:stylesheet>
