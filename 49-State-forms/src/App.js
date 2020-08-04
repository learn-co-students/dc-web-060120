import React, { Component } from 'react';
import { NavBar } from './NavBar' 
import 'semantic-ui-css/semantic.min.css'
// import Nav from './NavBar' when export default component 
import paintingArray from  './paintings'
import PaintingList from './paintingList';
import PaintingForm from './PaintingForm';


// function App() {
//   console.log(paintingArray)

//   return (
//     <div>
//         <NavBar color="blue" />
//         {/* <h4>Monday!!!</h4> */}
//         <PaintingList paintings={paintingArray} />
//     </div>
//   );
// }

class App extends Component{

  constructor(){ // declare a state
    super()
    this.state = {
      day: "Tuesday!!",
      paintingList: paintingArray,
      displayForm: false
    }
  }

  changeDay = () => {
    // debugger

    //change a state
    this.setState({ // always rerender the component
      day: "Wednesday!!"
    }, () => console.log(this.state.day))

    console.log(this.state.day) 

  }

  addPainting = (e) => {
    // debugger
    e.preventDefault()
    
    let newPaintingObj = { title:  e.target[0].value, image: e.target[1].value, votes: 0}

    this.setState({
      // paintingList: this.state.paintingList.push(newPaintingObj)
      paintingList: [...this.state.paintingList, newPaintingObj],
      displayForm: false

    })

    e.target.reset()

  }

  display = () => {
    this.setState({
      displayForm: !this.state.displayForm
    })
  }

  render(){

    // this.setState({ day: "Friday!!!"}) NEVER do this!!!

    return(
    <div>
        <NavBar color="blue" />

        {/* <h4>{this.state.day}</h4> Displaying a state value */}
        {/* <button onClick={this.changeDay}> Next Day!! </button> */}
        <button onClick = {this.display}>Show/Hide Form</button>

        { this.state.displayForm
        ? <PaintingForm addPainting={this.addPainting} />
        : <PaintingList paintings={this.state.paintingList} />
        }
  
    </div>
    )
  }
}

export default App;
