function filterContacts(search) {
	$("#contactList tr").filter(function() {
		$(this).toggle($(this).text().toLowerCase().indexOf(search) > -1)
	});
}

function searchButtonPressed() {
	$("#searchBar").toggleClass("hide");
	$("#searchBar").focus();
}

function searchButtonPressed() {
	$("#searchBar").toggleClass("hide");
	$("#searchBar").focus();
}

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
		url: "header_contact.cfm?name=" + name,
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