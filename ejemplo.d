import std.stdio;
import std.conv; //para la lectura de caracteres nueri
import std.exception; //para manejar las excepciones 
import std.random;  // Para generar números aleatorios
import std.array;   // Para manejar arreglos dinámicos

void main() {
    try{
    int numero = leerNumero();

    if (numero > 0) {
        writeln("El numero es positivo.");
    } else if (numero < 0) {
        writeln("El numero es negativo.");
    } else {
        writeln("El numero es cero.");
    }

    // Ejemplo de bucle for
    CicloFor(numero);

    // Ejemplo de bucle while
    CicloWhile(numero);

    //ejemplo de numeros aleatorios y arrays 
    int[] arreglo = generarArregloAleatorio(numero);

    writeln("Arreglo de ", numero , " caracteres generado: ", arreglo);

    }catch (ConvException e) {//Para excepciones de conversión 
        writeln("Error: Has introducido un valor que no es un número.");
    }catch (Throwable e) {
        // Manejo de otras excepciones, si es necesario
        writeln("Excepción inesperada: ", e.msg);
    }
}

int leerNumero(){
    writeln("Introduce un numero:");
    int numero;
    readf(" %s", &numero);
    return numero;
}

void CicloFor(int numero){
    writeln("Bucle for: Imprimiendo numeros del 1 al ",numero);
    for (int i = 1; i <= numero; i++) {
        writeln(i);
    }
}

void CicloWhile (int numero){
    writeln("Bucle while: Cuenta regresiva desde ", numero);
    int contador = numero;
    while (contador > 0) {
        writeln(contador);
        contador--;
    }
}

int[] generarArregloAleatorio(int tamano) {
    int[] arreglo; 

    foreach (i; 0 .. tamano) {
        arreglo ~= uniform(0, 100); 
    }

    return arreglo; 
}