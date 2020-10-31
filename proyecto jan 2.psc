Funcion inicializarContacto(agenda,agendaNum)
	Definir x,z Como Entero;
	x=0; z=0;
	Para x<-0 Hasta 6-1 Con Paso 1 Hacer		
		Para z<-0 Hasta 2-1 Con Paso 1 Hacer
			agenda[x,0] <- "";
		FinPara
	FinPara
	Para x<-0 Hasta 6-1 Con Paso 1 Hacer		
		Para z<-0 Hasta 2-1 Con Paso 1 Hacer
			agendaNum[x,1] <- 0;
		FinPara
	FinPara
	
	
Fin Funcion
	

Funcion validarContacto(agenda,agendaNum,nom,num)
	Definir i,j Como Entero;
	i=0; j=0;
	Si nom=agenda[i,j] Entonces
		Escribir " Datos nuevamente ";
	Fin Si
	
Fin Funcion

Funcion posicionVacia(agenda,agendaNum,car,fila)
	Definir x,z Como Entero;
	x=0; z=0;
	si agenda[x,z]>'6' Entonces
		Escribir " La agenda esta llena";
		
	FinSi
	
FinFuncion

Algoritmo TelefonoProyecto
	
	Definir i,f,f1,f2,x,z,num Como Entero;
	Definir agenda,nom Como Caracter;
	Definir existe Como Logico;
	Definir agendaNum Como Entero;
	Dimension agenda[6,2];
	Dimension agendaNum[6,2];
	nom='';
	num=0;
	i=0; x=0; z=0;
	f1=1; f2=2;
	Escribir " Iniciando ";
	Escribir " 1. La agenda de contactos ";
	Escribir " ";
	Escribir " 2. Lista de aplicaciones ";
	Leer f;
	existe=Falso;
	inicializarContacto(agenda,agendaNum);
	Mientras f1=1 Hacer
	Segun f Hacer
		
		
		1:   
			
			f2=2;
			Escribir "1. Agregar contacto";
			Escribir "2. Modificar contacto";
			Escribir "3. Eliminar contacto";
			Escribir "4. Buscar contacto" ;
			Escribir "5. Salir de Agenda" ;
			Leer f1;
			Segun f Hacer
				1:
					
					Mientras f2=2 Hacer
						
						
						Escribir "El nombre del contacto ";
						Leer nom;
						
						Repetir
							Si nom='' Entonces
								Escribir " Debe rellenar el contacto ";
								Leer nom;
							Fin Si
						Hasta Que nom<>''
						Escribir " El telefono del contacto ";
						Leer  num;
						Repetir
							Si num=0 Entonces
								Escribir " Debe rellenar el contacto ";
								Leer num;
							Fin Si
						Hasta Que num<>0;
						validarContacto(agenda,agendaNum,nom,num);
						agenda[x,0]=nom;
						agendaNum[x,1]=num;
					     Escribir agenda[x,0];
						posicionVacia(agenda,agendaNum,num,nom);
						
						Escribir  " Desea volver al menu(1) o agregar otro contacto(2)";
						leer f2;
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
	
FinMientras
	
	
	
	
	
	
	
	
	
FinAlgoritmo
