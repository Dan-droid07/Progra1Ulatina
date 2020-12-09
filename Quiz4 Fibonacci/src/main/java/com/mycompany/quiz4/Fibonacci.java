/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mycompany.quiz4;

import java.text.DecimalFormat;
import javax.swing.JOptionPane;

/**
 *
 * @author Janda
 */
public class Fibonacci {
    
    
    private int[][] numeros;
    
    
         public Fibonacci(int f, int c){
            numeros = new int[f][c];
                 }
         
          public Fibonacci(int[][] matriz){
        numeros = matriz;
    }
           
             
             public int[] inicializar(){
                 
                   int num1,num2,suma,i,j;
                     int a=0;
                     num1=0;
                     num2=1;
                     suma=num1+num2;
                  int[]  vec = new int[numeros.length];  
                  for (i = 0; i< numeros.length;i++){
        
                    a=num1;
                    num1=num2; 
                    num2= a + num1; 
                    vec[i]= a;
        
                
             } 
              return vec;
             }
             
             
          public int[][] llenarFibonacci(){
              int[] vec= inicializar();
              int count=0;
          for(int i = 0; i < numeros.length; i++){ 
            for(int j = 0;j < numeros.length; j++){ 
                if(j<=count){
                    numeros[i][j]= vec[j];
            }      
           } 
          count++;
          } 
          return numeros; 
          }    
                
              
          
        public String ImprimirFibonacci(){
        String salida = "";
        
        for(int i = 0; i < numeros.length; i++){ 
            for(int j = 0; j < numeros.length; j++){ 
                salida += numeros[i][j];
                if(numeros[i][j]==-1){
                    salida+= "*";
                }
                
                if(j == numeros[0].length-1){
                    salida+=  "\n"; 
                }else{
                    salida += "   ";
                    
                }
            }
        }
        return salida;
    }}


                
                

