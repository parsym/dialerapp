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
//= require jquery
//= require rails-ujs
//= require turbolinks
//= require_tree .


$(document).ready(function(){
  var searchBox_val = $("#searchBox").val()
   $('.number-dig').click(function(){
     searchBox_val += $(this).attr('name');
     $("#searchBox").val(searchBox_val);
     $("#searchFRM").trigger('click');
  });
  $("#searchBox").change(function(){
    searchBox_val = $(this).val();
    $("#searchBox").val(searchBox_val);
    $("#searchFRM").trigger('click');
  });
  $('.goBack').click(function(){
  searchBox_val = searchBox_val.substring(0,(searchBox_val).length - 1)
  $("#searchBox").val(searchBox_val);
  $("#searchFRM").trigger('click');
  });
  $('.sub-dig').click(function(){
  
 });
});
