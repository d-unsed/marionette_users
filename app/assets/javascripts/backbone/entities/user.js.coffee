@Demo.module 'Entities', (Entities, App, Backbone, Marionette, $, _) ->

  class Entities.User extends Entities.Model

  class Entities.UsersCollection extends Entities.Collection
    model: Entities.User,
    url: Routes.users_path()

  API =

    setCurrentUser: (user) ->
      new Entities.User user

    getUserEntities: (cb) ->
      users = new Entities.UsersCollection
      users.fetch
        success: ->
          cb users

  App.reqres.setHandler 'set:current:user', (user) ->
    API.setCurrentUser user

  App.reqres.setHandler 'user:entities', (cb) ->
    API.getUserEntities cb
