function Binesh.TrimString(sInput)
	if sInput ~= "" then
		result = tostring(sInput);
		
		result = String.Replace(result, "��������", "����� ���", false);
		
		result = String.Replace(result, "�������", "������", false);
		result = String.Replace(result, "�������", "������", false);
		result = String.Replace(result, "�������", "������", false);
		
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
		result = String.Replace(result, "����", "�����", false);
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
		result = String.Replace(result, "������", "����", false);
		result = String.Replace(result, "����� ����� �����", "����� �����", false);
		result = String.Replace(result, "�����", "����", false);
		
		-- For Delta:
		for indexDelta = 1, Table.Count(tbl.Delta.Words) do
			result = String.Replace(result, tbl.Delta.Words[indexDelta], "�����", false);
		end
		for indexFirst = 1, Table.Count(tbl.Delta.First) do
			result = String.Replace(result, tbl.Delta.First[indexFirst], "�����", false);
		end
		for indexSecond = 1, Table.Count(tbl.Delta.Second) do
			result = String.Replace(result, tbl.Delta.Second[indexSecond], "�����", false);
		end
		result = String.Replace(result, "�������", "�����", false);
		result = String.Replace(result, "�������", "�����", false);
		
		result = String.Replace(result, "bar", "Bar", false);
		result = String.Replace(result, "bar", "Bar", false);
		result = String.Replace(result, "atmosfer", "atm", false);
		result = String.Replace(result, "atmosphere", "atm", false);
		result = String.Replace(result, "minute", "min", false);
		result = String.Replace(result, "minutes", "min", false);
		
		result = String.Replace(result, "?", "", false);
		result = String.Replace(result, "�", "", false);
		result = String.Replace(result, "�", "", false);
		result = String.Replace(result, ",", "", false);
		result = String.Replace(result, ":", "", false);
		result = String.Replace(result, "&", "", false);
		result = String.Replace(result, "$", "", false);
		result = String.Replace(result, "#", "", false);
		result = String.Replace(result, "@", "", false);
		result = String.Replace(result, "~", "", false);
		
		result = String.Replace(result, "m", " m", false);
		result = String.Replace(result, "m/s", " m/s", false);
		result = String.Replace(result, "m/s^2", " m/s^2", false);
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
		return result;
	end
end