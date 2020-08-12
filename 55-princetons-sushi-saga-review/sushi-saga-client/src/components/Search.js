import React from 'react'

const Search = ( props ) => {

    return (
        <div>
            <input
                type='text'
                name='query'
                placeholder='Enter Search Here...'
                onChange = { props.sushiSearch }
            />
        </div>
    )
}

export default Search