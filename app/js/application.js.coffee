# @cjsx React.DOM

# Application Entry Point
#= require_tree constants
#= require_tree utils
#= require_tree actions
#= require_tree dispatcher
#= require_tree store
#= require_tree components

Fretboard = React.createClass
  render: ->
    <div className="fretboard">
     	<Header/>
     	<Main/>
     	<Footer/>
    </div>

React.renderComponent <Fretboard/> , document.getElementById('fretboard')