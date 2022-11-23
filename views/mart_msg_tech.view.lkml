view: mart_msg_tech {
  sql_table_name:
    -- if dev -- '@{staging}.MART_MSG_TECH'
    -- if prod -- '@{prod}.MART_MSG_TECH'
    ;;


  dimension: usr_id {
    type: string
    sql: ${TABLE}."USR_ID" ;;
  }

  dimension: msg_send_date {
    type: string
    sql: ${TABLE}."MSG_SEND_DATE" ;;
  }

  dimension: msg_text {
    type: string
    sql: ${TABLE}."MSG_TEXT" ;;
  }


  #Measures
  dimension: analytics_at_internet {
    type: number
    sql: ${TABLE}."ANALYTICS_AT_INTERNET" ;;
  }

  dimension: analytics_google_analytics {
    type: number
    sql: ${TABLE}."ANALYTICS_GOOGLE_ANALYTICS" ;;
  }

  dimension: analytics_mixpanel {
    type: number
    sql: ${TABLE}."ANALYTICS_MIXPANEL" ;;
  }

  dimension: analytics_segment {
    type: number
    sql: ${TABLE}."ANALYTICS_SEGMENT" ;;
  }

  dimension: analytics_snowplow {
    type: number
    sql: ${TABLE}."ANALYTICS_SNOWPLOW" ;;
  }

  dimension: cloud_infras_aws {
    type: number
    sql: ${TABLE}."CLOUD_INFRAS_AWS" ;;
  }

  dimension: cloud_infras_azure {
    type: number
    sql: ${TABLE}."CLOUD_INFRAS_AZURE" ;;
  }

  dimension: cloud_infras_clickhouse {
    type: number
    sql: ${TABLE}."CLOUD_INFRAS_CLICKHOUSE" ;;
  }

  dimension: cloud_infras_gcp {
    type: number
    sql: ${TABLE}."CLOUD_INFRAS_GCP" ;;
  }

  dimension: data_ingestions_airbyte {
    type: number
    sql: ${TABLE}."DATA_INGESTIONS_AIRBYTE" ;;
  }

  dimension: data_ingestions_fivetran {
    type: number
    sql: ${TABLE}."DATA_INGESTIONS_FIVETRAN" ;;
  }

  dimension: data_ingestions_stitch {
    type: number
    sql: ${TABLE}."DATA_INGESTIONS_STITCH" ;;
  }

  dimension: datavizs_datastudio {
    type: number
    sql: ${TABLE}."DATAVIZS_DATASTUDIO" ;;
  }

  dimension: datavizs_hex {
    type: number
    sql: ${TABLE}."DATAVIZS_HEX" ;;
  }

  dimension: datavizs_looker {
    type: number
    sql: ${TABLE}."DATAVIZS_LOOKER" ;;
  }

  dimension: datavizs_metabase {
    type: number
    sql: ${TABLE}."DATAVIZS_METABASE" ;;
  }

  dimension: datavizs_mode {
    type: number
    sql: ${TABLE}."DATAVIZS_MODE" ;;
  }

  dimension: datavizs_power {
    type: number
    sql: ${TABLE}."DATAVIZS_POWER" ;;
  }

  dimension: datavizs_qlik {
    type: number
    sql: ${TABLE}."DATAVIZS_QLIK" ;;
  }

  dimension: datavizs_streamlit {
    type: number
    sql: ${TABLE}."DATAVIZS_STREAMLIT" ;;
  }

  dimension: datavizs_tableau {
    type: number
    sql: ${TABLE}."DATAVIZS_TABLEAU" ;;
  }

  dimension: datawarehouses_big_query {
    type: number
    sql: ${TABLE}."DATAWAREHOUSES_BIG_QUERY" ;;
  }

  dimension: datawarehouses_rds {
    type: number
    sql: ${TABLE}."DATAWAREHOUSES_RDS" ;;
  }

  dimension: datawarehouses_redshift {
    type: number
    sql: ${TABLE}."DATAWAREHOUSES_REDSHIFT" ;;
  }

  dimension: datawarehouses_snowflake {
    type: number
    sql: ${TABLE}."DATAWAREHOUSES_SNOWFLAKE" ;;
  }

  dimension: gits_bitbucket {
    type: number
    sql: ${TABLE}."GITS_BITBUCKET" ;;
  }

  dimension: gits_github {
    type: number
    sql: ${TABLE}."GITS_GITHUB" ;;
  }

  dimension: gits_gitlab {
    type: number
    sql: ${TABLE}."GITS_GITLAB" ;;
  }

  dimension: mls_databricks {
    type: number
    sql: ${TABLE}."MLS_DATABRICKS" ;;
  }

  dimension: reverse_etl_censius {
    type: number
    sql: ${TABLE}."REVERSE_ETL_CENSIUS" ;;
  }

  dimension: reverse_etl_hightouch {
    type: number
    sql: ${TABLE}."REVERSE_ETL_HIGHTOUCH" ;;
  }

  dimension: role_analyst {
    type: number
    sql: ${TABLE}."ROLE_ANALYST" ;;
  }

  dimension: role_analytics_eng {
    type: number
    sql: ${TABLE}."ROLE_ANALYTICS_ENG" ;;
  }

  dimension: role_data_eng {
    type: number
    sql: ${TABLE}."ROLE_DATA_ENG" ;;
  }

  dimension: role_data_scien {
    type: number
    sql: ${TABLE}."ROLE_DATA_SCIEN" ;;
  }

  dimension: scheduler_airflow {
    type: number
    sql: ${TABLE}."SCHEDULER_AIRFLOW" ;;
  }

  dimension: scheduler_prefect {
    type: number
    sql: ${TABLE}."SCHEDULER_PREFECT" ;;
  }

  dimension: streaming_kafka {
    type: number
    sql: ${TABLE}."STREAMING_KAFKA" ;;
  }

  dimension: transformation_dbt {
    type: number
    sql: ${TABLE}."TRANSFORMATION_DBT" ;;
  }

  dimension: transformation_talend {
    type: number
    sql: ${TABLE}."TRANSFORMATION_TALEND" ;;
  }


  measure: count {
    type: count
    drill_fields: []
  }
}
