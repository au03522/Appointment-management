create procedure findDoc
	@appID int 
as
begin
select doctorname 
from appointment a,doctor d 
where a.doctor_iddoctor=d.iddoctor and idappointment = @appID
end


create view appointmentView
as
select *
from appointment

select * from appointmentView

create trigger triggerdelete 
on login
after delete 
as
begin
delete from Patient where idPatient=(SELECT deleted.Patient_idPatient FROM deleted)
end
