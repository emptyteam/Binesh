function Binesh.SendKeys(sSendString)
	ForSend = sSendString -- ��� ������ ���� ������� ��� ������ ��� �� ��� ����� ��� ������� ��� ����� �ǘ ���
	sSendString = "#"
	SetChar = true
	sSendString = "\"" ..sSendString.."\""
	result = DLL.CallFunction(_SourceFolder.."\\KEYSTROKES.DLL", "KEYSTROKE", sSendString, DLL_RETURN_TYPE_INTEGER, DLL_CALL_STDCALL)
end