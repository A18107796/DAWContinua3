USE db_tf_peru21;

insert into distritos(nombre_distrito) values ('Ancon');
insert into distritos(nombre_distrito) values ('Ate');

insert into distritos(nombre_distrito) values ('Barranco');
insert into distritos(nombre_distrito) values ('Breña');
insert into distritos(nombre_distrito) values ('Carabayllo');
insert into distritos(nombre_distrito) values ('Chaclacayo');
insert into distritos(nombre_distrito) values ('Cieneguilla');
insert into distritos(nombre_distrito) values ('Comas');
insert into distritos(nombre_distrito) values ('Chorrillos');
insert into distritos(nombre_distrito) values ('El Agostino');
insert into distritos(nombre_distrito) values ('Huaycan');
insert into distritos(nombre_distrito) values ('Independencia');
insert into distritos(nombre_distrito) values ('Jesus Maria');
insert into distritos(nombre_distrito) values ('La Molina');
insert into distritos(nombre_distrito) values ('La Victoria');
insert into distritos(nombre_distrito) values ('Lince');
insert into distritos(nombre_distrito) values ('Lima');
insert into distritos(nombre_distrito) values ('Los Olivos');
insert into distritos(nombre_distrito) values ('Lurigancho');
insert into distritos(nombre_distrito) values ('Lurin');
insert into distritos(nombre_distrito) values ('Magdalena del mar');
insert into distritos(nombre_distrito) values ('Miraflores');
insert into distritos(nombre_distrito) values ('Pachacamac');
insert into distritos(nombre_distrito) values ('Pucasana');
insert into distritos(nombre_distrito) values ('Pueblo Libre');
insert into distritos(nombre_distrito) values ('Puente Piedra');
insert into distritos(nombre_distrito) values ('Punta Hermosa');
insert into distritos(nombre_distrito) values ('Punta Negra');
insert into distritos(nombre_distrito) values ('Rimac');
insert into distritos(nombre_distrito) values ('San Isidro');
insert into distritos(nombre_distrito) values ('San Bartolo');
insert into distritos(nombre_distrito) values ('San Isidro');
insert into distritos(nombre_distrito) values ('San Juan de Lurigancho');
insert into distritos(nombre_distrito) values ('San juan de Miraflores');
insert into distritos(nombre_distrito) values ('San Luis');
insert into distritos(nombre_distrito) values ('San Martin de Porres');
insert into distritos(nombre_distrito) values ('San Miguel');
insert into distritos(nombre_distrito) values ('Santa Anita');
insert into distritos(nombre_distrito) values ('Santa Maria del Mar');
insert into distritos(nombre_distrito) values ('Santa Rosa');
insert into distritos(nombre_distrito) values ('Santiago de Surco');
insert into distritos(nombre_distrito) values ('Surquillo');
insert into distritos(nombre_distrito) values ('Villa el Salvador');
insert into distritos(nombre_distrito) values ('Villa María del Triunfo');


insert into cursos(cod_curso, nombre_curso) values('CUR01','Matematica I');
insert into cursos(cod_curso, nombre_curso) values('CUR02','Matematica II');
insert into cursos(cod_curso, nombre_curso) values('CUR03','Ingles I');
insert into cursos(cod_curso, nombre_curso) values('CUR04','Ingles II');
insert into cursos(cod_curso, nombre_curso) values('CUR05','Teatro');
insert into cursos(cod_curso, nombre_curso) values('CUR06','Danza');
insert into cursos(cod_curso, nombre_curso) values('CUR07','Ética');
insert into cursos(cod_curso, nombre_curso) values('CUR08','Psicologia en Niños I');
insert into cursos(cod_curso, nombre_curso) values('CUR09','Psicologia en Niños II');

insert into especializaciones(cod_especializacion, nombre) values('ESP01','Docencia en educación inicial');
insert into especializaciones(cod_especializacion, nombre) values('ESP02','Docencia en educacion Primaria');
insert into especializaciones(cod_especializacion, nombre) values('ESP03','Tencnico Bibliotecario');
insert into especializaciones(cod_especializacion, nombre) values('ESP04','Laboratiorio Escolar');
insert into especializaciones(cod_especializacion, nombre) values('ESP05','Tecnico Deportivo');

insert into especializacion_cursos(id_curso,id_especializacion,ciclo) values(1,1,'1');
insert into especializacion_cursos(id_curso,id_especializacion,ciclo) values(3,1,'1');
insert into especializacion_cursos(id_curso,id_especializacion,ciclo) values(5,1,'1');
insert into especializacion_cursos(id_curso,id_especializacion,ciclo) values(6,1,'1');
insert into especializacion_cursos(id_curso,id_especializacion,ciclo) values(7,1,'1');
insert into especializacion_cursos(id_curso,id_especializacion,ciclo) values(8,1,'1');
insert into especializacion_cursos(id_curso,id_especializacion,ciclo) values(2,1,'2');
insert into especializacion_cursos(id_curso,id_especializacion,ciclo) values(4,1,'2');
insert into especializacion_cursos(id_curso,id_especializacion,ciclo) values(9,1,'2');

insert into especializacion_cursos(id_curso,id_especializacion,ciclo) values(1,2,'1');
insert into especializacion_cursos(id_curso,id_especializacion,ciclo) values(3,2,'1');
insert into especializacion_cursos(id_curso,id_especializacion,ciclo) values(5,2,'1');
insert into especializacion_cursos(id_curso,id_especializacion,ciclo) values(6,2,'1');
insert into especializacion_cursos(id_curso,id_especializacion,ciclo) values(7,2,'1');
insert into especializacion_cursos(id_curso,id_especializacion,ciclo) values(8,2,'1');
insert into especializacion_cursos(id_curso,id_especializacion,ciclo) values(2,2,'2');
insert into especializacion_cursos(id_curso,id_especializacion,ciclo) values(4,2,'2');
insert into especializacion_cursos(id_curso,id_especializacion,ciclo) values(9,2,'2');


insert into especializacion_cursos(id_curso,id_especializacion,ciclo) values(1,3,'1');
insert into especializacion_cursos(id_curso,id_especializacion,ciclo) values(3,3,'1');
insert into especializacion_cursos(id_curso,id_especializacion,ciclo) values(5,3,'1');
insert into especializacion_cursos(id_curso,id_especializacion,ciclo) values(6,3,'1');
insert into especializacion_cursos(id_curso,id_especializacion,ciclo) values(7,3,'1');
insert into especializacion_cursos(id_curso,id_especializacion,ciclo) values(8,3,'1');
insert into especializacion_cursos(id_curso,id_especializacion,ciclo) values(2,3,'2');
insert into especializacion_cursos(id_curso,id_especializacion,ciclo) values(4,3,'2');
insert into especializacion_cursos(id_curso,id_especializacion,ciclo) values(9,3,'2');


insert into empleados(nombre,apellido_pa,apellido_ma,dni,sexo,fecha_nac,direccion,telefono,id_distrito) values ('FERNANDEZ QUISPE','SEGIO','ENRIQUE','72812569','M',now(),'Av Andres Avelino Caceres', '970125650',1);
insert into empleados(nombre,apellido_pa,apellido_ma,dni,sexo,fecha_nac,direccion,telefono,id_distrito) values ('Jonathan','Izaguirre','Colachagua','70875512','M',now(),'Av Andres Avelino Caceres', '927134123',2);
insert into empleados(nombre,apellido_pa,apellido_ma,dni,sexo,fecha_nac,direccion,telefono,id_distrito) values ('Mishell','Molina','Camarena','70222563','F',now(),'Santa Clara', '9123125662',1);
insert into empleados(nombre,apellido_pa,apellido_ma,dni,sexo,fecha_nac,direccion,telefono,id_distrito) values ('Danixza','Veli','Cardenas','12132569','F',now(),'Santa Anita', '920325620',3);
insert into empleados(nombre,apellido_pa,apellido_ma,dni,sexo,fecha_nac,direccion,telefono,id_distrito) values ('Andres','Garcia','Yauri','22842163','M',now(),'Los alamos', '941234123',4);
insert into empleados(nombre,apellido_pa,apellido_ma,dni,sexo,fecha_nac,direccion,telefono,id_distrito) values ('Franck','Arrieta','Guera','41231245','M',now(),'Av Andres Avelino Caceres', '923441021',5);
insert into empleados(nombre,apellido_pa,apellido_ma,dni,sexo,fecha_nac,direccion,telefono,id_distrito) values ('FERNANDEZ QUISPE ','SERGIO ','ENRIQUE','90921231','M',now(),'Av Andres Avelino Caceres', '923441021',5);
insert into empleados(nombre,apellido_pa,apellido_ma,dni,sexo,fecha_nac,direccion,telefono,id_distrito) values ('ANDRADE GARTNER',' JOSEPH ','FIAT','41231245','M',now(),'Av Andres Avelino Caceres', '923441021',5);
insert into empleados(nombre,apellido_pa,apellido_ma,dni,sexo,fecha_nac,direccion,telefono,id_distrito) values ('HERNANDEZ CHUJUTALLI ','JOSE ','EMILIANO','41231245','M',now(),'Av Andres Avelino Caceres', '923441021',5);
insert into empleados(nombre,apellido_pa,apellido_ma,dni,sexo,fecha_nac,direccion,telefono,id_distrito) values ('LUIS ERNESTO','SEMINARIO','SEMINARIO','41231245','M',now(),'Av Andres Avelino Caceres', '923441021',5);
insert into empleados(nombre,apellido_pa,apellido_ma,dni,sexo,fecha_nac,direccion,telefono,id_distrito) values ('JUAN FRANCISCO','CARDENAS','CASTILLO','41231245','M',now(),'Av Andres Avelino Caceres', '923441021',5);
insert into empleados(nombre,apellido_pa,apellido_ma,dni,sexo,fecha_nac,direccion,telefono,id_distrito) values ('EVA ROXANA','ALIAGA','ALIAGA','41231245','M',now(),'Av Andres Avelino Caceres', '923441021',5);

insert into estudiantes(nombres,apellido_pa,apellido_ma,dni,sexo,direccion,telefono,fecha_nac,estado,fecha_reg,id_distrito) values('Ricardo','Izaguirre','Colachagua','90123412','M','AV SANTA CLARA','903123941',now(),'Activo',now(),1);
insert into estudiantes(nombres,apellido_pa,apellido_ma,dni,sexo,direccion,telefono,fecha_nac,estado,fecha_reg,id_distrito) values('Jonathan','Izaguirre','Colachagua','12340123','F','AV SANTA CLARA','903123941',now(),'Activo',now(),1);
insert into estudiantes(nombres,apellido_pa,apellido_ma,dni,sexo,direccion,telefono,fecha_nac,estado,fecha_reg,id_distrito) values('Mishell','Molina','Camarena','90123412','F','AV SANTA CLARA','903123941',now(),'Activo',now(),1);
insert into estudiantes(nombres,apellido_pa,apellido_ma,dni,sexo,direccion,telefono,fecha_nac,estado,fecha_reg,id_distrito) values('Nicol','Cardenas','Veli','90124512','M','AV SANTA CLARA','903123941',now(),'Activo',now(),1);
insert into estudiantes(nombres,apellido_pa,apellido_ma,dni,sexo,direccion,telefono,fecha_nac,estado,fecha_reg,id_distrito) values('Danixza','Veli','Cardenas','41341212','M','AV SANTA CLARA','903123941',now(),'Activo',now(),1);
insert into estudiantes(nombres,apellido_pa,apellido_ma,dni,sexo,direccion,telefono,fecha_nac,estado,fecha_reg,id_distrito) values('Andrea','Reye','Ciri','03123412','M','AV SANTA CLARA','903123941',now(),'Activo',now(),1);
insert into estudiantes(nombres,apellido_pa,apellido_ma,dni,sexo,direccion,telefono,fecha_nac,estado,fecha_reg,id_distrito) values('Josselyn','Reyes','Neo','34125612','M','AV SANTA CLARA','903123941',now(),'Activo',now(),1);
insert into estudiantes(nombres,apellido_pa,apellido_ma,dni,sexo,direccion,telefono,fecha_nac,estado,fecha_reg,id_distrito) values('Frank','Arrieta','Guere','03123412','M','AV SANTA CLARA','903123941',now(),'Activo',now(),1);
insert into estudiantes(nombres,apellido_pa,apellido_ma,dni,sexo,direccion,telefono,fecha_nac,estado,fecha_reg,id_distrito) values('Jonathan','Izaguirre','Colachagua','12340123','F','AV SANTA CLARA','903123941',now(),'Activo',now(),1);
insert into estudiantes(nombres,apellido_pa,apellido_ma,dni,sexo,direccion,telefono,fecha_nac,estado,fecha_reg,id_distrito) values('Mishell','Molina','Camarena','90123412','F','AV SANTA CLARA','903123941',now(),'Activo',now(),1);
insert into estudiantes(nombres,apellido_pa,apellido_ma,dni,sexo,direccion,telefono,fecha_nac,estado,fecha_reg,id_distrito) values('Nicol','Cardenas','Veli','90124512','M','AV SANTA CLARA','903123941',now(),'Activo',now(),1);
insert into estudiantes(nombres,apellido_pa,apellido_ma,dni,sexo,direccion,telefono,fecha_nac,estado,fecha_reg,id_distrito) values('Danixza','Veli','Cardenas','41341212','M','AV SANTA CLARA','903123941',now(),'Activo',now(),1);
insert into estudiantes(nombres,apellido_pa,apellido_ma,dni,sexo,direccion,telefono,fecha_nac,estado,fecha_reg,id_distrito) values('Andrea','Reye','Ciri','03123412','M','AV SANTA CLARA','903123941',now(),'Activo',now(),1);
insert into estudiantes(nombres,apellido_pa,apellido_ma,dni,sexo,direccion,telefono,fecha_nac,estado,fecha_reg,id_distrito) values('Josselyn','Reyes','Neo','34125612','M','AV SANTA CLARA','903123941',now(),'Activo',now(),1);
insert into estudiantes(nombres,apellido_pa,apellido_ma,dni,sexo,direccion,telefono,fecha_nac,estado,fecha_reg,id_distrito) values('Frank','Arrieta','Guere','03123412','M','AV SANTA CLARA','903123941',now(),'Activo',now(),1);
insert into estudiantes(nombres,apellido_pa,apellido_ma,dni,sexo,direccion,telefono,fecha_nac,estado,fecha_reg,id_distrito) values('Jonathan','Izaguirre','Colachagua','12340123','F','AV SANTA CLARA','903123941',now(),'Activo',now(),1);
insert into estudiantes(nombres,apellido_pa,apellido_ma,dni,sexo,direccion,telefono,fecha_nac,estado,fecha_reg,id_distrito) values('Mishell','Molina','Camarena','90123412','F','AV SANTA CLARA','903123941',now(),'Activo',now(),1);
insert into estudiantes(nombres,apellido_pa,apellido_ma,dni,sexo,direccion,telefono,fecha_nac,estado,fecha_reg,id_distrito) values('Nicol','Cardenas','Veli','90124512','M','AV SANTA CLARA','903123941',now(),'Activo',now(),1);
insert into estudiantes(nombres,apellido_pa,apellido_ma,dni,sexo,direccion,telefono,fecha_nac,estado,fecha_reg,id_distrito) values('Danixza','Veli','Cardenas','41341212','M','AV SANTA CLARA','903123941',now(),'Activo',now(),1);
insert into estudiantes(nombres,apellido_pa,apellido_ma,dni,sexo,direccion,telefono,fecha_nac,estado,fecha_reg,id_distrito) values('Andrea','Reye','Ciri','03123412','M','AV SANTA CLARA','903123941',now(),'Activo',now(),1);
insert into estudiantes(nombres,apellido_pa,apellido_ma,dni,sexo,direccion,telefono,fecha_nac,estado,fecha_reg,id_distrito) values('Josselyn','Reyes','Neo','34125612','M','AV SANTA CLARA','903123941',now(),'Activo',now(),1);
insert into estudiantes(nombres,apellido_pa,apellido_ma,dni,sexo,direccion,telefono,fecha_nac,estado,fecha_reg,id_distrito) values('Frank','Arrieta','Guere','03123412','M','AV SANTA CLARA','903123941',now(),'Activo',now(),2);

insert into pagos(descripcion,monto) values('Matricula 2019 - Reinscripción', 250.00);
insert into pagos(descripcion,monto) values('CUOTA 01 CICLO 2019', 550.00);
insert into pagos(descripcion,monto) values('CUOTA 02 CICLO 2019', 550.00);
insert into pagos(descripcion,monto) values('CUOTA 03 CICLO 2019', 550.00);
insert into pagos(descripcion,monto) values('CUOTA 04 CICLO 2019', 550.00);
insert into pagos(descripcion,monto) values('CUOTA 05 CICLO 2019', 550.00);

insert into matriculas(id_empleado,id_especializacion,id_estudiante,fecha_reg,estado) values(1,1,1,now(),"Activo");
insert into estudiante_pagos(id_estudiante,id_pago,estado,fecha_pago,fecha_venc) values(1,2,"Pendiente",null,DATE_ADD(now(), INTERVAL 7 DAY));
insert into estudiante_pagos(id_estudiante,id_pago,estado,fecha_pago,fecha_venc) values(1,3,"Pendiente",null,DATE_ADD(now(), INTERVAL 30 DAY));
insert into estudiante_pagos(id_estudiante,id_pago,estado,fecha_pago,fecha_venc) values(1,4,"Pendiente",null,DATE_ADD(now(), INTERVAL 60 DAY));
insert into estudiante_pagos(id_estudiante,id_pago,estado,fecha_pago,fecha_venc) values(1,5,"Pendiente",null,DATE_ADD(now(), INTERVAL 90 DAY));
insert into estudiante_pagos(id_estudiante,id_pago,estado,fecha_pago,fecha_venc) values(1,6,"Pendiente",null,DATE_ADD(now(), INTERVAL 120 DAY));

insert into matriculas(id_empleado,id_especializacion,id_estudiante,fecha_reg,estado) values(2,2,2,now(),"Activo");
insert into estudiante_pagos(id_estudiante,id_pago,estado,fecha_pago,fecha_venc) values(2,2,"Pendiente",null,DATE_ADD(now(), INTERVAL 7 DAY));
insert into estudiante_pagos(id_estudiante,id_pago,estado,fecha_pago,fecha_venc) values(2,3,"Pendiente",null,DATE_ADD(now(), INTERVAL 30 DAY));
insert into estudiante_pagos(id_estudiante,id_pago,estado,fecha_pago,fecha_venc) values(2,4,"Pendiente",null,DATE_ADD(now(), INTERVAL 60 DAY));
insert into estudiante_pagos(id_estudiante,id_pago,estado,fecha_pago,fecha_venc) values(2,5,"Pendiente",null,DATE_ADD(now(), INTERVAL 90 DAY));
insert into estudiante_pagos(id_estudiante,id_pago,estado,fecha_pago,fecha_venc) values(2,6,"Pendiente",null,DATE_ADD(now(), INTERVAL 120 DAY));