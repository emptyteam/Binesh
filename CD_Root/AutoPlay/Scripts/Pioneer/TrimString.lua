function Binesh.TrimString(sInput)
	if sInput ~= "" then
		sInput = tostring(sInput);
		
		result = String.Replace(sInput, "��������", "����� ���", false);
		
		result = String.Replace(sInput, "�������", "������", false);
		result = String.Replace(sInput, "�������", "������", false);
		result = String.Replace(sInput, "�������", "������", false);
		
		result = String.Replace(result, "������", "��� ���", false);
		result = String.Replace(result, "�� ��� ���", "�� ��� ���", false);
		result = String.Replace(result, "��� ������", "���������", false)
		result = String.Replace(result, "�", "�", false)
		
		result = String.Replace(result, "���", " ��� ", false);
		result = String.Replace(result, "����", " ���� ", false);
		result = String.Replace(result, "����", " ���� ", false);
		result = String.Replace(result, "����", " ���� ", false);
		result = String.Replace(result, "�����", " ����� ", false);
		result = String.Replace(result, "���", " ��� ", false);
		result = String.Replace(result, "Ϙ�", " Ϙ� ", false);
		result = String.Replace(result, "���", " ��� ", false);
		result = String.Replace(result, "����", " ���� ", false);
		result = String.Replace(result, "��", " �� ", false);
		result = String.Replace(result, "���", " ��� ", false);
		result = String.Replace(result, "���", " ��� ", false);
		
		result = String.Replace(result, " _ ", "_", false);
		result = String.Replace(result, "_ ", "_", false);
		result = String.Replace(result, " _", "_", false);
		result = String.Replace(result, "������", "�����", false);
		result = String.Replace(result, "������", "�����", false);
		result = String.Replace(result, "����", "���", false);
		result = String.Replace(result, "�����", "����", false);
		result = String.Replace(result, "�����", "����", false);
		result = String.Replace(result, "�����", "�����", false);
		result = String.Replace(result, "��� �� �ј�", "����", false);
		result = String.Replace(result, "����", "���", false);
		result = String.Replace(result, "����", "���", false);
		result = String.Replace(result, "����", "���", false);
		result = String.Replace(result, "������", "�����", false);
		result = String.Replace(result, "���͘ǘ", "��ؘǘ", false);
		result = String.Replace(result, "����ǘ", "��ؘǘ", false);
		result = String.Replace(result, "����� ��", "�����", false);
		result = String.Replace(result, "�����", "����", false);
		result = String.Replace(result, "�����", "����", false);
		result = String.Replace(result, "�����", "����", false);
		result = String.Replace(result, "����", "���", false);
		result = String.Replace(result, "�����", "����", false);
		result = String.Replace(result, "����", "���", false);
		result = String.Replace(result, "������", "������", false);
		result = String.Replace(result, "�������", "������", false);
		result = String.Replace(result, "�������", "������", false);
		result = String.Replace(result, "�����", "�����", false);
		result = String.Replace(result, "���", "������", false);
		result = String.Replace(result, "����� �����", "��� ���", false);
		result = String.Replace(result, "��ѐ�����", "��ѐ �����", false);
		result = String.Replace(result, "����� ����", "������", false);
		result = String.Replace(result, "��������", "������", false);
		result = String.Replace(result, "���� ������", "������", false);
		result = String.Replace(result, "���� �����", "�����", false);
		result = String.Replace(result, "���� ������", "���� ���", false);
		result = String.Replace(result, "���� ��� ���", "���� ���", false);
		result = String.Replace(result, "�� ����", "���� ���", false);
		result = String.Replace(result, "��� �����", "��� �����", false);
		result = String.Replace(result, "������ �������", "���ǎ", false);
		result = String.Replace(result, "��� ������", "��� ����", false);
		result = String.Replace(result, "�����", "����", false);
		result = String.Replace(result, "����", "���", false);
		result = String.Replace(result, "�����", "�������", false);
		result = String.Replace(result, "����", "���", false);
		result = String.Replace(result, "����� ��ǘ��", "����� �����", false);
		result = String.Replace(result, "�����", "���", false);
		result = String.Replace(result, "���", "���", false);
		result = String.Replace(result, "�����", "������", false);
		result = String.Replace(result, "������", "�����", false);
		result = String.Replace(result, "���", "����", false);
		result = String.Replace(result, "��ю� ������ �����", "��ю� �����", false);
		result = String.Replace(result, "bar", "Bar", false);
		result = String.Replace(result, "bar", "Bar", false);
		result = String.Replace(result, "atmosfer", "atm", false);
		result = String.Replace(result, "atmosphere", "atm", false);
		result = String.Replace(result, "minute", "min", false);
		result = String.Replace(result, "minutes", "min", false);
		
		result = String.Replace(result, "J", " J", false);
		result = String.Replace(result, "j", " J", true);
		result = String.Replace(result, "m^3", " m^3", true);
		result = String.Replace(result, "mol", " mol", false);
		result = String.Replace(result, "K", " K", true);
		result = String.Replace(result, "C", " C", true);
		result = String.Replace(result, "g", " g", true);
		result = String.Replace(result, "g/mol", " g/mol", true);
		
		result = String.Replace(result, "=", " = ", false);
		
		result = String.Replace(result, "!", " ! ", false);
		result = String.Replace(result, "%", " % ", false);
		
		result = String.Replace(result, " |", "|", false);
		result = String.Replace(result, "| ", "|", false);
		
		result = String.Replace(result, "Delta ", "Delta", false);
		result = String.Replace(result, "sin", "sin ", false);
		result = String.Replace(result, "cos", "cos ", false);
		result = String.Replace(result, "tan", "tan ", false);
		result = String.Replace(result, "Sqrt", "Sqrt ", false);
		
		result = String.Replace(result, "  ", " ", false);
		return result
	end
end