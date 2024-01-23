# scrivere un algoritmo che dato un numero
# ne mostri la sua rappresentazione a lettere in italiano
# esempio:
# input : 1234 --> output: milleduecentotrantaquattro
#
#come funziona?
# per i primi venti numeri, non c'è altra strada che quella
# di prevedere una traduzione semplice attraverso una tabella
# 0 --> zero, 1 --> uno, 2 -> due, ..., 19 -> diciannove

def translate_to_20(n):
    if n > 19:
        return "Out of range"
    
    NUMBERS = [" ","uno","due","tre", "quattro", "cinque", "sei", "sette", "otto", "nove", "dieci", "undici","dodici","tredici","quattordici","quindici","sedici","diciasette","diciotto","dicianove"]
    return NUMBERS [n]

#dal 20 fino al 100 escluso ho la possibilità di prevedere
#una traduzione della decina e demandare la traduzione 
#dell'unità alla funz che traduce fino a 20
# 25 -> decina = 2, unità =5

def translate_to_100(n):
    if n < 20:
        return translate_to_20(n)
    if n > 99:
        return "Out of range"
    DECADES = ["venti", "trenta","quaranta","cinquanta", "sessante", "settanta", "ottanta", "novanta"]

    decade = n // 10 # la decina di n
    unit = n % 10 # unità di n
    return DECADES [decade-2] + translate_to_20(unit)

def translate_to_1000(n):
    if n < 100:
        return translate_to_100(n)
    if n > 1000:
        return "Out of range"
    
    CENTURY = ["cento","duecento", "trecento","quattrocento","cinquecento","seicento","settecento","novecento"]
    
    centinaia = n // 100 #la centinaia di n
    decina = n % 100 #unità di n
    return CENTURY [centinaia-1] + translate_to_100(decina) 




for x in range(1, 1000):
    print(translate_to_1000(x))

