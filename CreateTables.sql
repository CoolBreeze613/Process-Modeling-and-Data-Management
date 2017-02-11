--******************************************CREATING TABLES IN THE DATABASE**************************************************************************************************************************************************************************************************************************************************

--SET DEFINE OFF to turn off substitution behaviour as the data can contain '&' character
SET DEFINE OFF;
--End of SET statement

--CREATE TABLE command to create a table CLIENT in the database
CREATE TABLE CLIENT               
(
Cl_ID NUMBER(7) 
CONSTRAINT Client_Cl_ID_PKey PRIMARY KEY,
Cl_Name VARCHAR(50) 
CONSTRAINT Client_Cl_Name_NN NOT NULL,
Cl_Co_Info VARCHAR(255) 
CONSTRAINT Client_Cl_Co_Info_NN NOT NULL,
Cl_Manager VARCHAR(50),
Cl_Man_Con VARCHAR(255),
Cl_App_Status CHAR
CONSTRAINT Client_Cl_App_Status_NN NOT NULL
CONSTRAINT Client_Cl_App_Status_Chk CHECK (Cl_App_Status='T' or Cl_App_Status='F' or Cl_App_Status=' ') 
);
--End of CREATE TABLE command

--SET DEFINE OFF to turn off substitution behaviour as the data can contain '&' character
SET DEFINE OFF;
--End of SET statement

--CREATE TABLE command to create a table TEAM in the database
CREATE TABLE TEAM               
(
Team_ID NUMBER(7) 
CONSTRAINT Team_Team_ID_PKey PRIMARY KEY,
Team_Name VARCHAR(50) 
CONSTRAINT Team_Team_Name_NN NOT NULL,
Tech_Comp VARCHAR(255),
Team_App_Status CHAR
CONSTRAINT Team_Team_App_Status_NN NOT NULL
CONSTRAINT Team_Team_App_Status_Chk CHECK (Team_App_Status='T' or Team_App_Status='F' or Team_App_Status=' ')
);
--End of CREATE TABLE command

--SET DEFINE OFF to turn off substitution behaviour as the data can contain '&' character
SET DEFINE OFF;
--End of SET statement

--CREATE TABLE command to create a table PMO in the database
CREATE TABLE PMO
(
PMO_ID NUMBER(7) 
CONSTRAINT PMO_PMO_ID_PKey PRIMARY KEY,
PMO_Off_Name VARCHAR(50),
PMO_App_Status CHAR 
CONSTRAINT PMO_PMO_App_Status_NN NOT NULL
CONSTRAINT PMO_PMO_App_Status_Chk CHECK (PMO_App_Status='T' or PMO_App_Status='F' or PMO_App_Status=' ') 
);
--End of CREATE TABLE command

--SET DEFINE OFF to turn off substitution behaviour as the data can contain '&' character
SET DEFINE OFF;
--End of SET statement

--CREATE TABLE command to create a table TEAM_MEMBER in the database
CREATE TABLE TEAM_MEMBER
(
Mem_ID NUMBER(7) 
CONSTRAINT Team_Member_Mem_ID_PKey PRIMARY KEY,
Mem_Name VARCHAR(50),
Mem_Con_Info  VARCHAR(255),
Team_ID NUMBER(7) 
CONSTRAINT Team_Member_FKEY_Team REFERENCES TEAM(Team_ID) 
CONSTRAINT Team_Member_ID_NN NOT NULL,
Super_ID NUMBER(7)
);
--End of CREATE TABLE command

--SET DEFINE OFF to turn off substitution behaviour as the data can contain '&' character
SET DEFINE OFF;
--End of SET statement

--CREATE TABLE command to create a table REQUIREMENT in the database
CREATE TABLE REQUIREMENT
(
Req_ID NUMBER(7) 
CONSTRAINT Requirement_Req_ID_PKey PRIMARY KEY,
Req_Com_Date DATE 
CONSTRAINT Requirement_Req_Com_Date_NN NOT NULL,
Req_Desc VARCHAR(255) 
CONSTRAINT Requirement_Req_Desc NOT NULL,
Req_Stkh VARCHAR(255) 
CONSTRAINT Requirement_Req__Stkh NOT NULL,
Cl_ID NUMBER(7) 
CONSTRAINT Requirement_FKEY_Client REFERENCES CLIENT(Cl_ID) 
CONSTRAINT Requirement_CL_ID_NN NOT NULL,
PMO_ID NUMBER(7) CONSTRAINT Requirement_FKEY_PMO REFERENCES PMO(PMO_ID)
CONSTRAINT Requirement_PMO_ID_NN NOT NULL
);
--End of CREATE TABLE command

--SET DEFINE OFF to turn off substitution behaviour as the data can contain '&' character
SET DEFINE OFF;
--End of SET statement

--CREATE TABLE command to create a table TASK in the database
CREATE TABLE TASK
(
Task_ID NUMBER(7) 
CONSTRAINT Task_Task_ID_PKey PRIMARY KEY,
Status VARCHAR(50) 
CONSTRAINT Task_Status_NN NOT NULL,
Description VARCHAR(255),
Start_Date DATE,
Est_Com_Date DATE 
CONSTRAINT Task_Est_Com_Date_NN NOT NULL,
Owner VARCHAR(50) 
CONSTRAINT Task_Owner_NN NOT NULL,
Req_ID NUMBER(7) CONSTRAINT Task_FKEY_Requirement REFERENCES REQUIREMENT(Req_ID) 
CONSTRAINT Task_Req_ID_NN NOT NULL,
Not_Flg CHAR 
CONSTRAINT Task_Not_Flg_NN NOT NULL
CONSTRAINT Task_Not_Flg_Chk CHECK (Not_Flg='T' or Not_Flg='F')
);
--End of CREATE TABLE command

--SET DEFINE OFF to turn off substitution behaviour as the data can contain '&' character
SET DEFINE OFF;
--End of SET statement

--CREATE TABLE command to create a table ASSIGNMENT in the database
CREATE TABLE ASSIGNMENT
(
Task_ID NUMBER(7) 
CONSTRAINT Assignment_FKEY_Task REFERENCES TASK(Task_ID),
Mem_ID NUMBER(7) 
CONSTRAINT Assignment_FKEY_Team_Member REFERENCES TEAM_MEMBER(Mem_ID),
CONSTRAINT Assignment_Combined_PKey PRIMARY KEY(Task_ID,Mem_ID)
);
--End of CREATE TABLE command

--***************************************************************************END OF TABLE CREATION********************************************************************************************************************************************************************************************************************
