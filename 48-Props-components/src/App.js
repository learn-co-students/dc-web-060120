import React from 'react';
import { NavBar } from './NavBar' 
import 'semantic-ui-css/semantic.min.css'
// import Nav from './NavBar' when export default component 
import paintingArray from  './paintings'
import PaintingList from './paintingList';


function App() {
  console.log(paintingArray)

  return (
    <div>
        <NavBar color="blue" />
        {/* <h4>Monday!!!</h4> */}
        <PaintingList paintings={paintingArray} />
    </div>
  );
}

export default App;
