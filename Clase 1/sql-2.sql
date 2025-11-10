
-- PRIMER CÓDIGO: CICLO NORMAL
declare
  v_numero number(2) :=0;
begin
  selelct version into v_version from v$instance; -- se pone aqui para ver la versión
  -- || -> es un operador de concatenación 
  -- mod() -> Resto de un número 
  DBMS_OUTPUT.PUT_LINE('Hola infrabase');
  for c in 1..10 loop
    DBMS_OUTPUT.PUT_LINE('Linea -> ' || c); 
    if c >= 5 then 
      DBMS_OUTPUT.PUT_LINE(c || ' menor que 5');
    else
    DBMS_OUTPUT.PUT_LINE(c || ' mayor que 5');
    end if;
  end loop;
  DBMS_OUTPUT.PUT_LINE(c || ' menor que 5');

end;
-- APUNTES
-- select sysdate from dual; -> para ver la fecha del servidor
-- select version from v$instance; -> esto me entrega la versión de la bd que estoy trabajando
-- todos los simbolos son iguales que pyhton 


    

-- SEGUNDO CÓDIGO: CICLO CON MOD

declare
  v_numero number(2) :=0;
begin
  selelct version into v_version from v$instance; -- se pone aqui para ver la versión
  -- || -> es un operador de concatenación 
  -- mod() -> Resto de un número 
  DBMS_OUTPUT.PUT_LINE('Hola infrabase');
  for c in 1..10 loop
    DBMS_OUTPUT.PUT_LINE('Linea -> ' || c); 
    if mod(c,2) = 0 then 
      DBMS_OUTPUT.PUT_LINE(c || ' par');
    else
    DBMS_OUTPUT.PUT_LINE(c || ' impar');
    end if;
  end loop;
  DBMS_OUTPUT.PUT_LINE('Versión base de datos -> ' || v_version);
end;
-- APUNTES
-- select sysdate from dual; -> para ver la fecha del servidor
-- select version from v$instance; -> esto me entrega la versión de la bd que estoy trabajando
-- todos los simbolos son iguales que pyhton 
/
    



