import React from 'react'
import {Link} from 'react-router-dom'

// function Painting(props){
//     return(<div>
//         <h4>Title: {props.painting.title} </h4>
//         <img src={props.painting.image} />
//     </div>)
// }

class Painting extends React.Component{

    //TASK: have a state for votes for the painting and update it when div with class "ui red button" clicked

    constructor(props){
        super(props)
        this.state={
            votes: props.painting.votes
        }
    }

    addVote = () => {
        this.setState({
            votes: ++this.state.votes
        })
    } 

    render(){
        // console.log(this) => class
        return(<div>
            <Link to="/paintings/single">Show Single painting</Link>

            <h4>Title: {this.props.painting.title} </h4>
            <img src={this.props.painting.image} />
            <br />
            <div class="ui labeled button" tabindex="0">
                <div class="ui red button" onClick={this.addVote}>
                    <i class="heart icon"></i> Vote
                </div>
                <a class="ui basic red left pointing label">
                    {this.state.votes}
                </a>
            </div>
            <br/>
        </div>)
    }

}

export default Painting