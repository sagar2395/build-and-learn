import { useEffect, useState } from 'react';
import './App.css';

function App() {

  const [message, setMessage] = useState('')

  const fetchMessage = async () => {
    try {
      const response = await fetch('http://10.108.246.146:8080/helloworld');
      const data = await response.json();
      setMessage(data.message);
    }catch (error) {
      console.error('Error fetching the message', error);
    }
  };

  useEffect(() => {
    fetchMessage()
  }, [])
  
  return (
    <div className="App">
      <header className="App-header">
      {message || 'Loading...'}
      </header>
    </div>
  );
}

export default App;
