function initialize() {
  initMap();
  initMap2();
}
function initMap() {
  var bordeaux = {lat: 44.831213, lng: -0.5737014999999701};
  var map = new google.maps.Map(document.getElementById('map'), {
    zoom: 16,
    center: bordeaux
  });
  var marker = new google.maps.Marker({
    position: bordeaux,
    map: map
  });
}
function initMap2() {
  var uluru2 = {lat: 44.8904092, lng: -0.5037608000000091};
  var map2 = new google.maps.Map(document.getElementById('map2'), {
    zoom: 15,
    center: uluru2
  });
  var marker = new google.maps.Marker({
    position: uluru2,
    map: map2
  });
}
