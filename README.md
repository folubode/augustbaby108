"# augustbaby108" 

http://www.peoplecancode.com/tutorials/users-avatars-uploading-images-using-paperclip

	<!-- <div class="comment-meta-details text-muted">
		<small> <em> Posted <%= time_ago_in_words(comment.created_at) unless comment.created_at.blank? %> ago by <%= comment.user.username %> </em></small> 
	</div>
	-->
<%= comment.user.username %>

	<%= link_to "Edit this article",  edit_article_comment_path(@article, @user, comment), class: "btn btn-xs btn-primary" %>

	