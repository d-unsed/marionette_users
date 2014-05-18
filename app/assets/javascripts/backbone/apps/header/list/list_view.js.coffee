@Demo.module 'HeaderApp.List', (List, App, Backbone, Marionette, $, _) ->

  class List.Header extends App.Views.ItemView
    template: JST['header/list/_header']
    tagName: 'li'

  class List.Headers extends App.Views.CompositeView
    template: JST['header/list/headers']
    itemView: List.Header
    itemViewContainer: 'ul'
