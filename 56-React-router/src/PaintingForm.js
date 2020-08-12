import React from 'react'
import { Link } from 'react-router-dom'

function PaintingForm(props){

    let handleAddPainting = (e) => {
        props.addPainting(e)
        // console.log(props)
        props.history.push("/paintings") //routeProps
    }
    return(
        <div>
            <form onSubmit={(e) => handleAddPainting(e)}>
                <input type="text" placeholder="Title"/>
                <input type="text" placeholder="Img URL"/>

                <input type="submit"/>
            </form>
            <Link to="/paintings">Go to Painting List</Link>
        </div>
    )
}

export default PaintingForm