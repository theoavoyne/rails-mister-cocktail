// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, or any plugin's
// vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require rails-ujs
//= require turbolinks
//= require_tree .
 function find_addose() {
  var adddose = document.getElementById("adddose");
  var new_dose = document.getElementById("new_dose");
  console.log(adddose);
  console.log(new_dose);

  adddose.addEventListener(("click"), (event) => {
    event.currentTarget.style.display = "none";
    new_dose.style.display = "flex";
  })
}

find_addose()

