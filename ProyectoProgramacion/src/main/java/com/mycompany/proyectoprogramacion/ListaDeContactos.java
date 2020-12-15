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
public class ListaDeContactos {
    
   private String[] nombre;
   private String[] numero; 
   private String[][] agenda;
   private String a,b,c,q1,q2; 
   private String d;
      public ListaDeContactos(){
           nombre = new String[5];
           numero= new String[5];
           agenda= new String[5][2];
           
    }

    public ListaDeContactos(String[][] agenda) {
        this.agenda = agenda;
    }

    public ListaDeContactos(String[] nombre, String[] numero, String[][] contacto) {
        this.nombre = nombre;
        this.numero = numero;
        this.agenda = contacto;
    }

    public String[] getNombre() {
        return nombre;
    }

    public void setNombre(String[] nombre) {
        this.nombre = nombre;
    }

    public String[] getNumero() {
        return numero;
    }

    public void setNumero(String[] numero) {
        this.numero = numero;
    }

    public String[][] getContacto() {
        return agenda;
    }

    public void setContacto(String[][] contacto) {
        this.agenda = contacto;
    }
     
      public String AgregarContacto(){
          String salida= "";
          int i=-1;
          char r= ' ';
        do{  i++;
          
             
              if(i<=5){  
             do{
                 agenda[i][0]=JOptionPane.showInputDialog("Agregue el nombre del contacto");
                 
                 if(agenda[i][0]==null || agenda[i][0].equals("")){
                     JOptionPane.showMessageDialog(null, "Es necesario agregar los datos");
                    } 
                 }while(agenda[i][0]==null || agenda[i][0].equals(""));
             
              do{
                agenda[i][1]=JOptionPane.showInputDialog("Digite el numero del contacto");
               
               if(agenda[i][1]==null || agenda[i][1].equals("")){
                     JOptionPane.showMessageDialog(null, "Es necesario agregar los datos");
                    } 
                 }while(agenda[i][1]==null || agenda[i][1].equals(""));
              
              
                  boolean repetido=false;
                  a=agenda[i][0];
                  b=agenda[i][1];
                  this.ValidarContacto();
                  
                  if(a==null){
                     agenda[i][0]=null;
                     agenda[i][1]=null;
                     i--;
                     repetido=true;
                  }
                  
                  if(repetido==false){
               JOptionPane.showMessageDialog(null, "Se ha añadido");
                 }if(repetido==true){
         
              JOptionPane.showMessageDialog(null, "No se ha añadido");
                        }
                  
                      r=JOptionPane.showInputDialog("Desea agregar otro contacto Si(1)/No(2)").charAt(0);
               if(r=='2'){
               return a;
          }
                
               }
                  numero[i]=agenda[i][1];
                  nombre[i]=agenda[i][0];
                  this.posicionVacia();
                      
           
          
               
            
           
               
          
           
       
        }while(i<=5); 
          return a;
       } 
         
            
      public String ValidarContacto(){
      
       for(int i=0;i<5;i++){
           
                 if(a!=null&&a.equals(nombre[i])||b.equals(numero[i])){
                   JOptionPane.showMessageDialog(null, "El contacto ya existe");
                   nombre[i]=a;
                   numero[i]=b;
                  a=null;
                  b=null;                 
                 return a;
             
             }
        
         
       
    }
        return a;
   }   
      
  public boolean posicionVacia(){
       for(int i=0;i<5;i++){
               for(int j=0;j<2;j++){
                   if(agenda[i][j]== null){
                         return false;
                   }
                }
          
       }
        JOptionPane.showMessageDialog(null, "La agenda ya esta llena");
           return true;
      
    } 
                  
  public void modificarContacto(){
     
               
             do{
                  q1=JOptionPane.showInputDialog("Agregue el nombre del contacto que desea modificar");
                 
                 if(q1==null || q1.equals("")){
                     JOptionPane.showMessageDialog(null, "Es necesario agregar los datos");
                    } 
                 }while(q1==null || q1.equals(""));
             
            do{
                  q2=JOptionPane.showInputDialog("Agregue el numero del contacto que desea modificar");
                 
                 if(q2==null || q2.equals("")){
                     JOptionPane.showMessageDialog(null, "Es necesario agregar los datos");
                    } 
                 }while(q2==null || q2.equals(""));
               
               this.buscarContacto();
               if(q1==null){
               JOptionPane.showMessageDialog(null, "El contacto no fue encontrado");
            
               }
           }
       
             
      
      
 public String buscarContacto(){

           for(int i=0;i<5;i++){
                 for(int j=0;j<2;j++){
                    if(q1.equals(agenda[i][j])){
                        
                      do{
                    agenda[i][0]=JOptionPane.showInputDialog("El contacto fue encontrado"+ "\n"+" Agregue el nuevo nombre ");
                 
                 if(agenda[i][0]==null || agenda[i][0].equals("")){
                     JOptionPane.showMessageDialog(null, "Es necesario agregar los datos");
                    } 
                 }while(agenda[i][1]==null || agenda[i][1].equals(""));
             
            do{
                  agenda[i][1]=JOptionPane.showInputDialog("Agregue el nuevo numero");
                 
                 if(agenda[i][1]==null || agenda[i][1].equals("")){
                     JOptionPane.showMessageDialog(null, "Es necesario agregar los datos");
                    } 
                 }while(agenda[i][1]==null || agenda[i][1].equals(""));
               
               
                        
                        
                       return q1;
                  }
                    
                     
                  
                   }
               
                   
                 }
               q1=null;
               q2=null;        
          return q1;   
       }  


public String eliminarContacto(){
    char s1=' ';
   
          
             do{
                   a=JOptionPane.showInputDialog("Agregue el nombre del contacto que desea eliminar");
                 
                 if( a==null ||  a.equals("")){
                     JOptionPane.showMessageDialog(null, "Es necesario agregar los datos");
                    } 
                 }while( a==null ||  a.equals(""));
               this.ValidarContacto();
               
        
             
               if(a==null){
              s1 = JOptionPane.showInputDialog("Desea confirmar el proceso de eliminar Si(1)/No(2)").charAt(0);
                   switch(s1){
                   
                   case'1':
                             for(int i=0;i<5;i++){
                                for(int j=0;j<2;j++){
                                    if(nombre[i]!=null&&nombre[i].equals(agenda[i][j])){
                                        agenda[i][0]=null;
                                        agenda[i][1]=null;
                                        nombre[i]=null;
                                        return a;
                                    }
                                  }  
                                }
                           
                   case'2': 
                   return a;
               }
    
             }  
                 b=null;
                if(b==null){
                      JOptionPane.showMessageDialog(null, "Contacto no encontrado");
                }
               
           return a;    
        }


public String buscarContacto1(){
    
           do{
                  c=JOptionPane.showInputDialog("Agregue el nombre o telefono del contacto que desea mostrar");
                 
                 if(c==null || c.equals("")){
                     JOptionPane.showMessageDialog(null, "Es necesario agregar los datos");
                    } 
                 }while(c==null || c.equals(""));
           
               this.ValidarContacto();
               if(a==null){
                   
                    for(int i=0;i<5;i++){
                         for(int j=0;j<2;j++){
                                  if(c!=null&&c.equals(agenda[i][j])){
                                       JOptionPane.showMessageDialog(null,"NOMBRE " + agenda[i][0] + "   " +"NUMERO  " + agenda[i][1] );
                                       c=null;
                                       a=null;
                                       return a;
                                  }
                         }
                    }
                               
                }
           return a;       
         }     
}
        







 
      

   
    

      
  