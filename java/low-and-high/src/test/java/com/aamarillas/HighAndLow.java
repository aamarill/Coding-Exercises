package com.aamarillas;

import static org.junit.Assert.assertEquals;

import org.junit.Test;

public class HighAndLow {

  @Test
  public void highAndLowTest(){
    assertEquals("42 -9", Kata.highAndLow("8 3 -5 42 -1 0 0 -9 4 7 4 -4"));
  }
}
