create trigger delete_saving
on saving
after delete
as
begin
select * from deleted;
--删除的储蓄所id
declare @delete_saving_id int 
declare @num int
select @delete_saving_id = saving_id 
from  deleted
select @num =count(*)
from account
where account.saving_id = @delete_saving_id
if  @num = 0 
	begin 
	print('删除成功')
	rollback
	end
	else 
	begin
	print('该储蓄所有账户信息,禁止删除!')
	rollback
	end 
end;
--测试
delete  from saving
where saving.saving_id = 3