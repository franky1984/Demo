select a.id, a.Title, a.[Assigned To],fld10134
from WorkItemsLatest a
where a.AreaID = 330 
and a.[Work Item Type] in ('Product Backlog Item')
and a.[State] in ('To Do', 'New', 'In Progress','Done')
and a.IterationID = 338
--and a.id = 1509
