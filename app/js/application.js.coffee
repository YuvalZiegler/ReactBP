# @cjsx React.DOM

# Application Entry Point
#= require_tree constants
#= require_tree utils
#= require_tree actions
#= require_tree dispatcher
#= require_tree store
#= require_tree components

Site = React.createClass
  render: ->
    <div className="site-wrapper">
     	<div className="content-wrapper">
        <Header/>
     	  <Main/>
        <div className="push"/>
      </div>
     	<Footer/>
    </div>

React.renderComponent <Site/> , document.getElementById('react')