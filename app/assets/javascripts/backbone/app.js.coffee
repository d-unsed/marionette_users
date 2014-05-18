@Demo = do (Backbone, Marionette) ->

  App = new Marionette.Application

  App.rootRoute = Routes.users_path()

  App.addRegions
    headerRegion: '#header-region'
    mainRegion:   '#main-region'
    footerRegion: '#footer-region'

  App.addInitializer ->
    App.module('HeaderApp').start()
    App.module('FooterApp').start()

  App.on 'initialize:before', (options) ->
    @currentUser = App.request 'set:current:user', options.currentUser

  App.on 'initialize:after', ->
    if Backbone.history
      Backbone.history.start()
      @navigate(@rootRoute, triger: true) if @getCurrentRoute() is ''

  App.navigate = (route, options = {}) ->
    Backbone.history.navigate route, options

  App.getCurrentRoute  = ->
    Backbone.history.fragment

  App.reqres.setHandler 'get:current:user', ->
    App.currentUser

  App
