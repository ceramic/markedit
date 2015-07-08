/* JavaScript */

function postMarkdown() {
  // When the Markdown changes, POST it to the server and get the resulting HTML
  var input = document.getElementById("input");
  var req = new XMLHttpRequest();
  req.onreadystatechange = function() {
    var output = document.getElementById("output");
    console.log(req.responseText);
    output.innerHTML = req.responseText;
  };
  console.log("Sending");
  console.log(input.value);
  req.open("POST", "/to-html", true);
  req.setRequestHeader("Content-Type", "application/x-www-form-urlencoded");
  req.send("markdown=" + encodeURIComponent(input.value));
}

setInterval(postMarkdown, 2000);
postMarkdown();
