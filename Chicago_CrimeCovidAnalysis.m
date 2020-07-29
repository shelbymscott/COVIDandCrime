% Author: Shelby Scott
% Date: 9 April 2020

% The purpose of this code is to determine whether there is a significant
% change in the dynamics of crime in Chicago in repsonse to protocols put
% in place during the outbreak of COVID-19

% First, bring in the data
Crimes_2017 = readtable('Chicago_Crime_2017_Analysis.csv');
Crimes_2018 = readtable('Chicago_Crime_2018_Analysis.csv');
Crimes_2019 = readtable('Chicago_Crime_2019_Analysis.csv');
Crimes_2020 = readtable('Chicago_Crime_2020_Analysis.csv');

% Create vectors of the temporal dates
alldays_reg = linspace(1,90,90)';
alldays_leap = linspace(1,91,91)';
PreCovid_reg = alldays_reg(1:67,:);
PreCovid_leap = alldays_leap(1:68,:);
SOE_reg = alldays_reg(68:79,:);
SOE_leap = alldays_leap(69:80,:);
SAH_reg = alldays_reg(80:90,:);
SAH_leap = alldays_leap(81:91,:);
PreSAH_reg = alldays_reg(1:79,:);
PreSAH_leap = alldays_reg(1:80,:);

% Break down into chunks based on dates
PreCovid_2017 = Crimes_2017(1:67,:);
SOE_2017 = Crimes_2017(68:79,:);
SAH_2017 = Crimes_2017(80:90,:);
PreCovid_2018 = Crimes_2018(1:67,:);
SOE_2018 = Crimes_2018(68:79,:);
SAH_2018 = Crimes_2018(80:90,:);
PreCovid_2019 = Crimes_2019(1:67,:);
SOE_2019 = Crimes_2019(68:79,:);
SAH_2019 = Crimes_2019(80:90,:);
PreCovid_2020 = Crimes_2020(1:68,:);
SOE_2020 = Crimes_2020(69:80,:);
SAH_2020 = Crimes_2020(81:91,:);
PreSAH_2020 = Crimes_2020(1:80,:);
PreSAH_2019 = Crimes_2019(1:79,:);
PreSAH_2018 = Crimes_2018(1:79,:);
PreSAH_2017 = Crimes_2017(1:79,:);

% Compare the three different time periods for 2019
[h_t19, p_t19, ci_t19, stats_t19] = ttest2(SOE_2019.PublicPeaceViolation, SOE_2020.PublicPeaceViolation);

% Compare the three different time periods for 2020
[h_t20, p_t20, ci_t20, stats_t20] = ttest2(Crimes_2018.Robbery, Crimes_2020.Robbery)

% Compare time periods between the two years
[h_tb1, p_tb1, ci_tb1, stats_tb1] = ttest2(PreSAH_2020.Narcotics, SAH_2020.Narcotics);

% Compare 2019 and 2020 Crimes overall
[h_o, p_o, ci_o, stats_o] = ttest2(PreCovid_2017.WeaponsViolation, PreCovid_2020.WeaponsViolation);

% Compare 2018 with 2020
[h_18, p_18, ci_18, stats_18] = ttest2(SAH_2018.WeaponsViolation, SAH_2020.WeaponsViolation);

% Compare 2017 with 2020
[h_17, p_17, ci_17, stats_17] = ttest2(SAH_2017.WeaponsViolation, SAH_2020.WeaponsViolation);

% Regressions on each of the comparisons
% [b_1,bint_1,r_1,rint_1,stats_1] = regress(Crimes_2017.TotalCrimes, alldays_reg);
% [b_2,bint_2,r_2,rint_2,stats_2] = regress(SAH_2017.TotalCrimes, SAH_reg);
% [b_3,bint_3,r_3,rint_3,stats_3] = regress(PreSAH_2017.TotalCrimes, PreSAH_reg);
% 

% Let's make some plots for the manuscript version
% figure(1);
% sz1 = 65;
% scatter(Crimes_2020.Date, Crimes_2020.TotalCrimes, sz1, 'filled', 'MarkerEdgeColor', [0.25, .25, .25], 'MarkerFaceColor',[0.4660, 0.6740, 0.1880])
% title('Total Crimes 01/01/20 - 03/31/20')
% xlabel('Date')
% ylabel('Daily Number of Crimes')
% 
% figure(2);
% sz2 = 65;
% scatter(Crimes_2019.Date, Crimes_2019.TotalCrimes, sz2, 'filled', 'MarkerEdgeColor', [0.25, .25, .25], 'MarkerFaceColor',[0.4660, 0.6740, 0.1880])
% title('Total Crimes 01/01/19 - 03/31/19')
% xlabel('Date')
% ylabel('Daily Number of Crimes')
% 
% figure(3);
% sz3 = 65;
% scatter(Crimes_2018.Date, Crimes_2018.TotalCrimes, sz3, 'filled', 'MarkerEdgeColor', [0.25, .25, .25], 'MarkerFaceColor',[0.4660, 0.6740, 0.1880])
% title('Total Crimes 01/01/18 - 03/31/18')
% xlabel('Date')
% ylabel('Daily Number of Crimes')
% 
% figure(4);
% sz4 = 65;
% scatter(Crimes_2017.Date, Crimes_2017.TotalCrimes, sz4, 'filled', 'MarkerEdgeColor', [0.25, .25, .25], 'MarkerFaceColor',[0.4660, 0.6740, 0.1880])
% title('Total Crimes 01/01/17 - 03/31/17')
% xlabel('Date')
% ylabel('Daily Number of Crimes')
% 
% figure(5);
% sz5 = 65;
% scatter(Crimes_2020.Date, Crimes_2020.TotalCrimes, sz5, 'filled', 'MarkerEdgeColor', [0.25, .25, .25], 'MarkerFaceColor',[0.4660, 0.6740, 0.1880])
% title('Total Crimes 01/01/20 - 03/31/20')
% xlabel('Date')
% ylabel('Daily Number of Crimes')


% figure(6);
% sz5 = 65;
% scatter(Crimes_2020.Date, Crimes_2020.Robbery, sz5, 'filled', 'MarkerEdgeColor', [0.25, .25, .25], 'MarkerFaceColor',[0.4660, 0.6740, 0.1880])
% title('Robberies 01/01/20 - 03/31/20')
% xlabel('Date')
% ylabel('Daily Number of Robberies')
