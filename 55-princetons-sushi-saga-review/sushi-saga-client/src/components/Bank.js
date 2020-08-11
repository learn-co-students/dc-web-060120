import React from 'react'

const Bank = ( props ) => {

    return (
        <div>
            <form onSubmit = { props.withdrawMoney }>
                <label>
                    Enter withdrawal amount here:
                </label>
                <br></br>
                <input type='number' name='withdrawal' />
                <input type='submit'></input>
            </form>
        </div>
    )
}

export default Bank