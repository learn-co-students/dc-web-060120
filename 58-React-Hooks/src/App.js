import React from 'react';
import logo from './logo.svg';
import './App.css';
import Home from './Home'
import Counter from './Counter';
import Data from './Data';
import {BrowserRouter, Switch, Route} from 'react-router-dom'

function App() {
  return (
    <BrowserRouter>
       <div>
         <Switch>
           <Route path="/home" render={(routeProps) => <Home {...routeProps} />} />
           <Route path="/counter">
              <Counter />
           </Route>
         </Switch>
        <Data />
      </div>
    </BrowserRouter>
 
  );
}

export default App;
