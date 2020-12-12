/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mycompany.tareafinalb;

import java.util.Arrays;

/**
 *
 * @author Janda
 */
public class MatricesOrdenadas {
 
      private int[][] numeros;
    
    
         public MatricesOrdenadas(int f, int c){
            numeros = new int[f][c];
                 }
         
          public MatricesOrdenadas(int[][] matriz){
        numeros = matriz;
    }
   
             
             public int[][] llenarMatriz(){
              for(int i = 0; i<numeros.length; i++){
                  for (int j=0; j<numeros.length; j++) {
              
               numeros[i][j]= (int) (Math.random()*100);
            
            }
                  
           }
            return numeros;  
         }      
           public int[][] OrdenamientoVertical(){
               
          int aux1=0;
                   for(int i=0;i<numeros.length;i++) {
                         for(int j=0;j<numeros.length;j++){
                             for(int x=0;x<numeros.length;x++){
                                 for(int k=0;k<numeros.length;k++){
                                     
                                   if(numeros[j][i]<numeros[k][x]){
                                       aux1=numeros[j][i];
                                       numeros[j][i]=numeros[k][x];
                                       numeros[k][x]=aux1;
                                   }
                                   }
                             }
                                 
                         }
                   }
                   return numeros;
               }    
           public int[][] OrdenamientoHorizontal(){
               
          int aux1=0;
                   for(int i=0;i<numeros.length;i++) {
                         for(int j=0;j<numeros.length;j++){
                             for(int x=0;x<numeros.length;x++){
                                 for(int k=0;k<numeros.length;k++){
                                     
                                   if(numeros[i][j]<numeros[x][k]){
                                       aux1=numeros[i][j];
                                       numeros[i][j]=numeros[x][k];
                                       numeros[x][k]=aux1;
                                   }
                                   }
                             }
                                 
                         }
                   }
                 
                  return numeros;
               }
           
           public int[][] OrdenamientoInverso(){
               
                for( int i=0; i < numeros.length; i++){
                   for( int j=0;j< numeros.length; j++){
                      for(int x=0; x < numeros.length; x++){
                          for(int y=0; y<numeros.length; y++){
                               if(numeros[i][j] > numeros[x][y]){
                                 int t = numeros[i][j];
                                   numeros[i][j] = numeros[x][y];
                                      numeros[x][y] = t;
                                  }
                             }
                            }
                         }
                }
            
               
               return numeros;
             
           }
             
             
     @Override
     public String toString(){
     String salida="";      
         for(int i = 0; i<numeros.length; i++){
             for (int j=0; j<numeros.length; j++) {
                 salida += this.numeros[i][j];
                 salida += "   ";
             }
            salida+= "\n"; 
         }
           
               
     
     
     return salida;
     }       


}

    
    
    
    
    

