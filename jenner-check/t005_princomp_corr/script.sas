proc princomp data=streaming out=coord;
var q_1--q_21;
run;

proc corr data=coord out=streaming3;
var Prin1-Prin7;
run;
