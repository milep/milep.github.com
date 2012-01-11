---
title: Ruby for Java programmer
layout: default
---


Coming from Java and not much exposed to any other programming paradigms, what I found new or different in Ruby.

## In ruby everything is an object

For example numbers are instances of Fixnum class and you can call methods on them. (Note that in Ruby, you can leave the parentheses out of method calls, "more about that":http://blog.grayproductions.net/articles/do_i_need_these_parentheses)

<pre>
123.to_s  #=> "123"
2.+(3)    #=> 5
</pre>

## Operator overloading

Ruby permits operator overloading, here is an example why it's useful.

In Java you have to do something like this:

<pre>
BigDecimal vat = new BigDecimal("23");
BigDecimal price = new BigDecimal("200");
BigDecimal h = new BigDecimal("100");

price.multiply(vat.divide(h)).add(price);
</pre>

Wouldn't it be nice to just to be able to write (without some external library like "MVEL":http://mvel.codehaus.org/)

<pre>
(price * vat / h) + price;
</pre>

You can of course easily shot yourself in the foot with operator overloading, but with great power comes great responsibility.

## Every statement returns something

Method returns the value of the last statement, unless return statment is explicitly defined.

Even control structures return values, example:

<pre>
amount = 50
str = case amount
      when 1..20
        "a little"
      when 21..100
        "a lot"
      else
        "out of bounds"
      end
str  #=> "a lot"
</pre>

## Method calls are messages

When you have an instance of an object, you don't call functions on it, you send messages to it. If message's name and arguments matches some method, then that method is called. Otherwise a NoMethodError exception is raised, *unless* a method_missing method is defined for the object. 
*{color:red}TODO* And here is a silly example how to use it.



