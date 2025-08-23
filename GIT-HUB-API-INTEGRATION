#!/bin/bash
######################
# Usage:
# 1. Export your token once:
#    export GITHUB_TOKEN="ghp_xxx"
#
# 2. Run script:
#    ./git-api-integration.sh <owner/repo>
#
# Example:
#    ./git-api-integration.sh Sanket-learn-Devops/Shell-Scripts-Projects

if [ $# -lt 1 ]; then
    echo "usage: $0 [owner/repo]"
    exit 1
fi

# Read token from env var
if [ -z "$GITHUB_TOKEN" ]; then
    echo "❌ Please export your GitHub token first:"
    echo "   export GITHUB_TOKEN=your_token"
    exit 1
i

REPO=$1
GITHUB_API_HEADER_ACCEPT="Accept: application/vnd.github.v3+json"
TEMPFILE=$(mktemp /tmp/gitapi.XXXXXX) || exit 1

# Function to call API
function rest_call {
    curl -s "$1" \
        -H "${GITHUB_API_HEADER_ACCEPT}" \
        -H "Authorization: token $GITHUB_TOKEN" > "$TEMPFILE"
}
# Get repo info
# ---------------------------
rest_call "https://api.github.com/repos/${REPO}"

# Extract stars, forks, watchers
stars=$(jq '.stargazers_count' "$TEMPFILE")
forks=$(jq '.forks_count' "$TEMPFILE")
watchers=$(jq '.subscribers_count' "$TEMPFILE")

# ---------------------------
# Get contributors count
# ---------------------------
rest_call "https://api.github.com/repos/${REPO}/contributors?per_page=100"
contributors=$(jq 'length' "$TEMPFILE")
# Print Summary
# ---------------------------
echo "📊 Repository: $REPO"
echo "⭐ Stars      : $stars"
echo "🍴 Forks      : $forks"
echo "👀 Watchers   : $watchers"
echo "👤 Contributors: $contributors"
