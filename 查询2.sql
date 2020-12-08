--1 统计各个储蓄所的帐户个数和余额总数。
select account_name as 储蓄所名字,count(*) as 账户个数,sum(account.account_balance) as 账户余额 
from account
group by account.account_id,account_name

--2 列出存钱总额10万元以上的日期
--3 列出储蓄所最少的城市所建的帐户信息

--4 列出从没有取过钱的帐户。
select *
from  account a
left join  lend l
on a.account_id = l.lend_account_id 
where lend_account_id is null
