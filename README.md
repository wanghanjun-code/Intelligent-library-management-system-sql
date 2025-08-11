# Library Management System SQL



### Clone Database 

First, clone the repository containing the database scripts:

```sql
git clone https://github.com/wanghanjun-code/Intelligent-library-management-system-sql.git
```

Then, in Navicat, run the following SQL command:

```sql
CREATE DATABASE books CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- Click "Run SQL File", select the books.sql file, then refresh.
```



### Configure Database

Edit `src/main/resources/application.yml`:
```properties
datasource:
  driver-class-name: com.mysql.cj.jdbc.Driver
  url: jdbc:mysql://localhost:3306/books?characterEncoding=utf8&useSSL=false&serverTimezone=GMT%2B8&allowPublicKeyRetrieval=true
  username: your_username
  password: your_password
```

### 
