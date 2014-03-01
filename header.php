<div id="topBlock">
	<span id="nameHead">Don\'t k(no)w .node.js</span>
	<input type="button" id="addTuteButton" value="Add a tute">
	<input type="button" id="homeButton" value="Home">
</div>

<div id="addTuteBlock" class="hideIt">
	<form id="addTuteForm" method="post" action="add_tute_to_db.php">
		<label for="email">Your Email</label><br /> <input type="text" name="email" id="email"><br />
		<span id="emailError" class="hideIt">Email empty or wrong</span><br />
		<label for="head">Heading</label><br /> <input type="text" name="head" id="head"><br />
		<span id="headError" class="hideIt">This can't be empty</span><br />
		<label for="description">Description</label><br /> <textarea name="description" id="description"></textarea><br />
		<span id="descriptionError" class="hideIt">This can't be empty</span><br />
		<input type="submit" value="Add tute!" id="submitTuteButton">
	</form>
</div>
