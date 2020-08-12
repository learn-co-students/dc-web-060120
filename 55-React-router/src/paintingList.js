import React from 'react'
import Painting from './painting'

function PaintingList(props){
    return(<div>
        {props.paintings.map(painting => <Painting painting={painting} key={painting.id} />)}
    </div>)
}

export default PaintingList