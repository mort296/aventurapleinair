//= require jquery
//= require jquery.ui.all
//= require jquery_ujs

//= require active_admin/application
//= require tiny_mce/tiny_mce

$(document).ready(function() {
  tinyMCE.init({
    theme_advanced_buttons1 : "mybutton,bold,italic,underline,separator,strikethrough,justifyleft,justifycenter,justifyright,justifyfull,|,bullist,numlist,|,undo,redo,link,unlink,|,formatselect,fontsizeselect",
    theme_advanced_buttons2 : "",
    theme_advanced_buttons3 : "",
    theme_advanced_toolbar_location : "top",
    theme_advanced_toolbar_align : "left",
    theme_advanced_statusbar_location : "bottom",
    plugins : 'inlinepopups',
	selector: '.tinymce',
   });
});