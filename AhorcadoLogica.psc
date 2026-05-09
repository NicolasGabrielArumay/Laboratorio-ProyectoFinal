Algoritmo AhorcadoLogica
	
    Definir palabra Como Cadena
    Definir guess Como Cadena
    Definir h Como Entero
    Definir ganado Como Logico
    Dimension palabra[6]
    palabra[1] = "ola"
    palabra[2] = "si"
    palabra[3] = "salame"
    palabra[4] = "rojo"
    palabra[5] = "naranja"
    palabra[6] = "pepino"
    h = Aleatorio(1,6)
	Escribir palabra[h]
    ganado = Nogano
    Escribir "Adivina la palabra:"
    Mientras ganado = Nogano Hacer
        Leer guess
        Si palabra[h] = guess Entonces
            Escribir "Le atinaste"
            ganado = Verdadero
        SiNo
            Escribir "No le atinaste"
        FinSi
    FinMientras
FinAlgoritmo