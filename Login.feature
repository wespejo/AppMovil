#Autor: Wagner
#Idioma: Español
@MVP-AppMOvil @Android @IPhone
Feature: Login
  Como Cliente,
  Quiero ingresar con credenciales user & pass
  Para asi poder utilizar el App AppMovil

  
  Rule: el cliente debe ser mayor de edad o igual a 18 años
  # Uso de Background
  Background:
    Given Yo estoy en página login del  AppMovil
  # El primer Escenario (+)Positivo
  @SRT-2021-Automation
  Scenario: Cuando realizo el login de credenciales de user & pass validos
    #Given Yo estoy en página login del  AppMovil
    When yo registro la cuenta de email textbox con el valor  "neyespejo@gmail.com"
    And Yo Registro el Password Textbox con el valor "123456"
    And Yo doy Click en el botón Login
    Then Yo deberia estar en la pagina Home Page del App Movil
    And El Titulo de la página de Home Page es "Bienvenida"
    But El botón Login no debería estar presente en la página
    # El Segundo Escenario (-)Negativo
    Scenario: Cuando realizo el login de credenciales de user & pass no validos
      #Given Yo estoy en página login del  AppMovil
      When yo registro la cuenta de email textbox con el valor  "email_no.valido@gmail.com"
      And Yo Registro el Password Textbox con el valor "Clave.Errado"
      And Yo doy Click en el botón Login
      Then Yo no puedo acceder a la pagina Home Page del App Movil
      And El mensaje debería mostrar Usuario y Password errados
    #Scenario Outline
    Scenario: Cuando realizo el login de credenciales de user & pass validos
      #Given Yo estoy en página login del  AppMovil
      When yo registro la cuenta de email textbox con el valor  <email>
      And Yo Registro el Password Textbox con el valor <password>
      And Yo doy Click en el botón Login
      Then Yo deberia estar en la pagina Home Page del App Movil
      And El Titulo de la página de Home Page es "Bienvenida"
      But El botón Login no debería estar presente en la página
      Examples:
      |email               |password|
      |neyespejo@gmail.com | 123456 |
