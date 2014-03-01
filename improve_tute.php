<?php 
include("head_section_start.php");
include("header.php");
?>

<div id="improveTuteBlock">
	<form method="post" id="improveTuteForm" action="improve_tute_to_db.php?tuteId=<?php echo $_GET['tuteId'];?>"> 
		<label for="problem">Why you want to improve it?</label><br /> <input type="text" name="problem" id="problem"><br />
		<span id="problemError" class="hideIt">This can't be empty</span><br />
		<label for="description">Your take on it...</label><br /><textarea name="description" id="description"></textarea><br />
		<span id="descriptionError" class="hideIt">This can't be empty</span><br />
		<input type="submit" value="Improve it!">
	</form>
</div>


<?php
include("constants_nodejs_tutorial.php");

$query = "SELECT * FROM `".TABLE_NODEJS."` WHERE id=".$_GET['tuteId'].";";
$result = mysqli_query($connection,$query);

if($result == false) {
	echo "Query could not be executed";
}

$tute = mysqli_fetch_assoc($result);

?>

<span id="tuteDisplay">Tute you selected...</span>
<div id="tuteDisplayBlock">
	<span class="head"><?php echo $tute['head']; ?></span> <br /> <br />
	<p class="description"><?php echo $tute['description']; ?></p>
</div>

<?php
include("head_section_close.php");
?>