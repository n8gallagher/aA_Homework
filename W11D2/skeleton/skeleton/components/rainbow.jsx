import React from 'react';
import {
  Route,
  Link,
  NavLink
} from 'react-router-dom';

import Red from './red';
import Green from './green';
import Blue from './blue';
import Violet from './violet';
import Orange from './orange';
import Yellow from './yellow';
import Indigo from './indigo';

class Rainbow extends React.Component {
  render() {
    return (
      <div>
        <h1>Rainbow Router!</h1>
        {
          <ul>
          <Link to="/">Rainbow</Link>
          <NavLink exact to="/red">Red</NavLink>
          <NavLink exact to="/red/orange">Red Orange</NavLink>
          <NavLink exact to="/red/yellow">Red Yellow</NavLink>
          <NavLink exact to="/green">Green</NavLink>
          <NavLink exact to="/blue">Blue</NavLink>
          <NavLink exact to="/blue/indigo">Blue Indigo</NavLink>
          <NavLink exact to="/violet">Violet</NavLink>
          </ul>
        }
       
        <div id="rainbow">
          {
            <Route path="/" component={Rainbow} />,
            <Route path="/red" component={Red} />,
            <Route path="/red/orange" component={Orange} />,
            <Route path="/red/yellow" component={Yellow} />,
            <Route path="/green" component={Green} />,
            <Route path="/blue" component={Blue} />,
            <Route path="/blue/indigo" component={Indigo} />,
            <Route path="/violet" component={Violet} />
          }
        </div>
      </div>
    );
  }
};

export default Rainbow;
