create-pr-description:
	git diff main...HEAD > differences.txt
	@if [ -z "${STORY_NUMBER}"]; then \
		echo "No JIRA story number found in branch name."; \
	else \
		echo "Please create a Pull Request description using the pull_request_template.md file attached with code changes from the differences.txt file attached. Generate two sentences max overview explaining the changes at a high level. Story number is ${STORY_NUMBER}. The output content must be in Markdown using source code format"