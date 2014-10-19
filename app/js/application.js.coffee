# Library
#= require lib/Flux

# App
#= require_tree src/constants
#= require_tree src/utils
#= require_tree src/actions
#= require_tree src/dispatcher
#= require_tree src/store
#= require_tree src/components

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

React.render <Site/> , document.getElementById('react')