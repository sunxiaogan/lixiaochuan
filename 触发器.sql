create trigger delete_saving
on saving
after delete
as
begin
select * from deleted;
--ɾ���Ĵ�����id
declare @delete_saving_id int 
declare @num int
select @delete_saving_id = saving_id 
from  deleted
select @num =count(*)
from account
where account.saving_id = @delete_saving_id
if  @num = 0 
	begin 
	print('ɾ���ɹ�')
	rollback
	end
	else 
	begin
	print('�ô��������˻���Ϣ,��ֹɾ��!')
	rollback
	end 
end;
--����
delete  from saving
where saving.saving_id = 3