package com.example.sweater;

import org.junit.Assert;
import org.junit.Test;

public class SimpleTest {
    @Test
    public void Test() {
        int x = 2;
        int y = 23;

        Assert.assertEquals(46, x * y);
        Assert.assertEquals(25, x + y);
    }

    @Test(expected = java.lang.ArithmeticException.class)
    public void error() {
        int i = 0;
        int il = 1 / i;
    }
}
