create database accountmanager
on primary(
name = 'accountmanager_mdf',
filename = 'D:\test\accountmanager.mdf',
size = 5mb,
maxsize = unlimited,
filegrowth = 1mb 
)
log on( 
name = 'accountmanager_ldf',
filename = 'D:\test\accountmanager.ldf',
size = 2mb,
maxsize = unlimited,
filegrowth = 10% 
)
