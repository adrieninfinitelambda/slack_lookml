connection: "slack-looker"

# include all the views
include: "/views/**/*.view"

datagroup: slack_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "24 hour"
}

explore: mart_msg_tech  {
  label: "Slack message informations"
}

explore: mart_company_tech {
  label: "Company aggregate informations"
}
