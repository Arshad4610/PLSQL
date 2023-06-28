set serveroutput on 
declare
s employee.ssn%type;
n number :=10;
m number;
begin
	select ssn into s from employee;
	m :=n/0;
	select ssn into s from employee where dno=100;
exception
	when too_many_rows then
	dbms_output.put_line('toomany rows');
	when zero_divide then
	dbms_output.put_line('Attempting to divide by zero');
	when no_data_found then
	dbms_output.put_line('no such dept exists');
end;