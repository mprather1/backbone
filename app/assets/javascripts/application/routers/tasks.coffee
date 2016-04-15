class App.Routers.Tasks extends App.Router

  routes:
    "tasks" : "index"

  index: ->
    collection = new App.Collections.Tasks
    view = new App.Views.Tasks.Index(collection: collection)
    $('body').html(view.el)
    collection.fetch()
    view.render()
