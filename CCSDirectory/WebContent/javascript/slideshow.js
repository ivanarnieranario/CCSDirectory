
var slideIndex = 1;
var triggerSlide = false;

autoSlide();


function clickSlide(n){
	showSlide(slideIndex += n);
}

function currentSlide(n){
	showSlide(slideIndex = n);
}

function autoSlide(){
	setTimeout(autoSlide,6000);
	if(triggerSlide == false){
      showSlide(slideIndex);
      triggerSlide = true; 
	}
	else
	  showSlide(++slideIndex);
}


function showSlide(n){
	var x;
    var slides = document.getElementsByClassName("slides");
    var dots = document.getElementsByClassName("dot");

	if(n > slides.length)
		slideIndex = 1;

	if(n < 1)
		slideIndex = slides.length;
	
	//initialize
	for(x=0; x<slides.length; x++)
		slides[x].style.display = "none";
	
	for(x=0; x<dots.length; x++)
		dots[x].className = dots[x].className.replace(" active","");
	
	var index = slideIndex - 1;
	slides[index].style.display = "block";
	dots[index].className += " active";
	
	
}







