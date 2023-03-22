
declare @RID int, @IID int, @sayac int=0

while(@sayac<=377)
begin 
select top 1 @IID=i.IncidentID,@RID=r.RequestBusID from Incidents i inner join RequestBus r on i.RequestID=r.RequestBusID where (CollectiveTaskUnique='202332295138' or CollectiveTaskUnique='202332295119' or  CollectiveTaskUnique='202332295054') and i.Activity=1  order by IncidentID desc
Update RequestBus set Activity=0 where RequestBusID=@RID 
Update Incidents set Activity=0 where IncidentID=@IID

set @sayac=@sayac+1
print @sayac
print @IID
print @RID
end



--35241
--25361