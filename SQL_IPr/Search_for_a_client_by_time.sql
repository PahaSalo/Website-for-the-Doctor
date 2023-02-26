create procedure Search_for_a_client_by_time
as
select Client.Name, DataTime from Timetable
inner join Client on ClientId = Client.Id