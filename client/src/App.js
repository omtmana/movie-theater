import {useState, useEffect} from 'react'
import './App.css';

function App() {
  const[movies, setMovies] = useState([])

  useEffect(() => {
    const getMovies = async () => {
      let req = await fetch('http://localhost:3000/theaters/')
      let res = await req.json()
      console.log('response', res)
    }
    getMovies()
  } , []) //empty array at the end for dependencies

  return (
    <div className="App">
      
    </div>
  );
}

export default App;
