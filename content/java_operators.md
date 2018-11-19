---
title: "Operators and Decision Constructs"
date: 2018-11-19
draft: false
categories: ["java"]
tags: ["1zo-808"]
---
## Java Operators

### ==
Comparing of primitives compared by values
```java
char c = 100;
int i = 100;
System.out.println(c==i);//Prints true
```

Comparing of primitive with wrapper unwrap wrapper and compare by values;
```java
char c = 100;
Integer i = 100;
System.out.println(c==i);//Prints true
```

If the operands of an equality operator are both of either reference type or the null type, then the operation is object equality.

> It is a compile-time error if it is impossible to convert the type of either operand to the type of the other by a casting
> conversion (§5.5).

```java
Integer i = 9;
String s = "";
System.out.println(i == s); //Compile time error

Object o = 9;
String s = "";
System.out.println(o == s); //always return false
```


### instanceof

> The **type** of the *RelationalExpression* operand **of the instanceof operator must be a reference type or the null** type; **otherwise, a compile-time error occurs**.

```java
int i = 9;
boolean b = i instanceof Object; //Compile time error. Expected type reference found int
```

> **If a cast** (§15.16) of the RelationalExpression **to the ReferenceType would be rejected as a compile-time error**,
> then the **instanceof** relational expression likewise **produces a compile-time error**.

```java
Integer i = 9;
boolean b = i instanceof String; //Compile time error. Integer cannot be converted to String
```

At run time, the result of the instanceof operator is true if the value of the RelationalExpression is not null and the reference could be cast to the ReferenceType without raising a ClassCastException. Otherwise the result is false. What means than in Case of Null it will always Return false.    


### switch

![switch](/img/switch.png)

You should remember the following rules for a switch statement:

1 . Only **byte, short, int, char, String and enum** values can be used as types of a switch variable. (String is allowed since Java 7.) Wrapper classes Byte, Character, Short, and Integer are allowed as well.

> BSIL w/o long   
> chars   
> string, enum   
> + wrappers

2 . The case constants must be assignable to the switch variable. For example, if your switch variable is of class String, your case labels must use Strings as well.
3 . The switch variable must be big enough to hold all the case constants. For example, if the switch variable is of type char, then none of the case constants can be greater than 65535 because a char's range is from 0 to 65535. Similarly, the following will not compile because 300 cannot be assigned to 'by', which can only hold values from -128 to 127.

```java
byte by = 10;
switch(by){
    case 200 :  //some code; Compile error here!
    case 300 :  //some code; Compile error here!
}
```
4 .  All case labels should be COMPILE TIME CONSTANTS.
5 . No two of the case constant expressions associated with a switch statement may have the same value.
6 . At most one default label may be associated with the same switch statement.

### Chain = operator
= can be chained. For example, assuming all the variables are declared appropriately before hand,

```java
a = b = c = d; is valid.
```

However, chaining to use a value of a variable at the time of declaration is not allowed. For example,

```java
int a = b = c = 100;
```
is invalid if b and c are not already declared. Had b and c been already declared, int a = b = c = 100; would have been valid.

### Chain operator with arrays
The statement ```iA[i] = i = 30;``` will be processed as follows:

```java
iA[i] = i = 30; => iA[0] = i = 30;  =>  i = 30; iA[0] = i; =>  iA[0] = 30;
```

#### Here is what JLS says on this:
1. Evaluate Left-Hand Operand First  
2. Evaluate Operands before Operation  
3. Evaluation Respects Parentheses and Precedence  
4. Argument Lists are Evaluated Left-to-Right  

#### For Arrays
1. First, the dimension expressions are evaluated, left-to-right.
2. If any of the expression evaluations completes abruptly, the expressions to the right of it are not evaluated.
