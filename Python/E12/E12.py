from __future__ import print_function


def main():
    Msg = input("Introducir Mensaje: ")
    Llave     = int(input("Llave [1-26]: "))
    Modo    = input("Cifrar o Descifrar [c/d]: ")

    if Modo.lower().startswith('c'):
        Modo = "cifrar"
    elif Modo.lower().startswith('d'):
        Modo = "descifrar"

    translated = encdec(Msg, Llave, Modo)
    if Modo ==   "cifrar":
        print(("Mensaje Cifrado:", translated))
        exit
    elif Modo == "descifrar":
        print(("Mensaje Descifrado:", translated))
        exit

def encdec(Msg, Llave, Modo):
    Msg    = Msg.upper()
    translated = ""
    letras    = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz1234567890 !?."
    for simbolo in Msg:
        if simbolo in letras:
            num = letras.find(simbolo)
            if Modo ==   "cifrar":
                num = num + Llave
            elif Modo == "descifrar":
                num = num - Llave

            if num >= len(letras):
                num -= len(letras)
            elif num < 0:
                num += len(letras)

            translated += letras[num]
        else:
            translated += simbolo
    return translated
    exit

if __name__ == '__main__':
    import doctest
    doctest.testmod()
    main()
    input()
