import React from 'react'
import { connect } from 'react-redux'

function ImgComponent(props){
    return(<div>
        <button onClick={() => props.handleChange()}>Change Image</button>
        <br/>
        <img src={props.img} />
    </div>)
}

const mapStateToProps = ( state ) => {
    return {
        img: state.ImgReducer.img
    }
}

const mapDispatchToProps = (dispatch) => {
    return {
        handleChange: (() => dispatch({type: "changeImage"}))
    }
}

export default connect(mapStateToProps, mapDispatchToProps)(ImgComponent)