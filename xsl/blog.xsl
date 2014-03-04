<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:output method="html" doctype-system="about:legacy-compat" />
	<xsl:template match="/">
		<!--[if lt IE 7 ]><html class="ie ie6" lang="de"> <![endif]-->
		<!--[if IE 7 ]><html class="ie ie7" lang="de"> <![endif]-->
		<!--[if IE 8 ]><html class="ie ie8" lang="de"> <![endif]-->
		<!--[if (gte IE 9)|!(IE)]><!--><html lang="de"> <!--<![endif]-->
			<head>
				<meta charset="utf-8"/>
				<title>Philipp Trommler - Blog</title>
				<meta name="description" content=""/>
				<meta name="author" content="Philipp Trommler"/>
				<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1"/>
				<link rel="stylesheet" href="stylesheets/base.css"/>
				<link rel="stylesheet" href="stylesheets/skeleton.css"/>
				<link rel="stylesheet" href="stylesheets/layout.css"/>
				<link rel="stylesheet" href="stylesheets/custom.css"/>
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
					<header>
						<img src="images/header.jpg" alt="Background"/>
						<div class="two-thirds column">
							<h1 class="remove-bottom" style="margin-top: 40px">Philipp Trommler</h1>
						</div>
						<nav class="one-third column"><a href="index.xml">Home</a> &#183; <a href="projects.xml">Projekte</a> &#183; <a href="blog.xml"><h2>Blog</h2></a> &#183; <a href="about.xml">Über mich</a></nav>
						<hr />
					</header>
					<main>
						<xsl:apply-templates select="//article"/>
					</main>
					<footer>
						<div class="one-third column">
							<ul>
								<li><a href="rss" class="rss"></a></li>
								<li><a href="https://www.facebook.com/philipp.trommler" target="_blank" class="facebook"></a></li>
								<li><a href="https://plus.google.com/+PhilippTrommler" target="_blank" class="googleplus"></a></li>
								<li><a href="http://www.youtube.com/channel/UCGG3f6yZH4gndb1HXRCqipw" target="_blank" class="youtube"></a></li>
							</ul>
						</div>
						<div class="one-third column">
							Webseite erstellt mit <a href="http://www.getskeleton.com/" target="_blank">Skeleton</a>, <a href="https://jquery.org/" target="_blank">jQuery</a>, <a href="http://www.heise.de/ct/artikel/2-Klicks-fuer-mehr-Datenschutz-1333879.html" target="_blank">2 Klicks für mehr Datenschutz</a>, <a href="http://highlightjs.org/" target="_blank">highlight.js</a> und <a href="http://www.graphicsfuel.com/2012/09/15-free-social-media-icons-psd-png/" target="_blank">Icons von Rafi</a>.
						</div>
						<div class="one-third column">
							Der Webseitenbetreiber ist nicht für Inhalte verlinkter Drittseiten verantwortlich.<br/><br/>
							Alle Bilder und auf dieser Website stehen, soweit nicht anders angegeben, unter <a rel="license" href="http://creativecommons.org/licenses/by-sa/4.0/deed.de" target="_blank">CC-BY-SA 4.0 International Lizenz</a>. Dies gilt nicht für die Social-Media-Icons.<br/><br/>
							&#169; 2014 Philipp Trommler
						</div>
					</footer>
				</div>
			</body>
		</html>
	</xsl:template>
	
	<!-- Article overview -->
	<xsl:template match="article">
		<article class="one-third column">
			<h3><xsl:value-of select="name"/></h3>
			<p><xsl:value-of select="text"/></p><br />
			<a class="overview"><xsl:attribute name="href"><xsl:value-of select="link"/></xsl:attribute>weiterlesen</a><br />
		</article>
		<xsl:if test="position() mod 3 = 0">
			<br class="clear"/>
		</xsl:if>
	</xsl:template>
</xsl:stylesheet>
