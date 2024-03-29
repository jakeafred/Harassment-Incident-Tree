--
-- File generated with SQLiteStudio v3.2.1 on Mon Oct 28 14:15:37 2019
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

INSERT INTO admin (
                      a_username,
                      a_expires
                  )
                  VALUES (
                      'xvilla',
                      NULL
                  );

INSERT INTO admin (
                      a_username,
                      a_expires
                  )
                  VALUES (
                      'jakeafred',
                      NULL
                  );


-- Table: case
CREATE TABLE [case] (
    c_caseID          INTEGER PRIMARY KEY AUTOINCREMENT,
    c_username        VARCHAR NOT NULL,
    c_harasserID      VARCHAR,
    c_platform        VARCHAR NOT NULL,
    c_notes           VARCHAR NOT NULL,
    c_transcribedText VARCHAR,
    c_isPublic        BOOLEAN NOT NULL,
    c_isPending       BOOLEAN NOT NULL,
    c_isAnon          BOOLEAN NOT NULL
);

INSERT INTO [case] (
                       c_caseID,
                       c_username,
                       c_harasserID,
                       c_platform,
                       c_notes,
                       c_transcribedText,
                       c_isPublic,
                       c_isPending,
                       c_isAnon
                   )
                   VALUES (
                       1,
                       'xvilla',
                       'jdoe69',
                       'instagram',
                       'jdoe pretended to be my friend john doe, but I know it wasn''t him because I was with him at the time. he sent unsolicited graphic images of his schlong',
                       'transcribed text from photo goes here',
                       1,
                       1,
                       0
                   );

INSERT INTO [case] (
                       c_caseID,
                       c_username,
                       c_harasserID,
                       c_platform,
                       c_notes,
                       c_transcribedText,
                       c_isPublic,
                       c_isPending,
                       c_isAnon
                   )
                   VALUES (
                       2,
                       'xvilla',
                       'jdoe69',
                       'instagram',
                       'jdoe pretended to be my friend john doe, but I know it wasn''t him because I was with him at the time. he sent unsolicited graphic images of his schlong',
                       'transcribed text from photo goes here',
                       1,
                       1,
                       0
                   );

INSERT INTO [case] (
                       c_caseID,
                       c_username,
                       c_harasserID,
                       c_platform,
                       c_notes,
                       c_transcribedText,
                       c_isPublic,
                       c_isPending,
                       c_isAnon
                   )
                   VALUES (
                       3,
                       'jakeafred',
                       'ahernandez',
                       'snapchat',
                       'Lorem ipsum dolor sit',
                       'transcribed text from photo goes here',
                       1,
                       0,
                       0
                   );

INSERT INTO [case] (
                       c_caseID,
                       c_username,
                       c_harasserID,
                       c_platform,
                       c_notes,
                       c_transcribedText,
                       c_isPublic,
                       c_isPending,
                       c_isAnon
                   )
                   VALUES (
                       4,
                       'xvilla',
                       'deerhunter',
                       'facebook',
                       'et, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut la',
                       'transcribed text from photo goes here',
                       1,
                       0,
                       0
                   );

INSERT INTO [case] (
                       c_caseID,
                       c_username,
                       c_harasserID,
                       c_platform,
                       c_notes,
                       c_transcribedText,
                       c_isPublic,
                       c_isPending,
                       c_isAnon
                   )
                   VALUES (
                       5,
                       'jakeafred',
                       '2095555555',
                       'mobile',
                       'lore magna aliqua. Ut enim ad minim veniam, quis nostrud ',
                       'transcribed text from photo goes here',
                       1,
                       0,
                       0
                   );

INSERT INTO [case] (
                       c_caseID,
                       c_username,
                       c_harasserID,
                       c_platform,
                       c_notes,
                       c_transcribedText,
                       c_isPublic,
                       c_isPending,
                       c_isAnon
                   )
                   VALUES (
                       6,
                       'xvilla',
                       'deez',
                       'twitter',
                       'isi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehend',
                       'transcribed text from photo goes here',
                       1,
                       0,
                       0
                   );

INSERT INTO [case] (
                       c_caseID,
                       c_username,
                       c_harasserID,
                       c_platform,
                       c_notes,
                       c_transcribedText,
                       c_isPublic,
                       c_isPending,
                       c_isAnon
                   )
                   VALUES (
                       7,
                       'xvilla',
                       'nullboi#1111',
                       'discord',
                       'consequat. Duis aute irure dolor in reprehend',
                       'transcribed text from photo goes here',
                       1,
                       0,
                       0
                   );

INSERT INTO [case] (
                       c_caseID,
                       c_username,
                       c_harasserID,
                       c_platform,
                       c_notes,
                       c_transcribedText,
                       c_isPublic,
                       c_isPending,
                       c_isAnon
                   )
                   VALUES (
                       8,
                       'jbryant',
                       'zack reynolds',
                       'instagram',
                       'claimed to be zack reynolds, but zack was busy at work when I called him. he sent pics of his junk and wrote nasty things.',
                       'transcribed text from photo goes here',
                       1,
                       0,
                       1
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

INSERT INTO officer (
                        o_username,
                        o_lawID,
                        o_dept,
                        o_state,
                        o_county
                    )
                    VALUES (
                        'hschrader',
                        '8732',
                        'DEA',
                        'NM',
                        'albuquerque'
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
                        'jacob',
                        'frederick',
                        '1999-10-12',
                        '2097777777',
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
                        'jbryant',
                        'jbryant@mccd.edu',
                        'Jessica',
                        'Bryant',
                        '1995-05-12',
                        '2096666666',
                        'true',
                        'true',
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
                        'hschrader',
                        'hschrader@usdoj.gov',
                        'hank',
                        'schrader',
                        '1963-04-08',
                        '5057224545',
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

INSERT INTO user (
                     u_email,
                     u_password,
                     u_role
                 )
                 VALUES (
                     'hschrader@usdoj.gov',
                     'p345',
                     2
                 );

INSERT INTO user (
                     u_email,
                     u_password,
                     u_role
                 )
                 VALUES (
                     'jbryant@mccd.edu',
                     'p456',
                     0
                 );


COMMIT TRANSACTION;
PRAGMA foreign_keys = on;
