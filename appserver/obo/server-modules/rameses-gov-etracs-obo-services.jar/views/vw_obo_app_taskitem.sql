DROP VIEW IF EXISTS vw_obo_app_taskitem;
CREATE VIEW vw_obo_app_taskitem AS 
SELECT 
   a.*,
   os.objid AS sectionid,
   os.org_objid AS org_objid,
   et.title AS type_title,
   et.sortindex AS type_sortindex,
   et.joinstate AS type_joinstate,
   app.task_state AS app_task_state, 
   t.state AS task_state,
   t.dtcreated AS task_dtcreated,
   t.startdate AS task_startdate,
   t.enddate AS task_enddate,
   t.assignee_objid AS task_assignee_objid,
   t.assignee_name AS task_assignee_name,
   t.actor_objid AS task_actor_objid,
   t.actor_name AS task_actor_name,
   sn.title AS task_title,
   sn.tracktime AS task_tracktime

FROM obo_app_taskitem a 
INNER JOIN obo_app_taskitem_task t ON a.taskid = t.taskid 
INNER JOIN obo_taskitem_type et ON a.typeid = et.objid 
LEFT JOIN obo_section os ON et.sectionid = os.objid
INNER JOIN sys_wf_node sn ON sn.processname = 'obo_app_taskitem' AND sn.name = t.state 
INNER JOIN vw_obo_app app ON a.appid = app.objid 