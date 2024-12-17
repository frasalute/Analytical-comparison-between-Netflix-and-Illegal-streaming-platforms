# Analytical comparison between Netflix and Illegal streaming platforms

(Done in a university setting as project part of a Market Research and Analysis class together with other two students.)

## Overview
This project analyzes the behavior and preferences of users toward **legal streaming platforms** (e.g., Netflix) and **illegal streaming platforms**. The analysis includes:
- Descriptive statistics
- Principal Component Analysis (PCA)
- Clustering analysis
- Hypothesis testing (T-tests and chi-square)
- Predictive modeling (k-Nearest Neighbor using discriminant analysis)

---

## Dataset Description
### Variables:
- **Demographic Variables**: `d_1` - `d_9`
- **Opinion Variables**: `q_1` - `q_21` (Likert scale: 1-7)
- **Behavioral Variables**: `b_1` - `b_9` (Hours and habits)
- **Lifestyle Variables**: `l_1` - `l_6` (Binary: Yes/No)

---

## Project Workflow

### 1. Data Preparation
Normalize opinion variables (`q_1-q_21`) and lifestyle variables (`l_1-l_6`):
```sas
data streaming2;
  set streaming;
  avgi = mean(of q_1-q_21);
  mini = min(of q_1-q_21);
  maxi = max(of q_1-q_21);
  array a1 q_1-q_21;
  array a2 new_q_1-new_q_21;
  do over a2;
    if a1 > avgi then a2 = (a1-avgi)/(maxi-avgi);
    else if a1 < avgi then a2 = (a1-avgi)/(avgi-mini);
    else if a1 = . then a2 = 0;
  end;
run;
```

### 2. Descriptive Statistics
#### Frequency Tables for Demographics:
```sas
proc freq data=streaming;
  tables d_1--d_9;
run;
```
#### Summary Statistics for Opinions:
```sas
proc means data=streaming;
  var q:;
run;
```

### 3. Principal Component Analysis (PCA)
Dimensionality Reduction:
```sas
proc princomp data=streaming2 out=coord;
  var new_q_1-new_q_21;
run;
```
Select significant components (eigenvalues ≥ 1).

### 4. Clustering Analysis
#### Hierarchical Clustering using Ward’s Method:
```sas
proc cluster data=coord method=ward outtree=tree;
  var Prin1-Prin7;
  id id;
run;

proc tree data=tree out=clus nclusters=5;
  id id;
run;
```
#### Merge Clusters with Original Data:
```sas
proc sort data=clus; by id; run;
proc sort data=streaming2; by id; run;

data streaming_cluster;
  merge clus streaming2;
  by id;
run;
```

### 5. Hypothesis Testing (T-tests)
Compare Cluster Means:
```sas
proc ttest data=streaming_app;
  var new_q_1-new_q_21;
  where cluster=1 or cluster=6;
  class cluster;
  ods output ttests=cluster_1;
run;
```

### 6. Multiple Correspondence Analysis (MCA)
Analyze Lifestyle Variables:
```sas
proc corresp data=streaming_lifestyle binary outc=mca_coord dim=4;
  var l_11 l_22 l_33 l_44 l_55 l_66;
  id id;
run;
```

### 7. Predictive Modeling (k-NN Discriminant Analysis)
Cross-validate to Find Optimal k:
```sas
%MACRO DO_kk;
%do k=8 %to 15;
  proc discrim data=input_var_1 crossvalidate method=npar k=&k outcross=unico_testout_&k posterr;
    class cluster;
    var dim:;
    ods output ErrorCrossVal=matrix_&k;
  run;
  data matrix_&k; set matrix_&k; kappa=&k; run;
%end;
%mend do_kk;
%do_kk;
```
#### Final Discriminant Analysis:
```sas
proc discrim data=input_var_1 crossvalidate method=npar k=12 out=prob_result;
  var dim:;
  class cluster;
run;
```

---

## Outputs
- **Descriptive Analysis**: Frequency tables and summary statistics.
- **PCA Results**: Eigenvalues, component loadings, and explained variance.
- **Cluster Profiles**: Analysis of significant opinion variables (T-tests).
- **MCA**: Visualization of cluster relationships with lifestyle variables.
- **Predictive Model**: k-NN model for cluster classification and accuracy evaluation.

---

## Instructions to Run
1. Import the dataset into SAS:
   - The `streaming` dataset should contain demographic, opinion, behavior, and lifestyle variables.
2. Copy and execute the SAS code blocks in the order listed.
3. Review outputs:
   - Frequency tables
   - PCA results (eigenvalues and loadings)
   - Clusters and cluster profiling tables
   - Discriminant analysis results (confusion matrix and error rates)

---

## Tools and Methods
- **PROC FREQ**: Frequency analysis
- **PROC MEANS**: Descriptive statistics
- **PROC PRINCOMP**: Principal Component Analysis (PCA)
- **PROC CLUSTER**: Ward’s clustering method
- **PROC TTEST**: T-tests for cluster means
- **PROC CORRESP**: Multiple Correspondence Analysis
- **PROC DISCRIM**: k-NN discriminant analysis

---

## Conclusion
This project identifies distinct user clusters based on preferences for streaming platforms, usage behavior, and lifestyle characteristics. The predictive model enables generalization of clusters for unobserved data, providing actionable insights.
