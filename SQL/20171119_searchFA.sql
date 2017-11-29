alter proc table_query_FA
	@ChName nvarchar(500),
	@EngName nvarchar(500),
	@ClassName nvarchar(500)
	--@table_class nvarchar(500)
	--@ClassName nvarchar(500),
	--@ChName nvarchar(500),
	--@EngName nvarchar(500),
	--@UsageRangeDosageLimit nvarchar(500),
	--@UsageLimit nvarchar(500),
	--@ClassingFASpec nvarchar(500),
	--@ClassDescript nvarchar(500)
as
begin
	--SELECT ChName,EngName FROM FA61 WHERE (ClassName=@ClassName AND ChName=@ChName  AND EngName=@EngName  AND UsageRangeDosageLimit=@UsageRangeDosageLimit
	-- AND  UsageLimit=@UsageLimit  AND ClassingFASpec=@ClassingFASpec  AND ClassDescript=@ClassDescript)

	--select ChName,EngName from FA61 where ClassName = @ClassName

	SELECT ChName,EngName FROM FA61 WHERE ClassName=@ClassName AND ChName=@ChName  AND EngName=@EngName 
end

--select 中文品名,英文品名,使用食品範圍及限量,使用限制,規格,類別說明 from 食品添加物資料集61 where 類別='(三) 抗氧化劑'
--select distinct 類別 from FA61 order by 類別  asc
--select 類別 from FA61