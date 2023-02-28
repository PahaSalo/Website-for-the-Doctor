create procedure Seacrh_Location_of_the_service_by_ClientName
as
select Client_Name, Address_Name, Address_city from Timetable
inner join Client on ClientId = Client.Id
inner join Address on AddressId = Address.Id

exec Seacrh_Location_of_the_service_by_ClientName