// *******************************************/
// 0. Importe de libreria UIKit
import UIKit


// *******************************************/
// 1. Variables o constantes
// 1.1 Constantes. Son inicializadas con la palabra reservada let
let maxCounter = 3
// 1.2 Variables. Son inicializadas con la palabra reservada var
var currentCounter = 0
// 1.3 Muliple declaracion de variables
var red, green, blue : Double
// 1.3 Muliple inicialización de variables
var x = 0.0, y = 0.0, z = 0.0


// *******************************************/
// 2. Imprimir en consola
var greeting = "Hello, playground"
print(greeting)
print("El currentCounter=\(currentCounter) / maxCounter=\(maxCounter)")
// 2.1 imprime con separador
print(1.0, 2.0, 3.0, 4.0, 5.0, separator: " ... ")
// 2.2 imprime con terminador
for n in 1...5 {
    print(n, terminator: ",")
    // imprime 1,2,3,4,5,
}


// *******************************************/
// 3. Datos primitivos

// 3.1 Numeros
// 3.1.1 Enteros de 8 Bits
let signedMin8Bits = Int8.min
let signedMax8Bits = Int8.max
let unsignedMin8Bits = UInt8.min
let unsignedMax8Bits = UInt8.max
// 3.1.2 Enteros de 16 Bits
let signedMin16Bits = Int16.min
let signedMax16Bits = Int16.max
let unsignedMin16Bits = UInt16.min
let unsignedMax16Bits = UInt16.max
// 3.1.3 Enteros de 32 Bits
let signedMin32Bits = Int32.min
let signedMax32Bits = Int32.max
let unsignedMin32Bits = UInt32.min
let unsignedMax32Bits = UInt32.max
// 3.1.4 Enteros de 64 Bits
let signedMin64Bits = Int64.min
let signedMax64Bits = Int64.max
let unsignedMin64Bits = UInt64.min
let unsignedMax64Bits = UInt64.max
// 3.1.5 Int por defecto es de 64 Bits
let signedMinInt = Int.min
let signedMaxInt = Int.max
let unsignedMinInt = UInt.min
let unsignedMaxInt = UInt.max
// 3.1.6 Let por defecto es de 64 Bits
let defaultInt = 3

// 3.2 Floats y Doubles (Integers)
// 3.2.1 Floats. Reales con precision de 32 Bits
let f1 : Float = 3.14159265
// 3.2.2 Double. Reales con precision de 64 Bits
let d1 : Double = 3.14159265
// 3.2.3 Let por defecto es de Double de 64 Bits
let defaultReal = 3.1416

// 3.3 Bases numericas (Ejemplos con el número 17)
// 3.3.1 Base Decimal
let decimalInteger = 17
// 3.3.1 Base Binaria
let binaryInteger = 0b10001 // empezamos con 0b+(numero en binario)
// 3.3.1 Base Octal
let octalInteger = 0o21     // empezamos con 0o+(numero en octal)
// 3.3.1 Base Hexadecimal
let hexInteger = 0x11       // empezamos con 0o+(numero en octal)

// 3.4 Booleanos
var isActive : Bool = false;
if isActive {
    print("The user is active")
} else {
    print("The user isn't active")
}

if decimalInteger == binaryInteger {
    print("decimalInteger y binaryInteger son iguales")
}

// 3.5 String o cadenas de texto
let notFoundMessage = "Not found page"

// 3.6 Tuplas
let httpNotFoundError = (404, notFoundMessage)
let (statusCode, statusMessage) = httpNotFoundError
let (code, _) = httpNotFoundError

print("El statusCode=\(statusCode) / statusMessage=\(statusMessage)")
print("El statusCode=\(code)")
print("El statusCode=\(httpNotFoundError.0) / statusMessage=\(httpNotFoundError.1)")

let httpOKStatus = (statusCode: 200, statusMessage: "Ok")
print("El statusCode=\(httpOKStatus.statusCode) / statusMessage=\(httpOKStatus.statusMessage)")

let Persona = (firstName: "Helmer", lastName: "Barcos", age: 40)
print("Hola me llamo \(Persona.firstName) \(Persona.lastName) y tengo \(Persona.age) años")

// 3.7 Optionals
let possibleAgeAsString = "31"
let convertedAge = Int(possibleAgeAsString) // Una cadena de texto no siempre puede ser convertida a un número

// cuando no estamos seguros del tipo de dato que recibiremos podemos declararlo como optional
// lo cual significa que puede ser nil.
var responseCode: Int? = 404
var answer: String?

//print(responseCode)
//print(answer)
responseCode = nil
answer = "Hola"
//print(responseCode)
//print(answer)

// 3.8 Force Unwrapping
if convertedAge != nil {
    // Force Unwrapping \(convertedAge!)
    print("convertedAge casting fue posible. El valor es \(convertedAge!) ")
} else {
    print("convertedAge casting NO fue posible")
}

// 3.8 Optinal Binding
if let optionalBindingAnswer = answer {
    // aqui optionalBindingAnswer siempre tiene un valor
    print("answer tiene valor. El valor es \(optionalBindingAnswer)")
} else {
    // aqui optionalBindingAnswer es nil
    print("answer no tiene valor. El valor es nil")
}

if let firstNumber = Int("4"),
    let secondNumber = Int("42"),
    firstNumber < secondNumber && secondNumber < 100 {
    print("\(firstNumber) < \(secondNumber) < 100")
}

if let firstNumber = Int("pepe"),
    let secondNumber = Int("42"),
    firstNumber < secondNumber && secondNumber < 100 {
    print("\(firstNumber) < \(secondNumber) < 100")
} else {
    print("Optinal Binding no fue posible")
}

// 3.9 Unwrap implicito
let possibleString : String? = "Un string opcional"
let forcedString: String = possibleString!
let assumedString : String! = "unwrapped string de forma implicita a partir de un opcional"
let implicitString: String = assumedString

//print(assumedString) // mejor hacer el check con el Optinal Binding


// *******************************************/
// 4. Type Casting
// 4.1 Type Casting Ejemplo 1. Aqui sumamos un entero de 16 Bits con otro de 8 Bits.
let twoThousand: UInt16 = 2000
let one : UInt8 = 1
let typeCasting1 = twoThousand + UInt16(one)

// 4.2 Type Casting Ejemplo 2. Aqui sumamos un Int con Double.
let three = 3
let doubleNumber = 0.14159
let typeCasting2 = Double(three) + doubleNumber


// *******************************************/
// 5. Type Alias
typealias AudioSample = UInt16
var maxAplitude = AudioSample.max


// *******************************************/
// 6. Gestion de errores con try catch
// En este curso no han sido tratados en profundidad

func canThrowError() throws {
    
}

do {
    try canThrowError()
    print("Pude ejecutar con exito.. sigo con la ejecucion de la app")
} catch {
    // Aqui manejamos el error
}




// Preguntas frecuentes

// *******************************************/
// **  Variables y tipos de datos en Swift  **/
// *******************************************/

// 1. Cual es la palabra reservada para variables y para constantes?. Pueden cambiar de valor durante ejecución?
// R1. Para variables se utiliza var y para constantes se utiliza let. var puede cambiar. Let nunca cambia

// 2. Que se entiente por la declaracion de una variable?

// 3. Que se entiente por la inicialización de una variable?

// 4. Es obligatorio inicializar siempre una variable al momento de declarala?
// R4. No es olbligatorio. Sin embargo es una buena práctica inicializar la variable con un valor por defecto

// 5. Que tipos de datos primitivos encontramos en Swift?
// R5. Bool, Int, Float, Double entre otros

// 6. Como se le asigna un tipo estatico a la variable/constante?
// R6. var nombreDeVariable : TypoDeDato. Ejemplo -> var welcomeMessage : String

// 7. Como se le asigna un tipo estatico a multiples variables/constantes?
// R6. var variable1, variable2, variable3 : Double

// 8. Que son types annotations?
// R8. Es la capacidad de Swift para inferir el tipo de dato. Ejemplo, booleano, string, entero, flotante etc.

// *******************************************/
// ** Nomenclatura de programación en Swift **/
// *******************************************/

// 1. Que es el snake_case?
// R1. Es una forma de escritura de variables en la cual se utilizan guiones al piso para separar las palabras.
// Ejemplo: var maximum_number_of_attempts = 3

// 2. Que es el camelCase?
// R2. Es una forma de escritura de variables en la cual se utilizan letras mayúsculas para separar las palabras.
// Ejemplo: var maximumNumberOfAttempts = 3

// 3. Que tipo escritura preferiremos? snake_case o camelCase?
// R3. La técnica habitual es el camelCase. Apple lo recomienda.

// 4. Que tipo idioma de desarollo preferiremos?
// R4. Para efectos prácticos podemos utilizar Español.
// Sin embargo poco a poco debemos intentar escribir codigo en inglés.
// Esto obedece al hecho que el inglés no posee estructuras como tildes, letras especiales entre otros caracteres.

// 5. Puedo utilizar emojis en mi codigo en Swift?
// R5. La actual version de Swift (2022) lo permite.
// Sin embargo programar variables con emojis puede hacer el codigo menos entendible

// 6. Que son los comentarios y como puedo hacerlos?
// R6. Son partes para comentar codigo que puede ser olvidado o para agregar anotaciones para el equipo.
// Este es un comentario de una sola linea
/* Es es un comentario
 de multiples lineas */

// 7. Se permiten los comentarios anidados en swift?
// R. Si es posible. sin embargo su uso puede ser ambiguo
/*
 Primer comentario
 /* Comentario anidados */
*/

// *******************************************/
// **   Tipos de datos primitivos en Swift  **/
// *******************************************/

// 1. Que tipo de bases pueden usarse en swift?
// R1. Base decimal, Base binaria, Base Octal y base hexadecimal

// 2. Existen otro literales númericos en swift (formas de escribir numeros)?
// R2. Si. tambien tenemos la notación cientifica, formas de escribir millones, entre otros.

// 3. Que es Casting o type casting?
// R3. Se refiere a la estrategia de convertir un tipo de dato en otro. Por ejemplo Int8 a Int16

// 4. Que significa truncar?
// R4. Significa eliminar la parte decimal y dejar el entero de un numero. NO es igual a redondear.
// Ejemplo. Truncar 3.9 y 6.2 resulta en 3 y 6 respectivamente.

// 5. Que son los typealias?
// R5. Son alias que se le pueden asignar a un tipo de dato para hacerlo mas legible y comprensible.
// Ejemplo un UInt16 puede ser llamada AudioSample

// 6. Que son las tuplas?
// R6. Es una estructura de datos que agrupa diversos valores en una variable Sin necesidad de una clase.
// Ejemplo cuanto deseamos manejar un error con codigo y mensaje.

// 7. Que es un optional?
// R7. Es una estructura que representa un valor el cual puede esatar presente o no. No es un puntero nil o null
// El nil que este en un opcional se refiere a la ausencia de valor no a un puntero nulo.
// Usualmente resultan luego de un type casting

// 8. Que es un force unwrapping?
// R8. Forzar la conversion de un optional. Para ello se recomienda hacerlo dentro de una condicion if else

// 9. Puedo hacer un force unwrapping fuera de una condicion if else?
// R9. Si. Sin embargo es una mala practica pues la app puede crashear.
// Es importante que el force unwrapping este rodeado de una comprobacion contra nil

// 10. Que es un Optional Binding?
// R10. Es una forma mas profesional de verificar el valor de un opcional.
// Para ello se utiliza  un casting un poco mas elaborado que el force unwrapping con ayuda de una constante let

// 11. Que es un Unwrap implicito?
// R11. es marcar una variable como un opcional con el simbolo de exclamacion

// 12. Se puede trabajar directamente con variables de un Unwrap implicito?
// R12. Si, sin embargo dado que son marcados como opcionales lo mejor es utilizar la tecnica de Optional Binding


// *******************************************/
// **      Gestion de errores en Swift      **/
// *******************************************/

// 1. Que significa la palabra reservada throws?
// R1. Es una palabra reservada a traves de la cual una funcion tira/devuelve un error

// 2. Que es la estructura try catch?
// R2. Es una estructura que nos permite evaluar funciones que arrojen errores y manejar sus posibles errores

// 3. Que son las aserciones y precondiciones?
// R3. Son linea de codigo que se cumple en tiempo de ejecucion. agregan robustes al codigo.
// No agregan codigo funcional. Solo paran la ejecucion del codigo a traves de un error

// 4. Cuales son las deferencias entre aserciones y precondiciones?
// R4. Las aserciones se ejecutan en debug mientras que las precondiciones se ejecutan aun en el build (App final)
