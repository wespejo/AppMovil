Feature: apertura de cuenta de ahorros ExtraCash
#Scenario (+)positivo
  Scenario:Solicitud de apertura de cuenta de ahorros del tipo cuenta simple moneda soles
    Given: el cliente selecciona productos
    When: el cliente selecciona abre tu cuenta aqui
    And: se habilita la nueva ventana te ofrecemos tipos de cuenta
    Then: el cliente selecciona el producto tipo cuenta simple
    And: el cliente selecciona la opción me interesa
    And: el cliente acepta los terminos y condiciones
    #Scenario (-)positivo
      Scenario:Solicitud de apertura de cuenta de ahorros del tipo cuenta simple moneda soles
        Given: el cliente selecciona productos
        When: el cliente selecciona abre tu cuenta aqui
        And: se habilita la nueva ventana te ofrecemos tipos de cuenta
        Then: el cliente selecciona el producto tipo cuenta simple
        And: el cliente selecciona la opción me interesa
        But: el cliente no puede continuar la operacion mostrando el mensaje ocurrio un problema
