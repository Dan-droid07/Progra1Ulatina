Funcion validarContacto(agenda,agendaNum,car,fila)
	
	Si agenda[fila,0]=agenda[fila,0] Entonces
		Escribir " Datos nuevamente ";
	Fin Si
		
Fin Funcion

Funcion posicionVacia(agenda,agendaNum,car,fila)
	
	si agenda[fila,0]>6 Entonces
		Escribir " La agenda esta llena";
		
	FinSi
	
FinFuncion

Algoritmo TelefonoProyecto
	
	Definir i,f,f1,x,z,fila Como Entero;
	Definir agenda,car Como Caracter;
	Definir existe Como Logico;
	Definir agendaNum Como Entero;
	Dimension agenda[6,2];
	Dimension agendaNum[6,2];
	car='';
	i=0;
	f1=1;
	Escribir " Iniciando ";
	Escribir " 1. La agenda de contactos ";
	Escribir " ";
	Escribir " 2. Lista de aplicaciones ";
	Leer f;
	existe=Falso;
	Segun f Hacer
		
		
		1:
			Escribir "1. Agregar contacto";
			Escribir "2. Modificar contacto";
			Escribir "3. Eliminar contacto";
			Escribir "4. Buscar contacto" ;
			Escribir "5. Salir de Agenda" ;
			Leer f1;
			Segun f1 Hacer
				1:
					Mientras f1=1 Hacer
						Escribir "Ecribir la fila donde ingresar el contacto (0-5)";
						leer fila;
			
						Escribir "El nombre del contacto ";
						
					Leer agenda[fila,0];
					Repetir
					Si agenda[fila,0]='' Entonces
						Escribir " Debe rellenar el contacto ";
						Leer agenda[fila,0];
				    Fin Si
				Hasta Que agenda[fila,0]!=''
					Escribir " El telefono del contacto ";
					Leer  agendaNum[fila,1];
					Repetir
						Si agendaNum[fila,1]=0 Entonces
							Escribir " Debe rellenar el contacto ";
							Leer agendaNum[fila,1];
						Fin Si
					Hasta Que agendaNum[fila,1]<>0;
					Escribir agenda[fila,0], agendaNum[fila,1];
					validarContacto(agenda,agendaNum,car,fila);
					posicionVacia(agenda,agendaNum,car,fila);
					
					
					
				FinMientras
				
			
					
			2: 
				Escribir " La fila del contacto a modificar (0-15)" ;
				Leer fila;
				Escribir " El nuevo nombre a modificar ";
				Leer agenda[fila,0];
				Escribir " El nuevo numero moficiar ";
				Leer agendaNum[fila,1];
				
				
					
				3:
					
				4:	
					
				5:	
					
				De Otro Modo:
					escribir " Digite uno de los numeros presentes ";
			Fin Segun
		2:
			Escribir "";
		
		De Otro Modo:
			escribir " Dato invalido ";
	Fin Segun
	
	
	
	
	
	
	
	
	
	
	
FinAlgoritmo
