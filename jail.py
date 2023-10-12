import sys
import os
import code

# Define las respuestas correctas para completar el nivel.
respuestas_correctas = ["ls", "pwd", "cd"]

# Define una función para crear el "jail".
def create_jail():
    # Crea un directorio para el jail.
    jail_dir = '/path/to/jail'
    if not os.path.exists(jail_dir):
        os.makedirs(jail_dir)

    # Define las variables que estarán disponibles en el jail.
    jail_globals = {
        '__builtins__': {},
        'os': {},
        'sys': {},
        'code': {},
        'open': open,
        'print': print,
        'respuestas_correctas': respuestas_correctas,
    }

    # Crea una instancia de la consola interactiva dentro del jail.
    jail_console = code.InteractiveConsole(locals=jail_globals)

    # Ejecuta código en el jail y realiza preguntas.
    while True:
        pregunta = input("Elige una opción: 1. Listar archivos y directorios. 2. Mostrar la ubicación actual. 3. Cambiar de directorio. (Ingresa el número de la opción o 'salir' para salir): ")
        
        if pregunta.lower() == 'salir':
            break

        try:
            pregunta = int(pregunta)
            if pregunta in [1, 2, 3]:
                respuesta = input("¿Cuál es el comando correcto para la opción seleccionada? (Ingresa el comando): ")

                if respuesta == respuestas_correctas[pregunta - 1]:
                    print("¡Respuesta correcta!")
                else:
                    print("Respuesta incorrecta. Intenta de nuevo.")
            else:
                print("Opción inválida. Ingresa un número válido.")
        except ValueError:
            print("Opción inválida. Ingresa un número válido.")

if __name__ == '__main__':
    create_jail()

