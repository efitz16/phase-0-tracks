console.log("It's running!");

var photo = document.getElementById("orange_flowers");

photo.style.border = "14px solid orange";

var purpleFlowerPhoto = document.getElementById("purp_flowers");

function makePicLrgr(event) {
	event.target.height="750";
	event.target.width="960"; // because of limits in css, photo can't be wider than 960 px
}

photo.addEventListener("click", makePicLrgr);
purpleFlowerPhoto.addEventListener("click", makePicLrgr);