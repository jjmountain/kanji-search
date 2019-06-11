import React, { Component } from 'react';
import './App.css';
import KanjiDeck from './KanjiDeck';

class App extends Component {
  constructor(props) {
  	super(props);

  	this.state = {
  		kanjis: []
  	}
  }
  componentDidMount() {
    fetch('api/kanjis')
      .then(response => response.json())
      .then(json => this.setState({kanjis: json}))
      .catch(error => console.log(error))
  };

  render() {
  return (
    <div className="App">
          <h1>Let's Play Kanji Cards</h1>
      <KanjiDeck kanji={this.state.kanjis} /> 
    </div>
  );
}
}
export default App;
