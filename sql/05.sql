begin

	declare
	@no as int;

	set @no = 30;

	/*select @no as [Number];*/

	if @no > 50
		print 'Pass';
	else
		print 'Fail';

end