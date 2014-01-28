namespace :s3 do
	task :sync do
	  access_key = fetch :aws_access_key_id
	  secret_key = fetch :aws_access_secret_key
	  s3_endpoint = fetch :s3sync_endpoint
	  src = fetch :s3sync_src
	  dst = fetch :s3sync_dst
	  run_locally do
	    ENV['AWS_ACCESS_KEY_ID'] = access_key
	    ENV['AWS_SECRET_ACCESS_KEY'] = secret_key
	    opt_endpoint = s3_endpoint ? "--endpoint #{s3_endpoint}" : ""
	    execute "bundle exec s3sync sync #{src} #{dst} #{opt_endpoint}"
	  end
	end
end