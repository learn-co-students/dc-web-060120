import React from 'react'
import HogTile from './HogTile'

function HogContainer(props){
    return(<div>
        { props.hogs.map(hog => {
            if(props.filter === "greased" && hog.greased){
                return <HogTile hog={hog} displayHogDetails={props.displayHogDetails} />
            } else if(props.filter === "not-greased" && !hog.greased){
                return <HogTile hog={hog} displayHogDetails={props.displayHogDetails} />
            } else if(props.filter === "all"){
                return <HogTile hog={hog} displayHogDetails={props.displayHogDetails} />
            }
        })
        }
    </div>)
}

export default HogContainer