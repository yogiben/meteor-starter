Package.describe({
  name: "comments",
  summary: "Adds comments to your collection(s) of choice",
  version: "0.1.0",
  git: "http://github.com/yogiben/meteor-comments.git"
});

both = ['client','server']

Package.onUse(function(api) {
  api.versionsFrom('METEOR@1.0');

  api.use(
  	[
  		'coffeescript',
  		'less',
      'templating',
	    'aldeed:simple-schema@1.1.0',
	    'aldeed:collection2@2.2.0',
	    'aldeed:autoform@4.1.0'
  	],
  	both);

  api.addFiles(
  	[
  		'lib/both/collections.coffee'
  	],
  	both)

   api.addFiles(
  	[
  		'lib/client/templates.html',
      'lib/client/templates.coffee',
      'lib/client/helpers.coffee',
  		'lib/client/autoform.coffee'
  	],
  	'client')

   api.addFiles(
  	[
  		'lib/server/allow.coffee',
  		'lib/server/publish.coffee'
  	],
  	'server')

   api.imply('aldeed:simple-schema')
   api.imply('aldeed:collection2')



});
