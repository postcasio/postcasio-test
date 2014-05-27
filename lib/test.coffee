TestView = require './test-view'

module.exports =
  testView: null

  activate: (state) ->
    @testView = new TestView(state.testViewState)

  deactivate: ->
    @testView.destroy()

  serialize: ->
    testViewState: @testView.serialize()
