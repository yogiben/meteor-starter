Package.describe({
  summary: "Bootstrap 3 with easy-access variables.",
  version: "0.3.1",
  git: "https://github.com/yogiben/meteor-bootstrap",
});


Package.on_use(function (api) {
  api.versionsFrom("METEOR@1.1.0.2");
  api.use('jquery', 'client');
  api.use('less', 'client');

  // javascript
  api.add_files('lib/js/transition.js', 'client');
  api.add_files('lib/js/alert.js', 'client');
  api.add_files('lib/js/button.js', 'client');
  api.add_files('lib/js/carousel.js', 'client');
  api.add_files('lib/js/collapse.js', 'client');
  api.add_files('lib/js/dropdown.js', 'client');
  api.add_files('lib/js/modal.js', 'client');
  api.add_files('lib/js/tooltip.js', 'client');
  api.add_files('lib/js/popover.js', 'client');
  api.add_files('lib/js/scrollspy.js', 'client');
  api.add_files('lib/js/tab.js', 'client');
  api.add_files('lib/js/affix.js', 'client');

});
