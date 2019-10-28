--
-- File generated with SQLiteStudio v3.2.1 on Mon Oct 28 09:29:36 2019
--
-- Text encoding used: UTF-8
--
PRAGMA foreign_keys = off;
BEGIN TRANSACTION;

-- Table: admin
CREATE TABLE admin (
    a_username VARCHAR NOT NULL,
    a_expires  DATE
);


-- Table: case
CREATE TABLE [case] (
    c_username   VARCHAR NOT NULL,
    c_caseID     INTEGER PRIMARY KEY AUTOINCREMENT
                         NOT NULL,
    c_harasserID VARCHAR,
    c_platform   VARCHAR NOT NULL,
    c_notes      VARCHAR NOT NULL,
    c_photos     BLOB,
    c_isPublic   BOOLEAN NOT NULL,
    c_isPending  BOOLEAN NOT NULL
);


-- Table: officer
CREATE TABLE officer (
    o_username VARCHAR PRIMARY KEY
                       NOT NULL,
    o_lawID    VARCHAR NOT NULL,
    o_dept     VARCHAR NOT NULL,
    o_state    VARCHAR NOT NULL,
    o_county   VARCHAR NOT NULL
);


-- Table: profile
CREATE TABLE profile (
    p_username      VARCHAR NOT NULL
                            PRIMARY KEY,
    p_email         VARCHAR NOT NULL,
    p_first         VARCHAR NOT NULL,
    p_last          VARCHAR NOT NULL,
    p_dob           DATE    NOT NULL,
    p_phone         VARCHAR,
    p_isContactable BOOLEAN NOT NULL,
    p_isAnon        BOOLEAN NOT NULL,
    p_publicPosts           NOT NULL
);

INSERT INTO profile (
                        p_username,
                        p_email,
                        p_first,
                        p_last,
                        p_dob,
                        p_phone,
                        p_isContactable,
                        p_isAnon,
                        p_publicPosts
                    )
                    VALUES (
                        'xvilla',
                        'xvilla@ucmerced.edu',
                        'xavier',
                        'villa',
                        '1996-04-09',
                        '2093333333',
                        'true',
                        'false',
                        'true'
                    );

INSERT INTO profile (
                        p_username,
                        p_email,
                        p_first,
                        p_last,
                        p_dob,
                        p_phone,
                        p_isContactable,
                        p_isAnon,
                        p_publicPosts
                    )
                    VALUES (
                        'jakeafred',
                        'jfrederick@ucmerced.edu',
                        'Jacob',
                        'Frederick',
                        '1999-10-12',
                        '2097777777',
                        'true',
                        'false',
                        'true'
                    );


-- Table: role
CREATE TABLE role (
    r_roleID INTEGER PRIMARY KEY
                     NOT NULL,
    r_name   VARCHAR NOT NULL
);

INSERT INTO role (
                     r_roleID,
                     r_name
                 )
                 VALUES (
                     0,
                     'user'
                 );

INSERT INTO role (
                     r_roleID,
                     r_name
                 )
                 VALUES (
                     1,
                     'admin'
                 );

INSERT INTO role (
                     r_roleID,
                     r_name
                 )
                 VALUES (
                     2,
                     'officer'
                 );


-- Table: user
CREATE TABLE user (
    u_email    VARCHAR         PRIMARY KEY
                               NOT NULL,
    u_password VARCHAR (8, 20) NOT NULL,
    u_role     INT             NOT NULL
);

INSERT INTO user (
                     u_email,
                     u_password,
                     u_role
                 )
                 VALUES (
                     'xvilla@ucmerced.edu',
                     'p234',
                     1
                 );

INSERT INTO user (
                     u_email,
                     u_password,
                     u_role
                 )
                 VALUES (
                     'jakeafred1012@gmail.com',
                     'p123',
                     1
                 );


COMMIT TRANSACTION;
PRAGMA foreign_keys = on;
