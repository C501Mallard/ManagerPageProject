
create proc table_query_FA
	@table_class nvarchar(500)
as
begin
	select ChName,EngName from FA61 where ClassName = @table_class
end

--select 中文品名,英文品名,使用食品範圍及限量,使用限制,規格,類別說明 from 食品添加物資料集61 where 類別='(三) 抗氧化劑'
--select distinct 類別 from FA61 order by 類別  asc
--select 類別 from FA61