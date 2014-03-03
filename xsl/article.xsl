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
				<title><xsl:value-of select="name"/> - Philipp Trommler - Blog</title>
				<meta name="description"><xsl:attribute name="content"><xsl:value-of select="text/par"/></xsl:attribute></meta>
				<meta name="author" content="Philipp Trommler"/>
				<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1"/>
				<link rel="stylesheet" href="../stylesheets/base.css"/>
				<link rel="stylesheet" href="../stylesheets/skeleton.css"/>
				<link rel="stylesheet" href="../stylesheets/layout.css"/>
				<link rel="stylesheet" href="../stylesheets/custom.css"/>
				<!--[if lt IE 9]>
					<script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
				<![endif]-->
				<link rel="shortcut icon" href="../images/favicon.ico"/>
				<link rel="canonical"><xsl:attribute name="href">http://ferruck.github.io/<xsl:value-of select="link"/></xsl:attribute></link>
				<script type="text/javascript" src="../js/jquery.js"></script> 
				<script type="text/javascript" src="../js/jquery.socialshareprivacy.js"></script>
				<script type="text/javascript">
					jQuery(document).ready(function($){
						var d = new Date('<xsl:value-of select="published"/>');
						document.getElementById ('date').innerHTML = d.toLocaleString ();
						//$('#date').val(d.toLocaleString ());
					
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
								'uri'		: 'http://ferruck.github.io/<xsl:value-of select="link"/>',
								'css_path'  : '../stylesheets/socialshareprivacy.css',
								'lang_path' : '../js/lang/',
								'language'  : 'de'
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
						<h5>Social Media</h5>
						<div id="socialshareprivacy"></div>
						<hr />
						<h5>Kommentare</h5>
						<div id="disqus_thread"></div>
						<script type="text/javascript">
							var disqus_shortname = 'phtrommlerblog';
							var disqus_identifier = '<xsl:value-of select="name"/>';
							var disqus_title = '<xsl:value-of select="name"/>';
							var disqus_url = 'http://ferruck.github.io/<xsl:value-of select="link"/>';

							(function() {
								var dsq = document.createElement('script'); dsq.type = 'text/javascript'; dsq.async = true;
								dsq.src = '//' + disqus_shortname + '.disqus.com/embed.js';
								(document.getElementsByTagName('head')[0] || document.getElementsByTagName('body')[0]).appendChild(dsq);
							})();
						</script>
						<noscript>Please enable JavaScript to view the <a href="http://disqus.com/?ref_noscript">comments powered by Disqus.</a></noscript>
						<a href="http://disqus.com" class="dsq-brlink">comments powered by <span class="logo-disqus">Disqus</span></a>
					</main>
					<footer>
						<div class="one-third column">
							<ul>
								<li><a href="rss" class="rss"></a></li>
								<li><a href="facebook" class="facebook"></a></li>
								<li><a href="googleplus" class="googleplus"></a></li>
								<li><a href="youtube" class="youtube"></a></li>
							</ul>
						</div>
						<div class="one-third column">
							Hi!
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
	
	<xsl:template match="text/heading">
		<h4><xsl:value-of select="."/></h4>
	</xsl:template>
	
	<xsl:template match="text/par">
		<p><xsl:value-of select="."/></p>
	</xsl:template>
	
	<xsl:template match="text/image">
		<img class="scale-width-grid"><xsl:attribute name="src"><xsl:value-of select="@src"/></xsl:attribute><xsl:attribute name="alt"><xsl:value-of select="@alt"/></xsl:attribute></img>
	</xsl:template>
</xsl:stylesheet>
