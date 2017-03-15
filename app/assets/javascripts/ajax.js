$(document).on('turbolinks:load', function() {
    "use strict";
    $("#results").hide();
    $("#closeRegister").hide();
    $("#openRegister").click(function() {
      $("#results").show();
      $("#openRegister").hide();
      $("#closeRegister").show();

    });

    $("#closeRegister").click(function() {
      $("#results").hide();
      $("#openRegister").show();
      $("#closeRegister").hide();

    });

    $("#results2").hide();
    $("#closeRegistered").hide();
    $("#lookRegister").click(function(){
      $("#results2").show();
      $("#lookRegister").hide();
      $("#closeRegistered").show();

    });

    $("#closeRegistered").click(function(){
      $("#results2").hide();
      $("#lookRegister").show();
      $("#closeRegistered").hide();

    });

    // $("#openRegister").click(function() {
    //     // var httpRequest = new XMLHttpRequest();
    //     //
    //     // if (!httpRequest) {
    //     //     console.log('Giving up :( Cannot create an XMLHTTP instance');
    //     //     return false;
    //     // }
    //     // // httpRequest.onreadystatechange = alertContents;
    //     // httpRequest.open('GET', "../../../views/registers/new.html.haml");
    //     // httpRequest.send();
    //     $('#results').append('<%= j render partial: “register”, locals: {register: @register} %>');
    //
    // })



});
