@Demo.module 'LeadsApp.List', (List, App, Backbone, Marionette, $, _) ->

  class List.Leads extends App.Views.ItemView
    template: JST['leads/list/leads']
