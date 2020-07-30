console.log("Hello from the JavaScript console!");

// Your AJAX request here
$.ajax({
    type: 'GET',
    url: "http://api.openweathermap.org/data/2.5/weather?q=new%20york,US&appid=4b002073f68ef429f155fc411c58a0d7",
    success(data) {
      console.log("We have your weather!")
      console.log(data);
    },
    error() {
      console.error("An error occurred.");
    },
 });
// Add another console log here, outside your AJAX request
