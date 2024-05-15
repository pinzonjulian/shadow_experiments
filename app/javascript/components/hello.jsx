import * as React from "react";
import * as ReactDOM from "react-dom";

const App = ({ arg }) => {
    return <div>{`Hello, ${arg}!`}</div>;
};
  
  
document.addEventListener("DOMContentLoaded", () => {
    const rootEl = document.getElementById("root");
    ReactDOM.createRoot(rootEl).render(<App arg="Rails 7 with ESBuild" />)
});