create table if not exists score
(
    id     int         not null comment '编号'
        constraint `PRIMARY`
        primary key,
    Stu_id int         not null comment '学号',
    C_name varchar(20) null comment '课程表',
    Grande int         null comment '分数'
);

create table if not exists student
(
    id         int         not null comment '学号'
        constraint `PRIMARY`
        primary key,
    name       varchar(20) not null comment '姓名',
    sex        varchar(4)  null comment '性别',
    birth      year        null comment '出生年份',
    department varchar(20) not null comment '院系',
    address    varchar(50) null comment '家庭住址'
);


