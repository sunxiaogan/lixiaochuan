create database accountmanager
on primary(
name = 'accountmanager_mdf',
filename = 'D:\accountmanager.mdf',
size = 5mb,
maxsize = unlimited,
filegrowth = 1mb 
)
log on( 
name = 'accountmanager_ldf',
filename = 'D:\accountmanager.ldf',
size = 2mb,
maxsize = unlimited,
filegrowth = 10% 
)


牛大了
