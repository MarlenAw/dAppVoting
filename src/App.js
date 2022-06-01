import React, { useEffect, useState } from "react";
import "./App.css";
import { ConnectButton } from "web3uikit";
import logo from "./images/Moralis.png"

const App = () => {

  return (
    <>
      <div className="header">
        <div className="logo">
          <img src={logo} alt="logo" height="50px" />
          Sentiment
        </div>
        <ConnectButton />
      </div>

      <div className="instructions">
        Where do you think these tokens are going? Up or Down?
      </div>
    </>
  );
};

export default App;
