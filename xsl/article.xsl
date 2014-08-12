<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:output method="html" doctype-system="about:legacy-compat" />
	<xsl:template match="article">
		<!--[if lt IE 7 ]><html class="ie ie6" lang="de"> <![endif]-->
		<!--[if IE 7 ]><html class="ie ie7" lang="de"> <![endif]-->
		<!--[if IE 8 ]><html class="ie ie8" lang="de"> <![endif]-->
		<!--[if (gte IE 9)|!(IE)]><!--><html lang="de"> <!--<![endif]-->
			<head>
				<meta charset="utf-8"/>
				<title><xsl:value-of select="title"/></title>
				<meta name="description"><xsl:attribute name="content"><xsl:value-of select="text/p"/></xsl:attribute></meta>
				<meta name="author" content="Philipp Trommler"/>
				<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1"/>
				<link rel="stylesheet" href="../stylesheets/base.css"/>
				<link rel="stylesheet" href="../stylesheets/skeleton.css"/>
				<link rel="stylesheet" href="../stylesheets/layout.css"/>
				<link rel="stylesheet" href="../stylesheets/custom.css"/>
				<link rel="stylesheet" href="../stylesheets/jquery.lazyloadxt.spinner.min.css"/>
				<link rel="stylesheet" href="http://cdnjs.cloudflare.com/ajax/libs/highlight.js/8.1/styles/github.min.css"/>
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
				<link rel="canonical"><xsl:attribute name="href"><xsl:value-of select="link/@href"/></xsl:attribute></link>
				<!--[if lt IE 9]>
					<script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
				<![endif]-->
				<script type="text/javascript" src="../js/jquery.js"></script>
				<script type="text/javascript" src="../js/jquery.lazyloadxt.extra.min.js"></script>
				<script src="http://cdnjs.cloudflare.com/ajax/libs/highlight.js/8.1/highlight.min.js"></script>
				<script type="text/javascript" src="../js/jquery.socialshareprivacy.js"></script>
				<script type="text/javascript">
					function showDisqus () {
						var disqus_shortname = 'phtrommlerblog';
						var disqus_identifier = '<xsl:value-of select="h3"/>';
						var disqus_title = '<xsl:value-of select="h3"/>';
						var disqus_url = '<xsl:value-of select="link/@href"/>';
						
						var dsq = document.createElement('script');
						dsq.type = 'text/javascript';
						dsq.async = true;
						dsq.src = '//' + disqus_shortname + '.disqus.com/embed.js';
						
						(document.getElementsByTagName ('head')[0] || document.getElementsByTagName ('body')[0]).appendChild (dsq);
					}
					
					jQuery(document).ready(function($){
						var d = new Date('<xsl:value-of select="time"/>');
						document.getElementById ('date').innerHTML = d.toLocaleString ();
					
						$('.block').each(function(i, e) {hljs.highlightBlock(e)});
					
						if($('#socialshareprivacy').length > 0){
							$('#socialshareprivacy').socialSharePrivacy({
								'services'	: {
												facebook: {
													'dummy_img'	: '../images/socialshareprivacy/dummy_facebook.png',
													'sharer'	: {
														'status'	: 'on',
														'dummy_img'	: '../images/socialshareprivacy/dummy_facebook_share_de.png',
														'img'		: '../images/socialshareprivacy/facebook_share_de.png'
													}
												},
												twitter	: {
													'dummy_img'	: '../images/socialshareprivacy/dummy_twitter.png'
												},
												gplus	: {
													'dummy_img' : '../images/socialshareprivacy/dummy_gplus.png'
												}
								},
								'uri'		: '<xsl:value-of select="link/@href"/>',
								'css_path'  : '../stylesheets/socialshareprivacy.css',
								'lang_path' : '../js/lang/',
								'language'  : 'de',
								'alignment' : 'vertical'
							});
						}
					});
				</script>
			</head>
			<body>
				<div class="container">
					<header>
						<div class="two-thirds column">
							<h1 class="remove-bottom" style="margin-top: 40px">Philipp Trommler</h1>
						</div>
						<nav class="one-third column"><a href="../index.html">Home</a> &#183; <a href="../projects.html">Projekte</a> &#183; <a href="../blog.xml"><h2>Blog</h2></a> &#183; <a href="../about.html">Über mich</a></nav>
					</header>
					<main>
						<h3><xsl:value-of select="h3"/></h3>
						<xsl:apply-templates select="text"/>
						<span class="date-author">Verfasst: <span id="date"></span><span> von <xsl:value-of select="author"/></span></span>
						<hr />
						<div class="one-third column">
							<h5>Social Media</h5>
							<p class="warning">Wenn Sie diese Felder durch einen Klick aktivieren, werden Informationen an Facebook, Twitter oder Google in die USA übertragen und unter Umständen auch dort gespeichert. Näheres erfahren Sie durch einen Klick auf das i.</p>
							<div id="socialshareprivacy"></div>
						</div>
						<div class="two-thirds column" id="disqus">
							<h5>Kommentare</h5>
							<p class="warning">Durch das Aktivieren der Kommentarfunktion werden Daten an Dritte (Disqus) weitergegeben. Aktivieren Sie die Kommentarfunktion nur, wenn Sie sich darüber im Klaren und damit einverstanden sind!</p>
							<label class="switch switch-green" onClick="showDisqus ()">
								<input id="disqus_switch" type="checkbox" class="switch-input"/>
								<span class="switch-label" data-on="An" data-off="Aus"></span>
								<span class="switch-handle"></span>
							</label><span class="switch-text">Kommentarfunktion von Disqus</span>
							<div id="disqus_thread"></div>
							<noscript>Please enable JavaScript to view the <a href="http://disqus.com/?ref_noscript">comments powered by Disqus.</a></noscript>
						</div>
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
							Webseite erstellt mit <a href="http://www.getskeleton.com/" target="_blank">Skeleton</a>, <a href="https://jquery.org/" target="_blank">jQuery</a>, <a href="http://www.heise.de/ct/artikel/2-Klicks-fuer-mehr-Datenschutz-1333879.html" target="_blank">2 Klicks für mehr Datenschutz</a>, <a href="http://highlightjs.org/" target="_blank">highlight.js</a> und <a href="http://www.graphicsfuel.com/2012/09/15-free-social-media-icons-psd-png/" target="_blank">Icons von Rafi</a> sowie Switches von <a href="http://www.cssflow.com/" target="_blank">Thibaut Courouble</a>.<br />
							Die Schriftarten <a href="http://www.fontsquirrel.com/license/ubuntu-mono" rel="license" target="_blank">'Ubuntu Mono'</a> und <a href="http://www.fontsquirrel.com/license/fira-sans" rel="license" target="_blank">'Fira Sans'</a> stehen unter der SIL Open Font License, die <a href="https://github.com/numixproject/numix-icon-theme-circle/" rel="license" target="_blank">'Numix-Circle'</a>-Icons stehen unter GPLv3-Lizenz.
						</div>
						<div class="one-third column">
							Alle Bilder und auf dieser Website stehen, soweit nicht anders angegeben, unter <a rel="license" href="http://creativecommons.org/licenses/by-sa/4.0/deed.de" target="_blank">CC-BY-SA 4.0 International Lizenz</a>. Dies gilt nicht für die Social-Media-Icons.<br/><br/>
							&#169; 2014 Philipp Trommler, zum <a href="../impressum.html">Impressum</a> und der <a href="../daten.html">Datenschutzerklärung</a>.
						</div>
					</footer>
				</div>
			</body>
		</html>
	</xsl:template>
	
	<xsl:template match="h4">
		<h4><xsl:value-of select="."/></h4>
	</xsl:template>
	
	<xsl:template match="p">
		<p><xsl:attribute name="class"><xsl:value-of select="@class"/></xsl:attribute><xsl:apply-templates/></p>
	</xsl:template>
	
	<xsl:template match="inlinecode">
		<pre class="inline"><xsl:value-of select="."/></pre>
	</xsl:template>
	
	<xsl:template match="a">
		<a><xsl:attribute name="href"><xsl:value-of select="@href"/></xsl:attribute><xsl:attribute name="target"><xsl:value-of select="@target"/></xsl:attribute><xsl:value-of select="."/></a>
	</xsl:template>
	
	<xsl:template match="b">
		<b><xsl:apply-templates/></b>
	</xsl:template>
	
	<xsl:template match="ol">
		<ol><xsl:apply-templates/></ol>
	</xsl:template>
	
	<xsl:template match="li">
		<li><xsl:apply-templates/></li>
	</xsl:template>
	
	<xsl:template match="code">
		<pre><xsl:attribute name="class"><xsl:value-of select="@lang"/> block</xsl:attribute><xsl:value-of select="."/></pre>
	</xsl:template>
	
	<xsl:template match="img">
		<figure>
			<img class="lazy scale-with-grid"><xsl:attribute name="data-src"><xsl:value-of select="@src"/></xsl:attribute><xsl:attribute name="alt"><xsl:value-of select="@alt"/></xsl:attribute><xsl:attribute name="height"><xsl:value-of select="@height"/></xsl:attribute><xsl:attribute name="width"><xsl:value-of select="@width"/></xsl:attribute></img>
			<noscript><img class="scale-width-grid"><xsl:attribute name="src"><xsl:value-of select="@src"/></xsl:attribute><xsl:attribute name="alt"><xsl:value-of select="@alt"/></xsl:attribute><xsl:attribute name="height"><xsl:value-of select="@height"/></xsl:attribute><xsl:attribute name="width"><xsl:value-of select="@width"/></xsl:attribute></img></noscript>
			<figcaption><xsl:value-of select="caption"/></figcaption>
		</figure>
	</xsl:template>
</xsl:stylesheet>
