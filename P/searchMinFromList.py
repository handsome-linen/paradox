# -*- coding: utf-8 -*-
"""
Created on Wed Sep 23 20:24:59 2020

@author: Mami
"""

def searchMinFromList(L, n):
    minValue = L[0]
    idx = 0
    counter = 1
    while (counter <= n):
        v = L[counter]
        if (v < minValue):
            minValue = v
            idx = counter
        else:
            pass
        counter = counter + 1
    return minValue, idx