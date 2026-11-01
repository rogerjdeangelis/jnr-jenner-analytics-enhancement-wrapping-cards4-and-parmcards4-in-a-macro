Jenner Analytics enhancement wrapping cards4 and parmcards4 in a macro

Too long to post, see
https://tinyurl.com/bdcpfvet
https://github.com/rogerjdeangelis/jnr-jenner-analytics-enhancement-wrapping-cards4-and-parmcards4-in-a-macro

SOAPBOX ON
This is an enhancement over the SLC and SAS.
Cannot check but I am pretty sure this fails in the SLC and SAS
SOAPBOX OFF

%utlfkil(d:/txt/parms4.txt);

%macro parms(txt=d:/txt/parms4.txt);
filename ft15f001 "&txt";
parmcards4;
parms4 is a line 1
parms4 is a line 2
parms4 is a line 3
;;;;
run;
%mend parms;
%parms;


data _null_;
 infile "d:/txt/parms4.txt";
 input;
 put _infile_;
run;

/*---
NOTE: Fileref FT15F001 assigned to d:/txt/parms4.txt.
NOTE: PARMCARDS4 wrote 3 record(s) to fileref FT15F001.
NOTE: DATA _null_

NOTE: Reading from fileref d:/txt/parms4.txt
parms4 is a line 1
parms4 is a line 2
parms4 is a line 3
---*/

%utlfkil(d:/txt/cards4.txt);

%macro cards(txt=d:/txt/cards4.txt);
data _null_;
input;
file "&txt";
put _infile_;
putlog _infile_;
cards4;
cards4 is a line 1
cards4 is a line 2
cards4 is a line 3
;;;;
run;
%mend cards;
%cards;

data _null_;
 infile "d:/txt/cards4.txt";
 input;
 put _infile_;
run;quit;

/*---
NOTE: Writing to fileref d:/txt/cards4.txt
NOTE: Processing inline DATALINES (3 lines)
cards4 is a line 1
cards4 is a line 2
cards4 is a line 3

NOTE: Reading from fileref d:/txt/cards4.txt (d:/txt/cards4.txt)
cards4 is a line 1
cards4 is a line 2
cards4 is a line 3
---*/

LOG
===

NOTE: Copyright (c) 2026 Jenner Analytics Ltd., London, England.
NOTE: Jenner v1.5.110 (build v1.5.110+13530c7ccc.20261030T030012Z)
      Licensed to Roger DeAngelis, Serial 3BF7B3E6.
NOTE: DATA _null_

autexec started.

NOTE: DATA elapsed:
  wall  0.00 seconds
  cpu   0.00 seconds
NOTE: Library WORKX assigned path=d:\wpswrkx.
NOTE: DATA workx.class

NOTE: Processing inline DATALINES (19 lines)

NOTE: Read 19 rows from DATALINES.
NOTE: The data set WORKX.CLASS has 19 observations and 5 variables.
NOTE: DATA elapsed:
  wall  0.00 seconds
  cpu   0.00 seconds
NOTE: DATA _null_

LOG:    01NOV2026:10:08:39
NOTE: DATA _null_ completed. Output written to FILE PRINT
NOTE: Option SASAUTOS changed to c:/otojnr.
NOTE: DATA _null_

NOTE: Reading from fileref c:/jnr/runsas_selection.sas (c:/jnr/runsas_selection.sas)
    1 %utlfkil(d:/txt/parms4.txt);
    2
    3 %macro parms(txt=d:/txt/parms4.txt);
    4 filename ft15f001 "&txt";
    5 parmcards4;
    6 parms4 is a line 1
    7 parms4 is a line 2
    8 parms4 is a line 3
    9 ;;;;
   10 run;
   11 %mend parms;
   12 %parms;
   13
   14
   15 data _null_;
   16  infile "d:/txt/parms4.txt";
   17  input;
   18  put _infile_;
   19 run;
   20
   21 /*---
   22 NOTE: Fileref FT15F001 assigned to d:/txt/parms4.txt.
   23 NOTE: PARMCARDS4 wrote 3 record(s) to fileref FT15F001.
   24 NOTE: DATA _null_
   25
   26 NOTE: Reading from fileref d:/txt/parms4.txt
   27 parms4 is a line 1
   28 parms4 is a line 2
   29 parms4 is a line 3
   30 ---*/
   31
   32 %utlfkil(d:/txt/cards4.txt);
   33
   34 %macro cards(txt=d:/txt/cards4.txt);
   35 data _null_;
   36 input;
   37 file "&txt";
   38 put _infile_;
   39 putlog _infile_;
   40 cards4;
   41 cards4 is a line 1
   42 cards4 is a line 2
   43 cards4 is a line 3
   44 ;;;;
   45 run;
   46 %mend cards;
   47 %cards;
   48
   49 data _null_;
   50  infile "d:/txt/cards4.txt";
   51  input;
   52  put _infile_;
   53 run;quit;
   54
   55 /*---
   56 NOTE: Writing to fileref d:/txt/cards4.txt
   57 NOTE: Processing inline DATALINES (3 lines)
   58 cards4 is a line 1
   59 cards4 is a line 2
   60 cards4 is a line 3
   61
   62 NOTE: Reading from fileref d:/txt/cards4.txt (d:/txt/cards4.txt)
   63 cards4 is a line 1
   64 cards4 is a line 2
   65 cards4 is a line 3
   66 ---*/

NOTE: Read 66 rows from c:/jnr/runsas_selection.sas.
NOTE: DATA elapsed:
  wall  0.00 seconds
  cpu   0.00 seconds
NOTE: DATA _null_

autoexec completed    01NOV2026:10:08:39

NOTE: DATA elapsed:
  wall  0.00 seconds
  cpu   0.00 seconds
NOTE: Fileref FT15F001 assigned to d:/txt/parms4.txt.
NOTE: PARMCARDS4 wrote 3 record(s) to fileref FT15F001.
NOTE: DATA _null_

NOTE: Reading from fileref d:/txt/parms4.txt (d:/txt/parms4.txt)
parms4 is a line 1
parms4 is a line 2
parms4 is a line 3

NOTE: Read 3 rows from d:/txt/parms4.txt.
NOTE: DATA elapsed:
  wall  0.00 seconds
  cpu   0.00 seconds
NOTE: DATA _null_

NOTE: Writing to fileref d:/txt/cards4.txt (d:/txt/cards4.txt)
NOTE: Processing inline DATALINES (3 lines)
cards4 is a line 1
cards4 is a line 2
cards4 is a line 3

NOTE: Read 3 rows from DATALINES.
NOTE: DATA elapsed:
  wall  0.00 seconds
  cpu   0.00 seconds
NOTE: DATA _null_

NOTE: Reading from fileref d:/txt/cards4.txt (d:/txt/cards4.txt)
cards4 is a line 1
cards4 is a line 2
cards4 is a line 3

NOTE: Read 3 rows from d:/txt/cards4.txt.
NOTE: DATA elapsed:
  wall  0.00 seconds
  cpu   0.00 seconds
