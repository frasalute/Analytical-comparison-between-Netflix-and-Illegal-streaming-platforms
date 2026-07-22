proc freq data=streaming;
tables d_8/missing;
run;

proc freq data=streaming;
tables d_8/missprint;
run;
