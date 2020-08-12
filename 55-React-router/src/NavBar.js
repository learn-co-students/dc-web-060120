import React from 'react'

// export default function NavBar(){
export function NavBar(props){
// function NavBar(){

    return(
        <div>
            <div className={`ui inverted ${props.color} menu`}>
                    <a className="item">
                        <h2 className="ui header">
                            <i className="paint brush icon" />
                            <div className="content">Painting App</div>
                        </h2>
                    </a>
            </div>
        </div>
    )
}

// export default NavBar