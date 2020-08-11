import React, { Fragment } from 'react'
import MoreButton from '../components/MoreButton'
import Sushi from '../components/Sushi'

const SushiContainer = ( props ) => {

  const renderSushi = props.sushi.map( sushi =>
      <Sushi
        key = { sushi.id }
        sushi = { sushi }
        eatSushi = { props.eatSushi }
        eatenSushi = { props.eatenSushi }
      />
    )

  return (
    <Fragment>
      <div className="belt">
        {
          /* 
             Render Sushi components here!
          */
         renderSushi
        }
        <MoreButton 
          moreSushi = { props.moreSushi }
        />
      </div>
    </Fragment>
  )
}

export default SushiContainer