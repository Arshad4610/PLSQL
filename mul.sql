set serveroutput on 
declare
n number :=&n;
begin
	for i in 1..n loop
		dbms_output.put_line(n||'*'||i||'='|| n*i);
	end loop;
end;