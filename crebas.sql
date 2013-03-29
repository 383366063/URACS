/*==============================================================*/
/* DBMS name:      MySQL 5.0                                    */
/* Created on:     2013/3/28 17:37:04                           */
/*==============================================================*/


drop table if exists t_app_menu;

drop table if exists t_app_role;

drop table if exists t_app_role_menu;

drop index Index_1 on t_app_user;

drop table if exists t_app_user;

drop table if exists t_app_user_role;

/*==============================================================*/
/* Table: t_app_menu                                            */
/*==============================================================*/
create table t_app_menu
(
   id                   int not null auto_increment,
   menuName             varchar(32) not null comment '�˵�����',
   menuCode             varchar(32) comment '���˵����',
   menuUrl              varchar(256) comment '�˵�URL',
   urlTarget            varchar(32) comment 'ҳ���λ��',
   sort                 int comment '����',
   remark               varchar(64) comment '��ע',
   createTime           datetime not null,
   lastUpdate           datetime not null,
   primary key (id)
);

/*==============================================================*/
/* Table: t_app_role                                            */
/*==============================================================*/
create table t_app_role
(
   id                   int not null auto_increment comment '�����ɫ��ʶ',
   roleName             varchar(32) not null comment '��ɫ����',
   createTime           datetime not null comment '��ɫ����ʱ��',
   lastUpdate           datetime not null comment '��ɫ����޸�ʱ��',
   status               int not null comment '0:����,1:����',
   primary key (id)
);

/*==============================================================*/
/* Table: t_app_role_menu                                       */
/*==============================================================*/
create table t_app_role_menu
(
   id                   int not null auto_increment,
   roleId               int not null comment '��ɫid',
   menuId               int not null comment '�˵�ID',
   primary key (id)
);

/*==============================================================*/
/* Table: t_app_user                                            */
/*==============================================================*/
create table t_app_user
(
   id                   int not null auto_increment,
   userName             varchar(32) not null,
   passWord             varchar(128) not null,
   createTime           datetime not null,
   lastUpdate           datetime not null,
   status               int not null default 1 comment '0:����,1:����',
   primary key (id)
);

/*==============================================================*/
/* Index: Index_1                                               */
/*==============================================================*/
create index Index_1 on t_app_user
(
   userName
);

/*==============================================================*/
/* Table: t_app_user_role                                       */
/*==============================================================*/
create table t_app_user_role
(
   id                   int not null auto_increment,
   userId               int not null comment '�û�id',
   roleId               int not null comment '��ɫid',
   primary key (id)
);

