/**
 * 
 */
const $input = $('input');
const $button = $('#button');
const $invalid_feedback = $('#pw-text');

$('#pw-text').hide();

$input.focus('click', function(event) { 
  	if($(event.target).val() != ""){
		$(event.target).css({
    		'border': '1px solid #00c7ae',
    		'outline': '3px solid #bff1eb'
  		});
  		$('#pw-text').hide();
	}
});

$input.blur('click',function(event){
	if($(event.target).val() == ""){
		$(event.target).css({
      		'border': '1px solid red',
      		'outline': '3px solid #fed5d8'
    	});
		$('#pw-text').show();
	}
});

$button.on("click", function(event){
	event.preventDefault();
	$.ajax({
		url: "checkEmailOk.member",
		type: "post",
		data: { memberEmail: $("input[name=memberEmail]").val() },
		success: function(result){
			result = JSON.parse(result);
			console.log(result);
			if(result.check){
				if (!result.length == 0) {
					$("#form").submit();
				} else {
					// 이메일 입력
					 showWarnModal("이메일을 입력해주세요.");
				}
			} else{
				// 이메일 중복
				showWarnModal("이미 사용 중인 이메일입니다.");
			}
		}
	});
});