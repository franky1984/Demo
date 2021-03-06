
select TEMP.id as PBIID, temp.title as PBI标题, 
temp.[Assigned To] , 
temp.targetid as TASKID, temp2.title as TASK标题,temp2.[Assigned To], 
case when temp2.[Assigned To]=18 then '许书浩'
	when temp2.[Assigned To]=947 then '程青'
    when temp2.[Assigned To]=946 then '江运海'
    when temp2.[Assigned To]=28 then '姜正午'
    when temp2.[Assigned To]=19 then '刘江林'
    when temp2.[Assigned To]=953  then '刘通'
    when temp2.[Assigned To]=1021 then '马帅'
    when temp2.[Assigned To]=15 then '孟祥记'
    when temp2.[Assigned To]=948 then '王成琳'
    when temp2.[Assigned To]=954 then '魏运良'
    when temp2.[Assigned To]=945 then '于殿云'
    when temp2.[Assigned To]=944 then '晏颖'
    when temp2.[Assigned To]=6 then '张朋涛'
    else '未识别' end as Task指派人
from
(
select b.TargetID,a.id, a.Title, a.[Assigned To], b.LinkType
from WorkItemsLatest a
left join LinksLatest b on(a.id = b.SourceID)
where a.AreaID = 330 
and a.[Work Item Type] in ('Product Backlog Item')
and a.[State] in ('To Do', 'New', 'In Progress','Done')
and b.LinkType = 2

and a.IterationID = 338
) temp 
left join WorkItemsLatest temp2 on(temp.TargetID = temp2.id)
    