<!DOCTYPE html>
<!--[if lt IE 7 ]> <html lang="en" class="no-js ie6"> <![endif]-->
<!--[if IE 7 ]>    <html lang="en" class="no-js ie7"> <![endif]-->
<!--[if IE 8 ]>    <html lang="en" class="no-js ie8"> <![endif]-->
<!--[if IE 9 ]>    <html lang="en" class="no-js ie9"> <![endif]-->
<!--[if (gt IE 9)|!(IE)]><!--> <html lang="en" class="no-js"><!--<![endif]-->
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
		<title>ISharelib - <g:layoutTitle default="Movies"/></title>
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<link rel="shortcut icon" href="${resource(dir: 'images', file: 'favicon.ico')}" type="image/x-icon">
		<link rel="apple-touch-icon" href="${resource(dir: 'images', file: 'apple-touch-icon.png')}">
		<link rel="apple-touch-icon" sizes="114x114" href="${resource(dir: 'images', file: 'apple-touch-icon-retina.png')}">
        <link rel="stylesheet" href="${resource(dir: 'css', file: 'bootstrap.min.css')}" type="text/css">
        <link rel="stylesheet" href="${resource(dir: 'css', file: 'bootstrap-responsive.min.css')}" type="text/css">
        <link rel="stylesheet" href="${resource(dir: 'css', file: 'flags/flags.css')}" type="text/css">
        <link rel="stylesheet" href="${resource(dir: 'css', file: 'silk/silk.css')}" type="text/css">
		<link rel="stylesheet" href="${resource(dir: 'css', file: 'main.css')}" type="text/css">
		<g:layoutHead/>
		<r:layoutResources />
	</head>
	<body>
        <g:include view="application/topbar.gsp" />
        <g:include view="application/alerts.gsp" />
        <div class="container-fluid">
            <div class="row-fluid">
                <div class="span2">
                    <g:include view="application/sidebar.gsp" />
                </div>
                <div class="span10">
                    <g:layoutBody/>
                </div>
                <hr />
                <g:include view="application/footer.gsp" />
            </div>
		</div>
        <g:javascript library="application"/>
		<g:javascript src="bootstrap.min.js"/>
		<r:layoutResources />
	</body>
</html>
