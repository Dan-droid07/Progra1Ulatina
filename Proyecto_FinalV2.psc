SubAlgoritmo validarContacto(nombre)
	definir i, limite como entero;
	definir nom Como Caracter;
	limite = 5;
	nom = " ";
	Para i=0 Hasta limite - 1   Con Paso 1 Hacer
		
		Si nom = nombre[i] Entonces
			Imprimir "Nombre ya existe como " nombre[i] " y no puede ser utilizado nuevamente";
			existe = Verdadero;
		Fin Si
		
	Fin Para
Fin SubAlgoritmo




Algoritmo Proyecto_Final
	
	//Definir variables
	
	Definir   i, n, m, j,z,k, f2,f3,f1,x,limite, numero_elementos, cantidad_elementos, telefono, posicion1, posicion2, posicion3, posicion4, cantidad Como Entero;
	Definir   nom, nombre, agenda, elementobuscado, elementos, array,contacto,num, respuesta, ejecutar , ejecutar1, ejecutar2, buscar, nomAux,numAux Como Caracter; 
	Definir almacenado, confirmacion, cambio, mensaje, palabra, texto1, mensajes Como Caracter;
	Definir existe, encontrado , repetir_ Como Logico;
	Definir agendaNum Como Entero;	
	
	// Inicializar variables
	
	limite = 5; cantidad = 9000; 
	nom=''; numero_elementos = 0; cantidad_elementos = 0; k = 0; texto1 = ""; x = 0;
	num = " "; m = 0; telefono = 0;  respuesta = " N ";  nomAux = ""; cambio = " "; mensaje = "";
	i= 0; x=0; z=0 ;  ejecutar = " "; buscar = " ";      numAux= " "; confirmacion = ""; palabra = " ";
	
  repetir_ = Falso;
	f1=1; f2=0; j =0; f3=0;  n=0;
	
	//Definir dimensiones de arrays
	Dimension nombre[5]; //array de nombres 
	Dimension contacto[5]; //array	numeros telefonicos
	Dimension almacenado[10]; // para almacenar array nombre y array contacto
	Dimension matriz[6,2];
	Dimension mensajes[cantidad];
	
	
	//creacion de array 2 dimensiones de nx2
	nombre[0] = "Daniel"; nombre[1] = "Karen"; nombre[2]= (); nombre[3]= (); nombre[4]= ();
	contacto[0] = "87908374"; contacto[1] = "87675634"; contacto[2] = ();  contacto[3] = (); contacto[4] = (); 
	
	//Ejecutar Proceso 
	//MODULO 1
	Mientras repetir_ = Falso Hacer  //ciclo mientras para regreasr al menu principal 
	Escribir " Iniciando ";
	Imprimir " ";
	
	Imprimir " 1. La agenda de contactos ";
	Imprimir " ";
	//Imprimir "Contacto #1 es : " + nombre[0] " y su numero telefono es: " + contacto[0];
	//Imprimir "Contacto #2 es : " + nombre[1] " y su numero telefono es: " + contacto[1];
	
	// VAMOS A CREAR UN 3ER ARREGLO PARA ALMACENAR DE FORMA CONJUNTA = MISMA FILA
	//DISTINTA COLUMNA LOS CONTACTOS.
	k = 0;
	Imprimir "";
	Imprimir "Array #3";
	Para i = 0 Hasta limite - 1  Con Paso 1 Hacer
		almacenado[k] = nombre[i]; //almacena nombre en posicion 1
		Si nombre[i] <> () Entonces
			Imprimir " Nombre: " + almacenado[k] ;
		Fin Si
		
		k = k +1;
		
		almacenado[k] = contacto[i]; //contacto = 1
		Si contacto[i] <> () Entonces
			Imprimir " Telefono: " + almacenado[k] ;
		Fin Si
		
		k = k +1;
		
		
	Fin Para
	
	Imprimir "";
	Para i = 0 Hasta limite -1 Con Paso 1 Hacer
		Si nombre[i] <> () Entonces
			Imprimir "Los contactos registrados de forma conjunta son:  " + nombre[i] + " " + contacto[i];
		Fin Si
		
	Fin Para
	
	Imprimir "";
		
	//	Si nombre[numero_elementos] != " " Entonces
		//	Imprimir nombre[numero_elementos] " "  contacto[numero_elementos]  ;
		//FinSi
			//Si nombre[numero_elementos] != "" Entonces
				//Imprimir nombre[numero_elementos] "  " contacto[numero_elementos]  ;
			//FinSi
			
		//	Si nombre[numero_elementos] !="" Entonces
			//	Imprimir nombre[numero_elementos] " y " contacto[numero_elementos]  ;
			//FinSi
			//Si nombre[numero_elementos] != "" Entonces
			// Imprimir nombre[numero_elementos] " y " contacto[numero_elementos]  ;
	
	// Fin Si

	

	Imprimir " ";
	Imprimir " ";
	Imprimir "*******************************************************************************************";
	Imprimir " ";
	Imprimir " 2. Lista de aplicaciones ";
	Escribir "Bienvenido esta es la lista de aplicaciones disponible en su dispositivo: " ;
	Imprimir "";
	Escribir "WhatsApp";
	Escribir "Facebook";
	Escribir "Agenda";
	Escribir "Marcador" ;
	Escribir "Banco BCR" ;
	Escribir "Instagram" ;
	Imprimir " ";
	Imprimir "*******************************************************************************************";
	//MENU ACCIONES GENERICO
	Imprimir "";
	Escribir " Bienvenido al menu de acciones, seleccione la opcion a ejecutar ";
	Escribir " ";
	Escribir " 1. Acceder a la agenda de contactos ";
	Escribir " ";
	Escribir " 2. Acceder al chat de WhatsApp, para conversar con usuarios en su agenda de contactos. ";
	Escribir " ";
	Escribir " 3. Llamar por telefono a cualquiera de los contactos almacenados o a algun otro numero  ";
	Escribir " ";
	Escribir " 4. Abrir una aplicacion de la lista  ";
	Escribir " ";
	Escribir " 5. Apagar el dispositivo,  ";
	Leer f1;
 //Creamos Menú de acciones para la agenda / MODULO AGENDA
	
	Segun f1 Hacer
		1:  
		
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
					//Creamos VECTORES
					
						
						// PROCESO CAPTURA DE DATOS Y ALMACENAMIENTO EN EL VECTOR
						   repetir_ = Verdadero; //usamos repetir para ingresar un nuevo contacto
								//Mientras repetir_ = Verdadero    Hacer //MODULO CELDAS VACIAS
									
									Mientras repetir_ = Verdadero  Hacer
										
										
									existe = falso ;  // USAMOS EXISTE PARA VALIDAR QUE EL CONTACTO NO EXISTA

									// VALIDACION , INGRESO, PROCESO DE NOMBRES	
									Mientras x < limite Hacer
									//Para i = 0 Hasta 3-1 Con Paso 1 Hacer
										Repetir
											
										//Nombre CONTACTO
									 
										      Escribir "Ingrese un nombre de contacto valido ";
										       Leer nom;
										        Si nom = () Entonces
											        Imprimir "Debe ingresar un nombre valido";
													    existe = Verdadero;
										        SiNo
											        Imprimir "El nombre ingresado es: " nom    ;
														  existe = Falso;
										        Fin Si
									
												// VAMOS A RECORRER EL ARRAY PARA VALIDAR SI EL NOMBRE EXISTE O NO
												Si existe = Falso Entonces
													 validarContacto(nombre); //INVOCAR SUBPROCESO
									       //  Para i=0 Hasta limite - 1   Con Paso 1 Hacer
										
										       //     Si nom = nombre[i] Entonces
											       //       Imprimir "Nombre ya existe como " nombre[i] " y no puede ser utilizado nuevamente";
												       //      existe = Verdadero;
													       //Fin Si
														 
													  // Fin Para
												 Fin Si
											// SI EL CONTACTO NO EXISTE ENTONCES VAMOS A RECORRER EL ARRAY PARA VALIDAR 
											//SI LA CELDA ESTA VACIA Y ASIGNAMOS EL NUEVO NOMBRE DE CONTACTO
											Si existe = Falso Entonces
															     x= 0;
															    Para i=0 Hasta limite - 1  Con Paso 1 Hacer
																	Si nombre[i] <> () Entonces
																			 x = x + 1;
																			 Imprimir "Contador: " + ConvertirATexto(x);
																			  FinSi
																			  
															    Fin Para
															  	
															Fin Si
											Si existe = Falso Entonces					
																Para i = 0 Hasta limite - 1  Con Paso 1 Hacer
																	Si  i = x Entonces
																		nombre[i] = nom;
																		Imprimir "Nombre en i = x es: " + nombre[i] "y se encuenta en la posicion: " + ConvertirATexto(i);
																		Escribir "ESTA ES LA POSICION " + ConvertirATexto(i) ;
																		 existe = Falso;
																	Fin Si
																Fin Para
															
												FinSi		
													    Si x = limite  Entonces
											          existe = Falso;
										 
											       Fin Si
									
											   Hasta Que existe = Falso;
											   
											   
								   // ACA VA EL CODIGO DE LA SOLICITUD DE LOS NUMEROS DE TELEFONO
											   //Ciclo solicitud Numero contacto
											   
								   Repetir
									       Escribir "Ingrese un numero de telefono contacto para " + nom " que sea valido " ;
									       Leer num;
									        Si num = () Entonces
											       Imprimir "Debe ingresar un numero valido";
											       existe = Verdadero; //si el numero es nulo se debe repetir el ciclo de solicitud del #
									        SiNo
												    Imprimir "El numero ingresado es: " num    ;
												    existe = Falso;
									       Fin Si
								   
								   
										   // VAMOS A RECORRER EL ARRAY PARA VALIDAR SI EL NUMERO EXISTE O NO
										   Si existe = Falso Entonces
								           Para i=0 Hasta limite - 1  Con Paso 1 Hacer
									            Si num = contacto[i] Entonces
										             Imprimir "Numero contacto ya existe como " contacto[i]  " y no puede ser utilizado nuevamente";
												      // Imprimir "Se encuentra en la posicion # : " + ConvertirATexto(i);
										             existe = Verdadero;
									            Fin Si
										        Fin Para
											  FinSi
											
											 //********************
											 // SI EL NUMERO NO EXISTE ENTONCES VAMOS A RECORRER EL ARRAY PARA VALIDAR 
											 //SI LA CELDA ESTA VACIA Y ASIGNAMOS EL NUEVO NUMERO DE CONTACTO
											 Si existe = Falso Entonces
												 x= 0;
												 Para i=0 Hasta limite - 1  Con Paso 1 Hacer
													 Si contacto[i] <> () Entonces
														 x = x + 1;
														 Imprimir "Contador: " + ConvertirATexto(x);
													 FinSi
													 
												 Fin Para
												 
											 Fin Si
											 Si existe = Falso Entonces					
												 Para i = 0 Hasta limite - 1  Con Paso 1 Hacer
													 Si  i = x Entonces
														 contacto[i] = num;
														 Imprimir "Num en i = x es: " + contacto[i] "y se encuenta en la posicion: " + ConvertirATexto(i);
														 Escribir "ESTA ES LA POSICION " + ConvertirATexto(i) ;
														 
													 Fin Si
												 Fin Para
												 existe = Falso;
											 FinSi	
											 
											 //ESTRUCTURA DE SELECCION PARA DETERMINAR SI LLENAMOS O NO EL ARRAY
											 Si x = 4  Entonces
												 x = limite;
												 
											 Fin Si
											 
											 
											 
											 
							     Hasta Que existe = Falso;
								 
							 Fin Mientras
							   
							
							
						          
							// PREGUNTAR SI SE REQUIERE INGRESAR UN NUEVO USUARIO O NO
						   Escribir "Si desea ingresar un nuevo contacto, favor escriba 1 o 0 para volver al menu principal ";
							   Leer n;
							   Si n = 1 Entonces
								   repetir_ = Verdadero;
								      Si x = limite Entonces
									     Imprimir "Se ha alcanzado el limite de espacio para almancenar contactos . favor eliminar o modificar los existentes para añadir nuevos";
								      Fin Si
							   SiNo
							   repetir_ = Falso;
							   Fin Si
							
						  FinMientras
										
						 
							  

						
							
								//	FinMientras
								
								//Imprimir la matriz
								//Ciclo repetir hasta para imprimir la matriz de contactos y guardar valores

					
					  2:  //SUBPROCESO MODIFICAR CONTACTO
						  
						  
						  Repetir
							  
						 
						  Escribir "Ingrese el nombre del contacto que desea modificar ";
						  Leer nom;
						  Si nom = () Entonces
							  Imprimir "Debe ingresar un nombre valido";
							  existe = Verdadero;
						  SiNo
							  Imprimir "El nombre ingresado es: " nom    ;
							  existe = Falso;
							  Escribir "Ingrese un numero de telefono para " + nom " que sea valido " ;
							  Leer num;
							  Si num = () Entonces
								  Imprimir "Debe ingresar un numero valido para " + nom;
								  existe = Verdadero; //si el numero es nulo se debe repetir el ciclo de solicitud del #
							  SiNo
								  Imprimir "El numero ingresado es: " num    ;
								  existe = Falso;
							  Fin Si
						  Fin Si
						  
						  // VAMOS A RECORRER EL ARRAY PARA VALIDAR SI EL NOMBRE EXISTE O NO
						  //SUBPROCESO VALIDAR NOMBRE CONTACTO Y NUMERO TELEFONO		
						  ejecutar1= "Y";
						  ejecutar2= "Y";
						 
						  Si existe = Falso Entonces  // ESTRUCUTRA DEL NOMBRE INGRESADO ES VALIDA Y SIRVE PARA ENTRAR AL CICLO DE VALIDAR NOMBRE EN EL ARRAY
							  Para i = 0 Hasta limite - 1   Con Paso 1 Hacer
								  Si nom = nombre[i] Entonces
									  Imprimir " ";
									  Imprimir "Nombre ingresado existe en contactos como " nombre[i] " y fue agendado con el numero de telefono : " contacto[i] ;
									  Imprimir "Nombre se encuentra en la posicion " + ConvertirATexto(i) " del array";
									  existe = Falso;  // DETECTAMOS NOMBRE EXISTE Y SALIMOS DE LA ESTRUCTURA REPETITIVA
									  ejecutar1 = "N";
									  telefono = -1;
								  Fin Si
							  Fin Para
							  
							  Para i = 0 Hasta limite - 1   Con Paso 1 Hacer
								  Si num = contacto[i] Entonces
									  Imprimir "Numero ingresado existe para " nom " y es: " contacto[i] ;
									  Imprimir "Numero se encuentra en la posicion " + ConvertirATexto(i) " del array";
									  existe = Falso;  // DETECTAMOS NOMBRE EXISTE Y SALIMOS DE LA ESTRUCTURA REPETITIVA
									  ejecutar2 = "N";
									  telefono = -1;
								  Fin Si
							  Fin Para

							  //VALIDACION#1 NOMBRE Y NUMERO EXISTEN PEEERO NO PERTENECEN AL MISMO CONTACTO
							  posicion1 =0;
							  posicion2= 0;
							  Si ejecutar1 = "N" Y ejecutar2= "N" Entonces
								  
								  Para i = 0 Hasta limite -1  Con Paso 1 Hacer
									  Para j = 0 Hasta limite - 1 Con Paso 1 Hacer
										  Si nom = nombre[i] Entonces
											  posicion1 = i;  
											  
											FinSi 
											Si num = contacto[j] Entonces
												posicion2 = j;  
											FinSi 
										  
									  Fin Para
								  Fin Para
								  
								  Si posicion1 <> posicion2 Entonces
									  Imprimir "La posicion del nombre es: " + ConvertirATexto(posicion1) + " La posicion del numero telefonico es: " + ConvertirATexto(posicion2);
									  Imprimir " ";
									  Imprimir "El nombre recien ingresado como: " +nom +" , NO existe para el numero de telefono : " + num " , por lo cual no se puede modificar contacto";
									  Imprimir " ";
									  
								  FinSi
							  FinSi
							  
							  
						  
							  //VALIDACION#2 NO EXISTEN NI EL NOMBRE NI EL NUMERO DE TELEFONO
							  Si ejecutar1 = "Y" Y ejecutar2= "Y" Entonces
								  Imprimir " ";
								  Imprimir "El nombre recien ingresado como: " +nom +" , NO existe NI tampoco el numero de telefono : " + num " , por lo cual no se puede modificar contacto";
								  Imprimir " ";
								  //PREGUNTAR SI SE REQUIERE BUSCAR UN NUEVO USUARIO O NO
								  Escribir "Si desea buscar un nuevo contacto, favor digite Y o N para volver al menu principal ";
								  Leer buscar;
								  Si buscar = "Y" Entonces
									  existe = Verdadero;
								  Sino
									  existe = Falso; // PARA SALIR DEL CICLO/SUBPROCESO DE ELIMINAR CONTACTO
									  repetir_ = Falso; // PARA IR AL MENU PRINCIPAL
									  
								  Fin Si
								  
							  Fin Si 
							  //VALIDACION#3 EL NOMBRE EXISTE EN LA AGENDA PERO NO EL NUMERO DE TELEFONO
							  Si ejecutar2 = "Y" Y ejecutar1 = "N" Entonces
								  Imprimir " ";
								  Imprimir "***El numero de telefono recien ingresado no existe para el contacto: " + nom " , por lo cual no se puede modificar contacto *** ";
								  Imprimir " ";
								  //PREGUNTAR SI SE REQUIERE BUSCAR UN NUEVO USUARIO O NO
								  Escribir "Si desea buscar un nuevo contacto, favor digite Y o N para volver al menu principal ";
								  Leer buscar;
								  Si buscar = "Y" Entonces
									  existe = Verdadero;
								  Sino
									  existe = Falso; // PARA SALIR DEL CICLO/SUBPROCESO DE ELIMINAR CONTACTO
									  repetir_ = Falso; // PARA IR AL MENU PRINCIPAL
									  
								  Fin Si
							  Fin Si 
							  //VALIDACION#4 EL TELEFONO EXISTE EN LA AGENDA PERO NO EL NOMBRE DEL CONTACTO
							  Si ejecutar1 = "Y" Y ejecutar2 = "N" Entonces
								  Imprimir " ";
								  Imprimir "***El nombre recien ingresado no existe para el contacto: " + nom " , por lo cual no se puede modificar contacto*** ";
								  Imprimir " ";
								  
								  //PREGUNTAR SI SE REQUIERE BUSCAR UN NUEVO USUARIO O NO
								  Escribir "Si desea buscar un nuevo contacto, favor digite Y o N para volver al menu principal ";
								  Leer buscar;
								  Si buscar = "Y" Entonces
									  existe = Verdadero;
								  Sino
									  existe = Falso; // PARA SALIR DEL CICLO/SUBPROCESO DE ELIMINAR CONTACTO
									  repetir_ = Falso; // PARA IR AL MENU PRINCIPAL
									  
								  Fin Si
							  Fin Si 
							  
							  
							  //ACCION A TOMAR SI EXISTEN TANTO EL NOMBRE COMO EL NUMERO Y PERTENECEN AL MISMO CONTACTO
							  posicion3 =0;
							  posicion4= 0;
							  Si ejecutar1 = "N" Y ejecutar2= "N" Entonces
								  // VAMOS A CREAR UN 3ER ARREGLO PARA ALMACENAR DE FORMA CONJUNTA = MISMA FILA
								  //DISTINTA COLUMNA LOS CONTACTOS.
								  k = 0;
								  Imprimir "";
								  Imprimir "Array #3";
								  Para i = 0 Hasta limite - 1  Con Paso 1 Hacer
									  almacenado[k] = nombre[i]; //almacena nombre en posicion 1
									  Imprimir " Nombre: " + almacenado[k] ;
									  k = k +1;
									  
									  almacenado[k] = contacto[i]; //contacto = 1
									  Imprimir " Telefono: " + almacenado[k] ;
									  k = k +1;

									  
								  Fin Para
								  
								  Imprimir "";
								  Para i = 0 Hasta 9 Con Paso 1 Hacer
									  Imprimir "Los contactos registrados de forma conjunta son:  " + almacenado[i];
								  Fin Para
								  
								  Imprimir "";
								  
								  //VAMOS A RECORRER EL ARRAY PARA REVISAR si ese número de
								  // teléfono aparece asociado a otro contacto distinto del ingresado
								  Para i = 0 Hasta 9  Con Paso 1 Hacer
									  //Para j = 0 Hasta limite - 1 Con Paso 1 Hacer
										  Si nom = almacenado[i] Entonces
											  posicion3 = i;  
											  i = i +1;
										  FinSi 
										  Si num = almacenado[i] Entonces
											  posicion4 = i;  
										  FinSi 
									  //FinPara
									  
										  Si posicion4 = posicion3+1  Entonces
											  i = i -1;
											  Repetir
												  Imprimir " ";
												  Imprimir "el valor de la posicion #3 es : "+ConvertirATexto(posicion3);
												  Imprimir "el valor de la posicion #4 es : "+ConvertirATexto(posicion4);
												  
												  Escribir "Ingrese el nombre del nuevo contacto ";
												  Leer nomAux;
												  Si nomAux = () Entonces
													  Imprimir "Debe ingresar un nombre valido";
													  existe = Verdadero;
												  SiNo
													  Imprimir "El nombre ingresado es: " nomAux    ;
													  Imprimir " ";
													  
													  Escribir "Ingrese un numero de telefono para " + nomAux " que sea valido " ;
													  Leer numAux;
													  Si numAux = () Entonces
														  Imprimir "Debe ingresar un numero valido para " + nomAux;
														  existe = Verdadero; //si el numero es nulo se debe repetir el ciclo de solicitud del #
													  SiNo
														  Imprimir "El numero ingresado es: " numAux    ;
														  Imprimir " ";
													 
													  
													  
													  Escribir "Desea confirmar la modificacion del nombre por " + nomAux + "favor digitar 1 para confirmar o 0 para finalizar";
													  Leer cambio;
													  Si cambio = "1" Entonces
														  nom = nomAux;
														  //ME DEVUELVO UNA POSICION PARA SOBRESCRIBIR EL NOMBRE EN NOM
														  Si posicion3 = 0 Entonces
															  i = 0;														 
														  Fin Si
														  Si posicion3 = 2 Entonces
															  i = 1;														 
														  Fin Si
														  Si posicion3 = 4 Entonces
															  i = 2;														 
														  Fin Si
														  Si posicion3 = 6 Entonces
															  i = 3;														 
														  Fin Si
														  Si posicion3 = 8 Entonces
															  i = 4;														 
														  Fin Si
														  Imprimir "valor de I " +ConvertirATexto(i);
														  nombre[i]  = nomAux;
														  
														  
														  num = numAux;
														  contacto[i] = num;
														  existe = Falso;
														  
														
													  SiNo
														  cambio = "0";
														  existe = Falso;
														  repetir_ = Falso;
													  Fin Si
													  
													  //SI CONFIRMAMOS QUE LA MODIFICACION DEL CONTACTO ES POSITIVA INGRESAMOS A ESTE CICLO
											     //	  Si cambio = "1" Entonces
														  
													  
													       //  Escribir "Ingrese un numero de telefono para " + nomAux " que sea valido " ;
													       //  Leer numAux;
													       //  Si numAux = () Entonces
														        //   Imprimir "Debe ingresar un numero valido para " + nomAux;
														          //    existe = Verdadero; //si el numero es nulo se debe repetir el ciclo de solicitud del #
													           //  SiNo
														        //   Imprimir "El numero ingresado es: " numAux    ;
														        //   Imprimir " ";
														         //   Escribir "Desea confirmar la modificacion del numero por " + numAux " favor digitar 1 para confirmar o 0 para finalizar";
														         //   Leer cambio;
														          //  Si cambio = "1" Entonces
															          //   num = numAux;
															          //   contacto[i] = num;
															         //    existe = Falso;
															  
																	     //  SiNo
																			     
															          //  existe = Falso;
																		   //    repetir_ = Falso;
															  
															 
														         //   Fin Si
														 
													         Fin Si
														      Fin Si
													 // Fin Si 
												  Escribir "El valor de nom luego del intercambio es : " + nom;
												  Escribir "El valor de num luego del intercambio es : " + num;
												  
											  
												  
												  
											  Hasta Que existe = Falso;
											  
										  FinSi
										  posicion3 = 6;
										  posicion4= 8;
									  //Fin Para
								 Fin Para
								  
								  
							 FinSi 
							 
							 //PREGUNTAR SI SE REQUIERE ELIMINAR UN NUEVO USUARIO O NO
							 
							     Imprimir "Si desea modificar un nuevo contacto, favor escriba 1 o 0 para volver al menu principal ";
							        Leer n;
							      Si n = 1 Entonces
								       existe = Verdadero;
							      Sino
								 
								     existe = Falso; // PARA SALIR DEL CICLO/SUBPROCESO DE ELIMINAR CONTACTO
								     repetir_ = Falso; // PARA IR AL MENU PRINCIPAL
							      Fin Si	
							 
							         // existe = Falso;
						  
						  FinSi
					  
					  
						  
					  Hasta Que existe = Falso;

					
					
					//*******************************************************************************************
					//WORKAROUND REGRESAR AL MENU	
					
					//SUBPROCESO ELIMINAR CONTACTO*****
				3:
					
					
					//Nombre CONTACTO
					Repetir
						
					Escribir "Ingrese el nombre del contacto que desea eliminar ";
					Leer nom;
					Si nom = () Entonces
						Imprimir "Debe ingresar un nombre valido";
						existe = Verdadero;
					SiNo
						Imprimir "El nombre ingresado es: " nom    ;
						existe = Falso;
					Fin Si
					
					// VAMOS A RECORRER EL ARRAY PARA VALIDAR SI EL NOMBRE EXISTE O NO
					//INVOCAR SUBPROCESO VALIDAR CONTACTO
					Si existe = Falso Entonces
						//validarContacto(nombre); //INVOCAR SUBPROCESO
						 ejecutar = "Y";
						 Para i=0 Hasta limite - 1   Con Paso 1 Hacer
						
						    Si nom = nombre[i] Entonces
								Imprimir "Nombre ya existe como " nombre[i] " y puede ser eliminado";
								Imprimir "Nombre se encuentra en la posicion " + ConvertirATexto(i);
						       existe = Falso;
							     telefono = -1;
							     ejecutar = "N";
								 
							        Si telefono = -1 Entonces
								          Escribir "Desea eliminar el nombre de contacto, favor escriba Y para SI o N para NO ";
								          Leer respuesta;
								            Si respuesta = "Y" Entonces  //Sí indica
									   //afirmativamente, se borrará el nombre y número de teléfono del contacto de la matriz
									            Imprimir "EL NOMBRE ELIMINADO ES: " + nombre[i] + contacto[i];
												         nombre[i] = ();
														     contacto[i]= ();
												       existe = Falso;
												   
												   
											   SiNo
												   // PREGUNTAR SI SE REQUIERE ELIMINAR UN NUEVO USUARIO O NO
												          n = 0;
												        Escribir "Si desea eliminar un nuevo contacto, favor escriba 1 o 0 para volver al menu principal ";
												          Leer n;
												           Si n = 1 Entonces
												           existe = Verdadero;
													         SiNo
												           existe = Falso; // PARA SALIR DEL CICLO/SUBPROCESO DE ELIMINAR CONTACTO
												           repetir_ = Falso; // PARA IR AL MENU PRINCIPAL
													
												   FinSi
												   
												 Fin Si
										 Fin Si
						
									 Fin Si
								   
							  Fin Para
							  
					
					
							 // Si telefono = -1 Entonces
							  //Escribir "Desea eliminar el nombre de contacto, favor escriba Y para SI o N para NO ";
							  //Leer respuesta;
							    //       Si respuesta = "Y" Entonces  //Sí indica
										   //afirmativamente, se borrará el nombre y número de teléfono del contacto de la matriz
										 //       Imprimir "EL NOMBRE ELIMINADO ES: " + nom;
										        
												   
							        //   SiNo
										        // PREGUNTAR SI SE REQUIERE ELIMINAR UN NUEVO USUARIO O NO
										     //      Escribir "Si desea eliminar un nuevo contacto, favor escriba 1 o 0 para volver al menu principal ";
										         //  Leer n;
										       //       Si n = 1 Entonces
											         //      existe = Verdadero;
													       //  SiNo
																    //existe = Falso; // PARA SALIR DEL CICLO/SUBPROCESO DE ELIMINAR CONTACTO
											           //  repetir_ = Falso; // PARA IR AL MENU PRINCIPAL
										            //  Fin Si		
										   //   Fin Si
							  Si ejecutar = "Y" Entonces
								  
							   Imprimir "Nombre no existe";
							   Imprimir " ";
							     //PREGUNTAR SI SE REQUIERE ELIMINAR UN NUEVO USUARIO O NO
								   Escribir "Si desea eliminar un nuevo contacto, favor escriba 1 o 0 para volver al menu principal ";
									  Leer n;
								       Si n = 1 Entonces
									      existe = Verdadero;
										  Sino
									        existe = Falso; // PARA SALIR DEL CICLO/SUBPROCESO DE ELIMINAR CONTACTO
									        repetir_ = Falso; // PARA IR AL MENU PRINCIPAL
											
									Fin Si
							  Fin Si
							  //PREGUNTAR SI SE REQUIERE ELIMINAR UN NUEVO USUARIO O NO
							  Si existe = Falso Entonces
								  
								  Imprimir "Si desea eliminar un nuevo contacto, favor escriba 1 o 0 para volver al menu principal ";
								  Leer n;
								  Si n = 1 Entonces
									  existe = Verdadero;
									  Sino
										  
										  existe = Falso; // PARA SALIR DEL CICLO/SUBPROCESO DE ELIMINAR CONTACTO
										  repetir_ = Falso; // PARA IR AL MENU PRINCIPAL
									  Fin Si	
								  FinSi
							  
					FinSi
						  
					
					
						
					
					
				telefono = 0;	
			Hasta Que existe = Falso  // FIN SUBPROCESO ELIMINAR CONTACTO
			
			
			//SUBPROCESO BUSCAR CONTACTO*****
				4:
					
					
					Repetir
						
						Escribir "Si desea buscar contacto por nombre, favor escribir la palabra nombre, si desea buscar por numero, favor escribir la palabra numero ";
						leer buscar;
						//NOMBRE CONTACTO
						Si buscar = "nombre" Entonces
								    ejecutar = "Y";
							     Escribir "Ingrese el nombre del contacto que desea buscar ";
							     Leer nom;
							       Si nom = () Entonces
								        Imprimir "Debe ingresar un nombre valido";
								        existe = Verdadero;
							       SiNo
								        Imprimir "El nombre ingresado es: " nom    ;
										    existe = Falso;
										Fin Si
										//SUBPROCESO VALIDAR NOMBRE CONTACTO		
										Si existe = Falso Entonces  // ESTRUCUTRA DEL NOMBRE INGRESADO ES VALIDA Y SIRVE PARA ENTRAR AL CICLO DE VALIDAR NOMBRE EN EL ARRAY
										    Para i = 0 Hasta limite - 1   Con Paso 1 Hacer
										         Si nom = nombre[i] Entonces
										             Imprimir "Nombre ya existe como " nombre[i] " y su numero de telefono es: " contacto[i] ;
													        Imprimir "Nombre se encuentra en la posicion " + ConvertirATexto(i);
										             existe = Falso;  // DETECTAMOS NOMBRE EXISTE Y SALIMOS DE LA ESTRUCTURA REPETITIVA
													        ejecutar = "N";
													        telefono = -1;
										         Fin Si
										    Fin Para
									 FinSi
							
								 
									 Si ejecutar = "Y" Entonces
										 
										 Imprimir "Nombre no existe";
										 Imprimir " ";
										 
									 Fin Si 
									
					FinSi
								 
						//NUMERO CONTACTO
						Si buscar = "numero" Entonces
							Escribir "Ingrese un numero de telefono que sea valido " ;
							Leer num;
							Si num = () Entonces
								Imprimir "Debe ingresar un numero valido";
								existe = Verdadero; //si el numero es nulo se debe repetir el ciclo de solicitud del #
							SiNo
								Imprimir "El numero ingresado es: " num    ;
								existe = Falso;
							Fin Si
						
						//SUBPROCESO VALIDAR NUMERO CONTACTO		
						Si existe = Falso Entonces  // ESTRUCUTRA DEL NOMBRE INGRESADO ES VALIDA Y SIRVE PARA ENTRAR AL CICLO DE VALIDAR NOMBRE EN EL ARRAY
							ejecutar = "Y";
							Para i = 0 Hasta limite - 1   Con Paso 1 Hacer
								Si num = contacto[i] Entonces
									Imprimir "Nombre ya existe como " nombre[i] " y su numero de telefono es: " contacto[i] ;
									Imprimir "Nombre se encuentra en la posicion " + ConvertirATexto(i);
									existe = Falso;  // DETECTAMOS NOMBRE EXISTE Y SALIMOS DE LA ESTRUCTURA REPETITIVA
									ejecutar = "N";
									telefono = -1;
									
								Fin Si
							Fin Para
							
						FinSi
						
						Si ejecutar = "Y" Entonces
							
							Imprimir "Numero no existe";
							Imprimir " ";
							
						 	
						Fin Si	
					
				FinSi
				
					
					Si buscar <> "nombre" Y buscar <> "numero" Entonces
						
						
						Imprimir "El dato digitado no es valido, favor ingresar de nuevo.";
						Imprimir "";
							existe = Verdadero;
					  FinSi
						
					  //PREGUNTAR SI SE REQUIERE BUSCAR UN NUEVO USUARIO O NO
					  Escribir "Si desea buscar un nuevo contacto, favor digite Y o N para volver al menu principal ";
					  Leer buscar;
					  Si buscar = "Y" Entonces
						  existe = Verdadero;
					  Sino
						  existe = Falso; // PARA SALIR DEL CICLO/SUBPROCESO DE ELIMINAR CONTACTO
						  repetir_ = Falso; // PARA IR AL MENU PRINCIPAL
						  
					  Fin Si
						
					Hasta Que existe = Falso
					
					
				5:  //SALIR DE LA AGENDA Y REGRESAR AL MENU PRINCIPAL 
					
					repetir_ = Falso;
					
			Fin Segun
			
			
		2:
			Repetir
				
				
				Escribir "Ingrese el nombre del contacto con el cual desea conversar ";
				Leer nom;
				Si nom = () Entonces
					Imprimir "Debe ingresar un nombre valido";
					existe = Verdadero;
				SiNo
					Imprimir "El nombre ingresado es: " nom    ;
					existe = Falso;
			
				Fin Si
				
				// VAMOS A RECORRER EL ARRAY PARA VALIDAR SI EL NOMBRE EXISTE O NO
				//SUBPROCESO VALIDAR NOMBRE CONTACTO Y NUMERO TELEFONO		
				ejecutar= "Y";
			
				
				//SUBPROCESO VALIDAR NUMERO CONTACTO		
				Si existe = Falso Entonces  // ESTRUCUTRA DEL NOMBRE INGRESADO ES VALIDA Y SIRVE PARA ENTRAR AL CICLO DE VALIDAR NOMBRE EN EL ARRAY
					ejecutar = "Y";
					Para i = 0 Hasta limite - 1   Con Paso 1 Hacer
						Si nom = nombre[i] Entonces
							Imprimir "Nombre ya existe como " nombre[i] " y su numero de telefono es: " contacto[i] ;
							Imprimir "Nombre se encuentra en la posicion " + ConvertirATexto(i);
							existe = Falso;  // DETECTAMOS NOMBRE EXISTE Y SALIMOS DE LA ESTRUCTURA REPETITIVA
							ejecutar = "N";
							telefono = -1;
							
						Fin Si
					Fin Para
					
				FinSi
				
				Si ejecutar = "Y" Entonces
					
					Imprimir " ";
					
					Imprimir "El nombre digitado no es valido, favor ingresar de nuevo.";
					Imprimir "";
					existe = Verdadero;
					
				Fin Si	
		
				
				//ACCION A TOMAR SI EXISTE EL NOMBRE COMO PARTE DE LA LISTA DE CONTACTOS
				//Una vez validado el contacto, el usuario podrá tener un intercambio de mensajes, el cual tendrá fin cuando
				//	el usuario digite la palabra “Chao”.
				
				Si ejecutar = "N" Entonces
					cantidad = 0; //limite inicializado 9000
					Repetir
						
					palabra =""; //REBOOT DE LA PALABRA PARA CUANDO INGRESO UN NUEVO CONTACTO
					Escribir "Ingrese el mensaje de texto: ";
					Leer mensaje;
					// pasamos toda la frase a mayusculas para no tener que preguntar 2 veces por cada palabra
					mensaje = Mayusculas(mensaje);
					//*********************************************************************************************
					//Vamos a contar la longitud del texto
					Escribir "Su longitud es: ";
					Escribir Longitud(mensaje);
					
					//*********************************************************************************************
					//Creo vector para ir almacenando los mensajes de texto
					Para i = 0 Hasta cantidad Con Paso 1 Hacer
						Si i = cantidad Entonces
							mensajes[i] = mensaje;
					
						Fin Si
						 
					Fin Para
					
					//*********************************************************************************************
					texto1 = "CHAO";
					//*********************************************************************************************	
					// lista de letras que vamos a buscar
					Para i = 0 Hasta Longitud(mensaje) Con Paso 1 Hacer
						Si (Subcadena(mensaje,i, i + 3) = texto1 ) Entonces
							 palabra = "CHAO";	
						Fin Si
					
					Fin Para
					
					
					Si palabra = "CHAO" Entonces
						Imprimir "";
						Imprimir "A continuacion encontrara el historico del chat compartido con " + nom ":";
						Para i = 0 Hasta cantidad Con Paso 1 Hacer
							Imprimir mensajes[i];
						Fin Para
						
						
					SiNo
						cantidad = cantidad + 1;
					Fin Si
       
				Hasta Que palabra = "CHAO"			
				
				Fin Si
				
				
				//PREGUNTAR SI SE REQUIERE BUSCAR UN NUEVO USUARIO O NO
				Imprimir "";
				Escribir "Si desea buscar un nuevo contacto para conversar, favor digite Y o N para volver al menu principal ";
				Leer buscar;
				buscar = Mayusculas(buscar);
				Si buscar = "Y" Entonces
					palabra = " ";
					existe = Verdadero;
				Sino
					existe = Falso; // PARA SALIR DEL CICLO/SUBPROCESO DE ELIMINAR CONTACTO
					repetir_ = Falso; // PARA IR AL MENU PRINCIPAL
					
				Fin Si
				
				Hasta Que existe = Falso
				//***********************************************************************************************************
				//MENU ACCIONES #3 MODULO LLAMADA
		3:
			Escribir  "Bienvenido al menu modulo llamada favor seleccione la opcion a ejecutar";
			Imprimir "";
			Escribir "1. Llamar a un contacto almacenado en la agenda";
			Escribir "2. Digitar un numero de telefono que no se encuentre en agenda";
			Escribir "3. Salir y volver al menu principal";
			Leer f3;
			Segun f3 Hacer
				1:
					Repetir
						existe = Falso;
						Escribir "Si desea buscar contacto por nombre, favor escribir la palabra nombre, si desea buscar por numero, favor escribir la palabra numero ";
						leer buscar;
						buscar = Mayusculas(buscar);
						telefono = 0;
						//NOMBRE CONTACTO
						Si buscar = "NOMBRE" Entonces
						//	ejecutar = "Y";
							Escribir "Ingrese el nombre del contacto que desea buscar ";
							Leer nom;
							Si nom = () Entonces
								Imprimir "Debe ingresar un nombre valido";
								existe = Verdadero;
							Fin Si
							//SUBPROCESO VALIDAR NOMBRE CONTACTO		
							Si existe = Falso Entonces  // ESTRUCUTRA DEL NOMBRE INGRESADO ES VALIDA Y SIRVE PARA ENTRAR AL CICLO DE VALIDAR NOMBRE EN EL ARRAY
								Para i = 0 Hasta limite - 1   Con Paso 1 Hacer
									Si nom = nombre[i] Entonces
										Imprimir "Nombre ya existe como " nombre[i] " y su numero de telefono es: " contacto[i] ;
										Imprimir "Nombre se encuentra en la posicion " + ConvertirATexto(i);
										existe = Falso;  // DETECTAMOS NOMBRE EXISTE Y SALIMOS DE LA ESTRUCTURA REPETITIVA
										ejecutar = "N";
										telefono = -1;
										//generar numeros aleatorios entre 1 y 900
										//Para i = 1 Hasta 100 Con Paso 1 Hacer
											x = Azar(9000) + 1;
											Imprimir "Llamada finalizada. La duracion de la llamada fue de " + ConvertirATexto(x) + " segundos, realizada con el contacto " + nombre[i] + " al " + contacto[i];
										//Fin Para
										
									Fin Si
								Fin Para
							SiNo
								
								telefono = 0;
								
							FinSi
							
							Si telefono = 0 Entonces
								
								Imprimir "Nombre no existe";
								Imprimir " ";
								ejecutar = "Y";
								
							Fin Si 
							
						FinSi
						
						//VALIDAMOS NUMERO CONTACTO
						Si telefono <> -1 Entonces
						
						Si buscar = "NUMERO" Entonces
							Escribir "Ingrese un numero de telefono que sea valido " ;
							Leer num;
							Si num = () Entonces
								Imprimir "Debe ingresar un numero valido";
								existe = Verdadero; //si el numero es nulo se debe repetir el ciclo de solicitud del #
							SiNo
								Imprimir "El numero ingresado es: " num    ;
								existe = Falso;
							Fin Si
							
							//SUBPROCESO VALIDAR NUMERO CONTACTO		
							Si existe = Falso Entonces  // ESTRUCUTRA DEL NOMBRE INGRESADO ES VALIDA Y SIRVE PARA ENTRAR AL CICLO DE VALIDAR NOMBRE EN EL ARRAY
								ejecutar = "Y";
								Para i = 0 Hasta limite - 1   Con Paso 1 Hacer
									Si num = contacto[i] Entonces
										Imprimir "Nombre ya existe como " nombre[i] " y su numero de telefono es: " contacto[i] ;
										Imprimir "Nombre se encuentra en la posicion " + ConvertirATexto(i);
										existe = Falso;  // DETECTAMOS NOMBRE EXISTE Y SALIMOS DE LA ESTRUCTURA REPETITIVA
										ejecutar = "N";
										telefono = -1;
										
										x = Azar(9000) + 1;
										Imprimir "Llamada finalizada. La duracion de la llamada fue de " + ConvertirATexto(x) + " segundos, realizada con el contacto " + nombre[i] + " al " + contacto[i];
										
										
									Fin Si
								Fin Para
								
							FinSi
							
							Si ejecutar = "Y" Entonces
								
								Imprimir "Numero no existe";
								Imprimir " ";
								
								
							Fin Si	
							
						FinSi
						
						
						Si buscar <> "NOMBRE" Y buscar <> "NUMERO" Entonces
							
							
							Imprimir "El dato digitado no es valido, favor ingresar de nuevo.";
							Imprimir "";
							existe = Verdadero;
						FinSi
						
						//
						Si ejecutar = "Y" Entonces
							
							Imprimir "Nombre no existe";
							Imprimir " ";
							
						Fin Si 
						
						//PREGUNTAR SI SE REQUIERE BUSCAR UN NUEVO USUARIO O NO
						Escribir "Si desea buscar un nuevo contacto, favor digite Y o N para volver al menu principal ";
						Leer buscar;
						buscar = Mayusculas(buscar);
						Si buscar = "Y" Entonces
							existe = Verdadero;
						Sino
							existe = Falso; // PARA SALIR DEL CICLO/SUBPROCESO DE ELIMINAR CONTACTO
							repetir_ = Falso; // PARA IR AL MENU PRINCIPAL
							
						Fin Si
					Fin Si
						
					Hasta Que existe = Falso
				2:
					Repetir
						
					Escribir "Ingrese un numero de telefono que sea valido " ;
					Leer num;
					Si num = () Entonces
						Imprimir "Debe ingresar un numero valido";
						existe = Verdadero; //si el numero es nulo se debe repetir el ciclo de solicitud del #
					SiNo
						Imprimir "El numero ingresado es: " num    ;
						existe = Falso;
					Fin Si
					
					
					//SUBPROCESO VALIDAR NUMERO CONTACTO		
					Si existe = Falso Entonces  // ESTRUCUTRA DEL NOMBRE INGRESADO ES VALIDA Y SIRVE PARA ENTRAR AL CICLO DE VALIDAR NOMBRE EN EL ARRAY
						ejecutar = "Y";
						Para i = 0 Hasta limite - 1   Con Paso 1 Hacer
							Si num = contacto[i] Entonces
								Imprimir "Nombre ya existe como " nombre[i] " y su numero de telefono es: " contacto[i] ", por lo tanto no se puede proceder con la llamada para este contacto.";
								Imprimir "Nombre se encuentra en la posicion " + ConvertirATexto(i);
								existe = Falso;  // DETECTAMOS NOMBRE EXISTE Y SALIMOS DE LA ESTRUCTURA REPETITIVA
								ejecutar = "N";
								telefono = -1;
								
								
								
							Fin Si
						Fin Para
						
					FinSi
					
					Si ejecutar = "Y" Entonces
						
						Imprimir "Numero no existe y por ende es posible proceder con la llamda.";
						Imprimir " ";
						x = Azar(9000) + 1;
						Imprimir "Llamada finalizada. La duracion de la llamada fue de " + ConvertirATexto(x) + " segundos";
						
						
						
					Fin Si	
					
					//PREGUNTAR SI SE REQUIERE BUSCAR UN NUEVO USUARIO O NO
					Escribir "Si desea llamar a un numero que no este agendado, favor digite Y o N para volver al menu principal ";
					Leer buscar;
					buscar = Mayusculas(buscar);
					Si buscar = "Y" Entonces
						existe = Verdadero;
					Sino
						existe = Falso; // PARA SALIR DEL CICLO/SUBPROCESO DE ELIMINAR CONTACTO
						repetir_ = Falso; // PARA IR AL MENU PRINCIPAL
						
					Fin Si
					
				Hasta Que existe = Falso
				
				
				3:
					repetir_ = Falso;
				
			Fin Segun
			
			
			
			
			
			
			
		4:
			//CREAMOS CICLO REPETIR HASTA QUE EL USUARIO INGRESE UN NOMBRE DE APLICACION VALIDO O DECIDA SALIR AL 
			//MENU PRINCIPAL
			Repetir
			//a. El usuario ingresa el nombre de la aplicación que desea utilizar
			Escribir " ";
			Imprimir "********************************************************************************";
			Escribir "Bienvenido al menu aplicaciones, favor ingrese el nombre de la aplicacion que desea utilizar de la siguiente lista: " ;
			Imprimir "";
			Escribir "WhatsApp";
			Escribir "Facebook";
			Escribir "Agenda";
			Escribir "Marcador" ;
			Escribir "Banco BCR" ;
			Escribir "Instagram" ;
			Leer mensaje;
			// pasamos toda la frase a mayusculas para no tener que preguntar 2 veces por cada palabra
			mensaje = Mayusculas(mensaje);
			Imprimir "";
			Imprimir mensaje;
			
				
			Si mensaje = "WHATSAPP" O mensaje = "FACEBOOK" O mensaje = "AGENDA" O mensaje = "MARCADOR" O mensaje ="BANCO BCR" O mensaje = "INSTAGRAM" Entonces
				Imprimir  "La aplicación " + mensaje +" ha sido abierta";
				existe = Falso;
			SiNo
				//PREGUNTAR SI SE REQUIERE ABRIR UNA APLICACION EXISTENTE O NO
				Imprimir "";
				Imprimir "El nombre de la aplicacion ingresada NO existe";
				Imprimir "";
			Fin Si
			
			//**********************************************************************************************
			//PREGUNTAR SI SE REQUIERE ABRIR UNA APLICACION EXISTENTE O NO
			//Imprimir "";
			Escribir "Si desea abrir otra aplicacion existente, favor digite Y o N para volver al menu principal ";
			Leer buscar;
			buscar = Mayusculas(buscar);
			Si buscar = "Y" Entonces
				//mensaje = Mayusculas(mensaje);
				//palabra = " ";
				existe = Verdadero;
			Sino
				existe = Falso; // PARA SALIR DEL CICLO/SUBPROCESO DE ELIMINAR CONTACTO
				repetir_ = Falso; // PARA IR AL MENU PRINCIPAL
				
			Fin Si
			
			
			
			
		  Hasta Que existe = Falso
		
			Imprimir "********************************************************************************";
		5:
			Imprimir "Se finaliza el aplicativo y procedemos a apgar el sistema";
			Imprimir "Apagando *****5%****************************************************************";
			Imprimir "Apagando *****5%*****10%********************************************************";
			Imprimir "Apagando *****5%*****10%***********30%*******************************************";
			Imprimir "Apagando *****5%******10%**********30%*************50%****************************";
			Imprimir "Apagando *****5%******10%**********30%*************50%*********80%****************";
			Imprimir "Apagando *****5%******10%**********30%*************50%*********80%*******95%******";
			Imprimir "Apagando *****5%******10%**********30%*************50%*********80%*******95%***100%";
			repetir_ = Verdadero;
	Fin Segun
	
	
	
	
Fin Mientras
	//Imprimir variables
	


	
FinAlgoritmo