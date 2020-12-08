#利用企业管理器建立帐户信息数据库，并定义以下基本表：
#帐户（编号，姓名，余额，     建立日期，储蓄所编号）
# account account_id  account_name account_balance account_date saving_id 
#储蓄所（编号，名称，地址，人数，所属城市）
# saving saving_id saving_name saving_area saving_people_number saving_city  
#借贷（帐户编号，借贷类型，金额，日期）
#lend  lend_account_id lend_type lend_money lend_date 
#定义主码、外码、和人数、余额的取值范围。
CREATE TABLE saving (
  saving_id INT NOT NULL,
  saving_name VARCHAR(100) NOT NULL,
  saving_area VARCHAR(100) NOT NULL, 
  saving_people_number INT NOT NULL,
  saving_city VARCHAR(100) NOT NULL,
  PRIMARY KEY (saving_id)
)
ALTER TABLE saving    
ADD CONSTRAINT C_K_NUMBER CHECK(saving_people_number>=0 AND saving_people_number<=10);

CREATE TABLE account (
  account_id INT NOT NULL,
  account_name VARCHAR(100) NOT NULL,
  account_balance INT NOT NULL,
  account_date DATE NOT NULL,
  saving_id INT NOT NULL,
  PRIMARY KEY (account_id),
 FOREIGN KEY(saving_id) REFERENCES saving(saving_id)
)
ALTER TABLE account    
ADD CONSTRAINT C_K_BALANCE CHECK(account_balance>=0);
CREATE TABLE lend (
  lend_account_id INT NOT NULL,
  lend_type VARCHAR(100) NOT NULL,
  lend_money INT NOT NULL,
  lend_date DATE NOT NULL,
  PRIMARY KEY (lend_account_id),
 FOREIGN KEY(lend_account_id) REFERENCES account(account_id)
)
