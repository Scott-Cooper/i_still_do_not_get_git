  INPUT "How many numbers should be sorted? "; T
  DIM n(T)
  FOR i = 1 TO T
    PRINT "NUMBER:"; i
    INPUT n(i)
  NEXT i
  'Calculations:
  C = T
E180:
  C = INT(C / 2)
  IF C = 0 THEN GOTO C330
  D = T - C
  E = 1
I220:
  f = E
F230:
  g = f + C
  IF n(f) > n(g) THEN SWAP n(f), n(g)
  f = f - C
  IF f > 0 THEN GOTO F230
  E = E + 1
  IF E > D THEN GOTO E180
  GOTO I220
C330:
  PRINT "The sorted list is"
  FOR i = 1 TO T
    PRINT n(i)
  NEXT i