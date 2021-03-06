﻿
&НаКлиенте
Процедура Старт(Команда)
	
	ЗапуститьКлиента(ПортТеста);	
		
КонецПроцедуры

&НаКлиенте
Процедура ЗапуститьКлиента(Порт)
	
	ТестовоеПриложение = Новый ТестируемоеПриложение("127.0.0.1", Порт);
	МаксИтераций = 10;
	Подключились = Ложь;
	Для Счетчик = 1 По МаксИтераций Цикл
		
		Попытка
			ТестовоеПриложение.УстановитьСоединение();
			Подключились = Истина;
			Прервать; 
			
		Исключение
			
			// Вывести только последнее сообщение.
			Если Счетчик = МаксИтераций Тогда
				Сообщить(ОписаниеОшибки());
				Возврат; 
				
			КонецЕсли; 
			
		КонецПопытки; 
		
	КонецЦикла;
	Если Подключились = Истина Тогда 
		Попытка
			ВыполнитьТестирование(ТестовоеПриложение);
		Исключение
			Сообщить(ОписаниеОшибки());
		КонецПопытки;
	КонецЕсли;
КонецПроцедуры

&НаКлиенте
Процедура ВыполнитьТестирование(ТестовоеПриложение)

	Сценарий(ТестовоеПриложение);	
	
КонецПроцедуры

#Область вспомогательные

&НаКлиенте
Процедура Сценарий(ТестовоеПриложение)

	
//////////
	//
	//ОкноПриложенияПоступлениеАктыНакладные = ТестовоеПриложение.НайтиОбъект(Тип("ТестируемоеОкноКлиентскогоПриложения"), "Поступление (акты, накладные)", , 2);
	//
	//Если ОкноПриложенияПоступлениеАктыНакладные = Неопределено Тогда
	//	ОкноПриложенияОсновноеCommandInterface = ОкноПриложенияОсновное.ПолучитьКомандныйИнтерфейс();
	//	ОкноПриложенияОсновноеCommandInterfaceКнопкаКомандногоИнтерфейсаПокупки = ОкноПриложенияОсновноеCommandInterface.НайтиОбъект(Тип("ТестируемаяКнопкаКомандногоИнтерфейса"), "Покупки");
	//	ОкноПриложенияОсновноеCommandInterfaceКнопкаКомандногоИнтерфейсаПокупки.Нажать();
	//	
	//	ОкноПриложенияОсновноеCommandInterfaceКнопкаКомандногоИнтерфейсаПоступлениеАктыНакладные = ОкноПриложенияОсновноеCommandInterface.НайтиОбъект(Тип("ТестируемаяКнопкаКомандногоИнтерфейса"), "Поступление (акты, накладные)");
	//	ОкноПриложенияОсновноеCommandInterfaceКнопкаКомандногоИнтерфейсаПоступлениеАктыНакладные.Нажать();
	//КонецЕсли;
//////////
	
	
КонецПроцедуры

&НаСервере
Процедура ПриСозданииНаСервере(Отказ, СтандартнаяОбработка)
	ПортТеста = Константы.НачальныйПортКлиента.Получить();
КонецПроцедуры



#КонецОбласти

