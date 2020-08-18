import React, {useState, useEffect} from 'react';

export default function Data(){

    const [dogImage, setImage] = useState("")

    //componentDidMount
    useEffect(() => {
        fetch("https://dog.ceo/api/breeds/image/random")
        .then(res => res.json())
        .then(data => setImage(data.message))
    }, [])


    return(<div>
        {<img src={dogImage} />}
    </div>)
}