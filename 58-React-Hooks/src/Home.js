import React from 'react';


export default class Home extends React.Component {

    constructor(){
        super()
        this.state = {
            likes: 0
        }
    }

    addLike = () => {
        this.setState({
            likes: this.state.likes + 1
        })
    }

   
    render(){
        return(<div>
            <h5>Likes: {this.state.likes} </h5>
            <button onClick={() => this.addLike()}>Add Like</button>
        </div>)
    }
}