// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.

import Rails from "@rails/ujs"
import Turbolinks from "turbolinks"
import * as ActiveStorage from "@rails/activestorage"
import "channels"

Rails.start()
Turbolinks.start()
ActiveStorage.start()

window.onload = function () {
    const spinner = document.getElementById('loading');
    spinner.classList.add('loaded');
    window.addEventListener('DOMContentLoaded', (event) => {
        console.log('DOM fully loaded and parsed');

})}

/*

Visit My Website to see creative design
        www.HUSAMUI.com


*/


$(document).ready(function(){
  
    $(".dropdown").click(function(){
      $(".menu").toggleClass("showMenu");
        $(".menu > li").click(function(){
          $(".dropdown > p").html($(this).html());
            $(".menu").removeClass("showMenu");
        });
    });
    
  });