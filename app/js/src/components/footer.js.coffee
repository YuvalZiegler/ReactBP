Footer = React.createClass

	render: ->
    <footer className="site-footer">
      <div className="footer-logo">
        <img src="https://raw.githubusercontent.com/thoughtbot/refills/master/source/images/placeholder_logo_1.png" alt="Logo image"/>
      </div>
        <ul>
          <li><a href="javascript:void(0)">One</a></li>
          <li><a href="javascript:void(0)">Two</a></li>
          <li><a href="javascript:void(0)">Three</a></li>
        </ul>

        <div className="footer-secondary-links">
          <ul>
            <li><a href="javascript:void(0)">Terms and Conditions</a></li>
            <li><a href="javascript:void(0)">Privacy Policy</a></li>
          </ul>

          <ul className="footer-social">
            <li><a href="javascript:void(0)">
              <img src="https://raw.githubusercontent.com/thoughtbot/refills/master/source/images/facebook-logo-circle.png" alt="Facebook"/>
              </a></li>
            <li><a href="javascript:void(0)">
              <img src="https://raw.githubusercontent.com/thoughtbot/refills/master/source/images/twitter-logo-circle.png" alt="Twitter"/>
            </a></li>

          </ul>
        </div>
    </footer>


