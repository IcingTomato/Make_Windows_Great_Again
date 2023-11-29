# PowerShell Script to Perform Git Operations with User-Inputted Path

# Prompt for the path to the Git repository
$repoPath = Read-Host -Prompt "Enter the path to your git repository"

# Change to the specified directory
cd $repoPath

# Update git
git pull

# Add all changes to staging
git add --all

# Prompt for a commit message
$commitMessage = Read-Host -Prompt "Enter your commit message"

# Commit the changes
git commit -m "$commitMessage"

# Push the changes to the remote repository
git push

# Back to the origin folder
cd ..
