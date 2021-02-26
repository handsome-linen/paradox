# -*- coding: utf-8 -*-
"""
Created on Wed Sep 23 20:29:05 2020

@author: Mami
"""

def sortList(L, n):
    L2 = []
    counter = 0
    while (counter <= n):
        m, idx = searchMinFromList(L, n)
        L2.append(m)
        del L[idx]
        n = n-1
        counter = counter + 1
    return L2