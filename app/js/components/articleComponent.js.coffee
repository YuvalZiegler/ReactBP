# @cjsx React.DOM

ArticleComponent = React.createClass

	render: ->
		<article className="type-system-sans">
      <p className="type">Article Type</p>
      <h1>Article Heading</h1>
      <h2>These override some of the styles specified in the 
        <code>_variables.scss</code> and <code>_typography.scss</code> partials in 
        <a href="//bitters.bourbon.io">Bitters</a>. 
        You can replace the typography variables and the header font specifications in Bitters with these styles. Then you won&rsquo;t need the wrapping className <code>.type-system-name</code>.
     </h2>
      <p className="date">30 Mar 2014</p>
      <p>
        <span>Lorem ipsum dolor sit amet</span>, 
        consectetur adipisicing elit. Consequatur a, ullam, voluptatum incidunt neque doloremque vel inventore distinctio laudantium harum illo quam nulla dolor alias iure impedit! Accusamus! Lorem ipsum dolor sit amet, consectetur adipisicing elit. Accusamus! Lorem ipsum dolor sit amet, consectetur adipisicing elit. Consequatur, a, ullam, voluptatum incidunt neque porro numquam doloremque vel inventore distinctio laudantium harum illo quam nulla dolor alias iure impedit.
        <a href="" className="read-more">Read More</a>
      </p>
      <h3>Subheading lorem</h3>
      <p>
        <span>Consequatur ullam, voluptatum</span> 
        incidunt neque porro numquam doloremque vel inventore distinctio laudantium harum illo quam nulla dolor alias iure impedit. Accusamus. Consequatur, a, ullam, voluptatum incidunt neque porro numquam doloremque vel inventore distinctio laudantium harum illo quam nulla dolor alias iure impedit! Accusamus.
        </p>
      <hr/>
      <p className="author">Author Name</p>
    </article>
    

