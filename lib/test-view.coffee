{View} = require 'atom'

module.exports =
class TestView extends View
  @content: ->
    @div class: 'test overlay from-top', =>
      @div "The Test package is Alive! It's ALIVE!", class: "message"

  initialize: (serializeState) ->
    atom.workspaceView.command "test:toggle", => @toggle()

  # Returns an object that can be retrieved when package is activated
  serialize: ->

  # Tear down any state and detach
  destroy: ->
    @detach()

  toggle: ->
    console.log "TestView was toggled!"
    if @hasParent()
      @detach()
    else
      atom.workspaceView.append(this)
