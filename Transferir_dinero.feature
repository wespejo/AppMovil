@MVP-AppMOvil @Android @IPhone
Feature: Transferir Dinero
  Como Cliente de banco IBK
  Quiero transferir dinero entre mis cuentas
  Para Financiar mi TC
  # Uso de Background
  Background:
    Given El Cliente está en la página Transferir
  # Primer Escenario (+)positivo
  Scenario: Cuando el cliente tiene dinero disponible
    #Given El Cliente está en la página Transferir
    And El ciente tiene cuenta bancaria con tipo de moneda soles
    And El Cliente tiene dinero disponible en cuenta bancaria
    When El cliente solicita transferir dinero entre sus cuentas
    Then  El dinero es transferido a la segunda cuenta bancaria
    """
    Nombre: Juan Torres
    dineroDisponiblePrimeraCuenta: 1000
    dineroTransferido: 100
    """
    # Segundo Escenario (-)negativo
    Scenario: Cuando el cliente no tiene dinero disponible
      #Given El Cliente está en la página Transferir
      And El ciente tiene cuenta bancaria con tipo de moneda soles
      And El Cliente no tiene dinero disponible en cuenta bancaria
      When El cliente solicita transferir dinero entre sus cuentas
      Then  El cliente no puede transferir a la segunda cuenta bancaria
      And el nesaje deberia mostrar: No cuenta con monto disponible para realizar dicha operación
    #Scenario Outline
    Scenario Outline: Transferir Dinero
      Given La cuenta bancaria tiene <dineroDisponiblePrimeraCuenta>
      And El Cliente tiene cuenta bancaria con tipo de moneda <moneda>
      When El Cliente solicita Transferir <dineroTransferido> entre sus cuentas
      Then El dinero es transferido a la segunda cuenta bancaria <mensaje>
      Examples:
      |dineroDisponiblePrimeraCuenta|moneda|dineroTransferido|mensaje               |
      |1000                         |soles |100              |Transferncia realizada|
