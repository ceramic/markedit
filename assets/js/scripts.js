/* JavaScript */

function textareaHasInput(node) {
  return (node.value != null && node.value != "");
};

var last_text = null;

function changed(text) {
  return !(last_text != null && text == last_text);
}

function postMarkdown() {
  // When the Markdown changes, POST it to the server and get the resulting HTML
  var input = document.getElementById("input");
  if(textareaHasInput(input) && changed(input.value)) {
    console.log("Sending input");
    last_text = input.value;
    var req = new XMLHttpRequest();
    req.onreadystatechange = function() {
      var output = document.getElementById("output");
      const new_html = req.responseText;
      if(output.innerHTML != new_html) {
        output.innerHTML = new_html;
      }
    };
    req.open("POST", "/to-html", true);
    req.setRequestHeader("Content-Type", "application/x-www-form-urlencoded");
    req.send("markdown=" + encodeURIComponent(input.value));
  }
};

document.addEventListener("DOMContentLoaded", function(event) {
  setInterval(postMarkdown, 500);
  postMarkdown();
});
