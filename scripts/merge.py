#!/usr/bin/env python

import re
import sys
import operator

enc_re = re.compile(r"^ENCODING (\d+)")

def die(msg):
    sys.exit(msg)

def parse_glyphs(lines):
    glyphs = {}
    while lines:
        ls = []
        while True:
            l = lines.pop(0)
            ls.append(l)
            if l == "ENDCHAR\n":
                break
        enc = re.search(enc_re, ls[1]).group(1)
        glyphs[int(enc)] = ls
    return glyphs

props = []
glyphs = {}

for n in sys.argv[1:]:
    with open(n) as f:
        lines = f.readlines()
    i = lines.index("ENDPROPERTIES\n")
    props = lines[:i+1]
    lines = lines[i+1:]
    lines.pop(0) # CHARS ...\n
    lines.pop() # ENDCHARS\n
    glyphs.update(parse_glyphs(lines))

for l in props:
    sys.stdout.write(l)

print("CHARS {}".format(len(glyphs)))

for l in sorted(glyphs.items(), key=operator.itemgetter(0)):
    for l in l[1]:
        sys.stdout.write(l)

print("ENDFONT")
