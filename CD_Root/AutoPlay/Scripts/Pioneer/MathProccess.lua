function Binesh.MathProccess()
	CountWords = ListBox.GetCount("Words");
	for indexItem = 1, CountWords do
		ItemText = ListBox.GetItemText("Words", indexItem);
		if ItemText == "Sqrt" or ItemText == "sqrt" then -- Sqrt
			ItemNumber = ListBox.GetItemText("Words", indexItem+1);
			Number = tonumber(ItemNumber)
			if Number ~= nil then
				resultProccess = Math.Sqrt(Number);
				ListBox.DeleteItem("Words", indexItem+1);
				ListBox.SetItemText("Words", indexItem, resultProccess);
			end
		elseif String.Find(ItemText, "!", 1, false) ~= -1 then -- !
			Len = String.Length(ItemText);
			ItemText = String.Left(ItemText, Len-1);
			ItemText = tonumber(ItemText);
			if ItemText ~= nil then
				resultProccess = Math.Factorial(ItemText)
				ListBox.SetItemText("Words", indexItem, resultProccess);
			end
		elseif String.Find(ItemText, "|", 1, false) ~= -1 then -- | |
			Len = String.Length(ItemText);
			ItemText = String.Mid(ItemText, 2, Len-2);
			ItemText = tonumber(ItemText);
			if ItemText ~= nil then
				resultProccess = Math.Abs(ItemText);
				ListBox.SetItemText("Words", indexItem, resultProccess);
			end
		elseif ItemText == "Sin" or ItemText == "sin" then -- Sin
			ItemNumber = ListBox.GetItemText("Words", indexItem+1);
			Number = tonumber(ItemNumber)
			if Number ~= nil then
				resultProccess = math.sin(math.rad(Number));
				ListBox.DeleteItem("Words", indexItem+1);
				ListBox.SetItemText("Words", indexItem, resultProccess);
			end
		elseif ItemText == "Cos" or ItemText == "cos" then -- Cos
			ItemNumber = ListBox.GetItemText("Words", indexItem+1);
			Number = tonumber(ItemNumber)
			if Number ~= nil then
				resultProccess = math.cos(math.rad(Number));
				ListBox.DeleteItem("Words", indexItem+1);
				ListBox.SetItemText("Words", indexItem, resultProccess);
			end
		elseif ItemText == "Tan" or ItemText == "tan" then -- Tan
			ItemNumber = ListBox.GetItemText("Words", indexItem+1);
			Number = tonumber(ItemNumber)
			if Number ~= nil then
				resultProccess = math.tan(math.rad(Number));
				ListBox.DeleteItem("Words", indexItem+1);
				ListBox.SetItemText("Words", indexItem, resultProccess);
			end
		elseif ItemText == "^" then -- ^
			Digit1,s,Digit2 = String.Find(ItemText, "%d^%d", 1, false)
			Number1 = tonumber(Digit1)
			Number2 = tonumber(Digit2)
			if Number1 ~= nil and Number2 ~= nil then
				resultProccess = Math.Power(Number1, Number2)
				ListBox.SetItemText("Words", indexItem, resultProccess);
			end
		elseif ItemText == "+" then -- +
			ItemNumber1 = ListBox.GetItemText("Words", indexItem-1);
			ItemNumber2 = ListBox.GetItemText("Words", indexItem+1);
			Number1 = tonumber(ItemNumber1)
			Number2 = tonumber(ItemNumber2)
			if Number1 ~= nil and Number2 ~= nil then
				resultProccess = Number1+Number2
				ListBox.DeleteItem("Words", indexItem-1); -- Delete N1
				ListBox.DeleteItem("Words", indexItem-1); -- Delete +
				ListBox.SetItemText("Words", indexItem-1, resultProccess);
			end
		elseif ItemText == "-" then -- -
			ItemNumber1 = ListBox.GetItemText("Words", indexItem-1);
			ItemNumber2 = ListBox.GetItemText("Words", indexItem+1);
			Number1 = tonumber(ItemNumber1)
			Number2 = tonumber(ItemNumber2)
			if Number1 ~= nil and Number2 ~= nil then
				resultProccess = Number1-Number2
				ListBox.DeleteItem("Words", indexItem-1); -- Delete N1
				ListBox.DeleteItem("Words", indexItem-1); -- Delete -
				ListBox.SetItemText("Words", indexItem-1, resultProccess);
			end
		elseif String.Find(ItemText, "%d/%d", 1, false) then -- /
			Digit1,s,Digit2 = String.Find(ItemText, "%d/%d", 1, false)
			Number1 = tonumber(Digit1)
			Number2 = tonumber(Digit2)
			if Number1 ~= nil and Number2 ~= nil then
				resultProccess = Number1/Number2
				ListBox.SetItemText("Words", indexItem, resultProccess);
			end
		elseif ItemText == "*" then -- *
			ItemNumber1 = ListBox.GetItemText("Words", indexItem-1);
			ItemNumber2 = ListBox.GetItemText("Words", indexItem+1);
			Number1 = tonumber(ItemNumber1)
			Number2 = tonumber(ItemNumber2)
			if Number1 ~= nil and Number2 ~= nil then
				resultProccess = Number1*Number2
				ListBox.DeleteItem("Words", indexItem-1); -- Delete N1
				ListBox.DeleteItem("Words", indexItem-1); -- Delete *
				ListBox.SetItemText("Words", indexItem-1, resultProccess);
			end
		end
	end
end