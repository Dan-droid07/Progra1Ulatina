/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mycompany.quiz4;

import javax.swing.JOptionPane;

/**
 *
 * @author Janda
 */
public class MatrizFibonacci {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        // TODO code application logic here
    
    int m = Integer.parseInt(JOptionPane.showInputDialog("Digite el numero de matriz"));
    int Fibonacci[][] = new int[m][m];
    Fibonacci p1= new Fibonacci(Fibonacci);
    p1.inicializar();
    p1.llenarFibonacci();
    
    
    
      JOptionPane.showMessageDialog(null, p1.ImprimirFibonacci());
      }
    
   }
    

