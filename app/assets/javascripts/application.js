// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require bootstrap
//= require jquery.colorbox
//= require dataTables/jquery.dataTables
//= require dataTables/bootstrap/3/jquery.dataTables.bootstrap
//= require moment
//= require daterangepicker
//= require_tree .

window.setTimeout(function() {
    $(".alert-dismissible").fadeTo(500, 0).slideUp(500, function(){
        $(this).remove();
    });
}, 3500);


$(function () {
    $('.testranking').colorbox();
    $('.creatorranking').colorbox();

    $('#badget-gallery').carousel({
        interval: 10000
    });

    $('#badget-gallery').on('slid.bs.carousel', function() {
    });
});