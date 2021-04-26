<html>
<head>
<title>Editor bbCode</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<script>
function instag(tag){
var input = document.form1.contenido;
if(typeof input.selectionStart != 'undefined'){
var start = input.selectionStart;
var end = input.selectionEnd;
var insText = input.value.substring(start, end);
input.value = input.value.substr(0, start) + '['+tag+']' + input.value.substr(end);
input.focus();
input.setSelectionRange(start+2+tag.length+3+tag.length,start+2+tag.length);
return;
}
}
</script>
</head>

<body>
<form name="form1" method="post" action="">
<input type="button" name="Submit" value="B" onClick="instag(':A')">
<input type="button" name="Submit3" value="U" onClick="instag(':B')">
<input type="button" name="Submit4" value=" I " onClick="instag(':C')">
<br>
<textarea name="contenido" cols="40" rows="10" id="contenido"></textarea>

</form>
</body>
</html> 