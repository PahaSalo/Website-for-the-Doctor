Use DOCTOR
create procedure All_info_about_visit_by_clientId
as
Select Client.Client_Name, Doctor.Doctor_Name, Services.Services_Name, Address.Address_city, Timetable.DataTime, from TimeTable
inner join Client on TimeTable.ClientId = Client.Id
inner join Services on TimeTable.ServicesId = Services.Id
inner join Doctor on TimeTable.DoctorId = Doctor.Id
inner join Address on TimeTable.AddressId = Address.Id

exec All_info_about_visit_by_clientId
