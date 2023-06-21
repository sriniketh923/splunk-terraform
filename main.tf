resource "splunk_saved_searches" "lookup_testing" {
  name = "test search please"
  search = "index=_audit | stats count by action, host"
  dispatch_earliest_time = "rt-15m"
  dispatch_latest_time = "rt-0m"
  cron_schedule = "*/5 * * * *"
  action_slack_param_attachment = "none"
  is_visible = true
  acl {
    owner = "admin"
    sharing = "app"
    app = "search"
  }
}