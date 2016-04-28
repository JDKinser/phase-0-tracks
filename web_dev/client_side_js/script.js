//object_manipulated.addEventListener("click", the_function without '()' at the end);

function changeColor() {
  var header = document.getElementById("header");
  header.style.backgroundColor = "red";
  header.style.border = "2px solid black";
  header.children[0].style.color = "yellow"
}

changeColor();
