import React from 'react'

import Filters from './Filters'
import PetBrowser from './PetBrowser'

class App extends React.Component {
  constructor() {
    super()

    this.state = {
      pets: [],
      filters: {
        type: 'all'
      }
    }
  }

  changeFilter = (type) => {
    // debugger
    this.setState({
      // ...this.state,
      filters: {
        type // type: type
      }
    })
  }

  findPets = () => {
    // debugger
    let url
    if(this.state.filters.type === "all"){
      url = "/api/pets"
    }
    else{
      url = `/api/pets?type=${this.state.filters.type}`
    }

    fetch(url)
    .then(res => res.json())
    .then(pets => {
      this.setState({
        // pets: pets
        pets
      })
    })
  }

  petAdopt = (adoptPet) => {
    // debugger
    // array => multiple objects => one object => key => value

    let newPetArray = this.state.pets.map(pet => {
      if(pet === adoptPet){
        return {...pet, isAdopted: true}
      }
      return pet
    })

    // console.log(newPetArray)
    this.setState({
      pets: newPetArray
    })
  }

  render() {
    return (
      <div className="ui container">
        <header>
          <h1 className="ui dividing header">React Animal Shelter</h1>
        </header>
        <div className="ui container">
          <div className="ui grid">
            <div className="four wide column">
              <Filters 
              changeFilter={this.changeFilter}
              findPets={this.findPets} />
            </div>
            <div className="twelve wide column">
              <PetBrowser 
              pets={this.state.pets}
              petAdopt={this.petAdopt} />
            </div>
          </div>
        </div>
      </div>
    )
  }
}

export default App
