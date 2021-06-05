# -*- coding: utf-8 -*-
"""
Created on Sat Jun  5 14:54:36 2021

@author: bzncrsrtc
"""

flatten_list = []

def flatten(input_list):
    for item in input_list:
        if isinstance(item, list):
            flatten(item)
        else:
            flatten_list.append(item)

flatten_input_list = [[1,'a',['cat'],2],[[[3]],'dog'],4,5]
flatten(flatten_input_list)

print("Input List For Flatten:")
print(flatten_input_list)
print("Flatten List:")
print(flatten_list)



reversed_list = []

def reverse(input_list):
    for item in reversed(input_list):
        if isinstance(item, list):
            reverse(item)
        else:
            reversed_list.append(item)

reverse_input_list = [[1, 2], [3, 4], [5, 6, 7]]
reverse(reverse_input_list)

print("Input List For Reverse:")
print(reverse_input_list)
print("Reversed List")
print(reversed_list)
    
