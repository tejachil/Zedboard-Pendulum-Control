
H
Command: %s
53*	vivadotcl2 
route_design2default:defaultZ4-113
ö
@Attempting to get a license for feature '%s' and/or device '%s'
308*common2"
Implementation2default:default2
xc7z0202default:defaultZ17-347
ä
0Got license for feature '%s' and/or device '%s'
310*common2"
Implementation2default:default2
xc7z0202default:defaultZ17-349
g
,Running DRC as a precondition to command %s
22*	vivadotcl2 
route_design2default:defaultZ4-22
G
Running DRC with %s threads
24*drc2
82default:defaultZ23-27
Y
DRC finished with %s
79*	vivadotcl2(
0 Errors, 1 Warnings2default:defaultZ4-198
\
BPlease refer to the DRC report (report_drc) for more information.
80*	vivadotclZ4-199
M

Starting %s Task
103*constraints2
Routing2default:defaultZ18-103
p
BMultithreading enabled for route_design using a maximum of %s CPUs97*route2
42default:defaultZ35-254
K

Starting %s Task
103*constraints2
Route2default:defaultZ18-103
g

Phase %s%s
101*constraints2
1 2default:default2#
Build RT Design2default:defaultZ18-101
s

Phase %s%s
101*constraints2
1.1 2default:default2-
Build Netlist & NodeGraph2default:defaultZ18-101
F
:Phase 1.1 Build Netlist & NodeGraph | Checksum: 18a0339c7
*common
à

%s
*constraints2q
]Time (s): cpu = 00:00:24 ; elapsed = 00:00:19 . Memory (MB): peak = 1658.551 ; gain = 119.5392default:default
9
-Phase 1 Build RT Design | Checksum: 9c9ba821
*common
à

%s
*constraints2q
]Time (s): cpu = 00:00:24 ; elapsed = 00:00:19 . Memory (MB): peak = 1658.551 ; gain = 119.5392default:default
m

Phase %s%s
101*constraints2
2 2default:default2)
Router Initialization2default:defaultZ18-101
f

Phase %s%s
101*constraints2
2.1 2default:default2 
Create Timer2default:defaultZ18-101
8
,Phase 2.1 Create Timer | Checksum: 9c9ba821
*common
à

%s
*constraints2q
]Time (s): cpu = 00:00:24 ; elapsed = 00:00:19 . Memory (MB): peak = 1658.555 ; gain = 119.5432default:default
i

Phase %s%s
101*constraints2
2.2 2default:default2#
Restore Routing2default:defaultZ18-101
;
/Phase 2.2 Restore Routing | Checksum: 9c9ba821
*common
à

%s
*constraints2q
]Time (s): cpu = 00:00:24 ; elapsed = 00:00:19 . Memory (MB): peak = 1673.605 ; gain = 134.5942default:default
m

Phase %s%s
101*constraints2
2.3 2default:default2'
Special Net Routing2default:defaultZ18-101
?
3Phase 2.3 Special Net Routing | Checksum: a77b3973
*common
à

%s
*constraints2q
]Time (s): cpu = 00:00:24 ; elapsed = 00:00:19 . Memory (MB): peak = 1678.605 ; gain = 139.5942default:default
q

Phase %s%s
101*constraints2
2.4 2default:default2+
Local Clock Net Routing2default:defaultZ18-101
C
7Phase 2.4 Local Clock Net Routing | Checksum: a77b3973
*common
à

%s
*constraints2q
]Time (s): cpu = 00:00:24 ; elapsed = 00:00:19 . Memory (MB): peak = 1678.605 ; gain = 139.5942default:default
g

Phase %s%s
101*constraints2
2.5 2default:default2!
Update Timing2default:defaultZ18-101
9
-Phase 2.5 Update Timing | Checksum: a77b3973
*common
à

%s
*constraints2q
]Time (s): cpu = 00:00:24 ; elapsed = 00:00:19 . Memory (MB): peak = 1678.605 ; gain = 139.5942default:default
~
Estimated Timing Summary %s
57*route2J
6| WNS=inf    | TNS=0      | WHS=inf    | THS=0      |
2default:defaultZ35-57
?
3Phase 2 Router Initialization | Checksum: a77b3973
*common
à

%s
*constraints2q
]Time (s): cpu = 00:00:24 ; elapsed = 00:00:19 . Memory (MB): peak = 1678.605 ; gain = 139.5942default:default
g

Phase %s%s
101*constraints2
3 2default:default2#
Initial Routing2default:defaultZ18-101
:
.Phase 3 Initial Routing | Checksum: 17c7a7f09
*common
à

%s
*constraints2q
]Time (s): cpu = 00:00:24 ; elapsed = 00:00:19 . Memory (MB): peak = 1678.605 ; gain = 139.5942default:default
j

Phase %s%s
101*constraints2
4 2default:default2&
Rip-up And Reroute2default:defaultZ18-101
l

Phase %s%s
101*constraints2
4.1 2default:default2&
Global Iteration 02default:defaultZ18-101
k

Phase %s%s
101*constraints2
4.1.1 2default:default2#
Remove Overlaps2default:defaultZ18-101
=
1Phase 4.1.1 Remove Overlaps | Checksum: d168ee4f
*common
à

%s
*constraints2q
]Time (s): cpu = 00:00:24 ; elapsed = 00:00:19 . Memory (MB): peak = 1678.605 ; gain = 139.5942default:default
i

Phase %s%s
101*constraints2
4.1.2 2default:default2!
Update Timing2default:defaultZ18-101
;
/Phase 4.1.2 Update Timing | Checksum: d168ee4f
*common
à

%s
*constraints2q
]Time (s): cpu = 00:00:24 ; elapsed = 00:00:19 . Memory (MB): peak = 1678.605 ; gain = 139.5942default:default
~
Estimated Timing Summary %s
57*route2J
6| WNS=inf    | TNS=0      | WHS=N/A    | THS=N/A    |
2default:defaultZ35-57
p

Phase %s%s
101*constraints2
4.1.3 2default:default2(
collectNewHoldAndFix2default:defaultZ18-101
B
6Phase 4.1.3 collectNewHoldAndFix | Checksum: d168ee4f
*common
à

%s
*constraints2q
]Time (s): cpu = 00:00:24 ; elapsed = 00:00:19 . Memory (MB): peak = 1678.605 ; gain = 139.5942default:default
>
2Phase 4.1 Global Iteration 0 | Checksum: d168ee4f
*common
à

%s
*constraints2q
]Time (s): cpu = 00:00:24 ; elapsed = 00:00:19 . Memory (MB): peak = 1678.605 ; gain = 139.5942default:default
<
0Phase 4 Rip-up And Reroute | Checksum: d168ee4f
*common
à

%s
*constraints2q
]Time (s): cpu = 00:00:24 ; elapsed = 00:00:19 . Memory (MB): peak = 1678.605 ; gain = 139.5942default:default
e

Phase %s%s
101*constraints2
5 2default:default2!
Delay CleanUp2default:defaultZ18-101
g

Phase %s%s
101*constraints2
5.1 2default:default2!
Update Timing2default:defaultZ18-101
9
-Phase 5.1 Update Timing | Checksum: d168ee4f
*common
à

%s
*constraints2q
]Time (s): cpu = 00:00:24 ; elapsed = 00:00:19 . Memory (MB): peak = 1678.605 ; gain = 139.5942default:default
~
Estimated Timing Summary %s
57*route2J
6| WNS=inf    | TNS=0      | WHS=N/A    | THS=N/A    |
2default:defaultZ35-57
7
+Phase 5 Delay CleanUp | Checksum: d168ee4f
*common
à

%s
*constraints2q
]Time (s): cpu = 00:00:24 ; elapsed = 00:00:19 . Memory (MB): peak = 1678.605 ; gain = 139.5942default:default
e

Phase %s%s
101*constraints2
6 2default:default2!
Post Hold Fix2default:defaultZ18-101
l

Phase %s%s
101*constraints2
6.1 2default:default2&
Full Hold Analysis2default:defaultZ18-101
i

Phase %s%s
101*constraints2
6.1.1 2default:default2!
Update Timing2default:defaultZ18-101
;
/Phase 6.1.1 Update Timing | Checksum: d168ee4f
*common
à

%s
*constraints2q
]Time (s): cpu = 00:00:24 ; elapsed = 00:00:19 . Memory (MB): peak = 1678.605 ; gain = 139.5942default:default
~
Estimated Timing Summary %s
57*route2J
6| WNS=inf    | TNS=0      | WHS=inf    | THS=0      |
2default:defaultZ35-57
>
2Phase 6.1 Full Hold Analysis | Checksum: d168ee4f
*common
à

%s
*constraints2q
]Time (s): cpu = 00:00:24 ; elapsed = 00:00:19 . Memory (MB): peak = 1678.605 ; gain = 139.5942default:default
7
+Phase 6 Post Hold Fix | Checksum: d168ee4f
*common
à

%s
*constraints2q
]Time (s): cpu = 00:00:24 ; elapsed = 00:00:19 . Memory (MB): peak = 1678.605 ; gain = 139.5942default:default
m

Phase %s%s
101*constraints2
7 2default:default2)
Verifying routed nets2default:defaultZ18-101
?
3Phase 7 Verifying routed nets | Checksum: d168ee4f
*common
à

%s
*constraints2q
]Time (s): cpu = 00:00:24 ; elapsed = 00:00:19 . Memory (MB): peak = 1680.605 ; gain = 141.5942default:default
i

Phase %s%s
101*constraints2
8 2default:default2%
Depositing Routes2default:defaultZ18-101
;
/Phase 8 Depositing Routes | Checksum: 8e876d0e
*common
à

%s
*constraints2q
]Time (s): cpu = 00:00:24 ; elapsed = 00:00:19 . Memory (MB): peak = 1680.605 ; gain = 141.5942default:default
j

Phase %s%s
101*constraints2
9 2default:default2&
Post Router Timing2default:defaultZ18-101
Å
Post Routing Timing Summary %s
20*route2J
6| WNS=inf    | TNS=0.000  | WHS=inf    | THS=0.000  |
2default:defaultZ35-20
=
'The design met the timing requirement.
61*routeZ35-61
<
0Phase 9 Post Router Timing | Checksum: 8e876d0e
*common
à

%s
*constraints2q
]Time (s): cpu = 00:00:24 ; elapsed = 00:00:19 . Memory (MB): peak = 1680.605 ; gain = 141.5942default:default
4
Router Completed Successfully
16*routeZ35-16
3
'Ending Route Task | Checksum: 8e876d0e
*common
à

%s
*constraints2q
]Time (s): cpu = 00:00:24 ; elapsed = 00:00:19 . Memory (MB): peak = 1680.605 ; gain = 141.5942default:default
à

%s
*constraints2q
]Time (s): cpu = 00:00:24 ; elapsed = 00:00:19 . Memory (MB): peak = 1680.605 ; gain = 141.5942default:default
Q
Releasing license: %s
83*common2"
Implementation2default:defaultZ17-83
Ω
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
452default:default2
12default:default2
02default:default2
02default:defaultZ4-41
U
%s completed successfully
29*	vivadotcl2 
route_design2default:defaultZ4-42
˝
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2"
route_design: 2default:default2
00:00:252default:default2
00:00:202default:default2
1680.6052default:default2
158.5902default:defaultZ17-268
G
Running DRC with %s threads
24*drc2
82default:defaultZ23-27
´
#The results of DRC are in file %s.
168*coretcl2Í
i/home/controls/Documents/Zedboard-Pendulum-Control/SPI_pendulum.runs/impl_1/system_wrapper_drc_routed.rpti/home/controls/Documents/Zedboard-Pendulum-Control/SPI_pendulum.runs/impl_1/system_wrapper_drc_routed.rpt2default:default8Z2-168
B
,Running Vector-less Activity Propagation...
51*powerZ33-51
G
3
Finished Running Vector-less Activity Propagation
1*powerZ33-1
Ä
UpdateTimingParams:%s.
91*timing2P
< Speed grade: -1, Delay Type: min_max, Constraints type: SDC2default:defaultZ38-91
s
CMultithreading enabled for timing update using a maximum of %s CPUs155*timing2
82default:defaultZ38-191
4
Writing XDEF routing.
211*designutilsZ20-211
A
#Writing XDEF routing logical nets.
209*designutilsZ20-209
A
#Writing XDEF routing special nets.
210*designutilsZ20-210
à
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2)
Write XDEF Complete: 2default:default2
00:00:00.132default:default2
00:00:00.142default:default2
1688.6172default:default2
0.0002default:defaultZ17-268


End Record