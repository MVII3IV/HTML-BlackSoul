$(document).ready(function() {

	$(window).resize(
		function(){
			$('.full-width').width($(window).width());
			$('.full-width').css({width: $(window).width(), "margin-left": ($(window).width()/-2), left: "50%"});
		}
	).trigger('resize');
	
	if( $("html").hasClass("ie8") ) {
		$(function(){
			$('.mp-row-fullwidth').append('<div class="clear"></div>');
		});
	}
})