use wiki;

create table content
(
    id      bigint       not null auto_increment,
    content varchar(255) not null comment '内容',
    primary key (id)
);

create table ebook_snapshot
(
    id            bigint not null auto_increment,
    ebook_id      bigint not null comment '电子书id',
    date          date   not null comment '日期',
    view_count    int    not null default 0 comment '阅读数',
    vote_count    int    not null default 0 comment '点赞数',
    view_increase int    not null default 0 comment '阅读增长',
    vote_increase int    not null default 0 comment '点赞增长',
    primary key (id)
);

create table category
(
    id     bigint not null auto_increment,
    parent bigint not null comment '父分类id',
    name   varchar(50) comment '名称',
    sort   int comment '排序',
    primary key (id)
);

create table doc
(
    id         bigint not null auto_increment,
    ebook_id   bigint not null comment '电子书id',
    parent     bigint not null default 0 comment '父文档id',
    name       varchar(50) comment '名称',
    sort       int comment '排序',
    view_count int    not null default 0 comment '阅读数',
    vote_count int    not null default 0 comment '点赞数',
    primary key (id)
);

create table e_book
(
    id          bigint not null auto_increment,
    name        varchar(50) comment '名称',
    category_id bigint comment '分类id',
    description varchar(200) comment '描述',
    cover       varchar(200) comment '封面',
    doc_count   int comment '文档数',
    view_count  int comment '阅读数',
    vote_count  int comment '点赞数',
    primary key (id)
);

create table user
(
    id         bigint not null auto_increment,
    login_name varchar(50) comment '登陆名',
    name       varchar(50) comment '昵称',
    password   varchar(50) comment '密码',
    primary key (id)
);
