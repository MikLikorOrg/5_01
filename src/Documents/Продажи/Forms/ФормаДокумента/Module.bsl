
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
