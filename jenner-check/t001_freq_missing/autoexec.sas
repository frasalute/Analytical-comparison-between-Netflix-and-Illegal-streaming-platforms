options obs=100; /* cap input rows for the captured run */

/* --- mock 'streaming' survey dataset ---------------------------------------
   The upstream Code.sas reads a survey dataset named 'streaming' that is not
   in the repo (it was the class's local data). This block builds a stand-in
   with the exact schema documented in the repo README:
     id, d_1-d_9 demographics, q_1-q_21 opinions (Likert 1-7),
     b_1-b_9 behavioral, l_1-l_6 lifestyle (binary 0/1).
   Values are arithmetic functions of the row index, so the run is fully
   reproducible. Only the data source is substituted; the analysis below is
   the repo's own code. */
data streaming;
  do id = 1 to 60;
    array d {9} d_1-d_9;
    array q {21} q_1-q_21;
    array b {9} b_1-b_9;
    array l {6} l_1-l_6;
    do i = 1 to 9;  d{i} = 1 + mod(id + i*3, 4); end;
    do i = 1 to 21; q{i} = 1 + mod(id*3 + i*2, 7); end;
    do i = 1 to 9;  b{i} = mod(id + i*2, 12); end;
    do i = 1 to 6;  l{i} = mod(id + i, 2); end;
    drop i;
    output;
  end;
run;
