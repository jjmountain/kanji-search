import React, { Component } from 'react';
import './Kanji-card.css';

class KanjiCard extends Component {
  static defaultProps = {
    keyword: "Undefined"
  }
  render() {
    return(
      <div className="Kanji-card">
        <h5>{this.props.jlpt}級</h5>
        <div className="Kanji-character">
          {this.props.character}
        </div>
        <h5>{this.props.keyword === "" ? "No Keyword" : this.props.keyword}</h5>
      </div>
    )
  }
}

export default KanjiCard;