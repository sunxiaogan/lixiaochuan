--��ڲ��������������
--1 ��ʾ��������Ϣ
--2 ���û���ʻ���ɾ���ô�������¼
--3 ����ʻ�����ܶ����100��Ԫ����һ�����ʻ�����

create procedure showsaving
@saving_id int
as
declare @num int  --�������˻�����
declare @all_balance  int  --�����������

select * 
from saving
where saving.saving_id = @saving_id

select @num = count(*)
from account
where account.saving_id = @saving_id
--û���˻� ��ɾ��������
if @num = 0
begin
	delete from saving
	where saving.saving_id = @saving_id
	print('�ô�����û���˻�,�Ѿ�ɾ���ô�������¼')
end

select @all_balance = sum(account.account_balance)
from account
where account.saving_id = @saving_id
group by account.saving_id 

--�������С��100��,�¿�һ���˻�
if @all_balance < 1000000
begin
	update account set   account.account_balance = '100000'
	where account.saving_id = @saving_id
	print('�Ѹ��¸ô������˻������Ϊ100000')
end

exec showsaving 2