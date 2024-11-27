#!/usr/bin/env python3
xx = input("Mi a kedvenc számod? ")
try:
    if int(xx) < 0:
        print("Na, negatív számot választottál?!")
    else:
        print("Ez bizony egy szép szám.")
except ValueError:
    print("De hát ez nem is szám!")
