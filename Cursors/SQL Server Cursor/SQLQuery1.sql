select * from Employee1

--without cursor variables
declare c1 cursor scroll for select * from Employee1
open c1
fetch first from c1
fetch Next from c1
fetch last from c1
fetch prior from c1
fetch absolute 7 from c1
fetch relative -2 from c1
close c1
deallocate c1

--with cursor variables
declare c2 cursor scroll for select ID,Name from Employee1
declare @EID int,@EName varchar(20)
open c2
fetch first from c2 into @EID,@EName
print 'The Employee ID:- '+ Cast(@EID as varchar) + ' and Name:- '+ @EName

fetch Next from c2 into @EID,@EName
print 'The Employee ID:- '+ Cast(@EID as varchar) + ' and Name:- '+ @EName

fetch last from c2 into @EID,@EName
print 'The Employee ID:- '+ Cast(@EID as varchar) + ' and Name:- '+ @EName

fetch prior from c2 into @EID,@EName
print 'The Employee ID:- '+ Cast(@EID as varchar) + ' and Name:- '+ @EName

fetch absolute 7 from c2 into @EID,@EName
print 'The Employee ID:- '+ Cast(@EID as varchar) + ' and Name:- '+ @EName

fetch relative 2 from c2 into @EID,@EName
print 'The Employee ID:- '+ Cast(@EID as varchar) + ' and Name:- '+ @EName

close c2

deallocate c2
