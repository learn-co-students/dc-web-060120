import React, { Component } from 'react';
import SushiContainer from './containers/SushiContainer';
import Table from './containers/Table';
import Bank from './components/Bank'
import Search from './components/Search'

// Endpoint!
const API = "http://localhost:3000/sushis"

class App extends Component {

  state = {
    sushi: [],
    index: 0,
    eatenSushi: [],
    money: 200,
    query: '',
  }

  componentDidMount () {
    fetch( API )
    .then( res => res.json() )
    .then( sushiData => this.setState({
      sushi: sushiData
      })
    )
  }

  display4Sushi = ( sushi ) => {
    let index = this.state.index
    return sushi.slice( index, index + 4 )
  }

  moreSushi = ( ) => {
    let index = this.state.index
    index += 4
    if ( index >= this.filterSushi().length )
      index = 0

    this.setState({ index: index })
  }

  eatSushi = ( sushi ) => {
    let money = this.state.money
    if ( money >= sushi.price ) {
      let eaten = [...this.state.eatenSushi]
      if ( !eaten.includes( sushi.id ) ) {
        eaten.push( sushi.id )
        this.setState({
          eatenSushi: eaten,
          money: money - sushi.price
        })
      }
    }
    else
      alert(`You don't have enough money to eat that!`)
  }

  withdrawMoney = ( e ) => {
    e.preventDefault()
    let amount = parseInt(e.target.withdrawal.value, 10) + this.state.money
    this.setState({
      money: amount
    })
  }

  sushiSearch = ( event ) => {
    this.setState({
      query: event.target.value
    })
  }

  filterSushi = ( ) => {
    let filteredSushi = [...this.state.sushi]
    let query = this.state.query
    let index = this.state.index
    if ( query !== '' ) 
      filteredSushi = filteredSushi.filter( sushi => sushi.name.toLowerCase().includes(query.toLowerCase()) || sushi.price <= parseInt( query, 10 ) )

      return filteredSushi
  }

  render() {
    return (
      <div className="app">
        <Bank
          withdrawMoney = { this.withdrawMoney }
        />
        
        <Search
          sushiSearch = { this.sushiSearch }
        />
        
        <SushiContainer
          sushi = { this.display4Sushi(this.filterSushi()) }
          moreSushi = { this.moreSushi }
          eatSushi = { this.eatSushi }
          eatenSushi = { this.state.eatenSushi }
        />
        
        <Table
          eatenSushi = { this.state.eatenSushi }
          money = { this.state.money }
        />
      </div>
    );
  }
}

export default App;