/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mycompany.proyectoprogramacion;

import javax.swing.JOptionPane;

/**
 *
 * @author Janda
 */
public class IniciarDisposiitivo {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
    ListaDeContactos p1= new ListaDeContactos();
    char f1 = ' ';
    char f2,f3= ' ';
    
    char q1 = 's';
    do{
      
     f1 = JOptionPane.showInputDialog("1. Lista de Contactos" + "\n" + "2. Lista de aplicaciones ").charAt(0);
    }while(f1 >= '3');
   
        
           
    
    do{
    do{
                
                f2= JOptionPane.showInputDialog("1.Agregar contacto" + "\n" + "2.Modificar contacto" + "\n" + "3. Eliminar contacto" + "\n" + "4. Buscar contacto" +"\n" + "5. Salir de agenda"+"\n").charAt(0);
            }while(f2>='6');
    
            
          
      switch(f2){
              case '1':
                    p1.AgregarContacto();
                
                 
                break;
            case '2':
             
                   p1.modificarContacto();
                
                  break;
            case '3':    
                    
                p1.eliminarContacto();
                
                 break;
            case '4':
               p1.buscarContacto1();
              break;
      }
     }while(q1>='s');
    }
  }
    

