@Demo.module 'LeadsApp.List', (List, App, Backbone, Marionette, $, _) ->

  List.Controller =

    listLeads: ->
      App.mainRegion.show @getLeadsView()

    getLeadsView: ->
      new List.Leads
