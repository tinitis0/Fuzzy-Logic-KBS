%Player Skill
 a = newfis('Dynamic Bots','mamdani','min','max','min','max','bisector');

%Player accuracy ranges from poor to good (0 - 100)
a=addvar (a, 'input', 'Player accuracy (%)', [0 100]);
a=addmf (a, 'input', 1, 'Poor', 'trapmf', [0 0 25 35]);
a=addmf (a, 'input', 1, 'Average', 'trimf', [25 50 75]);
a=addmf(a,'input',1,'Good','trapmf',[65 75 100 100]);
%Player damage output ranges from very little to very high. (0- 100)
a=addvar (a, 'input', 'Damage Output (%)', [0 100]);
a=addmf (a, 'input', 2, 'Very Little ', 'trimf', [0 0 15 ]);
a=addmf (a, 'input', 2, 'Little', 'trapmf', [10 20 30 40]);
a=addmf (a, 'input', 2, 'Medium', 'trapmf', [35 40 60 65]);
a=addmf (a, 'input', 2, 'High', 'trapmf', [60 70 80 90]);
a=addmf (a, 'input', 2, 'Very High', 'trimf', [85 100 100]);

% Player Kills / Death range is from 0 - 10.
a=addvar(a,'input','Player K/D ratio range',[0 10]);
a=addmf (a, 'input', 3, 'Low', 'trapmf', [0 0 0.5 1]);
a=addmf (a, 'input', 3, 'average', 'trimf', [0.8 1.5 2.2]);
a=addmf (a, 'input', 3, 'High', 'trimf', [2.1 3.6 5.1]);
a=addmf(a,'input',3,'Very High','trapmf',[5 7 10 10]);

% Player Skills output. takes in player accuracy, player damage and player
% K/D. ranges from low to high 0 - 100
a=addvar(a,'output','Player Skills',[0 100]);
a=addmf(a,'output',1,'Low Skill','trapmf',[0 0 15 25]); 
a=addmf(a,'output',1,'average Skill','trapmf',[20 45 55 80]);
a=addmf(a,'output',1,'High Skill','trapmf',[75 85 100 100]);

% Player Statistics
b = newfis(' Player statistics','mamdani','min','max','min','max','bisector');

%Player play time as input. 0 - 1000 hours. 0 being none to little playtime
%and 1000 being very experienced with the game and having lot of playtime
b=addvar (b, 'input', 'Play time (Hours)', [0 1000]);
b=addmf (b, 'input', 1, 'Very Little', 'trapmf', [0 0 100 150]);
b=addmf (b, 'input', 1, 'Little', 'trimf', [100 250 400]);
b=addmf (b, 'input', 1, 'Medium', 'trimf', [350 500 650]);
b=addmf (b, 'input', 1, 'High', 'trimf', [600 750 900]);
b=addmf (b, 'input', 1, 'Very High', 'trapmf', [850 900 1000 1000]);
%Player rank in game as input. 0 - 20 avarage amount of ranks in most fps 
%games. 0 being lowest and 20 being best
b=addvar (b, 'input', 'Player rank (Global avarage)', [0 20]);
b=addmf (b, 'input', 2, 'Low', 'trapmf', [0 0 5 8]);
b=addmf (b, 'input', 2, 'Medium', 'trimf', [5 10 15]);
b=addmf (b, 'input', 2, 'High', 'trapmf', [12 15 20 20]);

% Player statistics based on time played and rank
b=addvar(b,'output','Player statistics',[0 100]);
b=addmf(b,'output',1,'Poor','trapmf',[0 0 15 35]);
b=addmf(b,'output',1,'Medium','trapmf',[25 40 60 75]);
b=addmf(b,'output',1,'High','trapmf',[65 85 100 100]);

%Player Kill / Death ratio
 c = newfis('Player Kill / Death ratio range','mamdani','min','max','min','max','bisector');

 %Player avarage kills per game (0 - 30)
c=addvar (c, 'input', 'Player Kills ', [0 30]);
c=addmf (c, 'input', 1, 'Very Low', 'trapmf', [0 0 3 6]);
c=addmf (c, 'input', 1, 'Low', 'trimf', [ 5 8 11]);
c=addmf (c, 'input', 1, 'average', 'trimf', [10 15 20]);
c=addmf(c,'input',1,'High','trimf',[ 19 22 25]);
c=addmf(c,'input',1,'Very High','trapmf',[24 27 30 30]);
%Player avarage deaths per game (0- 30)
c=addvar (c, 'input', 'Player Deaths ', [0 30]);
c=addmf (c, 'input', 2, 'Very Low', 'trapmf', [0 0 3 6]);
c=addmf (c, 'input', 2, 'Low', 'trimf', [ 5 8 11]);
c=addmf (c, 'input', 2, 'average', 'trimf', [10 15 20]);
c=addmf(c,'input',2,'High','trimf',[ 19 22 25]);
c=addmf(c,'input',2,'Very High','trapmf',[24 27 30 30]);
% Player Kills / Death range is from 0 - 10.
c=addvar(c,'output','Player K/D ratio range',[0 10]);
c=addmf (c, 'output', 1, 'Low', 'trapmf', [0 0 0.5 1]);
c=addmf (c, 'output', 1, 'average', 'trimf', [0.8 1.5 2.2]);
c=addmf (c, 'output', 1, 'High', 'trimf', [2.1 3.6 5.1]);
c=addmf(c,'output',1,'Very High','trapmf',[5 7 10 10]);

%Dynamic Bot Difficulty
d = newfis('Dynamic Bot Difficulty','mamdani','min','max','min','max','bisector');

% Player Skill
d=addvar(d,'input','Player Skill',[0 100]);
d=addmf(d,'input',1,'Low Skill','trapmf',[0 0 15 25]); 
d=addmf(d,'input',1,'average Skill','trapmf',[20 45 55 80]);
d=addmf(d,'input',1,'High Skill','trapmf',[75 85 100 100]);

% Player statistics 
d=addvar(d,'input','Player statistics',[0 100]);
d=addmf(d,'input',2,'Poor','trapmf',[0 0 15 35]);
d=addmf(d,'input',2,'Medium','trapmf',[25 40 60 75]);
d=addmf(d,'input',2,'High','trapmf',[65 85 100 100]);

% Dynamic bot dificulty, it ranges from easy to expert
d=addvar(d,'output','Dynamic Bot Difficulty',[0 100]);
d=addmf(d,'output',1,'Easy difficulty','trapmf',[0 0 15 25]);
d=addmf(d,'output',1,'Normal difficulty','trapmf',[15 30 40 55]);
d=addmf(d,'output',1,'Hard difficulty ','trapmf',[45 60 70 85]);
d=addmf(d,'output',1,'Expert difficulty','trapmf',[75 85 100 100]);

 ruleList = [
 
 [1 1 1 1 1 1]; 
 [1 1 2 1 1 1];  
 [1 1 3 2 1 1];  
 [1 1 4 2 1 1];
 [1 2 1 1 1 1];  
 [1 2 2 1 1 1];  
 [1 2 3 2 1 1];  
 [1 2 4 2 1 1];  
 [1 3 1 1 1 1];  
 [1 3 2 1 1 1];  
 [1 3 3 2 1 1];  
 [1 3 4 2 1 1];
 [1 4 1 1 1 1];  
 [1 4 2 2 1 1];  
 [1 4 3 2 1 1];  
 [1 4 4 3 1 1];  
 [1 5 1 1 1 1];  
 [1 5 2 2 1 1];  
 [1 5 3 2 1 1];  
 [1 5 4 3 1 1]; 
 
 [2 1 1 1 1 1]; 
 [2 1 2 1 1 1];  
 [2 1 3 1 1 1];  
 [2 1 4 2 1 1];
 [2 2 1 1 1 1];  
 [2 2 2 1 1 1];  
 [2 2 3 2 1 1];  
 [2 2 4 3 1 1];  
 [2 3 1 1 1 1];  
 [2 3 2 1 1 1];  
 [2 3 3 2 1 1];  
 [2 3 4 2 1 1];
 [2 4 1 1 1 1];  
 [2 4 2 2 1 1];  
 [2 4 3 2 1 1];  
 [2 4 4 3 1 1];  
 [2 5 1 1 1 1];  
 [2 5 2 2 1 1];  
 [2 5 3 3 1 1];  
 [2 5 4 3 1 1]; 
 
 [3 1 1 1 1 1]; 
 [3 1 2 1 1 1];  
 [3 1 3 1 1 1];  
 [3 1 4 2 1 1];
 [3 2 1 1 1 1];  
 [3 2 2 2 1 1];  
 [3 2 3 2 1 1];  
 [3 2 4 3 1 1];  
 [3 3 1 2 1 1];  
 [3 3 2 2 1 1];  
 [3 3 3 2 1 1];  
 [3 3 4 3 1 1];
 [3 4 1 2 1 1];  
 [3 4 2 2 1 1];  
 [3 4 3 3 1 1];  
 [3 4 4 3 1 1];  
 [3 5 1 2 1 1];  
 [3 5 2 2 1 1];  
 [3 5 3 3 1 1];  
 [3 5 4 3 1 1];  
 
 ];
a = addRule(a, ruleList)
rulesA = showrule(a)

ruleview(a);

% A varaible to hold the excel file
Data = ('DynamicBotsAdvanced.xlsx');
% Read in the values and store the in testData
testData = xlsread(Data);

% A for loop to process the data and output the results
for i=1:size(testData,1)
       output = evalfis([testData(i, 1),testData(i, 2),testData(i, 26)], a);
       fprintf('%d) In(1): %.2f, In(2) %.2f, In(3) %.2f => Out(1): %.2f \n\n',i,testData(i, 1),testData(i, 2),testData(i, 26), output);  
       xlswrite('DynamicBotsAdvanced.xlsx', output, 1, sprintf('H%d',i+2));
 end


% Rules to determin Player statistics based on players rank and playtime


rule1b = [1 1 1 1 1];
rule2b = [1 2 1 1 1];
rule3b = [1 3 2 1 1];

rule4b = [2 1 1 1 1];
rule5b = [2 2 2 1 1];
rule6b = [2 3 2 1 1];

rule7b = [3 1 1 1 1];
rule8b = [3 2 2 1 1];
rule9b = [3 3 3 1 1];

rule10b = [4 1 2 1 1];
rule11b = [4 2 2 1 1];
rule12b = [4 3 3 1 1];

rule13b = [5 1 2 1 1];
rule14b = [5 2 3 1 1];
rule15b = [5 3 3 1 1];

% Rule list array
rulelist = [rule1b; rule2b; rule3b; rule4b; rule5b; rule6b; rule7b; rule8b; 
    rule9b; rule10b; rule11b; rule12b; rule13b; rule14b; rule15b;];
b = addRule(b, rulelist);
rulesB = showrule(b); 

% A varaible to hold the excel file
Data2 = ('DynamicBotsAdvanced.xlsx');
% Read in the values and store the in testData
testData2 = xlsread(Data2);

% A for loop to process the data and output the results
for i=1:size(testData2,1)
       output = evalfis([testData2(i, 10), testData2(i, 11) ], b);
       fprintf('%d) In(1): %.2f, In(2) %.2f => Out(1): %.2f \n\n',i,testData2(i, 10),testData2(i, 11), output);  
       xlswrite('DynamicBotsAdvanced.xlsx', output, 1, sprintf('Q%d',i+2));
end

ruleview(b);



% Rules for player  Kill / death ratio


rule1c = [1 1 1 1 1];
rule2c = [1 2 1 1 1];
rule3c = [1 3 1 1 1];
rule4c = [1 4 1 1 1];
rule5c = [1 5 1 1 1];

rule6c = [2 1 2 1 1];
rule7c = [2 2 2 1 1];
rule8c = [2 3 1 1 1];
rule9c = [2 4 1 1 1];
rule10c = [2 5 1 1 1];

rule11c = [3 1 3 1 1];
rule12c = [3 2 2 1 1];
rule13c = [3 3 2 1 1];
rule14c = [3 4 1 1 1];
rule15c = [3 5 1 1 1];

rule16c = [4 1 4 1 1];
rule17c = [4 2 3 1 1];
rule18c = [4 3 3 1 1];
rule19c = [4 4 2 1 1];
rule20c = [4 5 1 1 1];

rule21c = [5 1 4 1 1];
rule22c = [5 2 4 1 1];
rule23c = [5 3 3 1 1];
rule24c = [5 4 3 1 1];
rule25c = [5 5 2 1 1];

% Rule list array
rulelist = [rule1c; rule2c; rule3c; rule4c; rule5c; rule6c; rule7c; rule8c; 
    rule9c; rule10c; rule11c; rule12c; rule13c; rule14c; rule15c; rule16c;
    rule17c; rule18c; rule19c; rule20c; rule21c; rule22c; rule23c; rule24c;
    rule25c;] 
c = addRule(c, rulelist)
rulesC = showrule(c)

% A varaible to hold the excel file
Data3 = ('DynamicBotsAdvanced.xlsx');
% Read in the values and store the in testData
testData3 = xlsread(Data3);

% A for loop to process the data and output the results
for i=1:size(testData3,1)
      output = evalfis([testData3(i, 19), testData3(i, 20) ], c);
      fprintf('%d) In(1): %.2f, In(2) %.2f => Out(1): %.2f \n\n',i,testData3(i, 19),testData3(i, 20), output);  
      xlswrite('DynamicBotsAdvanced.xlsx', output, 1, sprintf('Z%d',i+2));
end


ruleview(c);

% Rules for Dynamic Bots
rule1d = [1 1 1 1 1];
rule2d = [1 2 1 1 1];
rule3d = [1 3 2 1 1];

rule4d = [2 1 1 1 1];
rule5d = [2 2 2 1 1];
rule6d = [2 3 2 1 1];

rule7d = [3 1 2 1 1];
rule8d = [3 2 3 1 1];
rule9d = [3 3 4 1 1];




% Rule list array
rulelist = [rule1d; rule2d; rule3d; rule4d; rule5d; rule6d; rule7d; rule8d; 
  rule9d;] 
d = addRule(d, rulelist);
rulesD = showrule(d) 

% A varaible to hold the excel file
Data4 = ('DynamicBotsAdvanced.xlsx');
% Read in the values and store the in testData
testData4 = xlsread(Data4);

 %A for loop to process the data and output the results
for i=1:size(testData4,1)
      output = evalfis([testData4(i, 8), testData4(i, 17)], d);
      fprintf('%d) In(1): %.2f, In(2) %.2f => Out(1): %.2f \n\n',i,testData4(i, 8),testData4(i, 17), output);  
      xlswrite('DynamicBotsAdvanced.xlsx', output, 1, sprintf('AG%d',i+2));
end

ruleview(d);


% SubPlots to desplay the inputs and outputs. 3 different figures each
% displays different data

figure(1)
subplot(5,1,1),plotmf(a, 'input', 1)
subplot(5,1,2),plotmf(a, 'input', 2)
subplot(5,1,3),plotmf(a, 'input', 3)
subplot(5,1,5),plotmf(a, 'output', 1)

figure(2)
subplot(4,1,1),plotmf(b, 'input', 1)
subplot(4,1,2),plotmf(b, 'input', 2)
subplot(4,1,4),plotmf(b, 'output', 1)

figure(3)
subplot(4,1,1),plotmf(c, 'input', 1)
subplot(4,1,2),plotmf(c, 'input', 2)
subplot(4,1,4),plotmf(c, 'output', 1)

figure(4)
subplot(4,1,1),plotmf(d, 'input', 1)
subplot(4,1,2),plotmf(d, 'input', 2)
subplot(4,1,4),plotmf(d, 'output', 1)



