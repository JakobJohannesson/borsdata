Börsdata API i R
================

För att använda dig av paketet behöver du Börsdata pro.

Installera från GitHub:
-----------------------

    # install.packages("devtools")
    devtools::install_github('jakobjohannesson/borsdata', build_vignettes = TRUE)

Om du saknar devtools, ta bort kommentaren (\#) och installera det innan
du installerar borsdata.

Introduktion till paketet
-------------------------

    vignette("borsdata")

Läs mitt inlägg på min hemsida om hur du kommer igång med [Börsdata
API](https://www.jakobj.se/hur-anvander-jag-borsdatas-api/).

Beskrivning av alla funktioner finns att tillgå genom:
------------------------------------------------------

    help(package = "borsdata")

Senaste uppdateringen handlar om nyckeltal/KPI:er. Ett inlägg om hur
dessa funktioner fungerar kan du se på min hemsida inom kort.

<table border="1">
<tr>
<th>
</th>
<th>
Name
</th>
<th>
KpiId
</th>
<th>
Reporttype
</th>
<th>
Pricetype
</th>
<th>
Description
</th>
</tr>
<tr>
<td align="right">
1
</td>
<td>
P/E
</td>
<td align="right">
2
</td>
<td>
year
</td>
<td>
mean
</td>
<td>
Year Mean
</td>
</tr>
<tr>
<td align="right">
2
</td>
<td>
P/E
</td>
<td align="right">
2
</td>
<td>
year
</td>
<td>
low
</td>
<td>
Year Low
</td>
</tr>
<tr>
<td align="right">
3
</td>
<td>
P/E
</td>
<td align="right">
2
</td>
<td>
year
</td>
<td>
high
</td>
<td>
Year High
</td>
</tr>
<tr>
<td align="right">
4
</td>
<td>
P/E
</td>
<td align="right">
2
</td>
<td>
r12
</td>
<td>
mean
</td>
<td>
R12 Mean
</td>
</tr>
<tr>
<td align="right">
5
</td>
<td>
P/E
</td>
<td align="right">
2
</td>
<td>
r12
</td>
<td>
low
</td>
<td>
R12 Low
</td>
</tr>
<tr>
<td align="right">
6
</td>
<td>
P/E
</td>
<td align="right">
2
</td>
<td>
r12
</td>
<td>
high
</td>
<td>
R12 High
</td>
</tr>
<tr>
<td align="right">
7
</td>
<td>
P/S
</td>
<td align="right">
3
</td>
<td>
year
</td>
<td>
mean
</td>
<td>
Year Mean
</td>
</tr>
<tr>
<td align="right">
8
</td>
<td>
P/S
</td>
<td align="right">
3
</td>
<td>
year
</td>
<td>
low
</td>
<td>
Year Low
</td>
</tr>
<tr>
<td align="right">
9
</td>
<td>
P/S
</td>
<td align="right">
3
</td>
<td>
year
</td>
<td>
high
</td>
<td>
Year High
</td>
</tr>
<tr>
<td align="right">
10
</td>
<td>
P/S
</td>
<td align="right">
3
</td>
<td>
r12
</td>
<td>
mean
</td>
<td>
R12 Mean
</td>
</tr>
<tr>
<td align="right">
11
</td>
<td>
P/S
</td>
<td align="right">
3
</td>
<td>
r12
</td>
<td>
low
</td>
<td>
R12 Low
</td>
</tr>
<tr>
<td align="right">
12
</td>
<td>
P/S
</td>
<td align="right">
3
</td>
<td>
r12
</td>
<td>
high
</td>
<td>
R12 High
</td>
</tr>
<tr>
<td align="right">
13
</td>
<td>
P/B
</td>
<td align="right">
4
</td>
<td>
year
</td>
<td>
mean
</td>
<td>
Year Mean
</td>
</tr>
<tr>
<td align="right">
14
</td>
<td>
P/B
</td>
<td align="right">
4
</td>
<td>
year
</td>
<td>
low
</td>
<td>
Year Low
</td>
</tr>
<tr>
<td align="right">
15
</td>
<td>
P/B
</td>
<td align="right">
4
</td>
<td>
year
</td>
<td>
high
</td>
<td>
Year High
</td>
</tr>
<tr>
<td align="right">
16
</td>
<td>
P/B
</td>
<td align="right">
4
</td>
<td>
r12
</td>
<td>
mean
</td>
<td>
R12 Mean
</td>
</tr>
<tr>
<td align="right">
17
</td>
<td>
P/B
</td>
<td align="right">
4
</td>
<td>
r12
</td>
<td>
low
</td>
<td>
R12 Low
</td>
</tr>
<tr>
<td align="right">
18
</td>
<td>
P/B
</td>
<td align="right">
4
</td>
<td>
r12
</td>
<td>
high
</td>
<td>
R12 High
</td>
</tr>
<tr>
<td align="right">
19
</td>
<td>
P/EBIT
</td>
<td align="right">
75
</td>
<td>
year
</td>
<td>
mean
</td>
<td>
Year Mean
</td>
</tr>
<tr>
<td align="right">
20
</td>
<td>
P/EBIT
</td>
<td align="right">
75
</td>
<td>
year
</td>
<td>
low
</td>
<td>
Year Low
</td>
</tr>
<tr>
<td align="right">
21
</td>
<td>
P/EBIT
</td>
<td align="right">
75
</td>
<td>
year
</td>
<td>
high
</td>
<td>
Year High
</td>
</tr>
<tr>
<td align="right">
22
</td>
<td>
P/EBIT
</td>
<td align="right">
75
</td>
<td>
r12
</td>
<td>
mean
</td>
<td>
R12 Mean
</td>
</tr>
<tr>
<td align="right">
23
</td>
<td>
P/EBIT
</td>
<td align="right">
75
</td>
<td>
r12
</td>
<td>
low
</td>
<td>
R12 Low
</td>
</tr>
<tr>
<td align="right">
24
</td>
<td>
P/EBIT
</td>
<td align="right">
75
</td>
<td>
r12
</td>
<td>
high
</td>
<td>
R12 High
</td>
</tr>
<tr>
<td align="right">
25
</td>
<td>
P/EBITDA
</td>
<td align="right">
74
</td>
<td>
year
</td>
<td>
mean
</td>
<td>
Year Mean
</td>
</tr>
<tr>
<td align="right">
26
</td>
<td>
P/EBITDA
</td>
<td align="right">
74
</td>
<td>
year
</td>
<td>
low
</td>
<td>
Year Low
</td>
</tr>
<tr>
<td align="right">
27
</td>
<td>
P/EBITDA
</td>
<td align="right">
74
</td>
<td>
year
</td>
<td>
high
</td>
<td>
Year High
</td>
</tr>
<tr>
<td align="right">
28
</td>
<td>
P/EBITDA
</td>
<td align="right">
74
</td>
<td>
r12
</td>
<td>
mean
</td>
<td>
R12 Mean
</td>
</tr>
<tr>
<td align="right">
29
</td>
<td>
P/EBITDA
</td>
<td align="right">
74
</td>
<td>
r12
</td>
<td>
low
</td>
<td>
R12 Low
</td>
</tr>
<tr>
<td align="right">
30
</td>
<td>
P/EBITDA
</td>
<td align="right">
74
</td>
<td>
r12
</td>
<td>
high
</td>
<td>
R12 High
</td>
</tr>
<tr>
<td align="right">
31
</td>
<td>
P/FCF
</td>
<td align="right">
76
</td>
<td>
year
</td>
<td>
mean
</td>
<td>
Year Mean
</td>
</tr>
<tr>
<td align="right">
32
</td>
<td>
P/FCF
</td>
<td align="right">
76
</td>
<td>
year
</td>
<td>
low
</td>
<td>
Year Low
</td>
</tr>
<tr>
<td align="right">
33
</td>
<td>
P/FCF
</td>
<td align="right">
76
</td>
<td>
year
</td>
<td>
high
</td>
<td>
Year High
</td>
</tr>
<tr>
<td align="right">
34
</td>
<td>
P/FCF
</td>
<td align="right">
76
</td>
<td>
r12
</td>
<td>
mean
</td>
<td>
R12 Mean
</td>
</tr>
<tr>
<td align="right">
35
</td>
<td>
P/FCF
</td>
<td align="right">
76
</td>
<td>
r12
</td>
<td>
low
</td>
<td>
R12 Low
</td>
</tr>
<tr>
<td align="right">
36
</td>
<td>
P/FCF
</td>
<td align="right">
76
</td>
<td>
r12
</td>
<td>
high
</td>
<td>
R12 High
</td>
</tr>
<tr>
<td align="right">
37
</td>
<td>
EV/E
</td>
<td align="right">
12
</td>
<td>
year
</td>
<td>
mean
</td>
<td>
Year Mean
</td>
</tr>
<tr>
<td align="right">
38
</td>
<td>
EV/E
</td>
<td align="right">
12
</td>
<td>
year
</td>
<td>
low
</td>
<td>
Year Low
</td>
</tr>
<tr>
<td align="right">
39
</td>
<td>
EV/E
</td>
<td align="right">
12
</td>
<td>
year
</td>
<td>
high
</td>
<td>
Year High
</td>
</tr>
<tr>
<td align="right">
40
</td>
<td>
EV/E
</td>
<td align="right">
12
</td>
<td>
r12
</td>
<td>
mean
</td>
<td>
R12 Mean
</td>
</tr>
<tr>
<td align="right">
41
</td>
<td>
EV/E
</td>
<td align="right">
12
</td>
<td>
r12
</td>
<td>
low
</td>
<td>
R12 Low
</td>
</tr>
<tr>
<td align="right">
42
</td>
<td>
EV/E
</td>
<td align="right">
12
</td>
<td>
r12
</td>
<td>
high
</td>
<td>
R12 High
</td>
</tr>
<tr>
<td align="right">
43
</td>
<td>
EV/S
</td>
<td align="right">
15
</td>
<td>
year
</td>
<td>
mean
</td>
<td>
Year Mean
</td>
</tr>
<tr>
<td align="right">
44
</td>
<td>
EV/S
</td>
<td align="right">
15
</td>
<td>
year
</td>
<td>
low
</td>
<td>
Year Low
</td>
</tr>
<tr>
<td align="right">
45
</td>
<td>
EV/S
</td>
<td align="right">
15
</td>
<td>
year
</td>
<td>
high
</td>
<td>
Year High
</td>
</tr>
<tr>
<td align="right">
46
</td>
<td>
EV/S
</td>
<td align="right">
15
</td>
<td>
r12
</td>
<td>
mean
</td>
<td>
R12 Mean
</td>
</tr>
<tr>
<td align="right">
47
</td>
<td>
EV/S
</td>
<td align="right">
15
</td>
<td>
r12
</td>
<td>
low
</td>
<td>
R12 Low
</td>
</tr>
<tr>
<td align="right">
48
</td>
<td>
EV/S
</td>
<td align="right">
15
</td>
<td>
r12
</td>
<td>
high
</td>
<td>
R12 High
</td>
</tr>
<tr>
<td align="right">
49
</td>
<td>
EV/EBIT
</td>
<td align="right">
10
</td>
<td>
year
</td>
<td>
mean
</td>
<td>
Year Mean
</td>
</tr>
<tr>
<td align="right">
50
</td>
<td>
EV/EBIT
</td>
<td align="right">
10
</td>
<td>
year
</td>
<td>
low
</td>
<td>
Year Low
</td>
</tr>
<tr>
<td align="right">
51
</td>
<td>
EV/EBIT
</td>
<td align="right">
10
</td>
<td>
year
</td>
<td>
high
</td>
<td>
Year High
</td>
</tr>
<tr>
<td align="right">
52
</td>
<td>
EV/EBIT
</td>
<td align="right">
10
</td>
<td>
r12
</td>
<td>
mean
</td>
<td>
R12 Mean
</td>
</tr>
<tr>
<td align="right">
53
</td>
<td>
EV/EBIT
</td>
<td align="right">
10
</td>
<td>
r12
</td>
<td>
low
</td>
<td>
R12 Low
</td>
</tr>
<tr>
<td align="right">
54
</td>
<td>
EV/EBIT
</td>
<td align="right">
10
</td>
<td>
r12
</td>
<td>
high
</td>
<td>
R12 High
</td>
</tr>
<tr>
<td align="right">
55
</td>
<td>
EV/EBITDA
</td>
<td align="right">
11
</td>
<td>
year
</td>
<td>
mean
</td>
<td>
Year Mean
</td>
</tr>
<tr>
<td align="right">
56
</td>
<td>
EV/EBITDA
</td>
<td align="right">
11
</td>
<td>
year
</td>
<td>
low
</td>
<td>
Year Low
</td>
</tr>
<tr>
<td align="right">
57
</td>
<td>
EV/EBITDA
</td>
<td align="right">
11
</td>
<td>
year
</td>
<td>
high
</td>
<td>
Year High
</td>
</tr>
<tr>
<td align="right">
58
</td>
<td>
EV/EBITDA
</td>
<td align="right">
11
</td>
<td>
r12
</td>
<td>
mean
</td>
<td>
R12 Mean
</td>
</tr>
<tr>
<td align="right">
59
</td>
<td>
EV/EBITDA
</td>
<td align="right">
11
</td>
<td>
r12
</td>
<td>
low
</td>
<td>
R12 Low
</td>
</tr>
<tr>
<td align="right">
60
</td>
<td>
EV/EBITDA
</td>
<td align="right">
11
</td>
<td>
r12
</td>
<td>
high
</td>
<td>
R12 High
</td>
</tr>
<tr>
<td align="right">
61
</td>
<td>
EV/OP
</td>
<td align="right">
78
</td>
<td>
year
</td>
<td>
mean
</td>
<td>
Year Mean
</td>
</tr>
<tr>
<td align="right">
62
</td>
<td>
EV/OP
</td>
<td align="right">
78
</td>
<td>
year
</td>
<td>
low
</td>
<td>
Year Low
</td>
</tr>
<tr>
<td align="right">
63
</td>
<td>
EV/OP
</td>
<td align="right">
78
</td>
<td>
year
</td>
<td>
high
</td>
<td>
Year High
</td>
</tr>
<tr>
<td align="right">
64
</td>
<td>
EV/OP
</td>
<td align="right">
78
</td>
<td>
r12
</td>
<td>
mean
</td>
<td>
R12 Mean
</td>
</tr>
<tr>
<td align="right">
65
</td>
<td>
EV/OP
</td>
<td align="right">
78
</td>
<td>
r12
</td>
<td>
low
</td>
<td>
R12 Low
</td>
</tr>
<tr>
<td align="right">
66
</td>
<td>
EV/OP
</td>
<td align="right">
78
</td>
<td>
r12
</td>
<td>
high
</td>
<td>
R12 High
</td>
</tr>
<tr>
<td align="right">
67
</td>
<td>
EV/FCF
</td>
<td align="right">
13
</td>
<td>
year
</td>
<td>
mean
</td>
<td>
Year Mean
</td>
</tr>
<tr>
<td align="right">
68
</td>
<td>
EV/FCF
</td>
<td align="right">
13
</td>
<td>
year
</td>
<td>
low
</td>
<td>
Year Low
</td>
</tr>
<tr>
<td align="right">
69
</td>
<td>
EV/FCF
</td>
<td align="right">
13
</td>
<td>
year
</td>
<td>
high
</td>
<td>
Year High
</td>
</tr>
<tr>
<td align="right">
70
</td>
<td>
EV/FCF
</td>
<td align="right">
13
</td>
<td>
r12
</td>
<td>
mean
</td>
<td>
R12 Mean
</td>
</tr>
<tr>
<td align="right">
71
</td>
<td>
EV/FCF
</td>
<td align="right">
13
</td>
<td>
r12
</td>
<td>
low
</td>
<td>
R12 Low
</td>
</tr>
<tr>
<td align="right">
72
</td>
<td>
EV/FCF
</td>
<td align="right">
13
</td>
<td>
r12
</td>
<td>
high
</td>
<td>
R12 High
</td>
</tr>
<tr>
<td align="right">
73
</td>
<td>
P/B/tang
</td>
<td align="right">
18
</td>
<td>
year
</td>
<td>
mean
</td>
<td>
Year Mean
</td>
</tr>
<tr>
<td align="right">
74
</td>
<td>
P/B/tang
</td>
<td align="right">
18
</td>
<td>
year
</td>
<td>
low
</td>
<td>
Year Low
</td>
</tr>
<tr>
<td align="right">
75
</td>
<td>
P/B/tang
</td>
<td align="right">
18
</td>
<td>
year
</td>
<td>
high
</td>
<td>
Year High
</td>
</tr>
<tr>
<td align="right">
76
</td>
<td>
P/B/tang
</td>
<td align="right">
18
</td>
<td>
r12
</td>
<td>
mean
</td>
<td>
R12 Mean
</td>
</tr>
<tr>
<td align="right">
77
</td>
<td>
P/B/tang
</td>
<td align="right">
18
</td>
<td>
r12
</td>
<td>
low
</td>
<td>
R12 Low
</td>
</tr>
<tr>
<td align="right">
78
</td>
<td>
P/B/tang
</td>
<td align="right">
18
</td>
<td>
r12
</td>
<td>
high
</td>
<td>
R12 High
</td>
</tr>
<tr>
<td align="right">
79
</td>
<td>
EBIT/EV
</td>
<td align="right">
17
</td>
<td>
year
</td>
<td>
mean
</td>
<td>
Year Mean
</td>
</tr>
<tr>
<td align="right">
80
</td>
<td>
EBIT/EV
</td>
<td align="right">
17
</td>
<td>
year
</td>
<td>
low
</td>
<td>
Year Low
</td>
</tr>
<tr>
<td align="right">
81
</td>
<td>
EBIT/EV
</td>
<td align="right">
17
</td>
<td>
year
</td>
<td>
high
</td>
<td>
Year High
</td>
</tr>
<tr>
<td align="right">
82
</td>
<td>
EBIT/EV
</td>
<td align="right">
17
</td>
<td>
r12
</td>
<td>
mean
</td>
<td>
R12 Mean
</td>
</tr>
<tr>
<td align="right">
83
</td>
<td>
EBIT/EV
</td>
<td align="right">
17
</td>
<td>
r12
</td>
<td>
low
</td>
<td>
R12 Low
</td>
</tr>
<tr>
<td align="right">
84
</td>
<td>
EBIT/EV
</td>
<td align="right">
17
</td>
<td>
r12
</td>
<td>
high
</td>
<td>
R12 High
</td>
</tr>
<tr>
<td align="right">
85
</td>
<td>
BorsVarde
</td>
<td align="right">
50
</td>
<td>
year
</td>
<td>
mean
</td>
<td>
Year Mean
</td>
</tr>
<tr>
<td align="right">
86
</td>
<td>
BorsVarde
</td>
<td align="right">
50
</td>
<td>
year
</td>
<td>
low
</td>
<td>
Year Low
</td>
</tr>
<tr>
<td align="right">
87
</td>
<td>
BorsVarde
</td>
<td align="right">
50
</td>
<td>
year
</td>
<td>
high
</td>
<td>
Year High
</td>
</tr>
<tr>
<td align="right">
88
</td>
<td>
BorsVarde
</td>
<td align="right">
50
</td>
<td>
r12
</td>
<td>
mean
</td>
<td>
R12 Mean
</td>
</tr>
<tr>
<td align="right">
89
</td>
<td>
BorsVarde
</td>
<td align="right">
50
</td>
<td>
r12
</td>
<td>
low
</td>
<td>
R12 Low
</td>
</tr>
<tr>
<td align="right">
90
</td>
<td>
BorsVarde
</td>
<td align="right">
50
</td>
<td>
r12
</td>
<td>
high
</td>
<td>
R12 High
</td>
</tr>
<tr>
<td align="right">
91
</td>
<td>
EV
</td>
<td align="right">
49
</td>
<td>
year
</td>
<td>
mean
</td>
<td>
Year Mean
</td>
</tr>
<tr>
<td align="right">
92
</td>
<td>
EV
</td>
<td align="right">
49
</td>
<td>
year
</td>
<td>
low
</td>
<td>
Year Low
</td>
</tr>
<tr>
<td align="right">
93
</td>
<td>
EV
</td>
<td align="right">
49
</td>
<td>
year
</td>
<td>
high
</td>
<td>
Year High
</td>
</tr>
<tr>
<td align="right">
94
</td>
<td>
EV
</td>
<td align="right">
49
</td>
<td>
r12
</td>
<td>
mean
</td>
<td>
R12 Mean
</td>
</tr>
<tr>
<td align="right">
95
</td>
<td>
EV
</td>
<td align="right">
49
</td>
<td>
r12
</td>
<td>
low
</td>
<td>
R12 Low
</td>
</tr>
<tr>
<td align="right">
96
</td>
<td>
EV
</td>
<td align="right">
49
</td>
<td>
r12
</td>
<td>
high
</td>
<td>
R12 High
</td>
</tr>
<tr>
<td align="right">
97
</td>
<td>
Bruttomarginal
</td>
<td align="right">
28
</td>
<td>
year
</td>
<td>
mean
</td>
<td>
Year
</td>
</tr>
<tr>
<td align="right">
98
</td>
<td>
Bruttomarginal
</td>
<td align="right">
28
</td>
<td>
r12
</td>
<td>
mean
</td>
<td>
R12
</td>
</tr>
<tr>
<td align="right">
99
</td>
<td>
Bruttomarginal
</td>
<td align="right">
28
</td>
<td>
quarter
</td>
<td>
mean
</td>
<td>
Quarter
</td>
</tr>
<tr>
<td align="right">
100
</td>
<td>
EBITDA/Marginal
</td>
<td align="right">
32
</td>
<td>
year
</td>
<td>
mean
</td>
<td>
Year
</td>
</tr>
<tr>
<td align="right">
101
</td>
<td>
EBITDA/Marginal
</td>
<td align="right">
32
</td>
<td>
r12
</td>
<td>
mean
</td>
<td>
R12
</td>
</tr>
<tr>
<td align="right">
102
</td>
<td>
EBITDA/Marginal
</td>
<td align="right">
32
</td>
<td>
quarter
</td>
<td>
mean
</td>
<td>
Quarter
</td>
</tr>
<tr>
<td align="right">
103
</td>
<td>
Rorelsemarginal
</td>
<td align="right">
29
</td>
<td>
year
</td>
<td>
mean
</td>
<td>
Year
</td>
</tr>
<tr>
<td align="right">
104
</td>
<td>
Rorelsemarginal
</td>
<td align="right">
29
</td>
<td>
r12
</td>
<td>
mean
</td>
<td>
R12
</td>
</tr>
<tr>
<td align="right">
105
</td>
<td>
Rorelsemarginal
</td>
<td align="right">
29
</td>
<td>
quarter
</td>
<td>
mean
</td>
<td>
Quarter
</td>
</tr>
<tr>
<td align="right">
106
</td>
<td>
Vinstmarginal
</td>
<td align="right">
30
</td>
<td>
year
</td>
<td>
mean
</td>
<td>
Year
</td>
</tr>
<tr>
<td align="right">
107
</td>
<td>
Vinstmarginal
</td>
<td align="right">
30
</td>
<td>
r12
</td>
<td>
mean
</td>
<td>
R12
</td>
</tr>
<tr>
<td align="right">
108
</td>
<td>
Vinstmarginal
</td>
<td align="right">
30
</td>
<td>
quarter
</td>
<td>
mean
</td>
<td>
Quarter
</td>
</tr>
<tr>
<td align="right">
109
</td>
<td>
OperativtKassaflodesMarginal
</td>
<td align="right">
51
</td>
<td>
year
</td>
<td>
mean
</td>
<td>
Year
</td>
</tr>
<tr>
<td align="right">
110
</td>
<td>
OperativtKassaflodesMarginal
</td>
<td align="right">
51
</td>
<td>
r12
</td>
<td>
mean
</td>
<td>
R12
</td>
</tr>
<tr>
<td align="right">
111
</td>
<td>
OperativtKassaflodesMarginal
</td>
<td align="right">
51
</td>
<td>
quarter
</td>
<td>
mean
</td>
<td>
Quarter
</td>
</tr>
<tr>
<td align="right">
112
</td>
<td>
FCF/Marginal
</td>
<td align="right">
31
</td>
<td>
year
</td>
<td>
mean
</td>
<td>
Year
</td>
</tr>
<tr>
<td align="right">
113
</td>
<td>
FCF/Marginal
</td>
<td align="right">
31
</td>
<td>
r12
</td>
<td>
mean
</td>
<td>
R12
</td>
</tr>
<tr>
<td align="right">
114
</td>
<td>
FCF/Marginal
</td>
<td align="right">
31
</td>
<td>
quarter
</td>
<td>
mean
</td>
<td>
Quarter
</td>
</tr>
<tr>
<td align="right">
115
</td>
<td>
ROE/AvkastningPaEgetkapital
</td>
<td align="right">
33
</td>
<td>
year
</td>
<td>
mean
</td>
<td>
Year
</td>
</tr>
<tr>
<td align="right">
116
</td>
<td>
ROE/AvkastningPaEgetkapital
</td>
<td align="right">
33
</td>
<td>
r12
</td>
<td>
mean
</td>
<td>
R12
</td>
</tr>
<tr>
<td align="right">
117
</td>
<td>
ROA/AvkastningPaTotalkapital
</td>
<td align="right">
34
</td>
<td>
year
</td>
<td>
mean
</td>
<td>
Year
</td>
</tr>
<tr>
<td align="right">
118
</td>
<td>
ROA/AvkastningPaTotalkapital
</td>
<td align="right">
34
</td>
<td>
r12
</td>
<td>
mean
</td>
<td>
R12
</td>
</tr>
<tr>
<td align="right">
119
</td>
<td>
ROA/AvkastningExGoodwill
</td>
<td align="right">
35
</td>
<td>
year
</td>
<td>
mean
</td>
<td>
Year
</td>
</tr>
<tr>
<td align="right">
120
</td>
<td>
ROA/AvkastningExGoodwill
</td>
<td align="right">
35
</td>
<td>
r12
</td>
<td>
mean
</td>
<td>
R12
</td>
</tr>
<tr>
<td align="right">
121
</td>
<td>
ROIC
</td>
<td align="right">
37
</td>
<td>
year
</td>
<td>
mean
</td>
<td>
Year
</td>
</tr>
<tr>
<td align="right">
122
</td>
<td>
ROIC
</td>
<td align="right">
37
</td>
<td>
r12
</td>
<td>
mean
</td>
<td>
R12
</td>
</tr>
<tr>
<td align="right">
123
</td>
<td>
ROC
</td>
<td align="right">
36
</td>
<td>
year
</td>
<td>
mean
</td>
<td>
Year
</td>
</tr>
<tr>
<td align="right">
124
</td>
<td>
ROC
</td>
<td align="right">
36
</td>
<td>
r12
</td>
<td>
mean
</td>
<td>
R12
</td>
</tr>
<tr>
<td align="right">
125
</td>
<td>
Omsattningshastighet
</td>
<td align="right">
38
</td>
<td>
year
</td>
<td>
mean
</td>
<td>
Year
</td>
</tr>
<tr>
<td align="right">
126
</td>
<td>
Omsattningshastighet
</td>
<td align="right">
38
</td>
<td>
r12
</td>
<td>
mean
</td>
<td>
R12
</td>
</tr>
<tr>
<td align="right">
127
</td>
<td>
Soliditet
</td>
<td align="right">
39
</td>
<td>
year
</td>
<td>
mean
</td>
<td>
Year
</td>
</tr>
<tr>
<td align="right">
128
</td>
<td>
Soliditet
</td>
<td align="right">
39
</td>
<td>
r12
</td>
<td>
mean
</td>
<td>
R12
</td>
</tr>
<tr>
<td align="right">
129
</td>
<td>
Skuldsattningsgrad
</td>
<td align="right">
40
</td>
<td>
year
</td>
<td>
mean
</td>
<td>
Year
</td>
</tr>
<tr>
<td align="right">
130
</td>
<td>
Skuldsattningsgrad
</td>
<td align="right">
40
</td>
<td>
r12
</td>
<td>
mean
</td>
<td>
R12
</td>
</tr>
<tr>
<td align="right">
131
</td>
<td>
Balanslikviditet
</td>
<td align="right">
44
</td>
<td>
year
</td>
<td>
mean
</td>
<td>
Year
</td>
</tr>
<tr>
<td align="right">
132
</td>
<td>
Balanslikviditet
</td>
<td align="right">
44
</td>
<td>
r12
</td>
<td>
mean
</td>
<td>
R12
</td>
</tr>
<tr>
<td align="right">
133
</td>
<td>
Nettoskuldsattning
</td>
<td align="right">
41
</td>
<td>
year
</td>
<td>
mean
</td>
<td>
Year
</td>
</tr>
<tr>
<td align="right">
134
</td>
<td>
Nettoskuldsattning
</td>
<td align="right">
41
</td>
<td>
r12
</td>
<td>
mean
</td>
<td>
R12
</td>
</tr>
<tr>
<td align="right">
135
</td>
<td>
Nettoskuld/EBITDA
</td>
<td align="right">
42
</td>
<td>
year
</td>
<td>
mean
</td>
<td>
Year
</td>
</tr>
<tr>
<td align="right">
136
</td>
<td>
Nettoskuld/EBITDA
</td>
<td align="right">
42
</td>
<td>
r12
</td>
<td>
mean
</td>
<td>
R12
</td>
</tr>
<tr>
<td align="right">
137
</td>
<td>
Rorelsekapital/LangfristigaSkulder
</td>
<td align="right">
45
</td>
<td>
year
</td>
<td>
mean
</td>
<td>
Year
</td>
</tr>
<tr>
<td align="right">
138
</td>
<td>
Rorelsekapital/LangfristigaSkulder
</td>
<td align="right">
45
</td>
<td>
r12
</td>
<td>
mean
</td>
<td>
R12
</td>
</tr>
<tr>
<td align="right">
139
</td>
<td>
RorelsekapitalProc
</td>
<td align="right">
93
</td>
<td>
year
</td>
<td>
mean
</td>
<td>
Year
</td>
</tr>
<tr>
<td align="right">
140
</td>
<td>
RorelsekapitalProc
</td>
<td align="right">
93
</td>
<td>
r12
</td>
<td>
mean
</td>
<td>
R12
</td>
</tr>
<tr>
<td align="right">
141
</td>
<td>
ImmateriellaTillgangarProc
</td>
<td align="right">
92
</td>
<td>
year
</td>
<td>
mean
</td>
<td>
Year
</td>
</tr>
<tr>
<td align="right">
142
</td>
<td>
ImmateriellaTillgangarProc
</td>
<td align="right">
92
</td>
<td>
r12
</td>
<td>
mean
</td>
<td>
R12
</td>
</tr>
<tr>
<td align="right">
143
</td>
<td>
Kassa/Proc
</td>
<td align="right">
46
</td>
<td>
year
</td>
<td>
mean
</td>
<td>
Year
</td>
</tr>
<tr>
<td align="right">
144
</td>
<td>
Kassa/Proc
</td>
<td align="right">
46
</td>
<td>
r12
</td>
<td>
mean
</td>
<td>
R12
</td>
</tr>
<tr>
<td align="right">
145
</td>
<td>
Capex/Proc
</td>
<td align="right">
25
</td>
<td>
year
</td>
<td>
mean
</td>
<td>
Year
</td>
</tr>
<tr>
<td align="right">
146
</td>
<td>
Capex/Proc
</td>
<td align="right">
25
</td>
<td>
r12
</td>
<td>
mean
</td>
<td>
R12
</td>
</tr>
<tr>
<td align="right">
147
</td>
<td>
Capex/Proc
</td>
<td align="right">
25
</td>
<td>
quarter
</td>
<td>
mean
</td>
<td>
Quarter
</td>
</tr>
<tr>
<td align="right">
148
</td>
<td>
Utdelning/FCF
</td>
<td align="right">
26
</td>
<td>
year
</td>
<td>
mean
</td>
<td>
Year
</td>
</tr>
<tr>
<td align="right">
149
</td>
<td>
Utdelning/FCF
</td>
<td align="right">
26
</td>
<td>
r12
</td>
<td>
mean
</td>
<td>
R12
</td>
</tr>
<tr>
<td align="right">
150
</td>
<td>
Vinst/FCF
</td>
<td align="right">
27
</td>
<td>
year
</td>
<td>
mean
</td>
<td>
Year
</td>
</tr>
<tr>
<td align="right">
151
</td>
<td>
Vinst/FCF
</td>
<td align="right">
27
</td>
<td>
r12
</td>
<td>
mean
</td>
<td>
R12
</td>
</tr>
<tr>
<td align="right">
152
</td>
<td>
Vinst/FCF
</td>
<td align="right">
27
</td>
<td>
quarter
</td>
<td>
mean
</td>
<td>
Quarter
</td>
</tr>
<tr>
<td align="right">
153
</td>
<td>
OmsattningMkr
</td>
<td align="right">
53
</td>
<td>
year
</td>
<td>
mean
</td>
<td>
Year
</td>
</tr>
<tr>
<td align="right">
154
</td>
<td>
OmsattningMkr
</td>
<td align="right">
53
</td>
<td>
r12
</td>
<td>
mean
</td>
<td>
R12
</td>
</tr>
<tr>
<td align="right">
155
</td>
<td>
OmsattningMkr
</td>
<td align="right">
53
</td>
<td>
quarter
</td>
<td>
mean
</td>
<td>
Quarter
</td>
</tr>
<tr>
<td align="right">
156
</td>
<td>
BruttoresultatMkr
</td>
<td align="right">
135
</td>
<td>
year
</td>
<td>
mean
</td>
<td>
Year
</td>
</tr>
<tr>
<td align="right">
157
</td>
<td>
BruttoresultatMkr
</td>
<td align="right">
135
</td>
<td>
r12
</td>
<td>
mean
</td>
<td>
R12
</td>
</tr>
<tr>
<td align="right">
158
</td>
<td>
BruttoresultatMkr
</td>
<td align="right">
135
</td>
<td>
quarter
</td>
<td>
mean
</td>
<td>
Quarter
</td>
</tr>
<tr>
<td align="right">
159
</td>
<td>
EBITDA/Mkr
</td>
<td align="right">
54
</td>
<td>
year
</td>
<td>
mean
</td>
<td>
Year
</td>
</tr>
<tr>
<td align="right">
160
</td>
<td>
EBITDA/Mkr
</td>
<td align="right">
54
</td>
<td>
r12
</td>
<td>
mean
</td>
<td>
R12
</td>
</tr>
<tr>
<td align="right">
161
</td>
<td>
EBITDA/Mkr
</td>
<td align="right">
54
</td>
<td>
quarter
</td>
<td>
mean
</td>
<td>
Quarter
</td>
</tr>
<tr>
<td align="right">
162
</td>
<td>
RorelseresultatMkr
</td>
<td align="right">
55
</td>
<td>
year
</td>
<td>
mean
</td>
<td>
Year
</td>
</tr>
<tr>
<td align="right">
163
</td>
<td>
RorelseresultatMkr
</td>
<td align="right">
55
</td>
<td>
r12
</td>
<td>
mean
</td>
<td>
R12
</td>
</tr>
<tr>
<td align="right">
164
</td>
<td>
RorelseresultatMkr
</td>
<td align="right">
55
</td>
<td>
quarter
</td>
<td>
mean
</td>
<td>
Quarter
</td>
</tr>
<tr>
<td align="right">
165
</td>
<td>
VinstForeSkattMkr
</td>
<td align="right">
125
</td>
<td>
year
</td>
<td>
mean
</td>
<td>
Year
</td>
</tr>
<tr>
<td align="right">
166
</td>
<td>
VinstForeSkattMkr
</td>
<td align="right">
125
</td>
<td>
r12
</td>
<td>
mean
</td>
<td>
R12
</td>
</tr>
<tr>
<td align="right">
167
</td>
<td>
VinstForeSkattMkr
</td>
<td align="right">
125
</td>
<td>
quarter
</td>
<td>
mean
</td>
<td>
Quarter
</td>
</tr>
<tr>
<td align="right">
168
</td>
<td>
VinstMkr
</td>
<td align="right">
56
</td>
<td>
year
</td>
<td>
mean
</td>
<td>
Year
</td>
</tr>
<tr>
<td align="right">
169
</td>
<td>
VinstMkr
</td>
<td align="right">
56
</td>
<td>
r12
</td>
<td>
mean
</td>
<td>
R12
</td>
</tr>
<tr>
<td align="right">
170
</td>
<td>
VinstMkr
</td>
<td align="right">
56
</td>
<td>
quarter
</td>
<td>
mean
</td>
<td>
Quarter
</td>
</tr>
<tr>
<td align="right">
171
</td>
<td>
ImmateriellaTillgangarMkr
</td>
<td align="right">
126
</td>
<td>
year
</td>
<td>
mean
</td>
<td>
Year
</td>
</tr>
<tr>
<td align="right">
172
</td>
<td>
ImmateriellaTillgangarMkr
</td>
<td align="right">
126
</td>
<td>
r12
</td>
<td>
mean
</td>
<td>
R12
</td>
</tr>
<tr>
<td align="right">
173
</td>
<td>
MateriellaTillgangarMkr
</td>
<td align="right">
127
</td>
<td>
year
</td>
<td>
mean
</td>
<td>
Year
</td>
</tr>
<tr>
<td align="right">
174
</td>
<td>
MateriellaTillgangarMkr
</td>
<td align="right">
127
</td>
<td>
r12
</td>
<td>
mean
</td>
<td>
R12
</td>
</tr>
<tr>
<td align="right">
175
</td>
<td>
AnlaggningsTillgangarMkr
</td>
<td align="right">
129
</td>
<td>
year
</td>
<td>
mean
</td>
<td>
Year
</td>
</tr>
<tr>
<td align="right">
176
</td>
<td>
AnlaggningsTillgangarMkr
</td>
<td align="right">
129
</td>
<td>
r12
</td>
<td>
mean
</td>
<td>
R12
</td>
</tr>
<tr>
<td align="right">
177
</td>
<td>
OmsattningstillgangarMkr
</td>
<td align="right">
131
</td>
<td>
year
</td>
<td>
mean
</td>
<td>
Year
</td>
</tr>
<tr>
<td align="right">
178
</td>
<td>
OmsattningstillgangarMkr
</td>
<td align="right">
131
</td>
<td>
r12
</td>
<td>
mean
</td>
<td>
R12
</td>
</tr>
<tr>
<td align="right">
179
</td>
<td>
KassaLikvidaMedelMkr
</td>
<td align="right">
130
</td>
<td>
year
</td>
<td>
mean
</td>
<td>
Year
</td>
</tr>
<tr>
<td align="right">
180
</td>
<td>
KassaLikvidaMedelMkr
</td>
<td align="right">
130
</td>
<td>
r12
</td>
<td>
mean
</td>
<td>
R12
</td>
</tr>
<tr>
<td align="right">
181
</td>
<td>
TotalaTillgangarMkr
</td>
<td align="right">
57
</td>
<td>
year
</td>
<td>
mean
</td>
<td>
Year
</td>
</tr>
<tr>
<td align="right">
182
</td>
<td>
TotalaTillgangarMkr
</td>
<td align="right">
57
</td>
<td>
r12
</td>
<td>
mean
</td>
<td>
R12
</td>
</tr>
<tr>
<td align="right">
183
</td>
<td>
EgetKapitalMkr
</td>
<td align="right">
58
</td>
<td>
year
</td>
<td>
mean
</td>
<td>
Year
</td>
</tr>
<tr>
<td align="right">
184
</td>
<td>
EgetKapitalMkr
</td>
<td align="right">
58
</td>
<td>
r12
</td>
<td>
mean
</td>
<td>
R12
</td>
</tr>
<tr>
<td align="right">
185
</td>
<td>
LangfristigaSkulderMkr
</td>
<td align="right">
132
</td>
<td>
year
</td>
<td>
mean
</td>
<td>
Year
</td>
</tr>
<tr>
<td align="right">
186
</td>
<td>
LangfristigaSkulderMkr
</td>
<td align="right">
132
</td>
<td>
r12
</td>
<td>
mean
</td>
<td>
R12
</td>
</tr>
<tr>
<td align="right">
187
</td>
<td>
KortfristigaSkulderMkr
</td>
<td align="right">
133
</td>
<td>
year
</td>
<td>
mean
</td>
<td>
Year
</td>
</tr>
<tr>
<td align="right">
188
</td>
<td>
KortfristigaSkulderMkr
</td>
<td align="right">
133
</td>
<td>
r12
</td>
<td>
mean
</td>
<td>
R12
</td>
</tr>
<tr>
<td align="right">
189
</td>
<td>
TotalaSkulderMkr
</td>
<td align="right">
137
</td>
<td>
year
</td>
<td>
mean
</td>
<td>
Year
</td>
</tr>
<tr>
<td align="right">
190
</td>
<td>
TotalaSkulderMkr
</td>
<td align="right">
137
</td>
<td>
r12
</td>
<td>
mean
</td>
<td>
R12
</td>
</tr>
<tr>
<td align="right">
191
</td>
<td>
NettoskuldMkr
</td>
<td align="right">
60
</td>
<td>
year
</td>
<td>
mean
</td>
<td>
Year
</td>
</tr>
<tr>
<td align="right">
192
</td>
<td>
NettoskuldMkr
</td>
<td align="right">
60
</td>
<td>
r12
</td>
<td>
mean
</td>
<td>
R12
</td>
</tr>
<tr>
<td align="right">
193
</td>
<td>
TotalaSkulderOchEgetKapitalMkr
</td>
<td align="right">
134
</td>
<td>
year
</td>
<td>
mean
</td>
<td>
Year
</td>
</tr>
<tr>
<td align="right">
194
</td>
<td>
TotalaSkulderOchEgetKapitalMkr
</td>
<td align="right">
134
</td>
<td>
r12
</td>
<td>
mean
</td>
<td>
R12
</td>
</tr>
<tr>
<td align="right">
195
</td>
<td>
OperativKassaflodeMkr
</td>
<td align="right">
62
</td>
<td>
year
</td>
<td>
mean
</td>
<td>
Year
</td>
</tr>
<tr>
<td align="right">
196
</td>
<td>
OperativKassaflodeMkr
</td>
<td align="right">
62
</td>
<td>
r12
</td>
<td>
mean
</td>
<td>
R12
</td>
</tr>
<tr>
<td align="right">
197
</td>
<td>
OperativKassaflodeMkr
</td>
<td align="right">
62
</td>
<td>
quarter
</td>
<td>
mean
</td>
<td>
Quarter
</td>
</tr>
<tr>
<td align="right">
198
</td>
<td>
CapexMkr
</td>
<td align="right">
64
</td>
<td>
year
</td>
<td>
mean
</td>
<td>
Year
</td>
</tr>
<tr>
<td align="right">
199
</td>
<td>
CapexMkr
</td>
<td align="right">
64
</td>
<td>
r12
</td>
<td>
mean
</td>
<td>
R12
</td>
</tr>
<tr>
<td align="right">
200
</td>
<td>
CapexMkr
</td>
<td align="right">
64
</td>
<td>
quarter
</td>
<td>
mean
</td>
<td>
Quarter
</td>
</tr>
<tr>
<td align="right">
201
</td>
<td>
KassaflodeFinansieringMkr
</td>
<td align="right">
138
</td>
<td>
year
</td>
<td>
mean
</td>
<td>
Year
</td>
</tr>
<tr>
<td align="right">
202
</td>
<td>
KassaflodeFinansieringMkr
</td>
<td align="right">
138
</td>
<td>
r12
</td>
<td>
mean
</td>
<td>
R12
</td>
</tr>
<tr>
<td align="right">
203
</td>
<td>
KassaflodeFinansieringMkr
</td>
<td align="right">
138
</td>
<td>
quarter
</td>
<td>
mean
</td>
<td>
Quarter
</td>
</tr>
<tr>
<td align="right">
204
</td>
<td>
AretsKassaflodeMkr
</td>
<td align="right">
65
</td>
<td>
year
</td>
<td>
mean
</td>
<td>
Year
</td>
</tr>
<tr>
<td align="right">
205
</td>
<td>
AretsKassaflodeMkr
</td>
<td align="right">
65
</td>
<td>
r12
</td>
<td>
mean
</td>
<td>
R12
</td>
</tr>
<tr>
<td align="right">
206
</td>
<td>
AretsKassaflodeMkr
</td>
<td align="right">
65
</td>
<td>
quarter
</td>
<td>
mean
</td>
<td>
Quarter
</td>
</tr>
<tr>
<td align="right">
207
</td>
<td>
FrittKassaflodeMkr
</td>
<td align="right">
63
</td>
<td>
year
</td>
<td>
mean
</td>
<td>
Year
</td>
</tr>
<tr>
<td align="right">
208
</td>
<td>
FrittKassaflodeMkr
</td>
<td align="right">
63
</td>
<td>
r12
</td>
<td>
mean
</td>
<td>
R12
</td>
</tr>
<tr>
<td align="right">
209
</td>
<td>
FrittKassaflodeMkr
</td>
<td align="right">
63
</td>
<td>
quarter
</td>
<td>
mean
</td>
<td>
Quarter
</td>
</tr>
<tr>
<td align="right">
210
</td>
<td>
AntalAktier
</td>
<td align="right">
61
</td>
<td>
year
</td>
<td>
mean
</td>
<td>
Year
</td>
</tr>
<tr>
<td align="right">
211
</td>
<td>
AntalAktier
</td>
<td align="right">
61
</td>
<td>
r12
</td>
<td>
mean
</td>
<td>
R12
</td>
</tr>
<tr>
<td align="right">
212
</td>
<td>
Utdelning/Aktie
</td>
<td align="right">
7
</td>
<td>
year
</td>
<td>
mean
</td>
<td>
Year
</td>
</tr>
<tr>
<td align="right">
213
</td>
<td>
Utdelning/Aktie
</td>
<td align="right">
7
</td>
<td>
r12
</td>
<td>
mean
</td>
<td>
R12
</td>
</tr>
<tr>
<td align="right">
214
</td>
<td>
Direktavkastning
</td>
<td align="right">
1
</td>
<td>
year
</td>
<td>
mean
</td>
<td>
Year Mean
</td>
</tr>
<tr>
<td align="right">
215
</td>
<td>
Direktavkastning
</td>
<td align="right">
1
</td>
<td>
year
</td>
<td>
low
</td>
<td>
Year Low
</td>
</tr>
<tr>
<td align="right">
216
</td>
<td>
Direktavkastning
</td>
<td align="right">
1
</td>
<td>
year
</td>
<td>
high
</td>
<td>
Year High
</td>
</tr>
<tr>
<td align="right">
217
</td>
<td>
Direktavkastning
</td>
<td align="right">
1
</td>
<td>
r12
</td>
<td>
mean
</td>
<td>
R12 Mean
</td>
</tr>
<tr>
<td align="right">
218
</td>
<td>
Direktavkastning
</td>
<td align="right">
1
</td>
<td>
r12
</td>
<td>
low
</td>
<td>
R12 Low
</td>
</tr>
<tr>
<td align="right">
219
</td>
<td>
Direktavkastning
</td>
<td align="right">
1
</td>
<td>
r12
</td>
<td>
high
</td>
<td>
R12 High
</td>
</tr>
<tr>
<td align="right">
220
</td>
<td>
OrdinarDirektavkastning
</td>
<td align="right">
148
</td>
<td>
year
</td>
<td>
mean
</td>
<td>
Year Mean
</td>
</tr>
<tr>
<td align="right">
221
</td>
<td>
OrdinarDirektavkastning
</td>
<td align="right">
148
</td>
<td>
year
</td>
<td>
low
</td>
<td>
Year Low
</td>
</tr>
<tr>
<td align="right">
222
</td>
<td>
OrdinarDirektavkastning
</td>
<td align="right">
148
</td>
<td>
year
</td>
<td>
high
</td>
<td>
Year High
</td>
</tr>
<tr>
<td align="right">
223
</td>
<td>
OrdinarDirektavkastning
</td>
<td align="right">
148
</td>
<td>
r12
</td>
<td>
mean
</td>
<td>
R12 Mean
</td>
</tr>
<tr>
<td align="right">
224
</td>
<td>
OrdinarDirektavkastning
</td>
<td align="right">
148
</td>
<td>
r12
</td>
<td>
low
</td>
<td>
R12 Low
</td>
</tr>
<tr>
<td align="right">
225
</td>
<td>
OrdinarDirektavkastning
</td>
<td align="right">
148
</td>
<td>
r12
</td>
<td>
high
</td>
<td>
R12 High
</td>
</tr>
<tr>
<td align="right">
226
</td>
<td>
OrdinarUtdelning
</td>
<td align="right">
66
</td>
<td>
year
</td>
<td>
mean
</td>
<td>
Year
</td>
</tr>
<tr>
<td align="right">
227
</td>
<td>
OrdinarUtdelning
</td>
<td align="right">
66
</td>
<td>
r12
</td>
<td>
mean
</td>
<td>
R12
</td>
</tr>
<tr>
<td align="right">
228
</td>
<td>
Utdelningsandel
</td>
<td align="right">
20
</td>
<td>
year
</td>
<td>
mean
</td>
<td>
Year
</td>
</tr>
<tr>
<td align="right">
229
</td>
<td>
Utdelningsandel
</td>
<td align="right">
20
</td>
<td>
r12
</td>
<td>
mean
</td>
<td>
R12
</td>
</tr>
<tr>
<td align="right">
230
</td>
<td>
Vinsttillvaxt
</td>
<td align="right">
97
</td>
<td>
year
</td>
<td>
mean
</td>
<td>
Year
</td>
</tr>
<tr>
<td align="right">
231
</td>
<td>
Vinsttillvaxt
</td>
<td align="right">
97
</td>
<td>
r12
</td>
<td>
mean
</td>
<td>
R12
</td>
</tr>
<tr>
<td align="right">
232
</td>
<td>
Vinsttillvaxt
</td>
<td align="right">
97
</td>
<td>
quarter
</td>
<td>
mean
</td>
<td>
Quarter
</td>
</tr>
<tr>
<td align="right">
233
</td>
<td>
EBITTillvaxt
</td>
<td align="right">
96
</td>
<td>
year
</td>
<td>
mean
</td>
<td>
Year
</td>
</tr>
<tr>
<td align="right">
234
</td>
<td>
EBITTillvaxt
</td>
<td align="right">
96
</td>
<td>
r12
</td>
<td>
mean
</td>
<td>
R12
</td>
</tr>
<tr>
<td align="right">
235
</td>
<td>
EBITTillvaxt
</td>
<td align="right">
96
</td>
<td>
quarter
</td>
<td>
mean
</td>
<td>
Quarter
</td>
</tr>
<tr>
<td align="right">
236
</td>
<td>
Omsattningstillvaxt
</td>
<td align="right">
94
</td>
<td>
year
</td>
<td>
mean
</td>
<td>
Year
</td>
</tr>
<tr>
<td align="right">
237
</td>
<td>
Omsattningstillvaxt
</td>
<td align="right">
94
</td>
<td>
r12
</td>
<td>
mean
</td>
<td>
R12
</td>
</tr>
<tr>
<td align="right">
238
</td>
<td>
Omsattningstillvaxt
</td>
<td align="right">
94
</td>
<td>
quarter
</td>
<td>
mean
</td>
<td>
Quarter
</td>
</tr>
<tr>
<td align="right">
239
</td>
<td>
EgetKapitalTillvaxt
</td>
<td align="right">
99
</td>
<td>
year
</td>
<td>
mean
</td>
<td>
Year
</td>
</tr>
<tr>
<td align="right">
240
</td>
<td>
EgetKapitalTillvaxt
</td>
<td align="right">
99
</td>
<td>
r12
</td>
<td>
mean
</td>
<td>
R12
</td>
</tr>
<tr>
<td align="right">
241
</td>
<td>
TotalaTillgangarTillvaxt
</td>
<td align="right">
100
</td>
<td>
year
</td>
<td>
mean
</td>
<td>
Year
</td>
</tr>
<tr>
<td align="right">
242
</td>
<td>
TotalaTillgangarTillvaxt
</td>
<td align="right">
100
</td>
<td>
r12
</td>
<td>
mean
</td>
<td>
R12
</td>
</tr>
<tr>
<td align="right">
243
</td>
<td>
P/EX
</td>
<td align="right">
9
</td>
<td>
year
</td>
<td>
mean
</td>
<td>
Year Mean
</td>
</tr>
<tr>
<td align="right">
244
</td>
<td>
P/EX
</td>
<td align="right">
9
</td>
<td>
year
</td>
<td>
low
</td>
<td>
Year Low
</td>
</tr>
<tr>
<td align="right">
245
</td>
<td>
P/EX
</td>
<td align="right">
9
</td>
<td>
year
</td>
<td>
high
</td>
<td>
Year High
</td>
</tr>
<tr>
<td align="right">
246
</td>
<td>
P/EX
</td>
<td align="right">
9
</td>
<td>
r12
</td>
<td>
mean
</td>
<td>
R12 Mean
</td>
</tr>
<tr>
<td align="right">
247
</td>
<td>
P/EX
</td>
<td align="right">
9
</td>
<td>
r12
</td>
<td>
low
</td>
<td>
R12 Low
</td>
</tr>
<tr>
<td align="right">
248
</td>
<td>
P/EX
</td>
<td align="right">
9
</td>
<td>
r12
</td>
<td>
high
</td>
<td>
R12 High
</td>
</tr>
<tr>
<td align="right">
249
</td>
<td>
PEG
</td>
<td align="right">
19
</td>
<td>
year
</td>
<td>
mean
</td>
<td>
Year Mean
</td>
</tr>
<tr>
<td align="right">
250
</td>
<td>
PEG
</td>
<td align="right">
19
</td>
<td>
year
</td>
<td>
low
</td>
<td>
Year Low
</td>
</tr>
<tr>
<td align="right">
251
</td>
<td>
PEG
</td>
<td align="right">
19
</td>
<td>
year
</td>
<td>
high
</td>
<td>
Year High
</td>
</tr>
<tr>
<td align="right">
252
</td>
<td>
PEG
</td>
<td align="right">
19
</td>
<td>
r12
</td>
<td>
mean
</td>
<td>
R12 Mean
</td>
</tr>
<tr>
<td align="right">
253
</td>
<td>
PEG
</td>
<td align="right">
19
</td>
<td>
r12
</td>
<td>
low
</td>
<td>
R12 Low
</td>
</tr>
<tr>
<td align="right">
254
</td>
<td>
PEG
</td>
<td align="right">
19
</td>
<td>
r12
</td>
<td>
high
</td>
<td>
R12 High
</td>
</tr>
<tr>
<td align="right">
255
</td>
<td>
Utdelningstillvaxt
</td>
<td align="right">
98
</td>
<td>
year
</td>
<td>
mean
</td>
<td>
Year
</td>
</tr>
<tr>
<td align="right">
256
</td>
<td>
Utdelningstillvaxt
</td>
<td align="right">
98
</td>
<td>
r12
</td>
<td>
mean
</td>
<td>
R12
</td>
</tr>
<tr>
<td align="right">
257
</td>
<td>
Omsattning/Aktie
</td>
<td align="right">
5
</td>
<td>
year
</td>
<td>
mean
</td>
<td>
Year
</td>
</tr>
<tr>
<td align="right">
258
</td>
<td>
Omsattning/Aktie
</td>
<td align="right">
5
</td>
<td>
r12
</td>
<td>
mean
</td>
<td>
R12
</td>
</tr>
<tr>
<td align="right">
259
</td>
<td>
Omsattning/Aktie
</td>
<td align="right">
5
</td>
<td>
quarter
</td>
<td>
mean
</td>
<td>
Quarter
</td>
</tr>
<tr>
<td align="right">
260
</td>
<td>
Vinst/Aktie
</td>
<td align="right">
6
</td>
<td>
year
</td>
<td>
mean
</td>
<td>
Year
</td>
</tr>
<tr>
<td align="right">
261
</td>
<td>
Vinst/Aktie
</td>
<td align="right">
6
</td>
<td>
r12
</td>
<td>
mean
</td>
<td>
R12
</td>
</tr>
<tr>
<td align="right">
262
</td>
<td>
Vinst/Aktie
</td>
<td align="right">
6
</td>
<td>
quarter
</td>
<td>
mean
</td>
<td>
Quarter
</td>
</tr>
<tr>
<td align="right">
263
</td>
<td>
EgetKapital/Aktie
</td>
<td align="right">
8
</td>
<td>
year
</td>
<td>
mean
</td>
<td>
Year
</td>
</tr>
<tr>
<td align="right">
264
</td>
<td>
EgetKapital/Aktie
</td>
<td align="right">
8
</td>
<td>
r12
</td>
<td>
mean
</td>
<td>
R12
</td>
</tr>
<tr>
<td align="right">
265
</td>
<td>
EgetKapital/Aktie
</td>
<td align="right">
8
</td>
<td>
quarter
</td>
<td>
mean
</td>
<td>
Quarter
</td>
</tr>
<tr>
<td align="right">
266
</td>
<td>
FCF/Aktie
</td>
<td align="right">
23
</td>
<td>
year
</td>
<td>
mean
</td>
<td>
Year
</td>
</tr>
<tr>
<td align="right">
267
</td>
<td>
FCF/Aktie
</td>
<td align="right">
23
</td>
<td>
r12
</td>
<td>
mean
</td>
<td>
R12
</td>
</tr>
<tr>
<td align="right">
268
</td>
<td>
FCF/Aktie
</td>
<td align="right">
23
</td>
<td>
quarter
</td>
<td>
mean
</td>
<td>
Quarter
</td>
</tr>
<tr>
<td align="right">
269
</td>
<td>
Nettoskuld/Aktie
</td>
<td align="right">
73
</td>
<td>
year
</td>
<td>
mean
</td>
<td>
Year
</td>
</tr>
<tr>
<td align="right">
270
</td>
<td>
Nettoskuld/Aktie
</td>
<td align="right">
73
</td>
<td>
r12
</td>
<td>
mean
</td>
<td>
R12
</td>
</tr>
<tr>
<td align="right">
271
</td>
<td>
EBITDA/Aktie
</td>
<td align="right">
71
</td>
<td>
year
</td>
<td>
mean
</td>
<td>
Year
</td>
</tr>
<tr>
<td align="right">
272
</td>
<td>
EBITDA/Aktie
</td>
<td align="right">
71
</td>
<td>
r12
</td>
<td>
mean
</td>
<td>
R12
</td>
</tr>
<tr>
<td align="right">
273
</td>
<td>
EBITDA/Aktie
</td>
<td align="right">
71
</td>
<td>
quarter
</td>
<td>
mean
</td>
<td>
Quarter
</td>
</tr>
<tr>
<td align="right">
274
</td>
<td>
EBIT/Aktie
</td>
<td align="right">
70
</td>
<td>
year
</td>
<td>
mean
</td>
<td>
Year
</td>
</tr>
<tr>
<td align="right">
275
</td>
<td>
EBIT/Aktie
</td>
<td align="right">
70
</td>
<td>
r12
</td>
<td>
mean
</td>
<td>
R12
</td>
</tr>
<tr>
<td align="right">
276
</td>
<td>
EBIT/Aktie
</td>
<td align="right">
70
</td>
<td>
quarter
</td>
<td>
mean
</td>
<td>
Quarter
</td>
</tr>
<tr>
<td align="right">
277
</td>
<td>
OperativKassaflode/Aktie
</td>
<td align="right">
68
</td>
<td>
year
</td>
<td>
mean
</td>
<td>
Year
</td>
</tr>
<tr>
<td align="right">
278
</td>
<td>
OperativKassaflode/Aktie
</td>
<td align="right">
68
</td>
<td>
r12
</td>
<td>
mean
</td>
<td>
R12
</td>
</tr>
<tr>
<td align="right">
279
</td>
<td>
OperativKassaflode/Aktie
</td>
<td align="right">
68
</td>
<td>
quarter
</td>
<td>
mean
</td>
<td>
Quarter
</td>
</tr>
<tr>
<td align="right">
280
</td>
<td>
AretsKassaflode/Aktie
</td>
<td align="right">
69
</td>
<td>
year
</td>
<td>
mean
</td>
<td>
Year
</td>
</tr>
<tr>
<td align="right">
281
</td>
<td>
AretsKassaflode/Aktie
</td>
<td align="right">
69
</td>
<td>
r12
</td>
<td>
mean
</td>
<td>
R12
</td>
</tr>
<tr>
<td align="right">
282
</td>
<td>
AretsKassaflode/Aktie
</td>
<td align="right">
69
</td>
<td>
quarter
</td>
<td>
mean
</td>
<td>
Quarter
</td>
</tr>
<tr>
<td align="right">
283
</td>
<td>
FinansiellaTillgangarMkr
</td>
<td align="right">
128
</td>
<td>
year
</td>
<td>
mean
</td>
<td>
Year
</td>
</tr>
<tr>
<td align="right">
284
</td>
<td>
FinansiellaTillgangarMkr
</td>
<td align="right">
128
</td>
<td>
r12
</td>
<td>
mean
</td>
<td>
R12
</td>
</tr>
<tr>
<td align="right">
285
</td>
<td>
AretsKassaflodeMarginal
</td>
<td align="right">
140
</td>
<td>
year
</td>
<td>
mean
</td>
<td>
Year
</td>
</tr>
<tr>
<td align="right">
286
</td>
<td>
AretsKassaflodeMarginal
</td>
<td align="right">
140
</td>
<td>
r12
</td>
<td>
mean
</td>
<td>
R12
</td>
</tr>
<tr>
<td align="right">
287
</td>
<td>
AretsKassaflodeMarginal
</td>
<td align="right">
140
</td>
<td>
quarter
</td>
<td>
mean
</td>
<td>
Quarter
</td>
</tr>
<tr>
<td align="right">
288
</td>
<td>
FCF/Proc
</td>
<td align="right">
24
</td>
<td>
year
</td>
<td>
mean
</td>
<td>
Year
</td>
</tr>
<tr>
<td align="right">
289
</td>
<td>
FCF/Proc
</td>
<td align="right">
24
</td>
<td>
r12
</td>
<td>
mean
</td>
<td>
R12
</td>
</tr>
<tr>
<td align="right">
290
</td>
<td>
FCF/Proc
</td>
<td align="right">
24
</td>
<td>
quarter
</td>
<td>
mean
</td>
<td>
Quarter
</td>
</tr>
<tr>
<td align="right">
291
</td>
<td>
E/EV
</td>
<td align="right">
16
</td>
<td>
year
</td>
<td>
mean
</td>
<td>
Year Mean
</td>
</tr>
<tr>
<td align="right">
292
</td>
<td>
E/EV
</td>
<td align="right">
16
</td>
<td>
year
</td>
<td>
low
</td>
<td>
Year Low
</td>
</tr>
<tr>
<td align="right">
293
</td>
<td>
E/EV
</td>
<td align="right">
16
</td>
<td>
year
</td>
<td>
high
</td>
<td>
Year High
</td>
</tr>
<tr>
<td align="right">
294
</td>
<td>
E/EV
</td>
<td align="right">
16
</td>
<td>
r12
</td>
<td>
mean
</td>
<td>
R12 Mean
</td>
</tr>
<tr>
<td align="right">
295
</td>
<td>
E/EV
</td>
<td align="right">
16
</td>
<td>
r12
</td>
<td>
low
</td>
<td>
R12 Low
</td>
</tr>
<tr>
<td align="right">
296
</td>
<td>
E/EV
</td>
<td align="right">
16
</td>
<td>
r12
</td>
<td>
high
</td>
<td>
R12 High
</td>
</tr>
<tr>
<td align="right">
297
</td>
<td>
TotalDirektavkastning
</td>
<td align="right">
22
</td>
<td>
year
</td>
<td>
mean
</td>
<td>
Year
</td>
</tr>
</table>
