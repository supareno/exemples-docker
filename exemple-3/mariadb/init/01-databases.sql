


# create root user and grant rights
CREATE USER 'root'@'localhost' IDENTIFIED BY 'BSc8XS49S9iOeDH0V5zJ';
GRANT ALL ON *.* TO 'root'@'%';

FLUSH PRIVILEGES;
