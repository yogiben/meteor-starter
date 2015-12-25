Package.describe({
  summary: "Adds favoriting/liking functionality to any collection",
  version: "0.0.4",
  git: "http://github.com/yogiben/meteor-favorites.git"
});

both = ['client','server']

Package.onUse(function(api) {
  api.versionsFrom('METEOR@1.0.3');

  api.use(
  	[
  		'coffeescript',
  		'less@2.5.1',
      'templating',

	    'aldeed:autoform@4.0.2 || 5.1.2'

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
  		'lib/client/helpers.coffee'
  	],
  	'client')

   api.addFiles(
  	[
  		'lib/server/allow.coffee',
  		'lib/server/publish.coffee'
  	],
  	'server')



});

Package.onTest(function(api) {
  api.use('tinytest');
  api.use('yogiben:favorites');
  api.addFiles('yogiben:favorites-tests.js');
});
