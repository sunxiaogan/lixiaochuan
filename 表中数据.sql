insert  into saving(saving_id,saving_name,saving_area,saving_people_number,saving_city) values 
(1,'中国储蓄银行','长春南湖路',1,'长春'),
(2,'中国邮政银行','重庆解放街',1,'重庆');

insert  into account(account_id,account_name,account_balance,account_date,saving_id) values 
(1,'张三',90000,'2020-11-21',1),
(2,'李四',100000,'2020-12-01',1),
(3,'王五',110000,'2020-10-01',2);

insert  into lend(lend_account_id,lend_type,lend_money,lend_date) values 
(1,'短期贷款',10000,'2020-11-21'),
(2,'长期贷款',50000,'2020-02-01'),
(3,'长期贷款',100000,'2000-02-01');