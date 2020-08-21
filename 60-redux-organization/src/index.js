import React, { Component } from "react";
import ReactDOM from "react-dom";
import "./index.css";
import App from "./App"

import { createStore } from 'redux'
import { Provider } from 'react-redux'
import rootReducer from './reducers/rootReducer'
// import ImgReducer from "./reducers/imageReducer" 

const store = createStore(rootReducer)

ReactDOM.render(<Provider store={store} >
    <App /> 
</Provider>
 , document.getElementById("root"));

// let initialState = { count: 0, test: "test"}

// let reducer = (state = initialState, action) => {

//     console.log("current State:", state)
//     console.log("action:", action)
//     console.log("===============================")

//     //Switch statement
//     switch(action.type){
//         case "inc":
//             return {
//                 ...state, 
//                 count: state.count + action.payload
//             }
//         case "dec":
//             return {
//                 ...state,
//                 count: state.count - action.payload
//             }
//         default:
//             return{
//                 ...state
//             }
//     }

//     // return state

// }

// const store = createStore(reducer) //reducer as an arg

// console.log(store)
// console.log("GET State:", store.getState())

// store.subscribe(() => {
//     console.log("New State:", store.getState())
//     console.log("===============================")
// })




// class App extends Component {

// //   state = { count: 0 };

// //   increment = () => {
// //     this.setState({
// //       count: this.state.count + 1
// //     })
// //   };

// //   decrement = () => {
// //     this.setState({
// //       count: this.state.count - 1
// //     })
// //   };

//   render() {
//     return (
//       <div className="App">
//         <Header />
//         <Counter />
//         {/* <Counter 
//         count={this.state.count}
//         increment={this.increment}
//         decrement={this.decrement} /> */}
//       </div>
//     );
//   }
// }

// class Header extends Component {

//   render() {
//     return (
//       <header className="App-header">
//         <h1 className="App-title">Welcome to React</h1>
//       </header>
//     );
//   }
// }

// class Counter extends Component {
//     componentDidMount(){
//         store.subscribe(() => {
//             this.setState({}) //rerender the component
//         })
//     }

//     increment = (amount) => {
//         store.dispatch({type: "inc", payload: amount}) //action as an arg
//     }

//     decrement = (amount) => {
//         store.dispatch({type: "dec", payload: amount}) //action as an arg
//     }

//   render() {
//     return (
//       <div className="Counter">
//         {/* <h1>{this.props.count}</h1> */}
//         <h1>
//             {store.getState().count}
//         </h1>
//         <button onClick={() =>  this.decrement(1)}> - </button>
//         <button onClick={() => this.increment(1)}> + </button>
//         <button onClick={() =>  this.decrement(3)}> - 3 </button>
//         <button onClick={() => this.increment(5)}> + 5 </button>
//       </div>
//     );
//   }

// }



