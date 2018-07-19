<cfoutput>#url.name#
	<div class="btn-group pull-right">
		<form class="form-inline">
			<button id="backButton" type="button" class="btn btn-default" onclick="backButtonPressed()">
				<span class="glyphicon glyphicon-backward"></span>
			</button>
			<button type="button" class="btn btn-default" onclick="editContactPressed(#url.uid#)">
				<span class="glyphicon glyphicon-edit"></span>
			</button>
		</form>
	</div>
</cfoutput>