@Demo.module 'FooterApp', (FooterApp, App, Backbone, Marionette, $, _) ->
  @startWithParent = false

  API =
    showFooter: ->
      FooterApp.Show.Controller.showFooter()

  @on 'start', ->
    API.showFooter()
