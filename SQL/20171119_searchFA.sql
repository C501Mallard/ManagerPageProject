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

--select ����~�W,�^��~�W,�ϥέ��~�d��έ��q,�ϥέ���,�W��,���O���� from ���~�K�[����ƶ�61 where ���O='(�T) �ܮ�ƾ�'
--select distinct ���O from FA61 order by ���O  asc
--select ���O from FA61