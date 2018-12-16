/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Datos;

import Modelo.PuntoCoor;
import java.util.ArrayList;
import java.util.Random;

/**
 *
 * @author diegosaurio
 */
public class ArrayPuntos {
    private ArrayList<PuntoCoor>lista;
    public ArrayPuntos(){
        lista = new ArrayList<>();
       lista.add(new PuntoCoor(-38.7238, -72.6374));
        lista.add(new PuntoCoor(-38.70330, -72.55043));
        lista.add(new PuntoCoor(-38.76591, -72.75761));
        lista.add(new PuntoCoor(-38.7683, -72.7602));
        lista.add(new PuntoCoor(-38.7651, -72.7468));
        lista.add(new PuntoCoor(-38.7118, -72.6509));
        lista.add(new PuntoCoor(-38.7087, -72.6600));
        lista.add(new PuntoCoor(-38.7194, -72.6534));
        lista.add(new PuntoCoor(-38.7234, -72.6064));
        lista.add(new PuntoCoor(-38.7218, -72.6177));
        lista.add(new PuntoCoor(-38.7228, -72.6464));
        lista.add(new PuntoCoor(-38.7573, -72.6151));
        lista.add(new PuntoCoor(-38.7474, -72.5831));
        lista.add(new PuntoCoor(-38.7188, -72.6312));
        lista.add(new PuntoCoor(-38.7436, -72.6260));
        lista.add(new PuntoCoor(-38.7316, -72.5741));
        lista.add(new PuntoCoor(-38.7145, -72.5507));
        lista.add(new PuntoCoor(-38.7098, -72.5627));
        lista.add(new PuntoCoor(-38.7147, -72.5589));
        lista.add(new PuntoCoor(-38.6960, -72.5463));
        lista.add(new PuntoCoor(-38.6887, -72.5396));
        lista.add(new PuntoCoor(-38.7062, -72.5611));
        lista.add(new PuntoCoor(-38.7228, -72.5582));
        lista.add(new PuntoCoor(-38.7503, -72.6147));
        lista.add(new PuntoCoor(-38.7527, -72.6256));
        lista.add(new PuntoCoor(-38.7525, -72.6315));
        lista.add(new PuntoCoor(-38.7555, -72.6608));
        lista.add(new PuntoCoor(-38.7428, -72.6376));
        lista.add(new PuntoCoor(-38.72465, -72.57006));
        lista.add(new PuntoCoor(-38.73193, -72.57901));
        lista.add(new PuntoCoor(-38.75292, -72.62899));
        lista.add(new PuntoCoor(-38.75626, -72.62258));
        lista.add(new PuntoCoor(-38.7616, -72.6434));
        lista.add(new PuntoCoor(-38.7232, -72.6450));
        lista.add(new PuntoCoor(-38.71433, -72.61753));
        lista.add(new PuntoCoor(-38.73095, -72.60356));
        lista.add(new PuntoCoor(-38.7459, -72.6027));
        lista.add(new PuntoCoor(-38.75372, -72.61638));
        lista.add(new PuntoCoor(-38.74843, -72.62745));
        lista.add(new PuntoCoor(-38.74753, -72.60248));
        lista.add(new PuntoCoor(-38.72548, -72.61517));
        lista.add(new PuntoCoor(-38.7313, -72.5835));
        lista.add(new PuntoCoor(-38.7333, -72.6337));
        lista.add(new PuntoCoor(-38.7129, -72.6559));
        lista.add(new PuntoCoor(-38.7628, -72.7464));
        lista.add(new PuntoCoor(-38.7363, -72.6191));
        lista.add(new PuntoCoor(-38.71020, -72.62680));
        lista.add(new PuntoCoor(-38.7545, -72.6113));
        lista.add(new PuntoCoor(-38.7489, -72.6383));
        lista.add(new PuntoCoor(-38.7193, -72.6639));
        lista.add(new PuntoCoor(-38.7461, -72.6570));
         lista.add(new PuntoCoor(-38.7459, -72.6632));
          lista.add(new PuntoCoor(-38.7416, -72.6594));
    }
    
   
    public ArrayList<PuntoCoor> listaRandom(){
        ArrayList<Integer>index= new ArrayList<>();
        Random ran = new Random();
        ArrayList<PuntoCoor>listaRan= new ArrayList<>();
        for(int i=0;i<20;i++){
            int num = ran.nextInt(lista.size());
            if(index.indexOf(num)!=-1){
                i--;
            }else{
                listaRan.add(lista.get(num));
            }
        }
        
                return listaRan;
    }
}
