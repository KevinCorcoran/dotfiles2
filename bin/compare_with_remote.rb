def log_it(commits, name, verbose_name)
	if commits.empty?
		puts "No unique commits exist on the #{name} branch (#{verbose_name})."
	else
		puts "These commits only exist on the #{name} branch (#{verbose_name}):"
		puts commits
	end
end

current_branch = `git current-branch`.chomp
potential_tracking_branch = `git tracking`.chomp
tracking_branch = 
	if $? == 0
		potential_tracking_branch
	else
		"origin/#{current_branch}"
	end

puts

remote_commits = `git log --color=always --oneline ..#{tracking_branch}`
log_it(remote_commits, "REMOTE", tracking_branch)

puts

local_commits = `git log --color=always --oneline #{tracking_branch}..`
log_it(local_commits, "LOCAL", current_branch)

