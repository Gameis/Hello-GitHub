
$(function() {
	
	$('#write').click(function() {
		
		if($('#subject').val() == "")
		{
			$('#subjectDiv').html("제목을 입력 해 주세요");
			$('#subject').focus();
		}else if($('#content').val() == "")
		{
			$('#contentDiv').html("내용을 입력 해 주세요");
			$('#content').focus();
		}else
		{
			document.boardWriteForm.submit();	
		}
		
	});
});