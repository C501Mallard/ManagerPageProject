
create proc table_query_FA
	@table_class nvarchar(500)
as
begin
	select ChName,EngName from FA61 where ClassName = @table_class
end

--select ����~�W,�^��~�W,�ϥέ��~�d��έ��q,�ϥέ���,�W��,���O���� from ���~�K�[����ƶ�61 where ���O='(�T) �ܮ�ƾ�'
--select distinct ���O from FA61 order by ���O  asc
--select ���O from FA61