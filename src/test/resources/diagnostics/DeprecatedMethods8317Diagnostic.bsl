Процедура Тест()
    Попытка
        ВызватьИсключение "Тест";
    Исключение
        Сообщить(КраткоеПредставлениеОшибки(ИнформацияОбОшибке())); // Срабатывание
        Сообщить(ПодробноеПредставлениеОшибки(ИнформацияОбОшибке())); // Срабатывание
        ПоказатьИнформациюОбОшибке(ИнформацияОбОшибке()); // Срабатывание
        Тест(); // Нет срабатывания
    КонецПопытки;
КонецПроцедуры
