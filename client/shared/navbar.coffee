Template.navbar.events
  'change #sliding-menu-controller': (e) ->
    $('body')[ if e.currentTarget.checked then 'addClass' else 'removeClass' ] 'no-overflow'

  'click .sliding-menu a': () ->
    $('#sliding-menu-controller').prop 'checked', false
