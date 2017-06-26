# language: ru

@IgnoreOn82Builds
@IgnoreOnOFBuilds



Функционал: Проверка выборка типа элемента из составного списка

Как разработчик
Я хочу чтобы корректно происходил выбор типа из списка выбора, когда реквизит имеет составной тип
Чтобы я мог иcпользовать это в фичах из воздуха

Контекст: 
	Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий


Сценарий: Проверка выбора типа из списка выбора, когда реквизит имеет составной тип
	Когда В панели разделов я выбираю "Основная"
	И     В панели функций я выбираю "Справочник1"
	Тогда открылось окно "Справочник1"
	И     В открытой форме я нажимаю на кнопку с заголовком "Создать"
	Тогда открылось окно "Справочник1 (создание)"
	И     В открытой форме в поле с именем "Наименование" я ввожу текст "111"
	И     В открытой форме я перехожу к закладке с заголовком "Вспомогательная"
	И     В открытой форме я перехожу к закладке с заголовком "Основа"
	И     В открытой форме я перехожу к закладке с заголовком "Вспомогательная"
	И     В открытой форме я нажимаю кнопку выбора у поля с заголовком "Составной реквизит"
	Тогда открылось окно "Выбор типа данных"
	И     В форме "Выбор типа данных" в таблице "" я перехожу к строке:
	| ''            |
	| 'Справочник3' |
	И     В форме "Выбор типа данных" в ТЧ "" я выбираю текущую строку
	Тогда открылось окно "Справочник3"
	И     Я закрываю окно с заголовком "Справочник3"
	Тогда открылось окно "Справочник1 (создание) *"
	И     В открытой форме я нажимаю на кнопку с заголовком "Записать и закрыть"
