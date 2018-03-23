function List.Set.Muk(Name, Number)
	Words = AMS.DelimitedStringToTable(Name, " ");
	if Words ~= nil then
		Word1 = ListBox.FindItem("Words", -1, LB_BYTEXT, Words[1])
		if Word1 ~= -1 then
			if ListBox.FindItem("Words", Word1, LB_BYTEXT, Words[3]) ~= -1 then
				Muk = Number
			end
		end
	end
end

List.Name.Muk = {}
List.Number.Muk = {}

List.Name.Muk.Foolad_Foolad = "›Ê·«œ »— ›Ê·«œ"
List.Number.Muk.Foolad_Foolad = 0.6
List.Set.Muk(List.Name.Muk.Foolad_Foolad, List.Number.Muk.Foolad_Foolad)

List.Name.Muk.Foolad_Pb = "›Ê·«œ »— ”—»"
List.Number.Muk.Foolad_Pb = 0.9
List.Set.Muk(List.Name.Muk.Foolad_Pb, List.Number.Muk.Foolad_Pb)

List.Name.Muk.Foolad_Cu = "›Ê·«œ »— „”"
List.Number.Muk.Foolad_Cu = 0.4
List.Set.Muk(List.Name.Muk.Foolad_Cu, List.Number.Muk.Foolad_Cu)

List.Name.Muk.Cu_Chodan = "„” »— çœ‰"
List.Number.Muk.Cu_Chodan = 0.3
List.Set.Muk(List.Name.Muk.Cu_Chodan, List.Number.Muk.Cu_Chodan)

List.Name.Muk.Cu_Glass = "„” »— ‘Ì‘Â"
List.Number.Muk.Cu_Glass = 0.5
List.Set.Muk(List.Name.Muk.Cu_Glass, List.Number.Muk.Cu_Glass)

List.Name.Muk.Tires_Concrete = "·«” Ìò »— » Ê‰"
List.Number.Muk.Tires_Concrete = 1
List.Set.Muk(List.Name.Muk.Tires_Concrete, List.Number.Muk.Tires_Concrete)