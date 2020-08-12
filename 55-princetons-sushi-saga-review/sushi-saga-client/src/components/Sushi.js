import React, { Fragment } from 'react'

const Sushi = (props) => {

  let { sushi } = props

  return (
    <div className="sushi">
      <div className="plate" 
           onClick={ ( ) => props.eatSushi( sushi ) }>
        { 
          /* Tell me if this sushi has been eaten! */ 
          props.eatenSushi.includes( sushi.id ) ?
            null
          :
            <img src={ sushi.img_url } width="100%" />
        }
      </div>
      <h4 className="sushi-details">
        { sushi.name } - ${ sushi.price }
      </h4>
    </div>
  )
}

export default Sushi