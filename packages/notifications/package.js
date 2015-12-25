Package.describe({
  summary: "Adds notification functionality",
  version: "0.0.7",
  git: "http://github.com/yogiben/meteor-notifications.git"
});

both = ['client', 'server'];

Package.onUse(function(api) {
  api.versionsFrom('METEOR@1.0.3');
  
  api.use(
      [
        'coffeescript',
        'templating',
        'less@2.5.1',
        'tracker',
        'iron:router@1.0.0',
        'mrt:moment@2.8.1',
        'aldeed:autoform@4.0.2 || 5.1.2'
      ],
      both);

  api.addFiles(
      [
        'lib/both/collections.coffee',
        'lib/both/router.coffee'
      ],
      both);

  api.addFiles(
      [
        'lib/client/templates.html',
        'lib/client/templates.coffee',
        'lib/client/helpers.coffee',
        'lib/client/tracker.coffee',
        'lib/client/style.less'
      ],
      'client');

  api.addFiles(
      [
        'lib/server/allow.coffee',
        'lib/server/publish.coffee',
        'lib/server/methods.coffee'
      ],
      'server');
});
