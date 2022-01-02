%calculateGrades.m
%9.Optional:?Manipulating?variables
load classGrades
display(namesAndGrades)
grades=namesAndGrades(:,[2:8])
meanGrades=mean(grades)
meanGrades=nanmean(grades)
meanMatrix=ones(15,1)*meanGrades
curvedGrades=3.5*grades./meanMatrix;
nanmean(curvedGrades)
biggerthanfive=curvedGrades>5;
curvedGrades(biggerthanfive)=5;
totalGrade=nanmean(curvedGrades,2);
totalGrade=ceil(totalGrade);
letters=char('FDCBA');   %dictionary vector
letterGrades=letters(totalGrade);
disp(['Grades:' letterGrades])
