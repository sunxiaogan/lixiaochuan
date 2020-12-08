--入口参数：储蓄所编号
--1 显示储蓄所信息
--2 如果没有帐户，删除该储蓄所记录
--3 如果帐户余额总额低于100万元，开一个新帐户，。

create procedure showsaving
@saving_id int
as
declare @num int  --储蓄所账户数量
declare @all_balance  int  --储蓄所总余额

select * 
from saving
where saving.saving_id = @saving_id

select @num = count(*)
from account
where account.saving_id = @saving_id
--没有账户 则删除储蓄所
if @num = 0
begin
	delete from saving
	where saving.saving_id = @saving_id
	print('该储蓄所没有账户,已经删除该储蓄所记录')
end

select @all_balance = sum(account.account_balance)
from account
where account.saving_id = @saving_id
group by account.saving_id 

--如果总数小于100万,新开一个账户
if @all_balance < 1000000
begin
	update account set   account.account_balance = '100000'
	where account.saving_id = @saving_id
	print('已更新该储蓄所账户的余额为100000')
end

exec showsaving 2