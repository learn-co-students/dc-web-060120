import React from 'react'

// function Painting(props){
//     return(<div>
//         <h4>Title: {props.painting.title} </h4>
//         <img src={props.painting.image} />
//     </div>)
// }

class Painting extends React.Component{

    //TASK: have a state for votes for the painting and update it when div with class "ui red button" clicked

    render(){
        // console.log(this) => class
        return(<div>
            <h4>Title: {this.props.painting.title} </h4>
            <img src={this.props.painting.image} />
            <br />
            <div class="ui labeled button" tabindex="0">
                <div class="ui red button">
                    <i class="heart icon"></i> Vote
                </div>
                <a class="ui basic red left pointing label">
                    {this.props.painting.votes}
                </a>
            </div>
            <br/>
        </div>)
    }

}

export default Painting