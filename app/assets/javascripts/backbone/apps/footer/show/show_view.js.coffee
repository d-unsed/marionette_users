@Demo.module 'FooterApp.Show', (Show, App, Backbone, Marionette, $, _) ->

  class Show.Footer extends App.Views.ItemView
    template: JST['footer/show/show_footer']

    modelEvents:
      change: 'render'
