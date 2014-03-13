function signup(){
	$('.btn').submit(function(){
		var name = $('#user_username').val();
		$('#container').html(name);
	});
};
