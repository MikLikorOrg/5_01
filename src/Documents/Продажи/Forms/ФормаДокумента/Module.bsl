
&НаКлиенте
Процедура ТоварыТоварПриИзменении(Элемент)
	
	ТекущиеДанные = Элемент.Родитель.ТекущиеДанные;
	
	Если ЗначениеЗаполнено(ТекущиеДанные.Товар) Тогда
		ТекущиеДанные.Цена = ТоварыТоварПриИзмененииНаСервере(ТекущиеДанные.Товар);
	Иначе
		ТекущиеДанные.Цена = 0;
	КонецЕсли;
	
КонецПроцедуры

&НаСервере
Функция ТоварыТоварПриИзмененииНаСервере(Товар)
	
	Возврат Товар.Цена;

КонецФункции

&НаКлиенте
Процедура РассчитатьСуммуВСтроке(Элемент)
	
	ТекущиеДанные = Элемент.Родитель.ТекущиеДанные;
	ТекущиеДанные.Сумма = ТекущиеДанные.Цена * ТекущиеДанные.Количество;
	
КонецПроцедуры	
