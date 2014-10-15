# Candidate Coding Exercise

Thank you for your interest in Centare! For the next step, we would like to learn more about your skills as a programmer and problem-solver.

Please read carefully and answer the questions below to the best of your ability. We intentionally put some expert-level stuff on here, so it's completely fine if you don't know an answer. But you're free to use any online resources to help you out.

Most of the code examples are in C#, but we're not really asking you about anything that's specific to C# or .NET; the same principles apply to almost any object-oriented language. We tried to keep the syntax basic, so any experience with C++, JavaScript, Java, or PHP should help.

Some questions ask you to write code. We gave you a starting point in C# because it's our favorite, but you can write your answers *in any programming language*. Just let us know which one you used.

---
###Question 1

What does the following C# code output? Briefly describe what this code is doing.

```csharp
int[] myCollection = {3, 6, 9};
int acc = 0;
foreach(int el in myCollection)
{
	acc += el;
}
Console.WriteLine(acc);
```

---
###Question 2

What does the following C# code output? What is the main concept being demonstrated here?

```csharp
int i = 3, j = 2;
double x = 3, y = 2;

var a = i / j;
var b = x / y;

Console.WriteLine("{0} {1}", a, b);
```

---
###Question 3

What does the following C# code output? What is special about the `Foo()` method and what are the consequences of that?

```csharp
int Foo(int input)
{
	if (input < 2)
		return 0;
	
	return input + Foo(input - 2);
}

void Main()
{
	Console.WriteLine(Foo(8));
}
```

---
###Question 4

Write a function that sorts an array of integers.

Example: `{5, 8, 2, -1, 0}` becomes `{-1, 0, 2, 5, 8}`

```csharp
int[] SortArray(int[] input)
{
	...
}
```

---
###Question 5

Write a function that returns only the digits 0-9 contained in a string.

Example: `"One2Three4"` becomes `"24"`

```csharp
string GetDigits(string input)
{
	...
}
```

---
###Question 6

Write a function that takes an array of `Widget` and outputs the number of widgets created on each day of the week (Monday, Tuesday, etc.).

```csharp
class Widget
{
	public string Name { get; set; }
	public decimal Weight { get; set; }
	public DateTime CreatedDate { get; set; }
}

void CountByDayOfWeek(Widget[] input)
{
	...
}
```

---
###Question 7

What does the following JavaScript code output? Write a sentence or two explaining why this is.

```javascript
var i = 0, j = "0";
console.log(i == j);
console.log(i === j);
```

* true false
* false false
* true true
* An error occurs

---
###Question 8

Write a function that, given an integer for the width, prints a diamond. The user can select if the diamond is filled or outlined.

Example: 5 outputs

        *              *
       * *            * *
	  * * *          *   *
	 * * * *        *     *
	* * * * *  or  *       *
	 * * * *        *     *
	  * * *          *   *
       * *            * *
        *              *


```csharp
void PrintDiamond(int width, bool filled = true)
{
	...
}
```

---
###Question 9

Which of these is a common way to get objects into a SQL database?

* Lazy Loading
* Liskov Substitution
* CORBA
* Object-Relational Mapping

---
###Question 10

What do you expect the value of x to be at the end of `Main()`? Briefly explain your choice.

```csharp
class Widget
{
	public string Name { get; set; }
	public decimal Weight { get; set; }
}

void Main()
{
	var theList = new[] {
		new Widget { Name = "A", Weight = 10.0 },
		new Widget { Name = "B", Weight = 20.0 },
		new Widget { Name = "C", Weight = 5.5 }
	};
	
	var x = theList.Max(w => w.Weight);
}
```
	
* 20.0
* The second `Widget` in the `theList`
* null
* An error occurs

---
###Question 11

Assume that the URL `http://example.com/MessageOfTheDay` returns just a string; no HTML. Write a function that returns that string. Assume that any external libraries you want are there; just mention them in a comment.

```csharp
string GetMessageOfTheDay()
{
	...
}
```
	
---
###Question 12

In the following code snippet, what pattern is being used to create the `OrderProcessor` class?

```csharp
class OrderProcessor
{
	private readonly IOrderRepository orderRepository;

	public OrderProcessor(IOrderRepository orderRepository)
	{
		this.orderRespository = orderRepository;
	}

	...
}
```
	
* Object-Oriented Inheritance
* Inversion of Control
* Active Record
* Lazy Loading

---

The rest of the questions refer to the database structure created in [schema.sql](schema.sql "schema.sql"). Again, the syntax here is specific to Microsoft SQL Server, but you may answer with any SQL dialect in mind.

This database is for a very simple purchasing system. Only one product gets shipped per order, but customers must have an account before they can place an order. Some products are still in the database for archival purposes, but are not active for ordering.

---

###Question 13

Write SQL queries that can answer each of the following questions:

* Which users that have placed at least one order have the oldest accounts?
* What is the current price value of the entire inventory of active products?
* How many customers have ordered the product "Granola" at some point?
* Which orders included products that sold at a different price than they are currently listed at?

###Question 14

* If we wanted to change the application to support having multiple products in each order, what changes (if any) would you recommend?