
<!-- <?php
//	include_once 'connectDB.php';
?> -->
<!DOCTYPE html>
<html>
<head>
	<title></title>
</head>
<body>
    <h1> Welcome Sales Associate </h1>
	<hr>

<br>    </br>
<b> Current target customer occupation </b>
<form action="Occupation(Nested_GroupBY).php" method="GET">
    <button type="submit" name="submit"> Enter </button>
</form>

<br> 		</br>

<b> Find a customer </b>
<p> Format phone number as follow 	(e.g) (111) 111-1111 </p>
<form action="Customer(Projection).php" name='add' method="POST">
Options: <select name='option'>
     <option value='Phone' >Phone</option>
     <option value='Address'>Address</option>
     <option value='CustomerID'>CustomerID</option>
     </select>
     <input type="text" name="field" placeholder="">
<input type='submit' name='submit'/>
</form>

<br> </br>

<b> Car model inventory checker </b>
<form action="Model(Nested_GroupBY).php" name='add' method="POST">
Options: <select name='option'>
     <option value='MAX' >MAX</option>
     <option value='MIN'>MIN</option>
     </select>
<input type='submit' name='submit'/>
</form>
<br>    </br>

<b> Sale Information. Please enter all information.</b>
    <form action="InsertSale.php" method="POST">
        <label for=sid>Sale ID</label>
        <input type="number" name="sid" id="sid"><br/>
        <label for=vid>Vechile ID</label>
        <input type="number" name="vid" id="vid"><br/>
        <label for=cid>Customer ID</label>
        <input type="number" name="cid" id="cid"><br/>
        <label for=eid>Employee ID</label>
        <input type="number" name="eid" id="eid"><br/>
        <label for=date>Date</label>
        <input type="text" name="date" id="date"><br/>
        <label for=pr>Payment Received</label>
        <input type="text" name="pr" id="pr"><br/>
        <input type="submit" value="Submit">
    </form>

    <br>    </br>
<b>Update Employee Email<b>
    <form action="ChangeEmail(Update).php" method="POST">
        <label for=eid>Employee id</label>
        <input type="number" name="eid" id="eid"><br/>
        <label for="email">Email</label>
        <input type= "email" name="email" id="email"><br/>
        <input type="submit" value="Submit">
    </form>

<br>    </br>
<b>Add new customer. Please enter all information</b>
	<form action="InsertCustomer.php" method="POST">
		<label for=cid>Customer ID</label>
        <input type="number" name="cid" id="cid"><br/>
		<label for=name>Name</label>
        <input type="text" name="name" id="name"><br/>
        <label for=addr>Address</label>
        <input type="text" name="addr" id="addr"><br/>
        <label for=occ>Occupation</label>
        <input type="text" name="occ" id="occ"><br/>
        <label for=sex>Sex</label>
        <input type="text" name="sex" id="sex"><br/>
		<label for=phone>Phone Number</label>
        <input type="text" name="phone" id="phone"><br/>
		<label for=age>Age</label>
        <input type="number" name="age" id="age"><br/>
		<input type="submit" value="Submit">
	</form>

</body>
</html>

