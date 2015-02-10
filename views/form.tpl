<form action="" method="post">
    <label for="date">Date:</label>
    <input type="date" id="date" name="date"/>
    <label for="name">Name</label>
    <input type="text" id="name" name="name">
    <label for="category">Category:</label>
    <input list="categories" id="category">
    <datalist id="category">
        <option value="Fruits">1</option>
    </datalist>
    <input type="submit" id="submit" name="action" value="addProduct">

</form>