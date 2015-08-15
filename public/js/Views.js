App.Views.Punkt = Backbone.View.extend({
	initialize: function(){
		//this.model.on("change", this.render, this);
	},

	tagName: 'li',

	render: function(){
		this.$el.html( this.model.get('rejimRab')+ '<br>'+ this.model.get('phone')+ '<br>' + this.model.get('addr')+ '<br>'+this.model.get('name'));
		return this;
	}
});








/*
App.Views.Contact = Backbone.View.extend({
	initialize: function(){
		this.model.on("destroy", this.unrender, this);
		this.model.on("change", this.render, this);
	},

	tagName: 'tr',

	events: {
		"click a.delete":"delContact",
		"click a.edit":"editContact",
	},

	template: App.template("singleContact"),

	render: function(){
		this.$el.html( this.template( this.model.toJSON() ) );
		this.el.bgColor = "white";
		return this;
	},

	unrender: function(){
		this.$el.remove();
		$("#editContact").hide();
		$("#addContact").show();
	},

	delContact: function(){
		this.model.destroy();
	},
	editContact: function(){
		$("#addContact").hide();
		$("#editContact").show();
		$("#editContact #name").val(this.model.get('name'));
		$("#editContact #surname").val(this.model.get('surname'));
		$("#editContact #email").val(this.model.get('email'));
		$("#editContact #phone").val(this.model.get('phone'));
		$("#editContact #description").val(this.model.get('description'));
		$("#editContact #id").val(this.model.get('id'));
		this.el.bgColor = "LightCyan";
	}


});


App.Views.App = Backbone.View.extend({

	initialize: function(){
		var addContact = new App.Views.addContact({collection: App.contacts});

		var editContact = new App.Views.editContact({collection: App.contacts});
		var contList = new App.Views.contactsList({ collection: App.contacts });
		contList.render();

		//if(contList.el.childElementCount == 0)
		//	$("body").append("<center><h3>Список пока пуст, заполните его</h3></center>");
		$("#allContactsTable").append(contList.el);
		
			
	}

});


App.Views.addContact = Backbone.View.extend({
	el: "#formAddContact",
	
	events: {
		'submit' : 'addContact'
	},

	addContact: function(e){
		e.preventDefault();
		//alert("Добавление контакта");

		this.collection.create({
			name: this.$("#name").val(),
			surname: this.$("#surname").val(),
			email: this.$("#email").val(),
			phone: this.$("#phone").val(),
			description: this.$("#description").val(),
		}, {
			success: function(response){
			 inp =	$('#delContact').html();
			 console.log(response.id);
			}
		});

		this.clearInputs();
	},
	clearInputs: function(){
		$("#name").val('');
		$("#surname").val('');
		$("#phone").val('');
		$("#email").val('');
		$("#description").val('');
	}
});


App.Views.editContact = Backbone.View.extend({
	el: "#formEditContact",
	
	events: {
		'submit' : 'editContact'
	},

	editContact: function(e){
		e.preventDefault();
		//alert("Добавление контакта");
		contact_id = $("#editContact #id").val();

		contact = this.collection.get(contact_id);
		contact.set({
			name :  $("#editContact #name").val(),
			surname : $("#editContact #surname").val(),
			email : $("#editContact #email").val(),
			phone : $("#editContact #phone").val(),
			description : $("#editContact #description").val()
		});
		
		contact.save();
		this.clearInputs();
		$("#editContact").hide();
		$("#addContact").show();
	},
	clearInputs: function(){
		$("#name").val('');
		$("#surname").val('');
		$("#phone").val('');
		$("#email").val('');
		$("#description").val('');
	}
});



App.Views.contactsList = Backbone.View.extend({

	initialize: function(){
		console.log('privet_mir');
		this.collection.on("add", this.addOne, this);
	},

	tagName: 'tbody',

	render: function(){
		this.collection.each(this.addOne, this);
		return this;
	},

	addOne: function(contact){
		if(email = contact.get('email') == '') alert('Ошибка')
			else{
		Contact = new App.Views.Contact({model: contact});
		this.$el.a

		*/