def log_it(commits, name)
	if commits.empty?
		puts "No unique commits exist on the #{name} branch."
	else
		puts "These commits only exist on the #{name} branch:"
		puts commits
	end
end

current_branch = `git current-branch`.chomp

puts

remote_commits = `git log --color=always --oneline ..origin/#{current_branch}`
log_it(remote_commits, "REMOTE")

puts

local_commits = `git log --color=always --oneline origin/#{current_branch}..`
log_it(local_commits, "LOCAL")

