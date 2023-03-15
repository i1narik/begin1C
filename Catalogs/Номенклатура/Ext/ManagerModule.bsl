﻿
Процедура ОбработкаПолученияПолейПредставления(Поля, СтандартнаяОбработка)
	СтандартнаяОбработка = Ложь;
	Поля.Добавить("Наименование");
	Поля.Добавить("ВидНоменклатуры");
КонецПроцедуры

Процедура ОбработкаПолученияПредставления(Данные, Представление, СтандартнаяОбработка)
	СтандартнаяОбработка = Ложь;
	Если ЗначениеЗаполнено(Данные.ВидНоменклатуры) Тогда
		Представление = Данные.Наименование + " (" +
			НРег(Строка(Данные.ВидНоменклатуры)) +")";
		Иначе
			Представление = Данные.Наименование;
			КонецЕсли;
КонецПроцедуры
