--1 ͳ�Ƹ������������ʻ����������������
select account_name as ����������,count(*) as �˻�����,sum(account.account_balance) as �˻���� 
from account
group by account.account_id,account_name

--2 �г���Ǯ�ܶ�10��Ԫ���ϵ�����
--3 �г����������ٵĳ����������ʻ���Ϣ

--4 �г���û��ȡ��Ǯ���ʻ���
select *
from  account a
left join  lend l
on a.account_id = l.lend_account_id 
where lend_account_id is null
