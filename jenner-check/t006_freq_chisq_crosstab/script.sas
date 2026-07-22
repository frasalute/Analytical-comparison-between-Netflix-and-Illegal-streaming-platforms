proc freq data=streaming;
table (d_1 d_2 d_3 d_4 d_5)*d_9/expected chisq;
run;
