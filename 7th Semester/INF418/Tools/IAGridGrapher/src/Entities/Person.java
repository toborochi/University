/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Entities;

import Core.ThreadEntity;

/**
 *
 * @author Asus
 */
public class Person extends ThreadEntity {

    public Person(String spriteName, int width, int height, double x, double y) {
        super(spriteName, width, height, x, y);
    }

    public void tick() {
    }
}
