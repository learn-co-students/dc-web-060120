import React, { Component } from "react";
import "../App.css";
import Nav from "./Nav";
import hogs from "../porkers_data";
import FilterBar from "./FilterBar";
import HogContainer from "./HogContainer";

class App extends Component {

  constructor(){
    super()
    this.state = { 
      hogs: hogs.map(hog => {return {...hog, click: false}}),
      filter: "all"
    }
  }


  displayHogDetails = (clickedHog) => {

    this.setState({
      hogs: this.state.hogs.map(hog => { 
        if(hog === clickedHog){
          return {...hog, click: !hog.click}
        }
        return hog
      })
    })
  }

  filterHogs = (e) => {
    this.setState({
      filter: e.target.value
    })
  }

  sortHogs = (e) => {

    let key = e.target.value
    let sortedArray = this.state.hogs.sort((a,b) => a[key] < b[key] ? -1 : 1)

    this.setState({
      hogs: sortedArray
    })
  }

  render() {
    return (
      
        <React.Fragment>
          <div className="App">
            <Nav />

            <FilterBar
            filterHogs={this.filterHogs}
            sortHogs={this.sortHogs} />

            <HogContainer 
            hogs={this.state.hogs} 
            filter={this.state.filter}
            displayHogDetails={this.displayHogDetails} />
            
          </div>
        </React.Fragment>

    
    );
  }
}

export default App;
