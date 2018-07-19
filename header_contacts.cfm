Contacts
<div class="btn-group pull-right">
	<form class="form-inline">
		<input id="searchBar" class="hide form-control mr-sm-2" type="search" placeholder="Search" onkeyup="filterContacts(this.value)">
		<button id="searchButton" type="button" class="btn btn-default" onclick="searchButtonPressed()">
			<span class="glyphicon glyphicon-search"></span>
		</button>
		<button type="button" class="btn btn-default" onclick="addContactPressed()">
			<span class="glyphicon glyphicon-plus"></span>
		</button>
	</form>
</div>