//The page we are working with is
//http://www.nk-news.net/results.php?searchString=nuclear+nuke&booleanType=OR&startMonth=01&startYear=1996&endMonth=12&endYear=2016&inputLanguage=english&outputFormat=bargraph&searchType=simple&dateSort=newest&currentPage=1&newSearch=yes&submitButtonName=%A0%A0%A0EXECUTE%A0%A0%A0

//This is ugly as sin but it gets you the frequency for december 96
//parseFloat(barchartBody[0].rows[0].cells[2].firstChild.nextSibling.firstChild.nextSibling.innerHTML)

//iterates from 1997-2014 because those are all the years with complete info available
for (i = 1; i<barchartBody.length-2; i++){
    numRefs = 0;
    numMonths = 0;
    for (j = 0; j<barchartBody[i].rows.length; j++){
        //the first item for each year contains year, month, and bar. everything subsequent does not contain year. so we have to test!
        if (j==0){
            numRefs += dealWithZerosWell(barchartBody[i].rows[j].cells[2].firstChild.nextSibling.firstChild.nextSibling.innerHTML);
        }
        else{
            numRefs += dealWithZerosWell(dealWithZerosWell(barchartBody[i].rows[j].cells[1].firstChild.nextSibling.firstChild.nextSibling.innerHTML));
        }
        numMonths++;
    }
    avgRefs = numRefs/numMonths;
    year = i+1996;
    console.log("the year is " + year);
    console.log("avg refs are " + avgRefs);
}

/*
Apparently this bro decided to represent 0 frequency with a blank space. Let's make sure that doesn't ruin everything.
*/
function dealWithZerosWell(testVal){
    if (Number.isNaN(testVal)){
        return 0;
    }
    return parseInt(testVal);
}