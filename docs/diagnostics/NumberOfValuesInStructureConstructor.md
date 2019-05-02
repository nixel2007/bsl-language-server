# Ограничение на количество значений свойств, передваваемых в конструктор структуры

При создании объекта типа Структура не рекомендуется передавать в конструктор более 3-х значений свойств.
Вместо этого рекомендуется использовать метод Вставить или присваивать значения свойствам явным образом

#### Пример
Неправильно:

```bsl
ПараметрыФормыКомпоновки  = Новый Структура(
   "НеПомещатьНастройкиВСхемуКомпоновкиДанных,
   |НеРедактироватьСхемуКомпоновкиДанных,
   |НеНастраиватьУсловноеОформление,
   |НеНастраиватьВыбор,
   |НеНастраиватьПорядок,
   |АдресСхемыКомпоновкиДанных,
   |АдресНастроекКомпоновкиДанных,
   |УникальныйИдентификатор,
   |Заголовок",
   Истина,
   Истина,
   Истина,
   Истина,
   Истина,
   ТекущиеДанные.АдресСхемыКомпоновкиДанных,
   ?(АдресНастроекСхемыКомпоновкиДанных <> Неопределено,
        АдресНастроекСхемыКомпоновкиДанных,
        ТекущиеДанные.АдресНастроекСхемыКомпоновкиДанных),
   УникальныйИдентификатор,
   ЗаголовокФормыНастройкиСхемыКомпоновкиДанных));
```

Правильно:

```bsl
ПараметрыФормыКомпоновки  = Новый Структура;

ПараметрыФормыКомпоновки.Вставить("НеПомещатьНастройкиВСхемуКомпоновкиДанных", Истина);
ПараметрыФормыКомпоновки.Вставить("НеРедактироватьСхемуКомпоновкиДанных", Истина);
ПараметрыФормыКомпоновки.Вставить("НеРедактироватьСхемуКомпоновкиДанных", Истина);
ПараметрыФормыКомпоновки.Вставить("НеНастраиватьВыбор", Истина);
ПараметрыФормыКомпоновки.Вставить("НеНастраиватьПорядок", Истина);
ПараметрыФормыКомпоновки.Вставить("АдресСхемыКомпоновкиДанных", ТекущиеДанные.АдресСхемыКомпоновкиДанных);
ПараметрыФормыКомпоновки.Вставить("АдресНастроекКомпоновкиДанных", ?(АдресНастроекСхемыКомпоновкиДанных <> Неопределено,
                                                                                                                         АдресНастроекСхемыКомпоновкиДанных,
                                                                                                                         ТекущиеДанные.АдресНастроекСхемыКомпоновкиДанных));
ПараметрыФормыКомпоновки.Вставить("УникальныйИдентификатор ", УникальныйИдентификатор);
ПараметрыФормыКомпоновки.Вставить("Заголовок", ЗаголовокФормыНастройкиСхемыКомпоновкиДанных);
```

Источник: [Стандарт: Параметры процедур и функций](https://its.1c.ru/db/v8std#content:2149184342:hdoc)
