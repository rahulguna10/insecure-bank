export WORKFLOW_TEMPLATE_PATH="${1}/workflow_engine/workflow-template.yml"

workflow=$(cat $WORKFLOW_TEMPLATE_PATH | \
sed "s~{{SLACK_CHANNEL_ID}}~$SLACK_CHANNEL_ID~g; \
s~{{SLACK_TOKEN}}~$SLACK_TOKEN~g; \
s~{{POLARIS_PROJECT_NAME}}~$POLARIS_PROJECT_NAME~g; \
s~{{POLARIS_URL}}~$POLARIS_URL~g; \
s~{{POLARIS_TOKEN}}~$POLARIS_TOKEN~g")

# apply the yml with the substituted value
echo "$workflow" > ${1}/workflow_engine/workflow.yml