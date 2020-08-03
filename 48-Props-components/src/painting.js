import React from 'react'

// function Painting(props){
//     return(<div>
//         <h4>Title: {props.painting.title} </h4>
//         <img src={props.painting.image} />
//     </div>)
// }

class Painting extends React.Component{

    render(){
        // console.log(this) => class
        return(<div>
            <h4>Title: {this.props.painting.title} </h4>
            <img src={this.props.painting.image} />
        </div>)
    }

}

export default Painting