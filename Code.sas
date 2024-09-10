proc freq data=streaming;
tables d_1--d_9;
run;

proc freq data=streaming;
tables d_8/missing;
run;

proc freq data=streaming;
tables d_8/missprint;
run;

proc means data=streaming;
var q:;
run;

proc princomp data=streaming out=correlation_matrix;
var q_1--q_21;
run;

data streaming2;
set streaming;
avgi=mean(of q_1-q_21);
mini=min (of q_1-q_21);
maxi=max(of q_1-q_21);
array a1 q_1-q_21;
array a2 new_q_1-new_q_21;
do over a2;
if a1>avgi then a2=(a1-avgi)/(maxi-avgi);
if a1<avgi then a2=(a1-avgi)/(avgi-mini);
if a1 =. then a2=0;
end;
label new_q_1="Wide content";
label new_q_2="Convenience";
label new_q_3="Recommendations";
label new_q_4="Customer service";
label new_q_5="Quality";
label new_q_6="Plans";
label new_q_7="Languages";
label new_q_8="Offline watching";
label new_q_9="Cost";
label new_q_10="Longer waiting";
label new_q_11="Parental control";
label new_q_12="Wider content";
label new_q_13="Saving money";
label new_q_14="Other countries";
label new_q_15="Search language";
label new_q_16="Pop-up";
label new_q_17="Malware/viruses";
label new_q_18="Downloading";
label new_q_19="Friends";
label new_q_20="Less waiting";
label new_q_21="No content control";
run;

proc means data=streaming2;
var new_q:;
run;


proc princomp data =streaming2 out=coord;
var new_q_1-new_q_21;
run;


proc corr data=coord out=streaming3;
var Prin1-Prin7;
run;


proc cluster data=coord method=ward outtree=tree;
var Prin1-Prin7;
id id;
run;

proc tree data=tree;
id id;
run;

proc tree data=tree out=clus nclusters=5;
id id;
run;

proc sort data=clus;by id;run;
proc sort data=streaming2;by id;run;

data streaming_cluster;
MERGE clus streaming2;
by id;
run;
proc means data=streaming_cluster;
var new_q_1-new_q_21;
class cluster;
run;

data streaming_tricked;
set streaming_cluster;
cluster=6;
run;

data streaming_app;
set streaming_cluster streaming_tricked;
run;

proc ttest data=streaming_app;
var new_q_1-new_q_21;
where cluster=1 or cluster=6;
class cluster;
ods output ttests=cluster_1;
run;

proc ttest data=streaming_app;
var new_q_1-new_q_21;
where cluster=2 or cluster=6;
class cluster;
ods output ttests=cluster_2;
run;

proc ttest data=streaming_app;
var new_q_1-new_q_21;
where cluster=3 or cluster=6;
class cluster;
ods output ttests=cluster_3;
run;

proc ttest data=streaming_app;
var new_q_1-new_q_21;
where cluster=4 or cluster=6;
class cluster;
ods output ttests=cluster_4;
run;

proc ttest data=streaming_app;
var new_q_1-new_q_21;
where cluster=5 or cluster=6;
class cluster;
ods output ttests=cluster_5;
run;

data cluster_1_1; set cluster_1;
where variances="Unequal";
rename tvalue=tvalue_cl_1;
rename probt=probt_cl_1;
run;

data cluster_2_1; set cluster_2;
where variances="Unequal";
rename tvalue=tvalue_cl_2;
rename probt=probt_cl_2;
run;

data cluster_3_1; set cluster_3;
where variances="Unequal";
rename tvalue=tvalue_cl_3;
rename probt=probt_cl_3;
run;

data cluster_4_1; set cluster_4;
where variances="Unequal";
rename tvalue=tvalue_cl_4;
rename probt=probt_cl_4;
run;

data cluster_5_1; set cluster_5;
where variances="Unequal";
rename tvalue=tvalue_cl_5;
rename probt=probt_cl_5;
run;

proc freq data=streaming_cluster;
table (d_1 d_2 d_3 d_4 d_5 d_6 d_7 d_8 d_9 )*cluster/expected chisq;
run;



data behavioral_cluster;
MERGE clus streaming;
by id;
run;
proc means data=behavioral_cluster;
var b_1-b_9;
class cluster;
run;

proc freq data=behavioral_cluster;
table (b_1 b_2 b_3 b_4 b_5 b_6 b_7 b_8 b_9)*cluster/expected chisq;
run;



data lifestyle2;
set streaming;
avgi=mean(of l_1-l_6);
mini=min (of l_1-l_6);
maxi=max(of l_1-l_6);
array a1 l_1-l_6;
array a2 new_l_1-new_l_6;
do over a2;
if a1>avgi then a2=(a1-avgi)/(maxi-avgi);
if a1<avgi then a2=(a1-avgi)/(avgi-mini);
if a1 =. then a2=0;
end;
label new_l_1="Sensitive to price";
label new_l_2="Indoor";
label new_l_3="Healthy lifestyle";
label new_l_4="Leisure";
label new_l_5="Risk-taking";
label new_l_6="Stress";
run;

proc means data=lifestyle2;
var l:;
run;

proc princomp data =lifestyle2 out=coord;
var new_l_1-new_l_6;
run;

proc corr data=coord out=lifestyle3;
var Prin1_1-Prin7_7;
run;

proc cluster data=coord method=ward outtree=tree;
var Prin1_1-Prin7_7;
id id;
run;

proc tree data=tree;
id id;
run;

proc tree data=tree out=clus nclusters=5;
id id;
run;

proc sort data=clus;by id;run;
proc sort data=lifestyle2;by id;run;

data streaming_lifestyle;
MERGE clus lifestyle2;
by id;
run;
proc means data=streaming_lifestyle;
var new_l_1-new_l_6;
class cluster;
run;

data streaming_tricked;
set streaming_lifestyle;
cluster=6;
run;

data streaming_app;
set streaming_lifestyle streaming_tricked;
run;

proc ttest data=streaming_app;
var new_l_1-new_l_6;
where cluster=1 or cluster=6;
class cluster;
ods output ttests=cluster_1;
run;

proc ttest data=streaming_app;
var new_l_1-new_l_6;
where cluster=2 or cluster=6;
class cluster;
ods output ttests=cluster_2;
run;

proc ttest data=streaming_app;
var new_l_1-new_l_6;
where cluster=3 or cluster=6;
class cluster;
ods output ttests=cluster_3;
run;

proc ttest data=streaming_app;
var new_l_1-new_l_6;
where cluster=4 or cluster=6;
class cluster;
ods output ttests=cluster_4;
run;

proc ttest data=streaming_app;
var new_l_1-new_l_6;
where cluster=5 or cluster=6;
class cluster;
ods output ttests=cluster_5;
run;

data cluster_1_1; set cluster_1;
where variances="Unequal";
rename tvalue=tvalue_cl_1;
rename probt=probt_cl_1;
run;

data cluster_2_1; set cluster_2;
where variances="Unequal";
rename tvalue=tvalue_cl_2;
rename probt=probt_cl_2;
run;

data cluster_3_1; set cluster_3;
where variances="Unequal";
rename tvalue=tvalue_cl_3;
rename probt=probt_cl_3;
run;

data cluster_4_1; set cluster_4;
where variances="Unequal";
rename tvalue=tvalue_cl_4;
rename probt=probt_cl_4;
run;

data cluster_5_1; set cluster_5;
where variances="Unequal";
rename tvalue=tvalue_cl_5;
rename probt=probt_cl_5;
run;


proc corresp data=streaming_lifestyle binary outc=mca_coord dim=4;
var l_11 l_22 l_33 l_44 l_55 l_66;
id id;
run;

proc cluster data=mca_coord method=ward dim=2 outtree=tree_mca;
where _TYPE_='OBS';
id id;
run;
proc tree data=tree_mca;run;
proc tree data=tree_mca nclusters=5 out=cluster_mca noprint;
id id;
run;

proc sort data=cluster_mca;by id;run;
proc sort data=lifestyle2;by id;run;

data streaming_lifestyle;
MERGE clus lifestyle2;
by id;
run; 

proc freq data=streaming_lifestyle;
table (l_11 l_22 l_33 l_44 l_55 l_66)*cluster /expected chisq;
run;




proc means data=streaming_lifestyle sum;
var l_11 l_22 l_33 l_44 l_55 l_66;
output out=lifestyle_collapsed sum=;
class cluster; 
run;



proc corresp data=lifestyle_collapsed;
var l_11 l_22 l_33 l_44 l_55 l_66;
id cluster;
where _TYPE_=1;
run;

/*for the MACRO analysis*/

proc corresp data=streaming_lifestyle binary outc=mca_coord dim=4;
var l_11 l_22 l_33 l_44 l_55 l_66;
id id;
run;

data mca_coord_rows; set mca_coord;
where _type_='OBS';
keep id dim1-dim4 id_num;
id_num=id*1;
run;

/*mca_coord_rows*/
/*streaming_cluster*/

data input_var; set streaming_cluster;
keep id cluster;
rename id=id_num;
run; 

proc sort data=input_var; by id_num; run;
proc sort data= mca_coord_rows; by id_num; run;
data input_var_1; 
merge input_var mca_coord_rows;
by id_num;
run; 

proc discrim data= input_var_1 method=npar k=8;
var dim:;
class cluster;
run;

proc discrim data=input_var_1 crossvalidate method=npar k=12 out= prob_result;
var dim:;
class cluster; 
run;

%MACRO DO_kk;
%do k=8 %to 15;
proc discrim data=input_var_1 crossvalidate
             method=NPAR k=&k outcross=unico_testout_&k posterr 
             ; 
      class cluster; 
      var dim:; 
      ods output ErrorCrossVal=matrix_&k;
	run; 
	data matrix_&k; set matrix_&k; kappa=&k; run;
%end;
%mend do_kk;
%do_kk;

data matrixone(where=(type='Rate')); 
set matrix_8-matrix_15;
run;


proc univariate data= prob_result;
var _3;
where cluster=3 and _into_=3;
cdfplot; run; 

data prob_result_new; set prob_result;
flag_cl_3=.;
if (cluster=3 and _into_=3) then flag_cl_3=1;
run;

proc univariate data= prob_result_new;
var _3;
where flag_cl_3=1;
cdf / normal;
run; 

proc univariate data= prob_result;
var _5;
where cluster=5 and _into_=5;
cdfplot; run; 

data prob_result_new; set prob_result;
flag_cl_5=.;
if (cluster=5 and _into_=5) then flag_cl_5=1;
run;

proc univariate data= prob_result_new;
var _5;
where flag_cl_5=1;
cdf / normal;
run; 

/*THE ENDDDDD*/ 



/*from here on it's the feverish dream of the past 4 days loool*/

proc freq data=clus; 
table cluster; run;
data clus_fixed;
set clus;
id=1*id_num;
run;

data streaming_lifestyle_fixed;
set mca_coord_rows;
keep dim1-dim2 id_num id;
if _type_='OBS';
id= 1*id_num;
run;


proc sort data=clus_fixed; by id; run;
proc sort data=streaming_lifestyle_fixed; by id; run;

data mca_predictive;
merge streaming_lifestyle_fixed clus_fixed;
by id_num; 
run; 
/*qui mi dice che sto usando id come carattere e anche come numero*/ 

proc discrim data=mca_predictive crossvalidate method=npar k=8 out=c.prob_result;
var dim:;
class cluster; 
run;

%MACRO DO_kk;
%do k=8 %to 15;
proc discrim data=mca_predictive crossvalidate
             method=NPAR k=&k outcross=unico_testout_&k posterr 
             ; 
      class cluster; 
      var dim:; 
      ods output ErrorCrossVal=matrix_&k;
	run; 
	data matrix_&k; set matrix_&k; kappa=&k; run;
%end;
%mend do_kk;
%do_kk;

data matrixone(where=(type='Rate')); 
set matrix_8-matrix_15;
run;

