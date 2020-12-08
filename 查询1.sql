
--1 查询在“长春南湖路”储蓄所开户的帐户姓名和余额。

select account.account_name,account.account_balance
from account,saving
where  account.account_id = saving.saving_id
and saving.saving_area like '长春南湖路';
--2 查询一次借贷超过10万元的帐户名称和金额。


select account_name as 名字,  lend_money as 金额
from account a, lend l
where  a.account_id = l.lend_account_id
and  l.lend_money >= 100000;

--3 查询比“长春南湖路”储蓄所开户的所有帐户余额都高的帐户名称。
--先按照长春南湖路分组,求出南湖路最高的账户金额
--再查多表连接,赛选条件,账户余额比最高账户金额高的账户


select *
from account
where  account.account_balance >  (
select max(account.account_balance) as 最高余额
from account,saving
where account.saving_id = saving.saving_id
group by saving.saving_area
having saving.saving_area like '长春南湖路'
)
