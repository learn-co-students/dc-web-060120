import React from 'react';
import Stock from '../components/Stock'

const StockContainer = ( props ) => {

  function renderStocks () {
    return props.stocks.map( stock =>
      <Stock
        stock = { stock }
        key = { stock.id }
        moveStock = { props.addStockToPortfolio }
      />
    )
  }

  return (
    <div>
      <h2>Stocks</h2>
      {
        //render the list of stocks here
        renderStocks()
      }
    </div>
  );
}

export default StockContainer;
