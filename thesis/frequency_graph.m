years = [1997 1998 1999 2000 2001 2002 2003 2004 2005 2006 2007 2008 2009 2010 2011 2012 2013 2014];
avgRefs = [7.25 13.83333333 24.75 11.91666667 10.91666667 34.66666667 77.91666667 54.08333333 48.25 34.08333333 23.58333333 31 38.83333333 56.66666667 87.58333333 65.33333333 122.1666667 63.91666667];
nukeTests = [2006 2009 2013];

preNukesYears = [1997 1998 1999 2000 2001 2002 2003 2004 2005 2006];
preNukesRefs = [7.25 13.83333333 24.75 11.91666667 10.91666667 34.66666667 77.91666667 54.08333333 48.25 34.08333333];

firstToSecondYears = [2006 2007 2008 2009];
firstToSecondRefs = [34.08333333 23.58333333 31 38.83333333];

secondToThirdYears = [2009 2010 2011 2012 2013];
secondToThirdRefs = [38.83333333 56.66666667 87.58333333 65.33333333 122.1666667];

thirdAndBeyondYears = [2013 2014];
thirdAndBeyondRefs = [122.1666667 63.91666667];

figure;
%scatter(years,avgRefs,'filled');
hold on;
scatter(preNukesYears,preNukesRefs,'filled');
scatter(firstToSecondYears,firstToSecondRefs,'filled');
scatter(secondToThirdYears,secondToThirdRefs,'filled');
scatter(thirdAndBeyondYears,thirdAndBeyondRefs,'filled');
for a=1:length(nukeTests)
    disp(nukeTests(a));
    line([nukeTests(a) nukeTests(a)],[0 140]);
end    


