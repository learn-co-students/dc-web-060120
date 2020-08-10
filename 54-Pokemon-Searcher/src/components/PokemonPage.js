import React from 'react'
import PokemonCollection from './PokemonCollection'
import PokemonForm from './PokemonForm'
import Search from './Search'
import { Container } from 'semantic-ui-react'

class PokemonPage extends React.Component {
  constructor(){
    super()
    this.state = {
      pokemons: [],
      displayPokemons: [],
      // searchTerm: ""
    }
    // console.log("Constructor")
  }

  componentDidMount(){
    fetch("http://localhost:3000/pokemon")
    .then(res => res.json())
    .then(pokemons => {
      this.setState({
        pokemons, //pokemons: pokemons
        displayPokemons: pokemons
      })
    })
    // console.log("CDM")

  }

  changeSearch = (term) => {
    // debugger
    // this.setState({
    //   searchTerm: term
    // })

    let filterPokemons = this.state.pokemons.filter(pokemon => pokemon.name.toLowerCase().includes(term.toLowerCase()))

    this.setState({
      displayPokemons: filterPokemons
    })
  }

  addPokemon = (pokemonData) => {
    // debugger

    fetch("http://localhost:3000/pokemon", {
      method: "POST",
      headers: {
        "Content-Type": "application/json"
      },
      body: JSON.stringify({
        name: pokemonData.name,
        hp: pokemonData.hp,
        sprites: {
          front: pokemonData.frontUrl,
          back: pokemonData.backUrl,
        }
      })
    })
    
    .then(res => res.json())
    
    .then(newPokemon => {
      this.setState({
        pokemons: [...this.state.pokemons, newPokemon],
        displayPokemons: [...this.state.displayPokemons, newPokemon]
      })
    })
  }

  render() {
    // console.log("Render")

    return (
      <Container>
        <h1>Pokemon Searcher</h1>
        <br />
        <PokemonForm addPokemon={this.addPokemon} />
        <br />
        <Search changeSearch={this.changeSearch} />
        <br />
        <PokemonCollection pokemons={this.state.displayPokemons} />
      </Container>
    )
  }
}

export default PokemonPage
