console.log("I am from JS file!!!")

const Text = () => {
    return <h4>Monday!!</h4>
}

const NavBar = (props) => {
    console.log(props)
    return(
        <div className={`ui inverted ${props.color} menu`}>
            <a className='item'>
            <h2 className="ui header">
                <i className={`${props.icon} icon`}></i>
                <div className="content">
                bugger
                </div>
            </h2>
            </a>
        </div> 
    )
}

const App = () => {
    return(
        <div>
            <NavBar color="blue" icon="paw" />
            <Text />
        </div>
    )
}


ReactDOM.render(
<App /> ,
document.getElementById("container"))