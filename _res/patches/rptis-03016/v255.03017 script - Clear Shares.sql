
delete from rptpayment_share
;


insert into cashreceipt_rpt_share_forposting (objid, receiptid, rptledgerid, txndate, error) 
select 
	concat(c.receiptno,  p.refid) as objid,
	c.objid as receiptid, 
	p.refid as rptledgerid, 
	c.txndate, 
	0 as error
from cashreceipt c
inner join rptpayment p on c.objid = p.receiptid 
inner join remittance r on c.remittanceid = r.objid 
inner join collectionvoucher v on r.collectionvoucherid = v.objid 
left join cashreceipt_void cv on c.objid = cv.objid 
where c.formno = '56' 
and cv.objid is null
;

