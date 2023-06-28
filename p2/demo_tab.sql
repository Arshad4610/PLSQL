set serveroutput on
declare 
a number := &a;
b number := &b;
h number;
l number;
al number;
bl number;
begin
	al :=a;
	bl :=b;
	while(a<>b) loop
		if(b>a) then
			b :=b-a;
		else 
			a :=a-b;
		end if;
	end loop;
h :=a;
l :=(al*bl)/h;
insert into demo_tab values(al,bl,l,h);
end;

