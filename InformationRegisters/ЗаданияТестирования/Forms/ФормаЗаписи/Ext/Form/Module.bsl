﻿
&НаСервере
Процедура ПриСозданииНаСервере(Отказ, СтандартнаяОбработка)
	
	
КонецПроцедуры

&НаКлиенте
Процедура ЗапуститьПринудительно(Команда)
	Если ЗначениеЗаполнено(Запись.УИД) Тогда
		ТестированиеПриложенийКлиент.ЗапуститьТестированиеПоУИДУ(Запись.УИД, Ложь);
		ЭтаФорма.ОбновитьОтображениеДанных();
	КонецЕсли;
КонецПроцедуры

&НаКлиенте
Процедура ОчиститьРезультаты(Команда)
    Запись.НачалоТестирования     =  Неопределено;
    Запись.ОкончаниеТестирования  =  Неопределено;
    Запись.РазультатТестирования  =  Неопределено;
    Запись.Ошибки                 =  Ложь;
	Модифицированность 			  =  Истина;
КонецПроцедуры
