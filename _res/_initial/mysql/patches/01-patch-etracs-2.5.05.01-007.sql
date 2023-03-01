--
-- Current Database: `training_etracs`
--

USE `training_etracs`;


-- ## 2022-12-13




-- ## 2022-12-26
alter table sys_fileitem add filetype varchar(10) null
;
update sys_fileitem set 
  filetype = ( 
    select filetype from sys_file 
    where objid = sys_fileitem.parentid  
  ) 
where filetype is null 
; 
alter table sys_fileitem modify filetype varchar(10) not null
;


alter table sys_fileitem add bytestransferred int null
;




-- ## 2022-12-29




-- ## 2023-01-03




-- ## 2023-01-08




-- ## 2023-01-09




-- ## 2023-01-16

alter table sys_fileitem add filedir varchar(255) null 
;



-- ## 2023-01-19




-- ## 2023-01-29




-- ## 2023-02-03

drop table if exists vw_remittance_eor 
;
drop view if exists vw_remittance_eor 
;
create view vw_remittance_eor as 
select 
  r.objid AS remittance_objid, 
  r.controldate AS remittance_controldate, 
  r.controlno AS remittance_controlno, 
  c.remittanceid AS remittanceid, 
  'serial' AS formtype, 
  0 AS formtypeindexno, 
  'EOR' AS formno, 
  (case 
    when c.receiptno like 'EOR%' then substring(c.receiptno,4) 
    else c.receiptno 
  end) as series, 
  c.receiptno AS receiptno, 
  c.receiptdate AS receiptdate, 
  c.amount AS amount, 
  0 AS voided, 
  0.0 AS voidamount, 
  c.paidby AS paidby, 
  c.paidbyaddress AS paidbyaddress, 
  c.payer_objid AS payer_objid, 
  'eor' AS collector_objid, 
  c.objid AS receiptid, 
  c.txntype AS collectiontype_objid, 
  po.txntypename AS collectiontype_name, 
  po.locationid AS org_objid, 
  org.name as org_name 
from eor.eor_remittance r 
  inner join eor.eor c on c.remittanceid = r.objid 
  left join eor.eor_paymentorder_paid po on po.objid = c.paymentrefid 
  left join sys_org org on org.objid = po.locationid 
;

drop table if exists vw_remittance_eoritem
;
drop view if exists vw_remittance_eoritem
;
create view vw_remittance_eoritem as 
select 
  c.remittanceid AS remittanceid, 
  r.controldate AS remittance_controldate, 
  r.controlno AS remittance_controlno, 
  r.state as remittance_state,
  c.txntype AS collectiontype_objid, 
  po.txntypename AS collectiontype_name, 
  po.locationid AS org_objid, 
  org.name as org_name, 
  'serial' AS formtype, 
  'EOR' AS formno, 
  0 AS formtypeindex, 
  c.objid AS receiptid, 
  c.receiptdate AS receiptdate, 
  c.receiptno AS receiptno, 
  c.paidby AS paidby, 
  c.paidbyaddress AS paidbyaddress, 
  'EOR' AS collectorid, 
  ci.item_fund_objid AS fundid, 
  ci.item_objid AS acctid, 
  ci.item_code AS acctcode, 
  ci.item_title AS acctname, 
  ci.remarks AS remarks, 
  ci.amount as amount, 
  0 AS voided, 0.0 AS voidamount  
from eor.eor_remittance r 
  inner join eor.eor c on c.remittanceid = r.objid 
  inner join eor.eor_item ci on ci.parentid = c.objid 
  left join eor.eor_paymentorder_paid po on po.objid = c.paymentrefid 
  left join sys_org org on org.objid = po.locationid 
;

drop table if exists vw_remittance_eorshare
;
drop view if exists vw_remittance_eorshare
;
create view vw_remittance_eorshare as 
select 
  c.remittanceid AS remittanceid, 
  r.controldate AS remittance_controldate, 
  r.controlno AS remittance_controlno, 
  r.state as remittance_state,
  c.txntype AS collectiontype_objid, 
  po.txntypename AS collectiontype_name, 
  po.locationid AS org_objid, 
  org.name as org_name, 
  'serial' AS formtype, 
  'EOR' AS formno, 
  0 AS formtypeindex, 
  c.objid AS receiptid, 
  c.receiptdate AS receiptdate, 
  c.receiptno AS receiptno, 
  c.paidby AS paidby, 
  c.paidbyaddress AS paidbyaddress, 
  'EOR' AS collectorid, 
  ci.receiptitemid as receiptitemid, 
  ci.refitem_objid AS refacctid, 
  ci.refitem_fund_objid AS reffundid, 
  ci.payableitem_fund_objid AS fundid, 
  ci.payableitem_objid AS acctid, 
  ci.payableitem_code AS acctcode, 
  ci.payableitem_title AS acctname, 
  null as remarks, 
  ci.amount as amount, 
  0 AS voided, 0.0 AS voidamount  
from eor.eor_remittance r 
  inner join eor.eor c on c.remittanceid = r.objid 
  inner join eor.eor_share ci on ci.parentid = c.objid 
  left join eor.eor_paymentorder_paid po on po.objid = c.paymentrefid 
  left join sys_org org on org.objid = po.locationid 
;




-- ## 2023-02-27
