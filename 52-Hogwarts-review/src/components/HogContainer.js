import React from 'react'
import HogTile from './HogTile'

function HogContainer(props){
    return(<div>
        {props.hogs.map(hog => <HogTile hog={hog} displayHogDetails={props.displayHogDetails} />)}
    </div>)
}

export default HogContainer