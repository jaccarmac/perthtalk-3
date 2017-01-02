#!/usr/bin/env python3

def tokenize(line):
    space_sep = line.split()
    parsed = []
    for token in space_sep:
        if token.endswith("'"):
            parsed.append(parsed.pop() + ' ' + token)
        else:
            parsed.append(token)
    return parsed

for line in open('main.st'):
    print(tokenize(line))
