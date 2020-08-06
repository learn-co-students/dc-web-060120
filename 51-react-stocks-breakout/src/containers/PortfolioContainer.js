import React from 'react';
import Stock from '../components/Stock'

const PortfolioContainer = ( props ) => {

  let { stocks, myPortfolio, removeStockFromPortfolio } = props

  function renderStocks () {
    let myStocks = stocks.filter( stock => myPortfolio.includes(stock.id) )
    return myStocks.map( stock =>
      <Stock
        key = { stock.id }
        stock = { stock }
        moveStock = { removeStockFromPortfolio }
      />
    )
  }

  return (
    <div>
      <h2>My Portfolio</h2>
        {
          //render your portfolio stocks here
          renderStocks()
        }
    </div>
  );
}

export default PortfolioContainer;
