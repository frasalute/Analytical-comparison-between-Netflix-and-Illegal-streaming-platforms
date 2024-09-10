# Analytical-comparison-between-Netflix-and-Illegal-streaming-platforms
# INTRODUCTION

Whether someone is interested in tv series or movies, action or drama, documentaries or sci-fi, it is nowadays common practice to use streaming platforms as a form of access to this kind of entertainment. A streaming platform is an on-demand online entertainment source for TV shows, movies, and other streaming media, i.e. multimedia that is delivered and consumed in a continuous manner from a source, with little or no intermediate storage in network elements. This is just a fancy way of saying that streaming platforms deliver directly from the platform to the consumer.

The question is: Why are we interested in them and what exactly are we looking for by studying them?

We are interested in them because everyone knows them and uses them due to the growing popularity of legal and accessible streaming platforms such as Netflix, Amazon Prime Video, or Disney+, which makes them an obviously fascinating topic to elaborate on. Additionally, legal platforms are different from illegal ones and that creates a very nice ground for a detailed comparison between the two categories. This perfectly explains why we will deepen on the matter and study the behavior people have towards them.
In this analysis, we will focus on what people find convenient about one type of platform or the other, we will proceed to try to understand if there are connections between these characteristics and the choice of the platforms made by individuals, and finally, we will draw our conclusions on why some platforms are preferable compared to others and what is considered dislikable about them.

# 1.1 SURVEY DESCRIPTION
We created and designed the survey using Google Forms tool. We have been able to collect 111 responses from our families, friends and University colleagues from all over the world. One of our goals in this part was to receive as many responses from different socio- demographic backgrounds as possible. We decided to conduct the survey in English. Eventually, we analyzed our collected data with one of the most widely used statistical analysis and data visualization software packages SAS.
The survey included 4 different types of questions:
Sociodemographic questions, used to understand personal aspects and social backgrounds of the sample.
Quantitative questions, in order to comprehend the opinions of the respondents and how they value specific attributes of our topic on a scale from 1 to 7; 1 representing "I hate it" and 7 representing "I love it".
Behavioural questions, which are based on the habits of our participants of the survey related to the topic.
Lifestyle questions, in order to perceive the attitudes and daily routines of our respondents.

# 1.2 PREPARING DATA FOR SAS ANALYSIS
We created an Excel table with all our data and we changed the name of the variables to make the commands in SAS easier. To identify the sociodemographic variables we chose the letter 'd', 'q' for qualitative questions, for the behavioral variables the letter 'b', and 'l' for lifestyle ones. Then we saved the file as a text file and imported it into SAS to start the analysis.

# SOCIO-DEMOGRAPHIC ANALYSIS

# 2.1 FREQ PROCEDURE
First of all, we have completed the frequency procedure with sociodemographic variables in order to understand our sample data and the distribution of variables. The command we used allowed us to calculate the number, percentages, and cumulative percentages of our respondents falling in a specific category of our categorical variables.
From SAS results represented as tables, we can see that majority (66,67%) of our replies came from people that are aged between 18 to 25 years old, while percentages of replies from the other age segments (<18; 26-35; 36-50; 50+) are 4,5%, 18,92%, 5,41%, 4,5% respectively. In addition, most (59,46%) of our respondents identify themselves as females, 33,33% as males, 4,5% as non-binary, 1,8% as gender-fluid, and the rest of respondents preferred not to say their gender.
Considering our main topic we were expecting a higher percentage of replies from students, we have included the third question (d_3) about the status in our survey in order to verify and know the exact percentage of students in our sample. They made up for 43,24% in total, followed by workers (36,04%), and people who are both: students and workers (16,22%). Also, we collected replies from 3,6% of unemployed respondents and 0,9% retired. From SAS results represented as tables, we can see that majority (66,67%) of our replies came from people that are aged between 18 to 25 years old, while percentages of replies from the other age segments (<18; 26-35; 36-50; 50+) are 4,5%, 18,92%, 5,41%, 4,5% respectively. In addition, most (59,46%) of our respondents identify themselves as females, 33,33% as males, 4,5% as non-binary, 1,8% as gender-fluid, and the rest of respondents preferred not to say their gender.
Considering our main topic we were expecting a higher percentage of replies from students, we have included the third question (d_3) about the status in our survey in order to verify and know the exact percentage of students in our sample. They made up for 43,24% in total, followed by workers (36,04%), and people who are both: students and workers (16,22%). Also, we collected replies from 3,6% of unemployed respondents and 0,9% retired. Having information about the number of family members of our respondents we were also keen to know whether there are families that have siblings or kids younger than 18 years. We were considering the hypothesis that having younger members of the family could affect the choice between Netflix and illegal streaming platforms. Results showed that the majority of the respondents (72,07%) do not have siblings or children that are underaged in their families. 

<img width="581" alt="Schermata 2024-09-10 alle 15 31 01" src="https://github.com/user-attachments/assets/c447e159-b7a7-4c3d-94a5-58fd84b3a1b1">

<img width="581" alt="Schermata 2024-09-10 alle 15 31 27" src="https://github.com/user-attachments/assets/910fe9d1-4b8c-4852-93a4-1335b37a6d2d">

<img width="581" alt="Schermata 2024-09-10 alle 15 31 47" src="https://github.com/user-attachments/assets/692cbe36-0d10-4793-904f-7b6bdb55e363">

We can conclude that our sample is a convenience sample, that does not represent the total population because we mainly collected responses from young people.

# IMPORTANCE QUESTIONS AND PRINCIPAL COMPONENT ANALYSIS
# 3.1 MEANS PROCEDURE
We began our analysis of the Importance data with the means procedure, which allows us to see main statistical measures such as mean, standard deviation, minimum and maximum. It calculates the average value for each variable, in this way we can understand which variables are most important in our sample.
In addition, standard deviation measures the dispersion of the values around the mean: the further the values are, the greater the standard deviation.

<img width="362" alt="Schermata 2024-09-10 alle 15 30 34" src="https://github.com/user-attachments/assets/55a266cd-ba12-4835-88d0-ecfe819c1d8f">

From the table above we can see that Netflix's convenience of having no advertisement and high resolution (q_2) and the access to other countries' productions (q_14) of illegal platforms are the most important variables to describe the choice between Netflix and illegal platforms in our sample. Because their means are respectively 5.5 and 5.53 out of 7. Our respondents are not that concerned about catching malware or viruses (q_17) while using illegal streaming platforms.
Variables q_10 (longer waiting time due to copyright) and q_11 (parental control) have the lowest standard deviation, which means that respondents' responses did not vary much around the mean.
The biggest SD (2.09) comes from the variable of watching simultaneously with friends without multiple accounts (q_19), which represents the fact that most people disagree about their judgment of this illegal platforms' feature. From the results, we can also see that people also disagree a lot about less waiting time for illegal streaming platforms (2.05).

# 3.2 PRINCIPAL COMPONENT ANALYSIS
Principal component analysis is a factor transformation of our original dataspace with which we aim to reduce the number of dimensions of a dataspace while preserving the essential part of variability. The outcomes of this analysis are: a correlation matrix, an eigenvalue table, and an eigenvector table.
From the input dataset consisting of "n" rows and "p" variables, "p principal components" can be computed, each one of which is a linear combination of the original variables, with coefficients equal to the eigenvectors of the correlation matrix.
We can start with the correlation, which is a measure that spans from -1 to +1 and describes the linear relationship between two variables.
Two variables move in the same direction (when one increases, the other goes up as well) if the correlation coefficient is positive, and in opposite direction (when one increases and the other decreases) the coefficient is negative. If the correlation is +1 or -1 we can see the perfect linear dependency, while if it is equal to 0 the two variables are not correlated. Correlation then is the ratio of the covariance (measurement of confusion on a data space) of the two variables to the product of their standard deviations.

<img width="585" alt="Schermata 2024-09-10 alle 15 29 59" src="https://github.com/user-attachments/assets/576a6212-a4d1-45ba-8e6c-0c2be1d9826d">

We can see the highest positive correlation coefficient (0.84) between wider content choices (q_12) and access to other countries' productions (q_14) of illegal streaming platforms. The highest negative correlation (-0.42) is between access to many languages in both audio and subtitles on Netflix( q_7) and pop-up and explicit pop-ups in illegal streaming platforms (q_16). It makes sense because people who are willing to access other countries' productions automatically could have a wider content choice in illegal streaming.
However, most correlation coefficients are positive, which means that our matrix is inflated by a positive correlation trend. And, since our variables have some linear dependency between each other we are not operating in Euclidean space (in which all variables are independent and orthogonal). As a consequence, we cannot use either the Ward method or the other algorithms based on distance measurements of our units to create clusters.
Our database should have a 0 correlation to be useful for our clusterization because each variable needs to have a specific meaning in characterizing the clusters.

<img width="292" alt="Schermata 2024-09-10 alle 15 29 15" src="https://github.com/user-attachments/assets/31a67ac7-70d7-4f76-8bd5-7eb6c6015d69">

Each eigenvalue is the length of each principal component and thus it describes the variability associated with each PC. We have 21 PC since we have 21 variables. We can find the portion of the variability that each PC represents by dividing its length by the sum of all their lengths, which is equal to 21.
To understand which PCs are most important to the general global variability we have to compare each eigenvalue to the benchmark (the expected value which is equal to 1). According to this benchmark strategy we have to select only those principal components with eigenvalues similar to or bigger than 1.
In this case, we can select the Principal Components 1-2-3-4 and also 5, since 0,99 is very close to 1, representing 69% of the variability (as we can see in the cumulative column) passing from 21 dimensions space to a space with 5 dimensions.
We can describe the other principal components as noise generated by the mind of the respondents that confounds the similarity structure of our data.
In the eigenvector table, we see the correlation between each original variable and principal component.

<img width="604" alt="Schermata 2024-09-10 alle 15 34 21" src="https://github.com/user-attachments/assets/87565c80-85ba-4d94-9389-c949b4a5afa1">

Looking at the correlation between our variables and PC1 we see that we have almost no trade-off, in fact when one variable increases almost all the others do the same. We have size effect, as also the positive trend in the correlation matrix suggested to us.

# 3.3 SIZE EFFECT
Size effect is a very common phenomenon in these types of surveys about opinions. It is the general trend of our measurement and it creates distortion and inflation in the data set.
This phenomenon is a consequence of the subjectivity of the people about the perception they have of the scale when they are rating, which depends on the average level in the mind of people participating and is related to emotional and cultural variables.
We need to eliminate this distortion (and the size effect) by transforming our original variables based on a scale from 1 to 7 into new variables, with a new scale from -1 to +1, in which -1 is the minimum, 0 is the average and +1 is the maximum.
In SAS we used array function to create the new variables from the old ones and the if statement to generate a code according to which the variables were to be changed.

<img width="426" alt="Schermata 2024-09-10 alle 15 35 19" src="https://github.com/user-attachments/assets/20a24f4a-5c9c-4219-9e34-26a5ae301260">

Compared to the old variables, there is a correspondence between the most and least important variables. In fact, the rank in terms of relative importance does not change. That is, transforming the data space does not change the relative importance between variables, it just eliminates the size effect of it: the convenience of Netflix and access to other countries' production of illegal streaming platforms are still the most important variables with the least standard deviations while the danger of malware or viruses is the least important for our sample.
At this point, we proceeded with the principal component analysis (PCA) to select the essential part of variability to describe our sample. The factor transformation of our original data with principal component analysis allows us to observe a dataspace by transforming it in an orthogonal space, in which we can use the Euclidean distance. We can prove it by computing the correlation coefficients between our Principal Components.

<img width="615" alt="Schermata 2024-09-10 alle 15 35 55" src="https://github.com/user-attachments/assets/d20d44b6-034a-4eb5-bf0d-9bca8ae7f638">

We observe that now, after the elimination of size effect, we do not have a general trend, we have trade-offs among our variables and more negative correlation coefficients.
The highest correlation coefficient is still between wider content choices and access to other countries' productions but after cleaning the data some negative correlations such as pop-ups and explicit advertisements and access to many languages in both audio and subtitles are even more negative.
We assume that: (1) the negative relationship among these variables is emphasized after eliminating the size effect, (2) people who are positively interested in wider content are also interested in access to other countries' production, and (3) as we have almost 0 correlation between the possibility to receive some malware or viruses while using illegal streaming platforms and feature to search for the preferred language there both of them has almost 0 effect on the other.
By looking at the eigenvalue table we can understand how each Principal Component is important in relation to the others.

<img width="618" alt="Schermata 2024-09-10 alle 15 36 26" src="https://github.com/user-attachments/assets/c4e9915f-cf0e-463b-969f-8f7e21b6e3be">

We observe that now, after the elimination of size effect, we do not have a general trend, we have trade-offs among our variables and more negative correlation coefficients.
The highest correlation coefficient is still between wider content choices and access to other countries' productions but after cleaning the data some negative correlations such as pop-ups and explicit advertisements and access to many languages in both audio and subtitles are even more negative.
We assume that: (1) the negative relationship among these variables is emphasized after eliminating the size effect, (2) people who are positively interested in wider content are also interested in access to other countries' production, and (3) as we have almost 0 correlation between the possibility to receive some malware or viruses while using illegal streaming platforms and feature to search for the preferred language there both of them has almost 0 effect on the other.
By looking at the eigenvalue table we can understand how each Principal Component is important in relation to the others.

<img width="618" alt="Schermata 2024-09-10 alle 15 37 27" src="https://github.com/user-attachments/assets/927f4145-34fa-408c-8303-f0c7c9d900c8">

Then we can proceed with the analysis of the eigenvectors, which show the corrrelation between variables and principal components.

<img width="358" alt="Schermata 2024-09-10 alle 15 38 02" src="https://github.com/user-attachments/assets/02a86317-0363-415c-bc5a-0a3f4d6d751c">

# PRINCIPAL COMPONENT 1
This principal component is positively affected mainly by less waiting time, no content control, the possibility to watch with friends, wider content, and preferred search language. However it is negatively affected mainly by longer waiting time, customer service, parental control, subscription plans, and quality. We could see the opposition of interest between the cost and wide spectrum of choices.

# PRINCIPAL COMPONENT 2
Here we have an opposition between the possibility to watch offline on Netflix, different language selection, and other countries' production that have a positive correlation with the second principal component and longer waiting time due to copyright and the possibility of receiving malware or viruses. This might represent the part of the population that is more interested in watching convenience and wide content rather than the side effects that could be caused or appear.

# PRINCIPAL COMPONENT 3
This principal component is mainly positively affected by customer service, recommendations generated by Netflix, and the quality of the watching (High resolution, no ads). On the negative side, we can find saving money and the cost of Netflix subscription. This represents the part that is willing to pay more to get better quality.

# PRINCIPAL COMPONENT 4
This is positively affected by customer service, parental control, and longer waiting time due to copyrights, while being negatively affected by convenience, wide content, and quality. This might indicate an opposition between those people who care more about humanistic values rather than the quality of watching or huge choices.

# PRINCIPAL COMPONENT 5
Here we have an opposition between cost, subscription plans, and other countries' production that are positively correlated with the PC in question, while offline watching on Netflix and downloading on illegal platforms are negatively correlated.

# PRINCIPAL COMPONENT 6
This principal component might indicate those people who show a positive interest in convenience, cost, and parental control but a negative interest in the quality and longer waiting time.

# PRINCIPAL COMPONENT 7
Here we can see the part of the people who are positively affected by offline watching and cost and mainly negatively by recommendations and parental control.

# 3.4 CLUSTERING METHOD AND FORMATION
Through SAS calculations we have so far created an orthogonal space, then proceed with the clusterization process.
Clustering is the task of grouping a set of objects in such a way that the units in the same group, i.e. "cluster", are similar to each other and different from those in other clusters. By profiling individuals using the clusterization process we can better study patterns of behavior among them.
Different clustering methods can be used. One of these is called the "minimum linkage method" and it consists in calculating the minimum distances among units with an algorithm that uses the Euclidean distance as a measure. This method results in an approximated classification scheme since it only uses the major characteristics of the units to form homogeneous groups. This causes the generation of errors as their heterogeneity increases.
Another method called the "Ward algorithm" is the method we decided to employ, mainly because it is useful to overcome issues deriving from nested dendrograms (hierarchical clusters). A nested dendrogram is a cluster tree used to represent data, where each group links to two or more successor groups and, ideally, ends up showing a meaningful classification scheme. Unfortunately, that is rarely the case with surveys like ours, where opinions are asked to individuals. People tend, in fact, to avoid extreme positions when expressing a point of view and this causes a fallacy in the minimum linkage method which fails to recognize natural groups among the data.
The Ward algorithm focuses on minimizing inter-cluster variability and maximizing external variability, hence maximizing the diversity among different groups. It is this opposite approach compared to the minimum linkage method that allows us to overcome the problem of hierarchical clusters and analyze the "fusion distance, (FD)" i.e. the increase in internal variability as groups are unified with each other.

# 3.5 DENDROGRAM AND IDENTIFICATION

<img width="609" alt="Schermata 2024-09-10 alle 15 39 50" src="https://github.com/user-attachments/assets/2a76d44a-cf52-4651-a2b5-212c0a725e55">

<img width="576" alt="Schermata 2024-09-10 alle 15 40 14" src="https://github.com/user-attachments/assets/ffeecf62-aeae-4b8a-b0b3-7049bfe93ffd">

The next step is deciding how many clusters to select. In doing so, trade- offs between the reduction of clusters' complexity and the increase of Fusion Distance (internal variability due to merging groups together) must be carefully taken into consideration.
We decided that for the purpose of our research, 5 clusters would work best.
We then proceeded with running a frequency analysis in order to understand how many respondents we had at this point in each cluster. Additionally, we performed the proc means formula which allowed us to acknowledge which variables characterized the new clusters.

<img width="576" alt="Schermata 2024-09-10 alle 15 41 25" src="https://github.com/user-attachments/assets/e718d13f-1d14-43fa-bb4c-df8fd96186eb">

Clusters are strongly positively characterized by those variables that have a positive mean and negatively characterized by those variables with a negative mean.

# 3.6 T-TEST
In order to understand if the difference between the two means is real or due to random effect, performing a T-Test analysis was our next move. This analysis is useful to recognize if the relationship between quantitative variables and clusters is noteworthy.
The study consists in examining if, for each variable, the cluster average is different from the sample average only because of random effect.
We therefore created two main hypotheses that we then set against each other: H0 is called the "null hypothesis" and states that the cluster average and the sample average are equal; H1, called the "alternative hypothesis", simply states that the two of them differ.
A p-value, i.e. the probability of observing our H0 hypothesis to be true, was then needed to be found. Any p-value is connected to a t-value, defined as the ratio of the difference between the cluster mean and the population mean, and the standard error. Usually, we reject H0 for p- values that are lower than 0.05 and then state that the variable is able to differentiate the cluster.
T-values can be estimated using one of two methods Satterthwaite method and Pooled method. Since we had unequal variances we used the first one.
To run the t-test we generated a sixth 'fake' cluster containing all the units in the data set, i.e. representing the general average of the sample so that it could be used as a comparison between the single clusters and the general sample.

<img width="576" alt="Schermata 2024-09-10 alle 15 42 02" src="https://github.com/user-attachments/assets/4d44d3b8-019a-4ed1-bb1b-349fff1ab982">

# 3.7 CLUSTER ANALYSIS 
# 3.7.I CLUSTER 1

<img width="291" alt="Schermata 2024-09-10 alle 15 42 49" src="https://github.com/user-attachments/assets/305c0fb6-b946-4a53-8de7-cc4b21676666">

In this case we can observe that our p-values resulted lower than 0.05 for our new_q_12, new_q_13, new_q_14, new_q_15, new_q_16, new_q_17 and new_q_19 variables (wider content, saving money, other countries, search language, pop-up, malware/viruses and friends respectively). This means that these variables are of particular importance for the differentiation process of the cluster we are analysing here.
On the contrary, we found our new_q_11 and new_q_21 variables (Parental control and No content control respectively) having particularly large p-values, hence not being statistically significant.
These results additionally show that people do not particularly care about Customer service, cost, and longer waiting time (new_q_4, new_q_9, new_q_10) when it comes to Netflix usage characteristics, but in contrast, it shows that people strongly dislike (highly negative t-values) pop-ups and the possibility of catching viruses (new_q_16, new_q_17) on illegal streaming platforms.
Safe to say that if any of our respondents uses illegal streaming platforms, it probably won't be because of these last two features, but it will most likely have to do with a wider content choice compared to Netflix (new_q_12) since its t-value is 4.91, showing a strong association to the choice, and also with saving money (new_q_13) with t-value of 4.22.

# 3.7.II CLUSTER 2

<img width="261" alt="Schermata 2024-09-10 alle 15 43 25" src="https://github.com/user-attachments/assets/1b075bb3-c0c5-404d-9fb6-207a84031d04">

The variables characterizing this cluster are new_q_2 (Convenience), new_q_11 (Parental control), new_q_12 (Wider content), new_q_13 (Saving money), new_q_14 (Access to other countries' production), new_q_16 (Pop-ups), and new_q_17 (Malware/viruses).
As we can see from their negative t-values though, individuals in this cluster do not use Netflix for parental control nor do they use Illegal streaming platforms for wider content, saving money purposes or other countries' production.

# 3.7.III CLUSTER 3




