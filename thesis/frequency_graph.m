years = [1997 1998 1999 2000 2001 2002 2003 2004 2005 2006 2007 2008 2009 2010 2011 2012 2013 2014];
avgRefs = [7.25 13.83333333 24.75 11.91666667 10.91666667 34.66666667 77.91666667 54.08333333 48.25 34.08333333 23.58333333 31 38.83333333 56.66666667 87.58333333 65.33333333 122.1666667 63.91666667];
nukeTests = [2006 2009 2013];

preNukesYears = [1997 1998 1999 2000 2001 2002 2003 2004 2005 2006];
preNukesRefs = [7.25 13.83333333 24.75 11.91666667 10.91666667 34.66666667 77.91666667 54.08333333 48.25 34.08333333];
preFit = polyfit(preNukesYears,preNukesRefs,1);
preY = polyval(preFit,preNukesYears);


firstToSecondYears = [2006 2007 2008 2009];
firstToSecondRefs = [34.08333333 23.58333333 31 38.83333333];
firstFit = polyfit(firstToSecondYears,firstToSecondRefs,1);
firstY = polyval(firstFit,firstToSecondYears);

secondToThirdYears = [2009 2010 2011 2012 2013];
secondToThirdRefs = [38.83333333 56.66666667 87.58333333 65.33333333 122.1666667];
secondFit = polyfit(secondToThirdYears,secondToThirdRefs,1);
secondY = polyval(secondFit,secondToThirdYears);

thirdAndBeyondYears = [2013 2014];
thirdAndBeyondRefs = [122.1666667 63.91666667];
thirdFit = polyfit(thirdAndBeyondYears,thirdAndBeyondRefs,1);
thirdY = polyval(thirdFit,thirdAndBeyondYears);

figure;
%scatter(years,avgRefs,'filled');
hold on;
scatter(years,avgRefs,'filled','black');
scatter(preNukesYears,preNukesRefs,'filled','black');
plot(preNukesYears,preY,'black');
scatter(firstToSecondYears,firstToSecondRefs,'filled','black');
plot(firstToSecondYears,firstY,'black');
scatter(secondToThirdYears,secondToThirdRefs,'filled','black');
plot(secondToThirdYears,secondY,'black');
scatter(thirdAndBeyondYears,thirdAndBeyondRefs,'filled','black');
plot(thirdAndBeyondYears,thirdY,'black');
for a=1:length(nukeTests)
    line([nukeTests(a) nukeTests(a)],[0 140],'color',[0.8 0.8 0.8]);
end    
xlabel('Year');
ylabel('Average Monthly Nuclear References');

