import React from 'react'

function PaintingForm(props){
    return(
        <div>
            <form onSubmit={(e) => props.addPainting(e)}>
                <input type="text" placeholder="Title"/>
                <input type="text" placeholder="Img URL"/>

                <input type="submit"/>
            </form>
        </div>
    )
}

export default PaintingForm