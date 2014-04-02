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
				<meta name="description"><xsl:attribute name="content"><xsl:value-of select="text/par"/></xsl:attribute></meta>
				<meta name="author" content="Philipp Trommler"/>
				<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1"/>
				<link rel="stylesheet" href="../stylesheets/base.css"/>
				<link rel="stylesheet" href="../stylesheets/skeleton.css"/>
				<link rel="stylesheet" href="../stylesheets/layout.css"/>
				<link rel="stylesheet" href="../stylesheets/custom.css"/>
				<link rel="stylesheet" href="../stylesheets/jquery.lazyloadxt.spinner.min.css"/>
				<link rel="stylesheet" href="../stylesheets/pojoaque.css"/>
				<link rel="shortcut icon" href="../images/favicon.ico"/>
				<link rel="canonical"><xsl:attribute name="href"><xsl:value-of select="link/@href"/></xsl:attribute></link>
				<!--[if lt IE 9]>
					<script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
				<![endif]-->
				<script type="text/javascript" src="../js/jquery.js"></script>
				<script type="text/javascript" src="../js/jquery.lazyloadxt.extra.min.js"></script>
				<script type="text/javascript" src="../js/highlight.pack.js"></script>
				<script type="text/javascript" src="../js/jquery.socialshareprivacy.js"></script>
				<script type="text/javascript">
					function showDisqus () {
						var disqus_shortname = 'phtrommlerblog';
						var disqus_identifier = '<xsl:value-of select="title"/>';
						var disqus_title = '<xsl:value-of select="title"/>';
						var disqus_url = '<xsl:value-of select="link/@href"/>';
						
						var dsq = document.createElement('script');
						dsq.type = 'text/javascript';
						dsq.async = true;
						dsq.src = '//' + disqus_shortname + '.disqus.com/embed.js';
						
						(document.getElementsByTagName('head')[0] || document.getElementsByTagName('body')[0]).appendChild(dsq);
					}
					
					jQuery(document).ready(function($){
						var d = new Date('<xsl:value-of select="time"/>');
						document.getElementById ('date').innerHTML = d.toLocaleString ();
						//$('#date').val(d.toLocaleString ());
					
						$('.block').each(function(i, e) {hljs.highlightBlock(e)});
					
						if($('#socialshareprivacy').length > 0){
							$('#socialshareprivacy').socialSharePrivacy({
								'services'	: {
												facebook: {
													'dummy_img'	: '../images/socialshareprivacy/dummy_facebook.png',
													'sharer'	: {
														'status'	: 'on',
														'dummy_img'	: '../images/socialshareprivacy/dummy_facebook_share_de.png',
														'img'		: '../images/socialshareprivacy/dummy_facebook_share_active_de.png'
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
						<img src="../images/header.jpg" alt="Background"/>
						<div class="two-thirds column">
							<h1 class="remove-bottom" style="margin-top: 40px">Philipp Trommler</h1>
						</div>
						<nav class="one-third column"><a href="../index.xml">Home</a> &#183; <a href="../projects.xml">Projekte</a> &#183; <a href="../blog.xml"><h2>Blog</h2></a> &#183; <a href="../about.xml">Über mich</a></nav>
						<hr />
					</header>
					<main>
						<h3><xsl:value-of select="name"/></h3>
						<xsl:apply-templates select="text"/>
						<span class="date-author">Verfasst/zuletzt geändert: <span id="date"></span><span> von <xsl:value-of select="author"/></span></span>
						<hr />
						<div class="one-third column">
						<h5>Social Media</h5>
						<div id="socialshareprivacy"></div>
						</div>
						<div class="two-thirds column" id="disqus">
							<h5>Kommentare</h5>
							<p class="warning">Durch das Aktivieren der Kommentarfunktion werden Daten an Dritte (Disqus) weitergegeben. Aktivieren Sie die Kommentarfunktion nur, wenn Sie sich darüber im Klaren und damit einverstanden sind!</p>
							<label class="switch switch-green" onClick="showDisqus ()">
								<input type="checkbox" class="switch-input"/>
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
								<li><a href="rss" class="rss"></a></li>
								<li><a href="https://www.facebook.com/philipp.trommler" target="_blank" class="facebook"></a></li>
								<li><a href="https://plus.google.com/+PhilippTrommler" target="_blank" class="googleplus"></a></li>
								<li><a href="http://www.youtube.com/channel/UCGG3f6yZH4gndb1HXRCqipw" target="_blank" class="youtube"></a></li>
							</ul>
						</div>
						<div class="one-third column">
							Webseite erstellt mit <a href="http://www.getskeleton.com/" target="_blank">Skeleton</a>, <a href="https://jquery.org/" target="_blank">jQuery</a>, <a href="http://www.heise.de/ct/artikel/2-Klicks-fuer-mehr-Datenschutz-1333879.html" target="_blank">2 Klicks für mehr Datenschutz</a>, <a href="http://highlightjs.org/" target="_blank">highlight.js</a> und <a href="http://www.graphicsfuel.com/2012/09/15-free-social-media-icons-psd-png/" target="_blank">Icons von Rafi</a> sowie Switches von <a href="http://www.cssflow.com/" target="_blank">Thibaut Courouble</a>.
						</div>
						<div class="one-third column">
							Der Author ist nicht für Inhalte verlinkter Drittseiten verantwortlich.<br/><br/>
							Alle Bilder und Texte auf dieser Website stehen, soweit nicht anders angegeben, unter <a rel="license" href="http://creativecommons.org/licenses/by-sa/4.0/deed.de">CC-BY-SA 4.0 International Lizenz</a>. Dies gilt nicht für die Social-Media-Icons.<br/><br/>
							&#169; 2014 Philipp Trommler
						</div>
					</footer>
				</div>
			</body>
		</html>
	</xsl:template>
	
	<xsl:template match="text/h4">
		<h4><xsl:value-of select="."/></h4>
	</xsl:template>
	
	<xsl:template match="text/p">
		<p><xsl:apply-templates/></p>
	</xsl:template>
	
	<xsl:template match="text/par/inlinecode">
		<pre class="inline"><xsl:value-of select="."/></pre>
	</xsl:template>
	
	<xsl:template match="text/code">
		<pre><xsl:attribute name="class"><xsl:value-of select="@lang"/> block</xsl:attribute><xsl:value-of select="."/></pre>
	</xsl:template>
	
	<xsl:template match="text/img">
		<figure>
			<img class="lazy scale-with-grid"><xsl:attribute name="data-src"><xsl:value-of select="@src"/></xsl:attribute><xsl:attribute name="alt"><xsl:value-of select="@alt"/></xsl:attribute><xsl:attribute name="height"><xsl:value-of select="@height"/></xsl:attribute><xsl:attribute name="width"><xsl:value-of select="@width"/></xsl:attribute></img>
			<noscript><img class="scale-width-grid"><xsl:attribute name="src"><xsl:value-of select="@src"/></xsl:attribute><xsl:attribute name="alt"><xsl:value-of select="@alt"/></xsl:attribute><xsl:attribute name="height"><xsl:value-of select="@height"/></xsl:attribute><xsl:attribute name="width"><xsl:value-of select="@width"/></xsl:attribute></img></noscript>
			<figcaption><xsl:value-of select="caption"/></figcaption>
		</figure>
	</xsl:template>
</xsl:stylesheet>
