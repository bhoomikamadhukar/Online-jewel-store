/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package varr;

/**
 *
 * @author Madhukar
 */
import java.util.*;
import java.lang.*;
import java.io.*;
public class varr {
    
    public static void main(String args[])
    {
        Scanner sc=new Scanner(System.in);
        int noa=sc.nextInt();
        int noq=sc.nextInt();
        int noas[]=new int[noa];
        int arr[][]=new int[noa][100];
        int quer[]=new int[2];
        for(int i=0;i<noa;i++)
        {
            noas[i]=sc.nextInt();
            for(int j=0;j<noas[i];j++)
                arr[i][j]=sc.nextInt();
                
        }
        for(int i=0;i<noq;i++)
        {
            quer[0]=sc.nextInt();
            quer[1]=sc.nextInt();
            System.out.println(arr[quer[0]][quer[1]]);
        }
        
        
        
    }
    
}
