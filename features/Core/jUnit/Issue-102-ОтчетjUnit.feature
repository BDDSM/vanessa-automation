# language: ru

@IgnoreOn82Builds
@IgnoreOnOFBuilds
@IgnoreOnWeb

Функционал: Проверка формирования отчета jUnit

Как разработчик
Я хочу чтобы корректно формировался отчет jUnit
Чтобы я мог видеть результат работы сценариев

Контекст: 
	Когда Я открываю VanessaAutomation в режиме TestClient со стандартной библиотекой
	
Сценарий: Проверка формирования секций когда используется assert сервер
	Когда В поле с именем "КаталогФичСлужебный" я указываю путь к служебной фиче "ФичаДляПроверкиОтчетаjUnit5"
	И     В открытой форме я перехожу к закладке с заголовком "Сервис"
	И я перехожу к закладке "Отчет о запуске сценариев"
	И     В открытой форме я изменяю флаг "Формировать отчет в формате jUnit"
	И     в поле каталог отчета jUnit я указываю путь к относительному каталогу "tools\jUnit"
	И Я нажимаю на кнопку перезагрузить сценарии в Vanessa-Automation TestClient
	И Я нажимаю на кнопку выполнить сценарии в Vanessa-Automation TestClient
	И в каталоге jUnit появился 1 файл xml	
	Если Версия платформы ">" "8.3.9.0" Тогда	
		И файл "$НайденноеИмяФайлаxml$" содержит строки
				|'<expected>111</expected>'|
				|'<actual>222</actual>'|
	
	
	
Сценарий: Проверка формирования секций когда используется assert клиент
	Когда В поле с именем "КаталогФичСлужебный" я указываю путь к служебной фиче "ФичаДляПроверкиОтчетаjUnit4"
	И     В открытой форме я перехожу к закладке с заголовком "Сервис"
	И я перехожу к закладке "Отчет о запуске сценариев"
	И     В открытой форме я изменяю флаг "Формировать отчет в формате jUnit"
	И     в поле каталог отчета jUnit я указываю путь к относительному каталогу "tools\jUnit"
	И Я нажимаю на кнопку перезагрузить сценарии в Vanessa-Automation TestClient
	И Я нажимаю на кнопку выполнить сценарии в Vanessa-Automation TestClient
	И в каталоге jUnit появился 1 файл xml	
	Если Версия платформы ">" "8.3.9.0" Тогда	
		И файл "$НайденноеИмяФайлаxml$" содержит строки
				|'<expected>111</expected>'|
				|'<actual>222</actual>'|
	
	
	
Сценарий: Проверка формирования краткого описания ошибки
	Когда В поле с именем "КаталогФичСлужебный" я указываю путь к служебной фиче "ФичаДляПроверкиОтчетаjUnit3"
	И     В открытой форме я перехожу к закладке с заголовком "Сервис"
	И я перехожу к закладке "Отчет о запуске сценариев"
	И     В открытой форме я изменяю флаг "Формировать отчет в формате jUnit"
	И     в поле каталог отчета jUnit я указываю путь к относительному каталогу "tools\jUnit"
	И Я нажимаю на кнопку перезагрузить сценарии в Vanessa-Automation TestClient
	И Я нажимаю на кнопку выполнить сценарии в Vanessa-Automation TestClient
	И в каталоге jUnit появился 1 файл xml	
	Если Версия платформы ">" "8.3.9.0" Тогда	
		И файл "$НайденноеИмяФайлаxml$" содержит строки
				|'failure message="Текст исключения 222"'|
				|'<![CDATA['|

				
	
Сценарий: Проверка формирования classname, когда указан специальный тег
	Когда В поле с именем "КаталогФичСлужебный" я указываю путь к служебной фиче "ФичаДляПроверкиОтчетаjUnit2"
	И     В открытой форме я перехожу к закладке с заголовком "Сервис"
	И я перехожу к закладке "Отчет о запуске сценариев"
	И     В открытой форме я изменяю флаг "Формировать отчет в формате jUnit"
	И     в поле каталог отчета jUnit я указываю путь к относительному каталогу "tools\jUnit"
	И Я нажимаю на кнопку перезагрузить сценарии в Vanessa-Automation TestClient
	И Я нажимаю на кнопку выполнить сценарии в Vanessa-Automation TestClient
	И в каталоге jUnit появился 1 файл xml	
	Если Версия платформы ">" "8.3.9.0" Тогда	
		Если поле с именем "ВерсияПоставки" имеет значение "standart" тогда
			И файл "$НайденноеИмяФайлаxml$" содержит строки
				|'classname="ВнешняяОбработка.Условие.Форма.Форма.Форма'|
		Иначе		
			И файл "$НайденноеИмяФайлаxml$" содержит строки
				|'classname="ВнешняяОбработка.VanessaAutomationsingle.Форма.Тест_Условие.Форма'|
	
	
	
Сценарий: Простая проверка отчета jUnit
	Когда В поле с именем "КаталогФичСлужебный" я указываю путь к служебной фиче "ФичаДляПроверкиОтчетаjUnit1"
	И     В открытой форме я перехожу к закладке с заголовком "Сервис"
	И я перехожу к закладке "Отчет о запуске сценариев"
	И     В открытой форме я изменяю флаг "Формировать отчет в формате jUnit"
	И     в поле каталог отчета jUnit я указываю путь к относительному каталогу "tools\jUnit"
	И Я нажимаю на кнопку перезагрузить сценарии в Vanessa-Automation TestClient
	И Я нажимаю на кнопку выполнить сценарии в Vanessa-Automation TestClient
	И в каталоге jUnit появился 1 файл xml
