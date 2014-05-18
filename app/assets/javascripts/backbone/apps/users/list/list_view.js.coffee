@Demo.module 'UsersApp.List', (List, App, Backbone, Marionette, $, _) ->

  class List.Layout extends App.Views.Layout
    template: JST['users/list/layout']

    regions:
      panelRegion: '#panel-region'
      usersRegion: '#users-region'

  class List.Panel extends App.Views.ItemView
    template: JST['users/list/_panel']

    # collectionEvents:
    #   'reset': 'render'

  class List.User extends App.Views.ItemView
    template: JST['users/list/_user']
    tagName: 'tr'

  class List.Empty extends App.Views.ItemView
    template: JST['users/list/_empty']
    tagName: 'tr'

  class List.Users extends App.Views.CompositeView
    template: JST['users/list/_users']
    itemView: List.User
    itemViewContainer: 'tbody'
    emptyView: List.Empty
