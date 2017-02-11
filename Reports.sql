--1.The following query generates a report that displays client name, requirement ID, requirement completion date and requirement description of those requirements who have been approved by the client and are ready to be worked upon.
SELECT CL_Name "Client Name", REQ_ID "Requirement ID", REQ_COM_DATE "Requirement Completion Date", REQ_DESC "Requirement Description"
FROM CLIENT c JOIN REQUIREMENT r ON (c.CL_ID = r.CL_ID)
WHERE c.CL_APP_STATUS = 'T' ;


--2.The following query generates a report that displays the name of the supervisor in an alphabetical order for each team member.
SELECT t1.MEM_NAME "Supervisor Name", t2.MEM_NAME "Team Members"
FROM TEAM_MEMBER t1 JOIN TEAM_MEMBER t2 ON (t2.SUPER_ID = t1.MEM_ID)
ORDER BY 1;

--3.The following query displays the requirement ID of that requirement which has one of its associated task completed  
SELECT DISTINCT REQUIREMENT.REQ_ID "Requirement ID" FROM REQUIREMENT 
JOIN PMO ON (PMO.PMO_ID = REQUIREMENT.PMO_ID)
JOIN TASK ON (REQUIREMENT.REQ_ID = TASK.REQ_ID)
WHERE PMO.PMO_APP_STATUS = 'T' AND TASK.NOT_FLG = 'T';

--4.The following query generates a report that displays all the team members who have a task associated with them and sorts the output according to the number of tasks (in the ascending order i.e. lowest to highest)
SELECT MEM_ID "Member ID", COUNT(TASK_ID) "Number Of Tasks" FROM ASSIGNMENT
GROUP BY MEM_ID
ORDER BY 2;

--5.The following query is to display the TASKS corresponding to the requirement that have been completed and their duration(in weeks).
SELECT  STATUS "STATUS",REQ_ID "Requirement ID", ROUND((EST_COM_DATE-START_DATE)/7) "Weeks" FROM TASK
where STATUS='Completed';


--6.The following query displays name of the client, contact information and the approval status for those who have either rejected a requirement or have a requirement pending for approval.
SELECT CL_NAME "Client Name", CL_CO_INFO "Client Contact Info" 
from CLIENT where CL_APP_STATUS=' ' or CL_APP_STATUS='F';

--7. The following query displays the Tasks associated with the Requirements for which notification failed to go through due to system issues.
select TASK_ID "Task ID", REQ_ID "Requirement ID", STATUS "Status of the Task", OWNER "Owner of the Task" from TASK 
where NOT_FLG='F';


--8.The following query displays the ID and start date of any tasks that started after task 302
SELECT TASK_ID "Task ID", TO_CHAR(START_DATE, 'fmDD Month YYYY') "Start Date" FROM TASK
WHERE
START_DATE > '16-OCT-09';

--9. The following query displays the name of the supervisors who supervise at least a team of two. 
SELECT MEM_NAME "Member Name" FROM TEAM_MEMBER
WHERE MEM_ID IN(
SELECT SUPER_ID FROM TEAM_MEMBER
GROUP BY SUPER_ID
HAVING COUNT(MEM_ID) >= 2);


--10. The following query displays the team ID and the count of team members for team with maximum strength.
SELECT TEAM_ID, COUNT(MEM_ID) "Number of Members" 
FROM TEAM_MEMBER
GROUP BY TEAM_ID
HAVING COUNT(MEM_ID) = (SELECT MAX(COUNT(MEM_ID)) FROM TEAM_MEMBER GROUP BY TEAM_ID)
ORDER BY 1;

--11.The following query is to display requirement ID, client ID, project management officer ID, required completion date.And the date format is like ¡°17 September 1987¡±.
SELECT req_ID "Requirement ID", Cl_ID "Client ID", PMO_ID "Project Management Officer ID", To_char(REQ_COM_date, 'fmDD Month YYYY')  "Requirement Completion Date"
FROM requirement;

--12.The following query is to display the member ID , team ID, member contact information for employee with last name lex.
SELECT MEM_ID "Member
ID", TEAM_ID "Team ID", MEM_CON_INFO "Member Contact
Information" FROM TEAM_MEMBER
WHERE
lower(MEM_NAME) like '%lex';

--13.Display the client ID and client manager of clients who have a manager assigned to them.
SELECT CL_ID "Client ID", CL_MANAGER "Client Manager" 
FROM CLIENT
WHERE CL_MANAGER != 'null';

--14. The following query is to display the team members who have maximum tasks associated with them
SELECT MEM_NAME as "Member Name" from TEAM_MEMBER
WHERE TEAM_ID =(select m.team_id
                from team_member m join task t on m.mem_name=t.owner
                group by m.team_id
                having count(t.task_id)= (select max(count(t.task_id))
                                          from team_member m join task t on m.mem_name=t.owner group by m.team_id)
                );


--15.The following query displays the information related to the client who has proposed a requirement(associated with a requirement)
SELECT CL_ID as "CLIENT
ID", CL_NAME as "CLIENT NAME", CL_CO_INFO as "CLIENT
CONTACT INFORMATION" from CLIENT
where CL_ID in ( select
CLIENT.CL_ID from CLIENT intersect select REQUIREMENT.CL_ID from REQUIREMENT);












INSERT INTO "TASK" (TASK_ID, STATUS, DESCRIPTION, START_DATE, EST_COM_DATE, OWNER, REQ_ID, NOT_FLG) VALUES ('301', 'Requirement clarification needed', 'Need clarification on the requirements proposed by the client', TO_DATE('2009-10-08 00:00:00', 'YYYY-MM-DD HH24:MI:SS'), TO_DATE('2009-10-15 00:00:00', 'YYYY-MM-DD HH24:MI:SS'), 'Ernst Kevin', '201', 'T');
INSERT INTO "TASK" (TASK_ID, STATUS, DESCRIPTION, START_DATE, EST_COM_DATE, OWNER, REQ_ID, NOT_FLG) VALUES ('302', 'In Progress', 'Work is in progress', TO_DATE('2009-10-16 00:00:00', 'YYYY-MM-DD HH24:MI:SS'), TO_DATE('2009-11-01 00:00:00', 'YYYY-MM-DD HH24:MI:SS'), 'Ernst Kevin', '201', 'T');
INSERT INTO "TASK" (TASK_ID, STATUS, DESCRIPTION, START_DATE, EST_COM_DATE, OWNER, REQ_ID, NOT_FLG) VALUES ('303', 'User Acceptance Testing', 'With User for User Acceptance Testing', TO_DATE('2009-11-02 00:00:00', 'YYYY-MM-DD HH24:MI:SS'), TO_DATE('2009-12-01 00:00:00', 'YYYY-MM-DD HH24:MI:SS'), 'Ernst Kevin', '201', 'T');
INSERT INTO "TASK" (TASK_ID, STATUS, DESCRIPTION, START_DATE, EST_COM_DATE, OWNER, REQ_ID, NOT_FLG) VALUES ('304', 'In Progress', 'Work is in progress', TO_DATE('2010-01-03 00:00:00', 'YYYY-MM-DD HH24:MI:SS'), TO_DATE('2010-02-25 00:00:00', 'YYYY-MM-DD HH24:MI:SS'), 'Davies Peter', '202', 'T');
INSERT INTO "TASK" (TASK_ID, STATUS, DESCRIPTION, START_DATE, EST_COM_DATE, OWNER, REQ_ID, NOT_FLG) VALUES ('305', 'Completed', 'Signoff Obtained from the user as the work has been completed', TO_DATE('2010-02-26 00:00:00', 'YYYY-MM-DD HH24:MI:SS'), TO_DATE('2010-04-20 00:00:00', 'YYYY-MM-DD HH24:MI:SS'), 'Davies Peter', '202', 'T');
INSERT INTO "TASK" (TASK_ID, STATUS, DESCRIPTION, START_DATE, EST_COM_DATE, OWNER, REQ_ID, NOT_FLG) VALUES ('306', 'Requirement clarification needed', 'Need clarification on the requirements proposed by the client', TO_DATE('2013-01-01 00:00:00', 'YYYY-MM-DD HH24:MI:SS'), TO_DATE('2013-02-24 00:00:00', 'YYYY-MM-DD HH24:MI:SS'), 'Fay Lex', '205', 'T');
INSERT INTO "TASK" (TASK_ID, STATUS, DESCRIPTION, START_DATE, EST_COM_DATE, OWNER, REQ_ID, NOT_FLG) VALUES ('307', 'User Acceptance testing', 'With User for User Acceptance Testing', TO_DATE('2013-02-25 00:00:00', 'YYYY-MM-DD HH24:MI:SS'), TO_DATE('2013-03-27 00:00:00', 'YYYY-MM-DD HH24:MI:SS'), 'Rajs Trenna', '205', 'T');
INSERT INTO "TASK" (TASK_ID, STATUS, DESCRIPTION, START_DATE, EST_COM_DATE, OWNER, REQ_ID, NOT_FLG) VALUES ('308', 'Completed', 'Signoff Obtained from the user as the work has been completed', TO_DATE('2013-03-28 00:00:00', 'YYYY-MM-DD HH24:MI:SS'), TO_DATE('2013-04-27 00:00:00', 'YYYY-MM-DD HH24:MI:SS'), 'Diana King', '205', 'T');
INSERT INTO "TASK" (TASK_ID, STATUS, DESCRIPTION, START_DATE, EST_COM_DATE, OWNER, REQ_ID, NOT_FLG) VALUES ('309', 'In Progress', 'Work is in progress', TO_DATE('2015-06-02 00:00:00', 'YYYY-MM-DD HH24:MI:SS'), TO_DATE('2015-08-03 00:00:00', 'YYYY-MM-DD HH24:MI:SS'), 'Taylor Kimberly', '206', 'F');
INSERT INTO "TASK" (TASK_ID, STATUS, DESCRIPTION, START_DATE, EST_COM_DATE, OWNER, REQ_ID, NOT_FLG) VALUES ('310', 'User Acceptance testing', 'With User for User Acceptance Testing', TO_DATE('2015-08-04 00:00:00', 'YYYY-MM-DD HH24:MI:SS'), TO_DATE('2015-09-03 00:00:00', 'YYYY-MM-DD HH24:MI:SS'), 'Jennifer Gietz', '206', 'T');

