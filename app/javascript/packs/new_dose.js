document.addEventListener(("DOMContentLoaded"), () =>{
  var adddose = document.getElementById("adddose");
  var new_dose = document.getElementById("new_dose");
  console.log(adddose);
  console.log(new_dose);

  adddose.addEventListener(("click"), (event) => {
    event.currentTarget.style.display = "none";
    new_dose.style.display = "flex";
  })
})
