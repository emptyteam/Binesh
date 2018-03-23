function List.Set.Ru_Resistor(Name, Number)
	Binesh.Join(Name)
	if ListBox.FindItem("Words", -1, LB_BYTEXT, Name) ~= -1 then
		Ru_Resistor = Number
	end
end

List.Name.Ru_Resistor = {}
List.Number.Ru_Resistor = {}

List.Name.Ru_Resistor.Ag = "‰ﬁ—Â"
List.Number.Ru_Resistor.Ag = 1.62*10^-8
List.Set.Ru_Resistor(List.Name.Ru_Resistor.Ag, List.Number.Ru_Resistor.Ag)

List.Name.Ru_Resistor.Cu = "„”"
List.Number.Ru_Resistor.Cu = 1.69*10^-8
List.Set.Ru_Resistor(List.Name.Ru_Resistor.Cu, List.Number.Ru_Resistor.Cu)

List.Name.Ru_Resistor.Au = "ÿ·«"
List.Number.Ru_Resistor.Au = 2.35*10^-8
List.Set.Ru_Resistor(List.Name.Ru_Resistor.Au, List.Number.Ru_Resistor.Au)

List.Name.Ru_Resistor.Al = "¬·Ê„Ì‰Ì„"
List.Number.Ru_Resistor.Al = 2.75*10^-8
List.Set.Ru_Resistor(List.Name.Ru_Resistor.Al, List.Number.Ru_Resistor.Al)

List.Name.Ru_Resistor.W = " ‰ê” ‰"
List.Number.Ru_Resistor.W = 5.25*10^-8
List.Set.Ru_Resistor(List.Name.Ru_Resistor.W, List.Number.Ru_Resistor.W)

List.Name.Ru_Resistor.Fe = "¬Â‰"
List.Number.Ru_Resistor.Fe = 9.68*10^-8
List.Set.Ru_Resistor(List.Name.Ru_Resistor.Fe, List.Number.Ru_Resistor.Fe)

List.Name.Ru_Resistor.Pt = "Å·« Ì‰"
List.Number.Ru_Resistor.Pt = 10.6*10^-8
List.Set.Ru_Resistor(List.Name.Ru_Resistor.Pt, List.Number.Ru_Resistor.Pt)

List.Name.Ru_Resistor.C = "ò—»‰"
List.Number.Ru_Resistor.C = 3.5*10^-5
List.Set.Ru_Resistor(List.Name.Ru_Resistor.C, List.Number.Ru_Resistor.C)

List.Name.Ru_Resistor.Ge = "é—„«‰Ì„"
List.Number.Ru_Resistor.Ge = 0.46
List.Set.Ru_Resistor(List.Name.Ru_Resistor.Ge, List.Number.Ru_Resistor.Ge)

List.Name.Ru_Resistor.Si = "”Ì·Ì”Ì„ Œ«·’"
List.Number.Ru_Resistor.Si = 2.5*10^3
List.Set.Ru_Resistor(List.Name.Ru_Resistor.Si, List.Number.Ru_Resistor.Si)