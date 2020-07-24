console.log("Rails is cool 🚂")


document.addEventListener("DOMContentLoaded", function(e){
  const movieList = document.getElementById('movie-list')
  const baseUrl = "http://localhost:3000/api/v1/movies"

  const renderMovies = movieArray => {
    movieArray.forEach(movie => {
      movie.render(movieList)
      // renderMovie(movieObj)
    })
  }
  
  const clickHandler = () => {
    document.addEventListener("click", function(e){
      if(e.target.matches('.up-vote')){

        const clickedButton = e.target
        const parentLi = clickedButton.parentElement
        const id = parentLi.dataset.id
        const scoreSpan = parentLi.querySelector('span')
        const newScore = parseInt(scoreSpan.textContent, 10) + 1
        scoreSpan.textContent = newScore


        fetch(`${baseUrl}/${id}`, {
          method: "PATCH",
          headers: {
            "content-type": "application/json",
            "accept": "application/json"
          },
          body: JSON.stringify({ score: newScore })
        })

      } else if(e.target.dataset.purpose === "delete"){
        
        const deleteButton = e.target
        const id = deleteButton.parentElement.dataset.id

        fetch(`${baseUrl}/${id}`,{
          method: "DELETE"
        })
        .then(response => response.json())
        .then(data => {
          deleteButton.parentElement.remove()
        })

      } else if(e.target.matches('#show-form')){
        const button = e.target
        button.textContent = "Hide Form"
        button.id = 'hide-form'

        const newMovieForm = document.createElement('form')

        newMovieForm.innerHTML = `
          <label>Title: </label>
          <input type="text" name="title">
          <br>
          <label>Year: </label>
          <input type="text" name="year">
          <br>
          <label>Genre: </label>
          <input type="text" name="genre">
          <br>
          <label>Image URL: </label>
          <input type="text" name="imageUrl">
          <br>
          <input type="submit" value="Add Movie">
        `

        button.insertAdjacentElement("afterend", newMovieForm)
      } else if(e.target.matches("#hide-form")){
        const button = e.target
        button.textContent = "Show Form"
        button.id = 'show-form'

        const newMovieForm = document.querySelector('form')
        newMovieForm.remove()
      }
    })
  }

  const submitHandler = () => {
    document.addEventListener("submit", e => {
      e.preventDefault()
      const newMovieForm = e.target

      const title = newMovieForm.title.value
      const year = newMovieForm.year.value
      const genre = newMovieForm.genre.value
      const imageUrl = newMovieForm.imageUrl.value
      const score = 0

      const movieObj = { title, year, genre, imageUrl, score }

      newMovieForm.reset()

      fetch(baseUrl, {
        method: "POST",
        headers: {
          "content-type": "application/json",
          "accept": "application/json"
        },
        body: JSON.stringify(movieObj)
      })
      .then(response => response.json())
      .then(newMoveiObj => {
        renderMovie(newMoveiObj)
      })
    })
  }

  const getMovies = () => {
    fetch(baseUrl)
    .then(response => response.json())
    .then(moviesCollection => {

      const movies = Movie.createMovies(moviesCollection)
      Movie.renderMovies(movies, movieList)
      // renderMovies(movies)
    })
  }
  
  submitHandler()
  clickHandler() 
  getMovies()
}) 

