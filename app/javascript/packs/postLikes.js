import React from "react";
import ReactDOM from "react-dom";

document.getElementById("1").addEventListener("click", () => {
  console.log("hello!");
  console.log(this.id);
  console.log(document.getElementById("1").getAttribute("data"));
  alert("hello!");
});
// document.
//   const clickButton = document.getElementById("1");
//   clickButton.addEventListener('click', (event) => {
//       hello('JavaScript')
//   });
// });

class Posts extends React.Component {
  constructor(props) {
    super(props);
    this.posts;
  }

  render() {
    return <h1>hello</h1>;
  }
}

document.addEventListener("DOMContentLoaded", () => {
  const node = document.getElementById("posts_data");
  const data = JSON.parse(node.getAttribute("data"));
  console.log(data);
  ReactDOM.render(
    <Posts posts={data} />,
    document.body.appendChild(document.createElement("div"))
  );
});
