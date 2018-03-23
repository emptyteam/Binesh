function List.Set.Mus(Name, Number)
	Words = AMS.DelimitedStringToTable(Name, " ");
	if Words ~= nil then
		Word1 = ListBox.FindItem("Words", -1, LB_BYTEXT, Words[1])
		if Word1 ~= -1 then
			if ListBox.FindItem("Words", Word1, LB_BYTEXT, Words[3]) ~= -1 then
				Mus = Number
			end
		end
	end
end

List.Name.Mus = {}
List.Number.Mus = {}

List.Name.Mus.Foolad_Foolad = "›Ê·«œ »— ›Ê·«œ"
List.Number.Mus.Foolad_Foolad = 0.7
List.Set.Mus(List.Name.Mus.Foolad_Foolad, List.Number.Mus.Foolad_Foolad)

List.Name.Mus.Foolad_Pb = "›Ê·«œ »— ”—»"
List.Number.Mus.Foolad_Pb = 0.9
List.Set.Mus(List.Name.Mus.Foolad_Pb, List.Number.Mus.Foolad_Pb)

List.Name.Mus.Foolad_Cu = "›Ê·«œ »— „”"
List.Number.Mus.Foolad_Cu = 0.5
List.Set.Mus(List.Name.Mus.Foolad_Cu, List.Number.Mus.Foolad_Cu)

List.Name.Mus.Cu_Chodan = "„” »— çœ‰"
List.Number.Mus.Cu_Chodan = 1.1
List.Set.Mus(List.Name.Mus.Cu_Chodan, List.Number.Mus.Cu_Chodan)

List.Name.Mus.Cu_Glass = "„” »— ‘Ì‘Â"
List.Number.Mus.Cu_Glass = 0.5
List.Set.Mus(List.Name.Mus.Cu_Glass, List.Number.Mus.Cu_Glass)

List.Name.Mus.Tires_Concrete = "·«” Ìò »— » Ê‰"
List.Number.Mus.Tires_Concrete = 1
List.Set.Mus(List.Name.Mus.Tires_Concrete, List.Number.Mus.Tires_Concrete)