import React, {useState} from 'react';
import {useHistory} from 'react-router-dom';

function Counter(){

    const [ count, setCount] = useState(0) // create state

    const [day, changeDay] = useState("Tuesday!!!")

    // const count = useState(0)[0]
    // const setCount = useState(0)[1]

    // useState(0) => [state, functionToChangeTheState]

    function handleChange(){
        setCount( count + 1 )
        // changeDay("New Day!!!")
    }

    const history = useHistory()

    function goToHome(){
        history.push({
            pathname: "/home",
            state: {text: "I am coming from Conuter Component!!"}
        })
        // history.push("/home")
    }
 
    return(<div>
        <h5>Count: {count} </h5>
        <button onClick={() => handleChange()}>Increment Count</button>

        <button onClick={() => goToHome()}>Go to Home</button>

    </div>)

}

export default Counter