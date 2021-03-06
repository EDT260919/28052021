// Найти или создать пользователя.
// 
// Параметры:
//  ПользовательИБ - ПользовательИнформационнойБазы
// 	ДопДанные - Структура:
// 		*Телефон
// 		*ЭлПочта
// 	
// Возвращаемое значение:
//  СправочникСсылка.Пользователи
Функция НайтиИлиСоздатьПользователя(ПользовательИБ, ДопДанные = Неопределено) Экспорт
		
	ПользовательСсылка = НайтиПоНаименованию(ПользовательИБ.Имя);
	Если ПользовательСсылка.Пустая() Тогда
		ПользовательОбъект = СоздатьЭлемент();
		ПользовательОбъект.Наименование = ПользовательИБ.Имя;
		ПользовательОбъект.ПолноеИмя 	= ПользовательИБ.ПолноеИмя;
		
		ПользовательОбъект.ЗаполнитьНаборРолей(ПользовательИБ);
		ПользовательОбъект.Записать();
		
		ПользовательСсылка = ПользовательОбъект.Ссылка;		
	КонецЕсли;
	Возврат ПользовательСсылка;	
		
КонецФункции

//НайтиОкноПоНавигационнойСсылке();
