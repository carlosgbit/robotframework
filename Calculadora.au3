calculadora()


Func calculadora()
   Local $PID = Run("calc.exe")
   WinWaitActive("Calculator", "", "2")
   ;Inicio de la suma
   ;Numero 2
   ControlClick ("Calculadora", "", "Button11")
   sleep (1000)
   ;Suma
   ControlClick ("Calculadora", "", "Button23")
   sleep (1000)
   ;Numero 9
   ControlClick ("Calculadora", "", "Button14")
   sleep (1000)
   ;Suma
   ControlClick ("Calculadora", "", "Button23")
   sleep (1000)
   ;Numero 7
   ControlClick ("Calculadora", "", "Button3")
   sleep (1000)
   ;Igual a
   ControlClick ("Calculadora", "", "Button28")
   sleep (1000)
   ;Cancelar
   ControlClick ("Calculadora", "", "Button8")
   sleep (1000)
   ;Inicio de la multiplicacion
   ;Numero 5
   ControlClick ("Calculadora", "", "Button10")
   sleep (1000)
   ;Por
   ControlClick ("Calculadora", "", "Button21")
   sleep (1000)
   ;Numero 4
   ControlClick ("Calculadora", "", "Button4")
   sleep (1000)
   ;Igual a
   ControlClick ("Calculadora", "", "Button28")
   sleep (1000)
   ;Cancelar
   ControlClick ("Calculadora", "", "Button8")
   sleep (1000)
   ;Inicio de la division
   ;Numero 9
   ControlClick ("Calculadora", "", "Button14")
   sleep (1000)
   ;Entre
   ControlClick ("Calculadora", "", "Button20")
   sleep (1000)
   ;Numero 3
   ControlClick ("Calculadora", "", "Button16")
   sleep (1000)
   ;Igual a
   ControlClick ("Calculadora", "", "Button28")
   sleep (1000)
   ;Cancelar
   ControlClick ("Calculadora", "", "Button8")
   sleep (1000)
   ;Inicio de la resta
   ;Numero 4
   ControlClick ("Calculadora", "", "Button4")
   ;Menos
   ControlClick ("Calculadora", "", "Button22")
   sleep (1000)
   ;Numero 2
   ControlClick ("Calculadora", "", "Button11")
   sleep (1000)
   ;Igual a
   ControlClick ("Calculadora", "", "Button28")
   sleep (1000)
   ;Cancelar
   ControlClick ("Calculadora", "", "Button8")
   ProcessClose ("$PID")
EndFunc