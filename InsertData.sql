--************************************************************************INSERTING VALUES INTO THE TABLES****************************************************************************************************************************************************************************************************************************************

--Insert command to add data for the Client Table
INSERT INTO "CLIENT" (CL_ID, CL_NAME, CL_CO_INFO, CL_MANAGER, CL_MAN_CON, CL_APP_STATUS) VALUES ('101', 'Steven King', 'king.steven@uconn.edu, 9598001499', 'Pai Shriket', 'shriket.pai@uconn.edu', ' ');
INSERT INTO "CLIENT" (CL_ID, CL_NAME, CL_CO_INFO, CL_MANAGER, CL_MAN_CON, CL_APP_STATUS) VALUES ('102', 'Ping Jin', 'jin.ping@uconn.edu, 9592881499', 'Pai Shriket', 'shriket.pai@uconn.edu', 'T');
INSERT INTO "CLIENT" (CL_ID, CL_NAME, CL_CO_INFO, CL_MANAGER, CL_MAN_CON, CL_APP_STATUS) VALUES ('103', 'Malik Reena', 'reena.malik@uconn.edu, 9544001499', '', '', 'T');
INSERT INTO "CLIENT" (CL_ID, CL_NAME, CL_CO_INFO, CL_MANAGER, CL_MAN_CON, CL_APP_STATUS) VALUES ('104', 'Manchanda Rahul', 'manchanda.rahul@uconn.edu, 9598771490', 'Ping Jin', 'jin.ping@uconn.edu', 'F');
INSERT INTO "CLIENT" (CL_ID, CL_NAME, CL_CO_INFO, CL_MANAGER, CL_MAN_CON, CL_APP_STATUS) VALUES ('105', 'Mallik Neena', 'mallik.neena@uconn.edu, 8898001499', 'Pai Shriket', 'shriket.pai@uconn.edu', 'T');
INSERT INTO "CLIENT" (CL_ID, CL_NAME, CL_CO_INFO, CL_MANAGER, CL_MAN_CON, CL_APP_STATUS) VALUES ('106', 'Roe Sam', 'roe.sam@uconn.edu, 6698001499', 'Pai Shriket', 'shriket.pai@uconn.edu', 'T');
--End of INSERT command

--Insert command to add data for the Team Table
INSERT INTO "TEAM" (TEAM_ID, TEAM_NAME, TECH_COMP, TEAM_APP_STATUS) VALUES ('601', 'RMG Java', 'Java, Javascript, XML, HTML', ' ');
INSERT INTO "TEAM" (TEAM_ID, TEAM_NAME, TECH_COMP, TEAM_APP_STATUS) VALUES ('602', 'RMG Oracle', 'Oracle, MYSQL, MongoDB, Indexing', ' ');
INSERT INTO "TEAM" (TEAM_ID, TEAM_NAME, TECH_COMP, TEAM_APP_STATUS) VALUES ('603', 'RMG Lotus', 'Lotus, Javascript, XML, HTML', 'T');
INSERT INTO "TEAM" (TEAM_ID, TEAM_NAME, TECH_COMP, TEAM_APP_STATUS) VALUES ('604', 'RMG Client Server', '.NET, ASP, Python', 'T');
INSERT INTO "TEAM" (TEAM_ID, TEAM_NAME, TECH_COMP, TEAM_APP_STATUS) VALUES ('605', 'RMG Billing', 'SAP, CBAP', 'T');
INSERT INTO "TEAM" (TEAM_ID, TEAM_NAME, TECH_COMP, TEAM_APP_STATUS) VALUES ('606', 'RMG Mainframe', 'DB2, SQL, XML', 'T');
INSERT INTO "TEAM" (TEAM_ID, TEAM_NAME, TECH_COMP, TEAM_APP_STATUS) VALUES ('607', 'RMG Middleware', 'ESB, BIG', 'T');
INSERT INTO "TEAM" (TEAM_ID, TEAM_NAME, TECH_COMP, TEAM_APP_STATUS) VALUES ('608', 'RMG Testing', 'Manual Testing, QTP', 'T');
--End of INSERT command

--Insert command to add data for the PMO Table
INSERT INTO "PMO" (PMO_ID, PMO_OFF_NAME, PMO_APP_STATUS) VALUES ('401', 'William Gietz', 'T');
INSERT INTO "PMO" (PMO_ID, PMO_OFF_NAME, PMO_APP_STATUS) VALUES ('402', 'Ernst Bruce ', 'F');
INSERT INTO "PMO" (PMO_ID, PMO_OFF_NAME, PMO_APP_STATUS) VALUES ('403', 'Fay Pat', ' ');
INSERT INTO "PMO" (PMO_ID, PMO_OFF_NAME, PMO_APP_STATUS) VALUES ('404', 'Vargas Peter', 'F');
INSERT INTO "PMO" (PMO_ID, PMO_OFF_NAME, PMO_APP_STATUS) VALUES ('405', 'Abel Ellen', ' ');
INSERT INTO "PMO" (PMO_ID, PMO_OFF_NAME, PMO_APP_STATUS) VALUES ('406', 'Rajs Trenna', 'T');
--End of INSERT command

--Insert command to add data for the Team Member Table
INSERT INTO "TEAM_MEMBER" (MEM_ID, MEM_NAME, MEM_CON_INFO, TEAM_ID) VALUES ('501', 'Jennifer Gietz', 'gietz.jennifer@uconn.edu, 8608881233', '603');
INSERT INTO "TEAM_MEMBER" (MEM_ID, MEM_NAME, MEM_CON_INFO, TEAM_ID, SUPER_ID) VALUES ('502', 'Ernst Kevin', 'kevin.ernst@uconn.edu, 86134561234', '601', '501');
INSERT INTO "TEAM_MEMBER" (MEM_ID, MEM_NAME, MEM_CON_INFO, TEAM_ID, SUPER_ID) VALUES ('503', 'Fay Lex', 'lex.fay@uconn.edu, 67890014562', '602', '501');
INSERT INTO "TEAM_MEMBER" (MEM_ID, MEM_NAME, MEM_CON_INFO, TEAM_ID, SUPER_ID) VALUES ('504', 'Davies Peter', 'peter.davies@uconn.edu, 90876543980', '604', '510');
INSERT INTO "TEAM_MEMBER" (MEM_ID, MEM_NAME, MEM_CON_INFO, TEAM_ID) VALUES ('505', 'Taylor Kimberely', 'kimberely.taylor@uconn.edu, 76598072435', '608');
INSERT INTO "TEAM_MEMBER" (MEM_ID, MEM_NAME, MEM_CON_INFO, TEAM_ID, SUPER_ID) VALUES ('506', 'Rajs Trenna ', 'trenna.rajs@uconn.edu, 65498076821', '607', '505');
INSERT INTO "TEAM_MEMBER" (MEM_ID, MEM_NAME, MEM_CON_INFO, TEAM_ID, SUPER_ID) VALUES ('507', 'Grant Pat', 'pat.grant@uconn.edu, 87300987764', '605', '505');
INSERT INTO "TEAM_MEMBER" (MEM_ID, MEM_NAME, MEM_CON_INFO, TEAM_ID) VALUES ('508', 'Diana King', 'king.diana@uconn.edu, 67309721178', '606');
INSERT INTO "TEAM_MEMBER" (MEM_ID, MEM_NAME, MEM_CON_INFO, TEAM_ID, SUPER_ID) VALUES ('509', 'Whalen Steven', 'steven.whalen@uconn.edu, 66654827683', '602', '501');
INSERT INTO "TEAM_MEMBER" (MEM_ID, MEM_NAME, MEM_CON_INFO, TEAM_ID, SUPER_ID) VALUES ('510', 'Abel Michael', 'michael.abel@uconn.edu, 86409638743', '603', '505');
INSERT INTO "TEAM_MEMBER" (MEM_ID, MEM_NAME, MEM_CON_INFO, TEAM_ID) VALUES ('511', 'Higgins Trenna', 'trenna.higgins@uconn.edu, 89766459801', '601');
INSERT INTO "TEAM_MEMBER" (MEM_ID, MEM_NAME, MEM_CON_INFO, TEAM_ID, SUPER_ID) VALUES ('512', 'Vargas Ellen', 'ellen.vargas@uconn.edu, 84099802834', '608', '510');
INSERT INTO "TEAM_MEMBER" (MEM_ID, MEM_NAME, MEM_CON_INFO, TEAM_ID, SUPER_ID) VALUES ('513', 'David Jonathon ', 'jonathon.david@uconn.edu, 76476281184', '605', '510');
--End of INSERT command

--Insert command to add data for the Requirement Table
INSERT INTO "REQUIREMENT" (REQ_ID, REQ_COM_DATE, REQ_DESC, REQ_STKH, CL_ID, PMO_ID) VALUES ('201', TO_DATE('2010-01-01 00:00:00', 'YYYY-MM-DD HH24:MI:SS'), 'Reduce the message processing time using XML', 'RMG Java, RMG Oracle, RMG, End Customers', '106', '404');
INSERT INTO "REQUIREMENT" (REQ_ID, REQ_COM_DATE, REQ_DESC, REQ_STKH, CL_ID, PMO_ID) VALUES ('202', TO_DATE('2010-05-03 00:00:00', 'YYYY-MM-DD HH24:MI:SS'), 'Update the contact Information for RMG Offices', 'RMG Java, RMG, End Customers', '104', '401');
INSERT INTO "REQUIREMENT" (REQ_ID, REQ_COM_DATE, REQ_DESC, REQ_STKH, CL_ID, PMO_ID) VALUES ('203', TO_DATE('2011-04-07 00:00:00', 'YYYY-MM-DD HH24:MI:SS'), 'Increase the Range of barcodes for Track and Trace products', 'RMG Middleware, RMG Oracle, RMG, End Customers', '102', '401');
INSERT INTO "REQUIREMENT" (REQ_ID, REQ_COM_DATE, REQ_DESC, REQ_STKH, CL_ID, PMO_ID) VALUES ('204', TO_DATE('2012-02-06 00:00:00', 'YYYY-MM-DD HH24:MI:SS'), 'Add new barcode prefixes for the barcodes added for Special delivery products', 'RMG Middleware, RMG Mainframe, RMG, End Customers', '104', '405');
INSERT INTO "REQUIREMENT" (REQ_ID, REQ_COM_DATE, REQ_DESC, REQ_STKH, CL_ID, PMO_ID) VALUES ('205', TO_DATE('2013-05-07 00:00:00', 'YYYY-MM-DD HH24:MI:SS'), 'Enhance the E-mail and SMS template for the automatic messages sent to the customers', 'RMG Java, RMG Oracle, RMG, End Customers', '101', '402');
INSERT INTO "REQUIREMENT" (REQ_ID, REQ_COM_DATE, REQ_DESC, REQ_STKH, CL_ID, PMO_ID) VALUES ('206', TO_DATE('2015-09-05 00:00:00', 'YYYY-MM-DD HH24:MI:SS'), 'Increase the number of leaflet designs for D2D users', 'RMG Mainframe, RMG, End Customers', '103', '403');
--End of INSERT command

--Insert command to add data for the Task Table
INSERT INTO "TASK" (TASK_ID, STATUS, DESCRIPTION, START_DATE, EST_COM_DATE, OWNER, REQ_ID, NOT_FLG) VALUES ('301', 'Requirement clarification needed', 'Need clarification on the requirements proposed by the client', TO_DATE('2009-10-08 00:00:00', 'YYYY-MM-DD HH24:MI:SS'), TO_DATE('2009-10-15 00:00:00', 'YYYY-MM-DD HH24:MI:SS'), 'Ernst Kevin', '201', 'T');
INSERT INTO "TASK" (TASK_ID, STATUS, DESCRIPTION, START_DATE, EST_COM_DATE, OWNER, REQ_ID, NOT_FLG) VALUES ('302', 'In Progress', 'Work is in progress', TO_DATE('2009-10-16 00:00:00', 'YYYY-MM-DD HH24:MI:SS'), TO_DATE('2009-11-01 00:00:00', 'YYYY-MM-DD HH24:MI:SS'), 'Ernst Kevin', '201', 'T');
INSERT INTO "TASK" (TASK_ID, STATUS, DESCRIPTION, START_DATE, EST_COM_DATE, OWNER, REQ_ID, NOT_FLG) VALUES ('303', 'User Acceptance Testing', 'With User for User Acceptance Testing', TO_DATE('2009-11-02 00:00:00', 'YYYY-MM-DD HH24:MI:SS'), TO_DATE('2009-12-01 00:00:00', 'YYYY-MM-DD HH24:MI:SS'), 'Ernst Kevin', '201', 'F');
INSERT INTO "TASK" (TASK_ID, STATUS, DESCRIPTION, START_DATE, EST_COM_DATE, OWNER, REQ_ID, NOT_FLG) VALUES ('304', 'In Progress', 'Work is in progress', TO_DATE('2010-01-03 00:00:00', 'YYYY-MM-DD HH24:MI:SS'), TO_DATE('2010-02-25 00:00:00', 'YYYY-MM-DD HH24:MI:SS'), 'Davies Peter', '202', 'F');
INSERT INTO "TASK" (TASK_ID, STATUS, DESCRIPTION, START_DATE, EST_COM_DATE, OWNER, REQ_ID, NOT_FLG) VALUES ('305', 'Completed', 'Signoff Obtained from the user as the work has been completed', TO_DATE('2010-02-26 00:00:00', 'YYYY-MM-DD HH24:MI:SS'), TO_DATE('2010-04-20 00:00:00', 'YYYY-MM-DD HH24:MI:SS'), 'Davies Peter', '202', 'T');
INSERT INTO "TASK" (TASK_ID, STATUS, DESCRIPTION, START_DATE, EST_COM_DATE, OWNER, REQ_ID, NOT_FLG) VALUES ('306', 'Requirement clarification needed', 'Need clarification on the requirements proposed by the client', TO_DATE('2013-01-01 00:00:00', 'YYYY-MM-DD HH24:MI:SS'), TO_DATE('2013-02-24 00:00:00', 'YYYY-MM-DD HH24:MI:SS'), 'Fay Lex', '205', 'T');
INSERT INTO "TASK" (TASK_ID, STATUS, DESCRIPTION, START_DATE, EST_COM_DATE, OWNER, REQ_ID, NOT_FLG) VALUES ('307', 'User Acceptance testing', 'With User for User Acceptance Testing', TO_DATE('2013-02-25 00:00:00', 'YYYY-MM-DD HH24:MI:SS'), TO_DATE('2013-03-27 00:00:00', 'YYYY-MM-DD HH24:MI:SS'), 'Rajs Trenna', '205', 'T');
INSERT INTO "TASK" (TASK_ID, STATUS, DESCRIPTION, START_DATE, EST_COM_DATE, OWNER, REQ_ID, NOT_FLG) VALUES ('308', 'Completed', 'Signoff Obtained from the user as the work has been completed', TO_DATE('2013-03-28 00:00:00', 'YYYY-MM-DD HH24:MI:SS'), TO_DATE('2013-04-27 00:00:00', 'YYYY-MM-DD HH24:MI:SS'), 'Diana King', '205', 'T');
INSERT INTO "TASK" (TASK_ID, STATUS, DESCRIPTION, START_DATE, EST_COM_DATE, OWNER, REQ_ID, NOT_FLG) VALUES ('309', 'In Progress', 'Work is in progress', TO_DATE('2015-06-02 00:00:00', 'YYYY-MM-DD HH24:MI:SS'), TO_DATE('2015-08-03 00:00:00', 'YYYY-MM-DD HH24:MI:SS'), 'Taylor Kimberly', '206', 'F');
INSERT INTO "TASK" (TASK_ID, STATUS, DESCRIPTION, START_DATE, EST_COM_DATE, OWNER, REQ_ID, NOT_FLG) VALUES ('310', 'User Acceptance testing', 'With User for User Acceptance Testing', TO_DATE('2015-08-04 00:00:00', 'YYYY-MM-DD HH24:MI:SS'), TO_DATE('2015-09-03 00:00:00', 'YYYY-MM-DD HH24:MI:SS'), 'Jennifer Gietz', '206', 'T');
--End of INSERT command

--Insert command to add data for the Assignment Table
INSERT INTO "ASSIGNMENT" (TASK_ID, MEM_ID) VALUES ('301', '502');
INSERT INTO "ASSIGNMENT" (TASK_ID, MEM_ID) VALUES ('302', '502');
INSERT INTO "ASSIGNMENT" (TASK_ID, MEM_ID) VALUES ('303', '502');
INSERT INTO "ASSIGNMENT" (TASK_ID, MEM_ID) VALUES ('304', '504');
INSERT INTO "ASSIGNMENT" (TASK_ID, MEM_ID) VALUES ('305', '504');
INSERT INTO "ASSIGNMENT" (TASK_ID, MEM_ID) VALUES ('306', '503');
INSERT INTO "ASSIGNMENT" (TASK_ID, MEM_ID) VALUES ('307', '506');
INSERT INTO "ASSIGNMENT" (TASK_ID, MEM_ID) VALUES ('308', '508');
INSERT INTO "ASSIGNMENT" (TASK_ID, MEM_ID) VALUES ('309', '505');
INSERT INTO "ASSIGNMENT" (TASK_ID, MEM_ID) VALUES ('310', '501');
--End of INSERT command

--************************************************************************VALUES INSERTED IN ALL THE TABLES****************************************************************************************************************************************************************************************************************************************
