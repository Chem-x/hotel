// console.log('Wassap Консоль! 111111');
// alert('Alert - бла бла!');

$(document).ready( function(){
	$(".datepicker").datepicker({ dateFormat: 'dd.mm.yy' }); //підключаєм календар

	$('#input-name').on('keydown', function(){
		$('#error-name').fadeOut();
	});

	$('#input-email').on('keydown', function(){
		$('#error-email').fadeOut();
	});

	$('#input-message').on('keydown', function(){
		$('#error-message').fadeOut();
	});

	var showError = function(name, text){
		var $message = $('<div class="message message--error" id=' + name + '>');
			$message.text( text );
			$message.hide();
			$('#form-notify').append( $message );
			$message.fadeIn(500);
	}

	$('#contact-form5555').on('submit', function(e){ // #contact-form виключено перевірку
		e.preventDefault();

		if ( $('#input-name').val() == '' ) {
			showError('error-name', "Заповніть ім'я");
			var error = true;
		}

		if ( $('#input-email').val() == '' ) {
			showError('error-email', 'Заповніть email');
			var error = true;
		}

		if ( $('#input-message').val() == '' ) {
			showError('error-message', 'Заповніть повідомлення');
			var error = true;
		}

		if ( error !== true) {
			// відправляємо форму
			var $message = $('<div class="message message--success">');
				$message.text("Ваше повідомлення надіслано! Скоро ми зв'яжемося з вами.");
				$message.hide();
				$('#form-notify').append( $message );
				$message.fadeIn(500);
		}
		
	});

});


