import ImgReducer from "./imageReducer"
import {combineReducers} from 'redux'

let initialState = { count: 0, test: "test"}

let reducer = (state = initialState, action) => {

    console.log("current State:", state)
    console.log("action:", action)
    console.log("===============================")

    //Switch statement
    switch(action.type){
        case "inc":
            return {
                ...state, 
                count: state.count + action.payload
            }
        case "dec":
            return {
                ...state,
                count: state.count - action.payload
            }
        default:
            return{
                ...state
            }
    }

    // return state

}

const rootReducer = combineReducers({ImgReducer, reducer})

export default rootReducer
