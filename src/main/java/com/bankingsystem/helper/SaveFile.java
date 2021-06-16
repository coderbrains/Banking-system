/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.bankingsystem.helper;

import java.io.FileOutputStream;
import java.io.InputStream;

/**
 *
 * @author Awanish kumar singh
 */
public class SaveFile {
    
    public static boolean saveImage(InputStream is, String path) {

        boolean f = false;

        try {
            
            byte[] b = new byte[is.available()];
            is.read(b);
            FileOutputStream fos = new FileOutputStream(path);
            fos.write(b);
            fos.flush();
            fos.close();
            f = true;
            

        } catch (Exception e) {
            e.printStackTrace();
        }

        return f;
    }

    
}
