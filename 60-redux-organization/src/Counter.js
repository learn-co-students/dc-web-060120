import React, {Component} from 'react'
import { connect } from "react-redux"

function Counter(props){

    return (
      <div className="Counter">
        {/* <h1>{this.props.count}</h1> */}
        <h1>
            {props.count}
        </h1>
        {/* <button onClick={() =>  props.dispatch({type: "dec", payload: 1})}> - </button>  
        //will not work if you pass 2nd arg to connect */ }
        <button onClick={() =>  props.decrement(1)}> - </button>
        <button onClick={() => props.increment(1)}> + </button>
        <button onClick={() =>  props.decrement(3)}> - 3 </button>
        <button onClick={() => props.increment(5)}> + 5 </button>
      </div>
    );


}

const mapStateToProps = (state) => {
    console.log(state)
    return{
       count: state.reducer.count
    }
}

const mapDispatchToProps = (dispatch) => {
    // console.log(idk)
    return {
        increment: ((amount) => dispatch({type: "inc", payload: amount})),
        decrement: ((amount) => dispatch({type: "dec", payload: amount}))
    }
}


export default connect(mapStateToProps,mapDispatchToProps)(Counter)