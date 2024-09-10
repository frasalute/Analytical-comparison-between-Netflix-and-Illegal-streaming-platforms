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

<img width="261" alt="Schermata 2024-09-10 alle 15 44 13" src="https://github.com/user-attachments/assets/2898e8a5-71e8-42b1-9bd3-15ff0ae7f13b">

Several variables are noteworthy here. All variables between new_q_1 and new_q_6 (i.e. Wide content, Convenience, Recommendations, Customer service, Quality, Plans), along with variables new-q- 12,_13,_14,_18,_20 and_21 (Wider content, Saving money, Other countries' production, Downloading, Less waiting time) seem to characterize it.
The negatively strong relation with variable new_q_6 (Plans) and the positively strong one with variable new_q_13 (Saving money) are the ones better-describing similarities between individuals in this cluster.

# 3.7.IV CLUSTER 4

<img width="261" alt="Schermata 2024-09-10 alle 15 45 04" src="https://github.com/user-attachments/assets/b1a38398-d227-4acd-8334-c3b845a5389f">

Important variables mingled with this cluster's units are from variable new_q_14 to new_q_21 (Other countries' production, Search language, Pop-up, Malware/viruses, Downloading, Friends, Less waiting time, and No content control respectively) and they all strongly influence the choices of these individuals in a negative fashion, meaning that people either do not particularly care about these features or deeply dislike them.

# 3.7.V CLUSTER 5

<img width="261" alt="Schermata 2024-09-10 alle 15 45 35" src="https://github.com/user-attachments/assets/bf059587-c050-4d5a-ae72-e2d813d4d2be">

Noteworthy variables here are the possibility of having various types of Plans (new_q_6), which positively impacts the behaviour of this cluster, and Saving money (new_q_13), which also does but in a negative way.

# CHI-SQUARE TEST FOR SOCIODEMOGRAPHIC VARIABLES
In order to better understand clusters, we want to know if there is a relationship between them and the sociodemographic variables.
We apply the chi-square approach which is the method used for 2 categorical variables relation.
We want to know if each cluster and the sociodemographic variables are independent, which happens when the expected and the observed distributions are equal.
The chi-square measures the squared distance of data. As with the t- test, to each chi-square, a p-value corresponds, which is the probability that H0, the situation of independence, holds. The null hypothesis, the hypothesis that the partition in clusters is independent of the other variable and the chi-square is not 0 due to a random effect, can be accepted if the p-value is higher than 0.05. 

Among our sociodemographic variables (age, gender, status, family members, place of birth, place of residence, income, level of education, and the number of minors in the family) only minors in the family can be important in the partitioning of our clusters since its p-value is lower than 0.05.
As we can see in the table below, in cluster 1 we have an overrepresentation of families with no minors since the observed value is higher than the expected value, while in cluster 3 we have an underrepresentation of families with minors.

<img width="529" alt="Schermata 2024-09-10 alle 15 46 36" src="https://github.com/user-attachments/assets/c22f9b4d-065b-411d-9c31-8e2372d0f88e">

# BEHAVIOURAL VARIABLES ANALYSIS
To incorporate behavioral variables in the analysis of the clusters we could not use binary correspondence analysis, which is a factor transformation that transforms a frequency table into a continuous space generating coordinates, due to the lack of a distribution of expenditures to compare the total distribution to (using rarity and chi-square). In fact, in order to study the distance between an item and total expenditure, to use this factor we should transform data eliminating absolute values and taking into consideration only relative values since each item has some degree of importance generated by rarity.

Based on which variable has a lower p-value than 0.05, we found that the behavioral ones characterizing our clusters are:

<img width="564" alt="Schermata 2024-09-10 alle 15 47 23" src="https://github.com/user-attachments/assets/38ef7c75-60c0-497b-bdbf-b6faad3c2e27">

<img width="595" alt="Schermata 2024-09-10 alle 17 42 10" src="https://github.com/user-attachments/assets/f55dd82a-e111-4a2d-8379-c2ade37256e1">

The option 1-4 hours is overrepresented in clusters 4 and 5 and underrepresented in clusters 1 and 2 (we understand that by comparing the frequency and the expected value).
The opposite is true for the option 5+ hours.
The other two options are more or less what was expected.

<img width="595" alt="Schermata 2024-09-10 alle 18 03 42" src="https://github.com/user-attachments/assets/d0270f20-8bbc-4b7f-b406-c4e45b6bc7f7">

As for the 1-4 hours option, we have an overrepresentation in clusters 1, 4, and 5 and an underrepresentation in clusters 2 and 3.
When it comes to the 30 mins option, it is overall as expected. The same is true for the last two options but we have a slight overrepresentation of the third option in cluster 2, and of the fourth option in cluster 3.

<img width="595" alt="Schermata 2024-09-10 alle 15 48 13" src="https://github.com/user-attachments/assets/4ab81e3b-97fb-4d9e-88ce-0f7600393ef5">

For this variable, we can notice an overrepresentation of option 1-4 hours in the first and fifth clusters. Also, we observe an underrepresentation of the last option in cluster 1, as opposed to an overrepresentation in clusters 2 and 4.
The other two options are very close to what was expected.

<img width="595" alt="Schermata 2024-09-10 alle 18 04 34" src="https://github.com/user-attachments/assets/dd71c5cc-1ce4-42d8-a8cd-25a51a88980d">

Lastly, for this variable, the option Friends presents is slightly overrepresented in clusters 1 and 4, the same is true for the option I don't have an account but for cluster 3 and the rest is what was expected.

# LIFESTYLE VARIABLES AND MULTIPLE CORRESPONDENCE ANALYSIS (MCA)
# 6.1 MULTIPLE CORRESPONDENCE ANALYSIS
Now we use lifestyle variables that are in the form of YES-NO answers to describe clusters. Since these variables are categorical, we have a qualitative space.
In order to analyze these binary data, we perform Multiple Correspondence Analysis, which is a factor transformation that transforms these binary variables into coordinates of a quantitative continuous space with orthogonal axes.
The metric to measure the distance between coordinates is based on the rarity of a phenomenon, which means that two units are more similar if they have common characteristics that are rare. A category must be overvalued if it has few units.
The first thing we did was change our responses in the binary language (1;0), where yes=1 and no=0.
Then we ran the proc corresp procedure to find the coordinates of our units in the quantitative space, choosing a specific number of dimensions.
The number of dimensions is to be chosen with the formula:
'n' dimensions= ('n' categories - 'n' variables)-1 (12-6) -1= 5
However, since 5 dimensions were too many for our analysis in SAS, we used 4.

# 6.2 INERTIA AND CHI-SQUARE DECOMPOSITION

<img width="595" alt="Schermata 2024-09-10 alle 18 08 30" src="https://github.com/user-attachments/assets/b71b4710-b6b4-4730-b415-ef4fa56977ed">

The correspondence analysis calculates a set of orthogonal dimensions, each of which represents a portion of the total inertia, that is, the total variability.
The benchmark, in this case, is calculated as:
total chi-square / 'n' eigenvalues 117.755 / 4 = 29.4
We select just the first two dimensions since their chi-square is higher than the benchmark, which enables us to comprehend 70.88% of the variability present when generating our clusters. We ran the proc cluster procedure, which convinced us to choose 5 clusters, and the proc tree procedure to output the data in the 5 clusters.

<img width="384" alt="Schermata 2024-09-10 alle 18 09 14" src="https://github.com/user-attachments/assets/4b8df5df-4cbb-47e3-a14d-59e120476b41">

Next, after changing id into a numerical variable and having sorted the two datasets by id, we merged the 5 clusters with the lifestyle dataset to go on with the description of the content of the clusters.

# 6.3 CHI-SQUARE TEST
To analyze the relationship between our partition in clusters and the lifestyle variables we generated cross-tables (one for each variable) with the proc freq command.
In these tables, we find the observed distribution and the expected distribution according to the independence situation for each variable among the clusters.
In the tables below we can see that none of our variables, which we transformed into binary data previously, influences the partition in clusters because their p-values are higher than 0.05, which leads us to fail to reject the null hypothesis.

<img width="275" alt="Schermata 2024-09-10 alle 18 10 00" src="https://github.com/user-attachments/assets/560f1bb5-7739-4bdc-97c7-2bb53154b220">

<img width="1143" alt="Schermata 2024-09-10 alle 18 10 29" src="https://github.com/user-attachments/assets/f064f507-4347-46c7-9816-87e85033852d">

After that, we used the proc means procedure through which we created a compact table that shows the number of people who answered yes (1) and no (0) for each variable in each cluster. Thus, in the sixth and 12th rows, we see the marginal distribution, and in the other rows the distribution of the variables in the single clusters.

<img width="527" alt="Schermata 2024-09-10 alle 18 11 06" src="https://github.com/user-attachments/assets/2edfdb0a-9076-4971-a66b-b530309196b4">

# 6.4 THE CORRESPONDENCE MAP
Then with the proc corresp command, we represented in an orthogonal space the position of our clusters with respect to the lifestyle variables.

<img width="478" alt="Schermata 2024-09-10 alle 23 11 54" src="https://github.com/user-attachments/assets/4d7820ab-b62f-4f89-ad33-768e5fa6ed90">

Cluster 3 and 5 are far from the variables. Cluster 1 is characterized by both l_11 and l_44, while cluster 4 is characterized by l_33.

# DISCRIMINANT ANALYSIS LIFESTYLE AND THE PREDICTIVE MODEL
Opinion clusterization is the best way to create clusters.
Of course, a considerable problem arises with the dimensionality of information, as we studied the opinions only of a small sample of people, not of the entire potential customer base.
Companies also want to predict opinion clusters for the units that haven't been interviewed using other data (such as behavioral and lifestyle data). In fact, big data are helpful to predict small data (opinions).
In order to do so, they must create a predictive model that explains the relationship between opinion clusters and the other variables.
This model has the function:

Opinions = f [ behaviors, lifestyle, ...]

in which behaviors and lifestyle represent the independent variables, that is to say, the predictors. Opinions are instead the dependent variables, meaning the target variables.
With the aim of finding the function that maximizes the fitting likelihood of the relationship between these variables, we used a geometrical approach called the k-nearest neighbor (KNN) approach, which assigns units to clusters on the basis of the proximity they have to existing clusters by using a selected number of "k" nearest neighbors. The k value in the k-NN algorithm defines how many neighbors will be checked to determine the classification of a specific query point.
Defining k can be a balancing act (tradeoff between bias error and variance) as different values can lead to overfitting or underfitting. Lower values of k can have high variance, but low bias, and larger values of k may lead to high bias and lower variance as we use more information. The choice of k will largely depend on the input data as data with more outliers or noise will likely perform better with higher values of k. Overall, it is recommended to have an odd number for k to avoid ties in classification, and cross-validation tactics can help you choose the optimal k for your dataset.
We merged the coordinates we obtained from the previously performed MCA with the clusters we obtained from the PCA, which are related to opinions.

Afterward, we proceeded with the discriminant analysis using the proc discrim command. The discriminant analysis is useful to develop a discriminant criterion on the basis of which units are classified into different groups. It also calculates error rates as the probability that units are misplaced in clusters and therefore evaluates if the discriminant criterion is effective. The dataset used to derive the discriminant criterion is the training dataset.
The cross-validation method is mainly used in settings where the goal is prediction, and one wants to estimate how accurately a predictive model will perform in practice. It takes advantage of two datasets: a 'training dataset' used to train the model and a 'testing dataset' of unknown data used to validate the model.
We ran a macro procedure to perform a discriminant analysis with different values of 'k' as to find the 'k' with the smallest error rate.
To be able to find the interval of 'k' we use the Enas and Choi formula:
Correct interval between k=n^2/8 and k=n^3/8
This formula is for dichotomous situations, so we have to relativize it for our 5 clusters.

<img width="499" alt="Schermata 2024-09-10 alle 23 12 54" src="https://github.com/user-attachments/assets/8e5a1a3e-3cd5-4eec-9432-9edef615e27e">

In our case, the 'k' with the lowest error rate (0.6895) is k=12. Then we ran again the proc discrim using k=12 and we obtained a confusion matrix.

<img width="499" alt="Schermata 2024-09-10 alle 23 13 35" src="https://github.com/user-attachments/assets/05d5a629-cfae-40d0-99d1-8498a6de5202">

The row from the table represents the destination cluster and the column represents the original cluster.
In the main diagonal, we have the probability that units belonging to a cluster will be correctly predicted in that cluster.
In the error count table, we have the error rate for each cluster.
We see that the possibility that a unit belonging to cluster 1, 2, and 4 is misplaced is actually very high, with error rates of 97.83%, 80.00%, and 78.57% respectively.
Meantime, the error is lower for cluster 5 and it's the lowest for cluster 3 (30%), thus the probability that the model predicts units in that cluster correctly is quite high.

Now we compute the lift, which is the ratio of the probability of clustering units correctly with knowledge about lifestyles to the probability without knowledge (prior probability). It shows us the gain of assigning units to clusters using our model, instead of just guessing.

LIFT 1 = 0.0217/0.20 = 0.1085 

LIFT 2 = 0.20/0.20 = 1.0000 

LIFT 3 = 0.70/0.20 = 3.5000 

LIFT 4 = 0.1243/0.20 = 0.6215 

LIFT 5 = 0.4167/0.20 = 2.0835
With the proc univariate procedure, we obtained cumulative distribution functions for clusters 3 and 5, which were the clusters that proved to have the highest lifts.
