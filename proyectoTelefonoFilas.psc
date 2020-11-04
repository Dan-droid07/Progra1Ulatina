Algoritmo TelefonoProyecto
	
	Definir i,f,f1,f2,f3,f4,f5,x,z,fila Como Entero;
	Definir af,agenda,contacto,contacto1 Como Caracter;
	Definir existe Como Logico;
	Definir agendaNum Como Entero;
	Dimension agenda[6,2];
	contacto=''; contacto1='';
	i=0;
	f1=1; f2=2; f3=2; f4=2; f5=2;
	Mientras f1=1 Hacer
	Escribir " Iniciando ";
	Escribir " 1. La agenda de contactos ";
	Escribir " ";
	Escribir " 2. Lista de aplicaciones ";
	Leer f;
	existe=Falso;
	
		Segun f Hacer
			
			
			1:   
				f2=2; f3=2; f4=2; f5=2; 
				
				Escribir "1. Agregar contacto";
				Escribir "2. Modificar contacto";
				Escribir "3. Eliminar contacto";
				Escribir "4. Buscar contacto" ;
				Escribir "5. Salir de Agenda" ;
				Leer f1;
				Segun f1 Hacer
					1:   
						Mientras f2=2 Hacer
							
							Escribir " La fila del contacto (0-5)";
							Leer i;
							Escribir "El nombre del contacto ";
							Leer agenda[i,0];
							Repetir
								Si agenda[i,0]='' Entonces
									Escribir " Debe rellenar el contacto ";
									Leer agenda[i,0];
								Fin Si
							Hasta Que agenda[i,0]<>''
						
							Escribir " El telefono del contacto ";
							Leer  agenda[i,1];
							Repetir
								Si agenda[i,1]='0' Entonces
									Escribir " Debe rellenar el contacto ";
									Leer agenda[i,1];
								Fin Si
							Hasta Que agenda[i,1]<>'0';
							Escribir i;
							Escribir  " Desea volver al menu(1) o agregar otro contacto(2)";
							leer f2;
							
							
						FinMientras
						
						
						
					2: 
						Mientras f3=2 Hacer
					    Escribir " Escribir la fila del contacto a modificar";
						Leer i;
						Escribir " El nuevo nombre a modificar ";
						Leer agenda[i,0];
						Escribir " El nuevo numero telefonico";
						Leer agenda[i,1];
						Escribir  " Desea volver al menu(1) o agregar otro contacto(2)";
						leer f3;
						f1=1;
					Fin Mientras
						
					3: 
						Mientras f4=2 Hacer
							
						Escribir " Ingrese la fila del contacto a eliminar";
						Leer i;
						Escribir " Seguro que quiere eliminar el contacto s/n";
						Leer af;
						Si af='s' Entonces
							agenda[i,0]='x';
							agenda[i,1]='x';
						
						Fin Si
						Escribir  " Desea volver al menu(1) o eliminar otro contacto(2)";
						leer f4;
						f1=1;
					Fin Mientras
					4:	
						Mientras f5=2 Hacer
						Escribir " Ingrese la fila del contacto deseado";
						Leer f;
						Escribir agenda[i,0],  agenda[i,1];
						Escribir  " Desea volver al menu(1) o buscar otro contacto(2)";
						leer f5;
						f1=1;
					Fin Mientras
				5:	
					f1=1;
						
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
