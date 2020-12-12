/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mycompany.tareafinalb;

import javax.swing.JOptionPane;

/**
 *
 * @author Janda
 */
public class Main {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        // TODO code application logic here
     
       char s=' ';
       char j='s';    
    do{
                  int m = Integer.parseInt(JOptionPane.showInputDialog("Digite el numero de la matriz cuadrada"));
                  int MatricesOrdenadas[][] =  new int[m][m];
                  MatricesOrdenadas matriz1 = new MatricesOrdenadas(MatricesOrdenadas);
    do{
         
    
     s = JOptionPane.showInputDialog("MENU"+"\n"+"ELIJA UNA OPCION"+"\n"+"1.Ordenamiento vertical"+"\n"+"2. ordenamiento horizontal"+"\n"+ "3. Ordenamiento Inverso"+"\n"+"4. Todos"+"\n"+"5. Salida"+"\n").charAt(0);
                
                }while( s >= '6');
                 
    switch(s){
              case '1':
            
                  matriz1.llenarMatriz();
                  matriz1.OrdenamientoVertical();
                  JOptionPane.showMessageDialog(null,matriz1.toString());
                break;
            case '2':
                     matriz1.llenarMatriz();
                     matriz1.OrdenamientoHorizontal();
                     JOptionPane.showMessageDialog(null,matriz1.toString());
                  
                  break;
            case '3':    
                     matriz1.llenarMatriz();
                     matriz1.OrdenamientoInverso();
                     JOptionPane.showMessageDialog(null,matriz1.toString());
                 break;
            case '4':
                
                 matriz1.llenarMatriz();
                 matriz1.OrdenamientoVertical();
                 JOptionPane.showMessageDialog(null,matriz1.toString());
                 matriz1.OrdenamientoHorizontal();
                 JOptionPane.showMessageDialog(null,matriz1.toString());
                 matriz1.OrdenamientoInverso();
                 JOptionPane.showMessageDialog(null,matriz1.toString());
           case '5':
              System.exit(0);
      }
 
    

    }while( j=='s');
    
 
    }
}

    
