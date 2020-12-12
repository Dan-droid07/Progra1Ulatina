/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mycompany.tareafinal;

/**
 *
 * @author Janda
 */
public class Histograma {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        // TODO code application logic here
    
      int[] numeros;
  
    
      numeros = new int[100];
    
    
            for(int i = 0; i<numeros.length; i++){
            numeros[i]= (int) (Math.random()*50);
            
            }
        Histograma1(numeros);
    
  }
    
    public static void Histograma1(int[] vector){
        boolean repetido[] = new boolean[100]; 
     
        for(int i=0; i<vector.length; i++) {
               int count=0;
            for(int j=0; j<100; j++) {
                if(repetido[j]==true) {
                    continue;

                }if(vector[j]==i) {
                  repetido[j]= true;
                  count++;
                }
         
         
       
               } 
           
                
             System.out.print(i + ": " );
             
             
                
            for (int k = 0; k < count; k++) { 
                System.out.print('X');
               
            }
             
        
            
           
            System.out.println();
     
        }
         
       }
        
     }
      
      
    
   
    

