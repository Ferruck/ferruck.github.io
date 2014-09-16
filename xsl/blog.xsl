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
				<title><xsl:value-of select="title"/></title>
				<meta name="author" content="Philipp Trommler"/>
				<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1"/>
				<link rel="stylesheet" href="stylesheets/base.css"/>
				<link rel="stylesheet" href="stylesheets/skeleton.css"/>
				<link rel="stylesheet" href="stylesheets/layout.css"/>
				<link rel="stylesheet" href="stylesheets/custom.css"/>
				<link rel="alternate" type="application/rss+xml" title="RSS" href="http://philipp.feige-trommler.de/rss.xml"/> 
				<link rel="apple-touch-icon" sizes="57x57" href="../apple-touch-icon-57x57.png"/>
				<link rel="apple-touch-icon" sizes="72x72" href="../apple-touch-icon-72x72.png"/>
				<link rel="apple-touch-icon" sizes="76x76" href="../apple-touch-icon-76x76.png"/>
				<link rel="apple-touch-icon" sizes="114x114" href="../apple-touch-icon-114x114.png"/>
				<link rel="apple-touch-icon" sizes="144x144" href="../apple-touch-icon-144x144.png"/>  
				<link rel="apple-touch-icon" sizes="152x152" href="../apple-touch-icon-152x152.png"/>  
				<link rel="apple-touch-icon-precomposed" href="http://philipp.feige-trommler.de/../apple-touch-icon-152x152.png"/>
				<link rel="icon" type="image/png" href="../ico32.png"/>
				<link rel="shortcut icon" type="image/x-icon" href="../favicon.ico"/>
				<!--[if IE]><link rel="shortcut icon" type="image/vnd.microsoft.icon" href="../favicon.ico"/><![endif]-->
				<meta name="application-name" content=" "/>
				<meta name="msapplication-TileColor" content="#cddc39"/>
				<meta name="msapplication-square70x70logo" content="../tiny.png"/>
				<meta name="msapplication-square150x150logo" content="../square.png"/>
				<meta name="msapplication-wide310x150logo" content="../wide.png"/>
				<meta name="msapplication-square310x310logo" content="../large.png"/>
				<meta name="msapplication-notification" content="frequency=30;polling-uri=http://notifications.buildmypinnedsite.com/?feed=http://philipp.feige-trommler.de/rss.xml&amp;id=1;polling-uri2=http://notifications.buildmypinnedsite.com/?feed=http://philipp.feige-trommler.de/rss.xml&amp;id=2;polling-uri3=http://notifications.buildmypinnedsite.com/?feed=http://philipp.feige-trommler.de/rss.xml&amp;id=3;polling-uri4=http://notifications.buildmypinnedsite.com/?feed=http://philipp.feige-trommler.de/rss.xml&amp;id=4;polling-uri5=http://notifications.buildmypinnedsite.com/?feed=http://philipp.feige-trommler.de/rss.xml&amp;id=5; cycle=1"/>
				<link rel="canonical" href="http://philipp.feige-trommler.de/blog.xml"/>
				<!--[if lt IE 9]>
					<script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
				<![endif]-->
				<script type="text/javascript" src="js/jquery.js"></script>
				<script type="text/javascript" src="js/cookiechoices.js"></script>
				<script type="text/javascript">
					jQuery(document).ready(function($){
						$('.date-author').each(function(i) {
							var d = new Date($(this).text());
							$(this).html(d.toLocaleString ());
							cookieChoices.showCookieConsentBar('Werbetreibende und Anbieter von Social-Media-Plugins speichern eventuell Cookies über diese Website auf Ihrem Computer. Wenn Sie dies nicht wünschen, sollten Sie diese Website jetzt verlassen.', 'Schließen', 'Mehr Informationen', 'http://philipp.feige-trommler.de/daten.html');
						}
					)});
				</script>
			</head>
			<body>
				<div class="container">
					<header>
						<div class="two-thirds column">
							<h1 class="remove-bottom" style="margin-top: 40px">Philipp Trommler</h1>
						</div>
						<nav class="one-third column"><a href="index.html">Home</a> &#183; <a href="projects.html">Projekte</a> &#183; <a href="blog.xml"><h2>Blog</h2></a> &#183; <a href="about.html">Über mich</a></nav>
					</header>
					<main>
						<xsl:apply-templates select="//article"/>
						<article class="one-third column">
							<span class="adsense">Werbung</span>
							<script src="//pagead2.googlesyndication.com/pagead/js/adsbygoogle.js"></script>
							<!-- Standard -->
							<ins class="adsbygoogle standard" style="display:inline-block" data-ad-client="ca-pub-3606679938871797" data-ad-slot="3602441669"></ins>
							<script>
								if (document.cookie.match(new RegExp('displayCookieConsent' + '=([^;]+)'))) {
									(adsbygoogle = window.adsbygoogle || []).push({});
								}
							</script>
						</article>
					</main>
					<footer>
						<div class="one-third column">
							<ul>
								<li><a href="http://philipp.feige-trommler.de/rss.xml" class="rss"></a></li>
								<li><a href="https://www.facebook.com/philipp.trommler" target="_blank" class="facebook"></a></li>
								<li><a href="https://plus.google.com/+PhilippTrommler" target="_blank" class="googleplus"></a></li>
								<li><a href="http://www.youtube.com/channel/UCGG3f6yZH4gndb1HXRCqipw" target="_blank" class="youtube"></a></li>
							</ul>
						</div>
						<div class="one-third column">
							Webseite erstellt mit <a href="http://www.getskeleton.com/" target="_blank">Skeleton</a>, <a href="https://jquery.org/" target="_blank">jQuery</a>, <a href="http://www.heise.de/ct/artikel/2-Klicks-fuer-mehr-Datenschutz-1333879.html" target="_blank">2 Klicks für mehr Datenschutz</a>, <a href="http://highlightjs.org/" target="_blank">highlight.js</a> und <a href="http://www.graphicsfuel.com/2012/09/15-free-social-media-icons-psd-png/" target="_blank">Icons von Rafi</a>.<br />
							Die Schriftarten <a href="http://www.fontsquirrel.com/license/ubuntu-mono" rel="license" target="_blank">'Ubuntu Mono'</a> und <a href="http://www.fontsquirrel.com/license/fira-sans" rel="license" target="_blank">'Fira Sans'</a> stehen unter der SIL Open Font License, die <a href="http://socicon.com/" target="_blank">'Socicon'</a>-Social-Media-Icons ebenfalls.
						</div>
						<div class="one-third column">
							Alle Bilder und auf dieser Website stehen, soweit nicht anders angegeben, unter <a rel="license" href="http://creativecommons.org/licenses/by-sa/4.0/deed.de" target="_blank">CC-BY-SA 4.0 International Lizenz</a>. Dies gilt nicht für die Social-Media-Icons.<br/><br/>
							&#169; 2014 Philipp Trommler, zum <a href="impressum.html">Impressum</a> und der <a href="daten.html">Datenschutzerklärung</a>.
						</div>
					</footer>
				</div>
			</body>
		</html>
	</xsl:template>
	
	<!-- Article overview -->
	<xsl:template match="article">
		<article class="one-third column">
			<span class="date-author"><xsl:value-of select="time"/></span>
			<h3><xsl:value-of select="h3"/></h3>
			<p><xsl:value-of select="p"/></p><br />
			<a class="overview"><xsl:attribute name="href"><xsl:value-of select="a/@href"/></xsl:attribute><xsl:attribute name="rel"><xsl:value-of select="a/@rel"/></xsl:attribute><xsl:attribute name="target"><xsl:value-of select="a/@target"/></xsl:attribute><xsl:value-of select="a"/></a><br />
		</article>
		<xsl:if test="position() mod 3 = 0">
			<br class="clear"/>
		</xsl:if>
	</xsl:template>
</xsl:stylesheet>
