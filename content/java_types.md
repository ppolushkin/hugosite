---
title: "Java data types"
date: 2018-12-03
draft: false
categories: ["java"]
tags: ["1zo-808"]
---

## Java primitives

| Keyword | Type                        | Min    | Max    | Example                    | Hint      |
| ------- | --------------------------- | ------ | ------ | -------------------------- | --------- |
| boolean |                             |        |        |                            |           |
| byte    | 8-bit Integer               | -127   | 128    | 42                         |           |
| short   | 16-bit Integer              | -36768 | 36767  | 42                         |           |
| int     | 32-bit integer              | -2^31  | 2^31-1 | 42                         |           |
| long    | 64-bit integer              | -2^64  | 2^64-1 | 42L                        | *         |
| float   | 32-bit floating point value |        |        | 37.0f, 3.7e2F              | **, ***   |
| double  | 64-bit floating point value |        |        | 37.0, 37.0D, 3.7e2, 3.7e2d | ***, **** |
| char    | 16-bit Unicode values       |        |        | 'a'                        |           |

> (\*) long literal must ends by **l/L** otherwise it is integer     
> (\*\*) float literal requires **f/F** letter at the end     
> (\*\*\*) float and double can use scientific notation with e    
> (\*\*\*\*) double can ends by **d/D**

##### Note!
```
double one = 1; //CORRECT
double one = 0x1; //CORRECT
```


 2^32 is 4,294,967,296
```
long max = 3123456789;  // DOES NOT COMPILE
long max = 3123456789L;  // now Java knows it is a long
```
### Change the base
- **octal** (digits 0–7), which uses the number 0 as a prefix—for example, ```017```
- **hexadecimal** (digits 0–9 and letters A–F), which uses the number 0 followed by x or X as a prefix—for example, ```0xFF```, ```0X11```
- **binary** (digits 0–1), which uses the number 0 followed by b or B as a prefix—for example, ```0b10```, ```0B0```

```
System.out.println(56);       // 56
System.out.println(0b11);     // 3
System.out.println(017);      // 15
System.out.println(0x1F);     // 31
```

### Using underscores (>= Java 7)
You can have underscores in numbers to make them easier to read
```
int million1 = 1000000;
int million2 = 1_000_000;
```
 You can add underscores anywhere except at the beginning of a literal, the end of a literal, right before a decimal point, or right after a decimal point
 ```
double notAtStart = _1000.00;                // DOES NOT COMPILE
double notAtEnd = 1000.00_;                  // DOES NOT COMPILE
double notByDecimal = 1000_.00;              // DOES NOT COMPILE
double annoyingButLegal = 1_00_0.0_0;        // this one compiles
double annoyingButLegal = 1_00_0.0_______0;  // this one compiles
 ```

## Reference types
- A reference type refers to an object (an instance of a class).
- A reference can be assigned to another object of the same type.
- A reference can be assigned to a new object using the new keyword.

First, reference types can be assigned null, which means they do not currently refer to an object. Primitive types will give you a compiler error if you attempt to assign them null. In this example, value cannot point to null because it is of type int:
```
int value = null;   // DOES NOT COMPILE
String s = null;
```
Next, reference types can be used to call methods when they do not point to null.
Primitives do not have methods declared on them. In this example, we can call a method on reference since it is of a reference type. You can tell length is a method because it has () after it. The following line is gibberish. No methods exist on len because it is an int primitive. Primitives do not have methods.
