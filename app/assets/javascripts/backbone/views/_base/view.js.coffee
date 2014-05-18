@Demo.module 'Views', (Views, App, Backbone, Marionette, $, _) ->

  _.extend Marionette.ItemView::,

    templateHelpers:
      currentUser: ->
        App.request('get:current:user').toJSON()
