<body background='<%= asset_path 'mainback.png' %>'>
atom_feed do |feed|
	feed.title "Ritvik's Blog feed"
	@posts.each do |post|
		feed.entry(post) do |entry|
			entry.title post.title
			entry.content post.text
		end
	end
end