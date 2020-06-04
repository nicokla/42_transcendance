let Post = {};

Post.Collection = Backbone.Collection.extend({
	url: function() {
		return "/posts/read";
	}
});
Post.collection = new Post.Collection();

Post.ViewArticles = Backbone.View.extend({
	template: _.template("<li>" +
						 "<h2><%= title %></h2>" +
						 "<p><%= content %></p>" +
						 "<hr>" +
						 "</li>"),
						//  "<p>" +
						//  "<a href=\"<%= post_path(post.id) %>\">See</a>" +
						//  "<a href=\"<%= edit_post_path(post.id) %>\">Edit</a>" +
						//  "<a href=\"<%= post_path(post.id) %>\" data-method=\"DELETE\">Delete</a>"+
					 	//  "</p>" +
	initialize: function() {
		Post.collection.on("sync", this.render, this);
		Post.collection.fetch();
	},
	render: function() {
		$("ul").html("");
		Post.collection.each(this.renderItem, this);
	},
	renderItem: function(item) {
		$("ul").append(this.template(item.attributes));
	}
});

Post.View = Backbone.View.extend({
	el: "#whereYouPutTheTemplate",
	initialize: function() {
		this.$el.html($("#articleSeeListTemplate").html());

		new Post.ViewArticles({ el: this.$("#listOfArticles"),
								 collection: this.collection });
	}
});

function createNewArticle(){
	var title =  $('#title').val();
	var content = $('#content').val()
	$.ajax({
		url: '/posts/create',
		data: {
			title: title,
			content: content
		},
		type: "GET"
	})
	Post.viewArticles.render()
	$('#title').val('')
	$('#content').val('')
}


Post.display = function() {
	window.location.hash = "#post";

	new Post.View();

	$('#submitButton').on("click", function(){createNewArticle()})
};


export default Post;
