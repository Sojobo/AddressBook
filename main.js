/* 
	This will filter all rows inside the contactList table on our main page 
	Our search parameter is checked against the contents of each row and if found, the entire row is toggled
*/
function filterContacts(search) {
	$("#contactList tr").filter(function() {
		$(this).toggle($(this).text().toLowerCase().indexOf(search) > -1)
	});
}

// Because of bootstrap we're toggling the hide class for our search bar rather than simply using the toggle function
function searchButtonPressed() {
	$("#searchBar").toggleClass("hide");
	$("#searchBar").focus();
}

/* 
	All functions below here use AJAX to allow asynchronous content changing
	We're using it to update elements on our page without reloading or changing the page
	This also allows us to animate those changes

	We're using 2 ajax requests in each function, this is to update both our main content area and also our header
*/
function backButtonPressed() {
	var html = $.ajax({
		url: "contacts.cfm",
		cache: false
	})
	.done(function(html) {
		$("#contentWindow").fadeOut(200, function () {
			$("#contentWindow").html(html);
			$("#contentWindow").fadeIn(200);
		});
	});
	var headerhtml = $.ajax({
		url: "header_contacts.cfm",
		cache: false
	})
	.done(function(headerhtml) {
		$("#contentHeader").html(headerhtml);
	});
}

function contactPressed(id, name) {
	var html = $.ajax({
		url: "contact.cfm?uid=" + id,
		cache: false
	})
	.done(function(html) {
		$("#contentWindow").fadeOut(200, function () {
			$("#contentWindow").html(html);
			$("#contentWindow").fadeIn(200);
		});
	});
	var headerhtml = $.ajax({
		url: "header_contact.cfm?name=" + name + "&uid=" + id,
		cache: false
	})
	.done(function(headerhtml) {
		$("#contentHeader").html(headerhtml);
	});
}

function addContactPressed() {
	var html = $.ajax({
		url: "addcontact.cfm",
		cache: false
	})
	.done(function(html) {
		$("#contentWindow").fadeOut(200, function () {
			$("#contentWindow").html(html);
			$("#contentWindow").fadeIn(200);
		});
	});
	var headerhtml = $.ajax({
		url: "header_addcontact.cfm",
		cache: false
	})
	.done(function(headerhtml) {
		$("#contentHeader").html(headerhtml);
	});
}

function editContactPressed(id) {
	var html = $.ajax({
		url: "editcontact.cfm?uid=" + id,
		cache: false
	})
	.done(function(html) {
		$("#contentWindow").fadeOut(200, function () {
			$("#contentWindow").html(html);
			$("#contentWindow").fadeIn(200);
		});
	});
	var headerhtml = $.ajax({
		url: "header_addcontact.cfm",
		cache: false
	})
	.done(function(headerhtml) {
		$("#contentHeader").html(headerhtml);
	});
}