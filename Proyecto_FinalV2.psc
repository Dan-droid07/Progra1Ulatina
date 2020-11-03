Algoritmo Proyecto_Final
	
	//Definir variables
	
	Definir  i, m, n,  j, f2,f3,f1,x,z, numero_elementos Como Entero;
	Definir  nombre, agenda,nom,num, elementobuscado, elementos Como Caracter; 
	Definir  contacto,array Como Caracter;
	Definir existe, encontrado , repetir_ Como Logico;
	Definir agendaNum Como Entero;
	Dimension nombre[4]; //array
	Dimension contacto[4]; //array	nombres no repetidos tamanho 3 lineas
	Dimension matriz[6,2];
	
	
	
	// Inicializar variables
	
	
	nom=''; numero_elementos = 0; 
	num= ""; m = 0;
	i= 0; x=0; z=0;

	f1=1; f2=0; j =0; f3=0; m=0; n=0;
	nombre[0] = "Daniel"; nombre[1] = "Karen"; nombre[2] = ""; nombre[3] = "";
	contacto[0] = '87908374'; contacto[1] = '77777777'; 	contacto[2] = ''; 	contacto[3] = '';
	
	//Ejecutar Proceso 
	//MODULO 1
	
	Escribir " Iniciando ";
	Imprimir " 1. La agenda de contactos ";
		
		Si nombre[0] != "" Entonces
			Imprimir nombre[0] " y " contacto[0]  ;
		FinSi
			Si nombre[1] != "" Entonces
				Imprimir nombre[1] " y " contacto[1]  ;
			FinSi
			
			Si nombre[2] !="" Entonces
				Imprimir nombre[2] " y " contacto[2]  ;
			FinSi
			Si nombre[3] != "" Entonces
			Imprimir nombre[3] " y " contacto[3]  ;
	
	Fin Si

	

	Imprimir " ";
	Imprimir " 2. Lista de aplicaciones ";
	Imprimir "********************************************************************************";
	//MENU ACCIONES GENERICO
	Imprimir "";
	Escribir " Bienvenido al menu de aplicaciones, seleccione la opcion a ejecutar ";
	Escribir " ";
	Escribir " 1. Acceder a la agenda de contactos ";
	Escribir " ";
	Escribir " 2. Acceder al chat, para conversar con usuarios en su agenda de contactos. ";
	Escribir " ";
	Escribir " 3. Llamar por teléfono a cualquiera de los contactos almacenados o a algún otro número  ";
	Escribir " ";
	Escribir " 4. Abrir una aplicación de la lista  ";
	Escribir " ";
	Escribir " 5. Apagar el dispositivo,  ";
	Leer f1;
	
 //Creamos la matriz ELEMENTOS con el contenido en tabla 1 y asignamos valores 
	
	Segun f1 Hacer
		1:  
			// Menú de acciones para la agenda / MODULO AGENDA
			Imprimir "********************************************************************************";
			Escribir "Bienvenido al menu de agenda favor revisar y seleccionar la opcion requerida" ;
			Imprimir "";
			Escribir "1. Agregar contacto";
			Escribir "2. Modificar contacto";
			Escribir "3. Eliminar contacto";
			Escribir "4. Buscar contacto" ;
			Escribir "5. Salir de Agenda" ;
			Leer f2;
			Imprimir "********************************************************************************";
			Segun f2 Hacer
					
				1:
					//Creamos la matriz ELEMENTOS con el contenido  
					
					
					
				        existe = falso ;  // USAMOS EXISTE PARA VALIDAR QUE EL CONTACTO NO EXISTA
						
						// PROCESO CAPTURA DE DATOS Y ALMACENAMIENTO EN EL VECTOR
						    repetir_ = Verdadero; //usamos repetir para ingresar un nuevo contacto
								//Mientras repetir_ = Verdadero    Hacer //MODULO CELDAS VACIAS
									
									Mientras repetir_ = Verdadero  Y  x <= 4 Hacer
										
									
									//Para i = 0 Hasta 3-1 Con Paso 1 Hacer
									Repetir
										//Nombre CONTACTO
									 
										Escribir "Ingrese el nombre del contacto ";
										Leer nom;
										Si nom = () Entonces
											Imprimir "Debe ingresar un nombre valido";
										SiNo
											Imprimir "El nombre ingresado es: " nom    ;
										Fin Si
										
									Hasta Que nom != ()
									
									//Numero contacto
									Repetir
										Escribir "Ingrese el telefono del contacto ";
										Leer num;
										Si num = () Entonces
											Imprimir "Debe ingresar un numero valido";
										SiNo
											Imprimir "El numero ingresado es: " num    ;
										Fin Si
									Hasta Que num != ();
									
									
									
											
										// VAMOS A RECORRER EL ARRAY PARA VALIDAR SI EL NOMBRE EXISTE O NO
										Para i=0 Hasta 4 - 1  Con Paso 1 Hacer
						
							     Si nom = nombre[i] Entonces
									 Imprimir "Nombre ya existe como " nombre[i];
									 existe = Verdadero;
									 Fin Si
							Fin Para
							
							// VAMOS A RECORRER EL ARRAY PARA VALIDAR SI EL NUMERO EXISTE O NO
							Para i=0 Hasta 4 - 1  Con Paso 1 Hacer
								
								Si num = contacto[i] Entonces
									Imprimir "Numero contacto ya existe como " contacto[i];
									existe = Verdadero;
								Fin Si
							Fin Para
							
							
							
							
							
							Si existe = falso Entonces
								
								nom = nombre[j];
 								x = x  + 1;   // * REVISAR 
							SiNo
								Imprimir "El nombre ya existe en la agenda, no se puede almacenar y se debe ingresar uno distinto";
							Fin Si
							
							existe = Falso; // Comenzamos y terminamos con existe = falso
							
						          
							//PREGUNTAR SI SE REQUIERE INGRESAR UN NUEVO USUARIO O NO
							Escribir "Si desea ingresar un nuevo contacto, favor escriba 1 ";
							Leer m;
							Si m = 1 Entonces
								repetir_ = Verdadero;
							SiNo
								repetir_ = Falso;
							Fin Si
							
									
										FinMientras
										
										
						
							
								//	FinMientras
								
								//Imprimir la matriz
								//Ciclo repetir hasta para imprimir la matriz de contactos y guardar valores
				
							
				
		
					
			
					
				2:
					Imprimir "I am the best";
				3:
					Imprimir "I am the best";
				4:
					Imprimir "I am the best";
				5:
					Imprimir "I am the best";
					
			Fin Segun
			
			
		2:
			Imprimir "You the best";
		3:
			Imprimir "You the best";
		4:
			Imprimir "You the best";
		5:
			Imprimir "You the best";
			
	Fin Segun
	
	
	//Imprimir variables
	
	
	
FinAlgoritmo