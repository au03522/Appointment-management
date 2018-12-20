select * from Patient
select* from login 
select * from Appointment
select * from InstructCase

declare @a int
set @a = 1

begin transaction t1

while (@a <170000)
begin
insert into Patient
values ('a','m','10-10-10',4545644,'area1','asas',null,null)

insert into login
values (Null,@a,'password100','sada')
 set @a=@a+1
end
--commit transaction t2
--rollback transaction t1
--dbcc CHECKIDENT ('patient',reseed,13)


declare @a int
set @a = 150882

begin transaction t2

while (@a <170000)
begin

--update Patient
--set PatientName = (select [name] from [project-final] where id = @a)
--where idPatient =@a

--update Patient
--set EmailID = (select [name] from [project-final] where id = @a)+'@hotmail.com'
--where idPatient =@a

--commit transaction t3
--commit transaction t1


begin transaction t10
declare @a int
set @a=1

while (@a <170000)
begin

update Login	
set username = username + cast(@a as varchar(10))
where Patient_idPatient =@a

update Login	
set loginPassword = 'password' + cast(@a as varchar(10))
where Patient_idPatient =@a
set @a = @a+1

END 
commit transaction t10
