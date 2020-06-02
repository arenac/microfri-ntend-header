import React from 'react';
import ReactDOM from 'react-dom';
import App from './App';
import './global/index.css';


class Header extends HTMLElement {
  constructor() {
    super();
    this.update();
  }

  update() {
    ReactDOM.render(<App />, this.attachShadow({ mode: 'open'}));
  }
}

window.customElements.define('microfrontend-header', Header);
