let initialState = {
    img: "https://upload.wikimedia.org/wikipedia/en/thumb/3/3b/SpongeBob_SquarePants_character.svg/1200px-SpongeBob_SquarePants_character.svg.png"
}

export default function ImgReducer(state = initialState, action){

    switch(action.type){
        case "changeImage":
            return{
                ...state,
                img: "https://consequenceofsound.net/wp-content/uploads/2020/06/SpongeBob-SquarePants-LGBTQ.jpg?quality=80"
            }
        default:
            return state
    }

}