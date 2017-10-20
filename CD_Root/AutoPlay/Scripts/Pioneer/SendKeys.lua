function Binesh.SendKeys(sSendString)
	ForSend = sSendString -- «Ì‰ „ €ÌÌ— »—«Ì ‘‰«”«ÌÌ „ ‰ «—”«·Ì Â”  òÂ  ÊÌ «Ì‰ÅÊ  «“‘ «” ›«œÂ ‘œÂ° ‰»«Ìœ Å«ò »‘Â
	sSendString = "#"
	SetChar = true
	sSendString = "\"" ..sSendString.."\""
	result = DLL.CallFunction(_SourceFolder.."\\KEYSTROKES.DLL", "KEYSTROKE", sSendString, DLL_RETURN_TYPE_INTEGER, DLL_CALL_STDCALL)
end