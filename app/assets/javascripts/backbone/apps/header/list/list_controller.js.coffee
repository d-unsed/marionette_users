@Demo.module 'HeaderApp.List', (List, App, Backbone, Marionette, $, _) ->

  List.Controller =

    listHeader: ->
      links = App.request 'header:entities'
      App.headerRegion.show @getHeaderView(links)

    getHeaderView: (links) ->
      new List.Headers
        collection: links
