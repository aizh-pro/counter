Feature: Вход

  Scenario: Вход под админом
    Given Я открыл страницу "Входа"
    When Я ввожу текст "admin" в поле "username"
    And Я ввожу текст "admin" в поле "password"
    And Я отправляю форму
    Then Я должен быть на главной странице
    And Я должен видеть ссылку на личный кабинет пользователя "admin"

  Scenario: Не успешный вход
    Given Я открыл страницу "Входа"
    And Я ввожу текст "no-admin" в поле "username"
    And Я ввожу текст "no-admin" в поле "password"
    When Я отправляю форму
    Then Я должен быть на странице входа
    And Я должен видеть сообщение об ошибке с текстом "Неверное имя пользователя или пароль."