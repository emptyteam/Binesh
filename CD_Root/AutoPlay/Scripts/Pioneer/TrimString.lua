function Binesh.TrimString(sInput)
	if sInput ~= "" then
		result = tostring(sInput);
		
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
		
		result = String.Replace(result, "��������", "����� ���", false);
		
		result = String.Replace(result, "�������", "������", false);
		result = String.Replace(result, "�������", "������", false);
		result = String.Replace(result, "�������", "������", false);
		
		result = String.Replace(result, "������", "��� ���", false);
		result = String.Replace(result, "�� ��� ���", "�� ��� ���", false);
		result = String.Replace(result, "��� ������", "���������", false)
		
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
		
		result = String.Replace(result, "�����", "����", false);
		result = String.Replace(result, "����", "����", false);
		result = String.Replace(result, "�����", "����", false);
		result = String.Replace(result, "�����", "����", false);
		
		result = String.Replace(result, "������", "�����", false);
		result = String.Replace(result, "������", "�����", false);
		result = String.Replace(result, "�����", "�����", false);
		result = String.Replace(result, "����� �����", "����", false);
		result = String.Replace(result, "����� ����", "����", false);
		result = String.Replace(result, "����� �����", "���", false);
		result = String.Replace(result, "����� ���", "���", false);
		result = String.Replace(result, "���� ", "��� ", false);
		result = String.Replace(result, "���", "���� ����", false);
		result = String.Replace(result, "�����", "����", false);
		result = String.Replace(result, "�����", "����", false);
		result = String.Replace(result, "����", "���", false);
		
		result = String.Replace(result, "����� ������", "����� ����", false);
		result = String.Replace(result, "����", "�����", false);
		result = String.Replace(result, "������", "�����", false);
		result = String.Replace(result, "�����", "���", false);
		result = String.Replace(result, "����", "���", false);
		result = String.Replace(result, "�����", "����", false);
		result = String.Replace(result, "�����", "����", false);
		result = String.Replace(result, "�����", "�����", false);
		result = String.Replace(result, "������", "�����", false);
		result = String.Replace(result, "����� �� ", "����� ", false);
		result = String.Replace(result, "�������", "�����", false);
		result = String.Replace(result, "������", "�����", false);
		result = String.Replace(result, "����� �� ", "����� ", false);
		result = String.Replace(result, "�������", "�����", false);
		result = String.Replace(result, "����� � ", "����� ", false);
		result = String.Replace(result, "��� �� �ј�", "����", false);
		result = String.Replace(result, "����", "���", false);
		result = String.Replace(result, "����", "���", false);
		result = String.Replace(result, "����", "���", false);
		result = String.Replace(result, "������", "�����", false);
		result = String.Replace(result, "���͘ǘ", "��ؘǘ", false);
		result = String.Replace(result, "����ǘ", "��ؘǘ", false);
		result = String.Replace(result, "�����", "����", false);
		result = String.Replace(result, "����", "���", false);
		result = String.Replace(result, "�����", "����", false);
		result = String.Replace(result, "����", "���", false);
		result = String.Replace(result, "����", "���", false);
		result = String.Replace(result, "������", "������", false);
		result = String.Replace(result, "�������", "������", false);
		result = String.Replace(result, "�������", "������", false);
		result = String.Replace(result, "�����", "�����", false);
		result = String.Replace(result, "���", "������", false);
		result = String.Replace(result, "����", "������", false);
		result = String.Replace(result, "�������", "������", false);
		result = String.Replace(result, "����� ���", "��� ���", false);
		result = String.Replace(result, "��ѐ�����", "��ѐ �����", false);
		result = String.Replace(result, "��������", "������", false);
		result = String.Replace(result, "����� ����", "������", false);
		result = String.Replace(result, "���� ������", "������", false);
		result = String.Replace(result, "���� �����", "�����", false);
		result = String.Replace(result, "����", "���", false);
		result = String.Replace(result, "���� ������", "���� ���", false);
		result = String.Replace(result, "���� ��� ���", "���� ���", false);
		result = String.Replace(result, "�� ����", "���� ���", false);
		result = String.Replace(result, "��� �����", "��� �����", false);
		result = String.Replace(result, "������ �������", "���ǎ", false);
		result = String.Replace(result, "��� ������", "��� ����", false);
		result = String.Replace(result, "�����", "����", false);
		result = String.Replace(result, "����", "���", false);
		result = String.Replace(result, "�����", "�����", false);
		result = String.Replace(result, "����", "���", false);
		result = String.Replace(result, "����� ��ǘ��", "����� �����", false);
		result = String.Replace(result, "�����", "���", false);
		result = String.Replace(result, "��� ", " ��� ", false);
		result = String.Replace(result, "�����", "������", false);
		result = String.Replace(result, "������", "�����", false);
		result = String.Replace(result, "���", "����", false);
		result = String.Replace(result, "��ю� ������ �����", "��ю� ������", false);
		result = String.Replace(result, "������", "����", false);
		result = String.Replace(result, "����� ����� �����", "����� �����", false);
		result = String.Replace(result, "�����", "����", false);
		result = String.Replace(result, "����", "���", false);
		result = String.Replace(result, "����", "���", false);
		result = String.Replace(result, "�� �����", "�������", false);
		result = String.Replace(result, "������", "���� ���", false);
		result = String.Replace(result, "����", "���", false);
		result = String.Replace(result, "���� ���", "���� ���", false);
		result = String.Replace(result, "��� �� ���", "��� ���", false);
		result = String.Replace(result, "����� ����", "����� ���", false);
		result = String.Replace(result, "�����", "�ј���", false);
		result = String.Replace(result, "����� �����", "���� �����", false);
		result = String.Replace(result, "���", "����", false);
		result = String.Replace(result, "�����", "����", false);
		result = String.Replace(result, "���", "�����", false);
		result = String.Replace(result, "����", "����", false);
		result = String.Replace(result, "��", "���", false);
		result = String.Replace(result, "������", "�����", false);
		result = String.Replace(result, "Liter", "L", false);
		result = String.Replace(result, "Lit", "L", false);
		result = String.Replace(result, "����", "���", false);
		result = String.Replace(result, "�����", "���", false);
		result = String.Replace(result, "����� ������ �����", "����� �����", false);
		result = String.Replace(result, "��ю� ����", "��ю� ������", false);
		result = String.Replace(result, "��ю� ����", "��ю� ������", false);
		result = String.Replace(result, "��� �� ���", "��� ���", false);
		result = String.Replace(result, "����", "����", false);
		result = String.Replace(result, "������ ���", "����� ���", false);
		result = String.Replace(result, "���� ����� ���", "���� ������ ���", false);
		result = String.Replace(result, "�������", "�����", false);
		result = String.Replace(result, "������ϐ�", "���� ���������", false);
		result = String.Replace(result, "��� ������", "���������", false);
		result = String.Replace(result, "���� ����", "���� 1", false);
		result = String.Replace(result, "�����", "�����", false);
		result = String.Replace(result, "������", "�����", false);
		result = String.Replace(result, "����� ����", "����� 90 ����", false);
		result = String.Replace(result, "����� ����", "����� 90 ����", false);
		result = String.Replace(result, "������ ��� ��", "����� ���", false);
		result = String.Replace(result, "�������", "��� ����", false);
		result = String.Replace(result, "����", "���", false);
		result = String.Replace(result, "����", "������", false);
		result = String.Replace(result, "�����", "������", false);
		result = String.Replace(result, "�������", "�����", false);
		result = String.Replace(result, "���� ����", "", false);
		result = String.Replace(result, "���� �����", "�����", false);
		result = String.Replace(result, "���� �����", "�����", false);
		result = String.Replace(result, "���� ���", "���", false);
		result = String.Replace(result, "���� ������", "������", false);
		result = String.Replace(result, "����� ���", "������", false);
		result = String.Replace(result, "���� ���", "������", false);
		result = String.Replace(result, "��� ���", "������", false);
		
		result = String.Replace(result, "�� �� �����", "���� 1 �����", false);
		result = String.Replace(result, "�� �� �����", "���� 60 �����", false);
		result = String.Replace(result, "�� �� ����", "���� 3600 �����", false);
		result = String.Replace(result, "�� �� ���", "���� 86400 �����", false);
		
		-- For Delta:
		for indexDelta = 1, Table.Count(tbl.Delta.Words) do
			result = String.Replace(result, tbl.Delta.Words[indexDelta], " ����� ", false);
		end
		for indexFirst = 1, Table.Count(tbl.Delta.First) do
			result = String.Replace(result, tbl.Delta.First[indexFirst], " ����� ", false);
		end
		for indexSecond = 1, Table.Count(tbl.Delta.Second) do
			result = String.Replace(result, tbl.Delta.Second[indexSecond], " ����� ", false);
		end
		result = String.Replace(result, "�������", "�����", false);
		result = String.Replace(result, "�������", "�����", false);
		
		result = String.Replace(result, "bar", "Bar", false);
		result = String.Replace(result, "bar", "Bar", false);
		result = String.Replace(result, "atmosfer", "atm", false);
		result = String.Replace(result, "atmosphere", "atm", false);
		result = String.Replace(result, "minute", "min", false);
		result = String.Replace(result, "minutes", "min", false);
		result = String.Replace(result, "j", "J", true);
		result = String.Replace(result, "eta", "Eta", false);
		result = String.Replace(result, "teta", "Teta", false);
		result = String.Replace(result, "deg", "����", false);
		result = String.Replace(result, "lv", "LV", false);
		result = String.Replace(result, "ohm", "Ohm", false);
		result = String.Replace(result, "fsmax", "fs,max", false);
		result = String.Replace(result, "fs max", "fs,max", false);
		result = String.Replace(result, "f smax", "fs,max", false);
		result = String.Replace(result, "f s max", "fs,max", false);
		result = String.Replace(result, "fsmaks", "fs,max", false);
		result = String.Replace(result, "qc", "QC", false);
		result = String.Replace(result, "muk", "Muk", false);
		result = String.Replace(result, "mus", "Mus", false);
		result = String.Replace(result, "omega", "Omega", false);
		result = String.Replace(result, "V0", "V1", true);
		result = String.Replace(result, "rt", "RT", false);
		result = String.Replace(result, "vt", "VT", false);
		
		result = String.Replace(result, "=", " = ", false);
		result = String.Replace(result, "=", "", false);
		
		-- Convert '/' to '.'
		for number1 = 0, 9 do
			for number2 = 0, 9 do
				result = String.Replace(result, number1.."/"..number2, number1.."."..number2, false);
			end
		end
		
		result = String.Replace(result, " |", "|", false);
		result = String.Replace(result, "| ", "|", false);
		
		result = String.Replace(result, "Delta ", "Delta", false);
		result = String.Replace(result, "sin", "sin ", false);
		result = String.Replace(result, "cos", "cos ", false);
		result = String.Replace(result, "tan", "tan ", false);
		result = String.Replace(result, "Sqrt", "Sqrt ", false);
		
		result = String.Replace(result, "	", " ", false); -- it Tab
		result = String.Replace(result, "  ", " ", false);
		return result;
	end
end