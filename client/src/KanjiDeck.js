import React, { Component } from 'react';
import KanjiCard from './KanjiCard';
import './Kanji-deck.css';

class KanjiDeck extends Component {
  render() {
    return(
      <div className="Kanji-deck">
        {this.props.kanji.map(kanji => (
          <KanjiCard 
          key={kanji.id} 
          character={kanji.character} 
          keyword={kanji.keyword} 
          jlpt={kanji.jlpt}
          /> 
        ))}
      </div>
    )
  }
}

export default KanjiDeck;

// renderKanjis() {
//   return this.state.kanjis.map(kanji => <h1>{kanji.character}</h1>);
// }