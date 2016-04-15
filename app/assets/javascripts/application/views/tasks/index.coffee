class App.Views.Tasks.Index extends App.View
  #render: ->
  #  @$el.empty()
  #  for model in @collection.models
  #    @$el.append(model.get('notes'))
  template: HandlebarsTemplates['tasks/index']

  parameters: ->
    @collection.map (model) ->
      notes: model.get('notes')

  render: ->
    @$el.html(@template(@parameters()))
