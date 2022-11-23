view: mart_company_tech {

  sql_table_name:
    -- if dev -- '@{staging}.MART_COMPANY_TECH'
    -- if prod -- '@{prod}.MART_COMPANY_TECH'
    ;;


  #User informations
  dimension: usr_id {
    primary_key: yes
    type: string
    sql: ${TABLE}."USR_ID" ;;
  }

  dimension: usr_first_name {
    type: string
    sql: ${TABLE}."USR_FIRST_NAME" ;;
  }

  dimension: usr_last_name {
    type: string
    sql: ${TABLE}."USR_LAST_NAME" ;;
  }

  dimension: usr_title {
    type: string
    sql: ${TABLE}."USR_TITLE" ;;
  }

  dimension: usr_company_name {
    type: string
    sql: ${TABLE}."USR_COMPANY_NAME" ;;
  }


  #Aggr techs
  dimension: analytics {
    type: string
    sql: ${TABLE}."ANALYTICS" ;;
  }

  dimension: cloud_infras {
    type: string
    sql: ${TABLE}."CLOUD_INFRAS" ;;
  }


  dimension: data_ingestions {
    type: string
    sql: ${TABLE}."DATA_INGESTIONS" ;;
  }

  dimension: datavizs {
    type: string
    sql: ${TABLE}."DATAVIZS" ;;
  }


  dimension: datawarehouses {
    type: string
    sql: ${TABLE}."DATAWAREHOUSES" ;;
  }

  dimension: gits {
    type: string
    sql: ${TABLE}."GITS" ;;
  }

  dimension: mls {
    type: string
    sql: ${TABLE}."MLS" ;;
  }

  dimension: reverse_etl {
    type: string
    sql: ${TABLE}."REVERSE_ETL" ;;
  }

  dimension: reverse_etl_censius {
    type: number
    sql: ${TABLE}."REVERSE_ETL_CENSIUS" ;;
  }

  dimension: reverse_etl_hightouch {
    type: number
    sql: ${TABLE}."REVERSE_ETL_HIGHTOUCH" ;;
  }

  dimension: role {
    type: string
    sql: ${TABLE}."ROLE" ;;
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

  dimension: scheduler {
    type: string
    sql: ${TABLE}."SCHEDULER" ;;
  }

  dimension: streaming {
    type: string
    sql: ${TABLE}."STREAMING" ;;
  }

  dimension: transformation {
    type: string
    sql: ${TABLE}."TRANSFORMATION" ;;
  }



  measure: datavizs_datastudio {
    type: sum
    sql: ${TABLE}."DATAVIZS_DATASTUDIO" ;;
  }

  measure: datavizs_hex {
    type: sum
    sql: ${TABLE}."DATAVIZS_HEX" ;;
  }

  measure: datavizs_looker {
    type: sum
    sql: ${TABLE}."DATAVIZS_LOOKER" ;;
  }

  measure: datavizs_metabase {
    type: sum
    sql: ${TABLE}."DATAVIZS_METABASE" ;;
  }

  measure: datavizs_mode {
    type: sum
    sql: ${TABLE}."DATAVIZS_MODE" ;;
  }

  measure: datavizs_power {
    type: sum
    sql: ${TABLE}."DATAVIZS_POWER" ;;
  }

  measure: datavizs_qlik {
    type: sum
    sql: ${TABLE}."DATAVIZS_QLIK" ;;
  }

  measure: datavizs_streamlit {
    type: sum
    sql: ${TABLE}."DATAVIZS_STREAMLIT" ;;
  }

  measure: datavizs_tableau {
    type: sum
    sql: ${TABLE}."DATAVIZS_TABLEAU" ;;
  }

  measure: data_ingestions_airbyte {
    type: sum
    sql: ${TABLE}."DATA_INGESTIONS_AIRBYTE" ;;
  }

  measure: data_ingestions_fivetran {
    type: sum
    sql: ${TABLE}."DATA_INGESTIONS_FIVETRAN" ;;
  }

  measure: data_ingestions_stitch {
    type: sum
    sql: ${TABLE}."DATA_INGESTIONS_STITCH" ;;
  }

  measure: cloud_infras_aws {
    type: sum
    sql: ${TABLE}."CLOUD_INFRAS_AWS" ;;
  }

  measure: cloud_infras_azure {
    type: sum
    sql: ${TABLE}."CLOUD_INFRAS_AZURE" ;;
  }

  measure: cloud_infras_clickhouse {
    type: sum
    sql: ${TABLE}."CLOUD_INFRAS_CLICKHOUSE" ;;
  }

  measure: cloud_infras_gcp {
    type: sum
    sql: ${TABLE}."CLOUD_INFRAS_GCP" ;;
  }

  measure: analytics_at_internet {
    type: sum
    sql: ${TABLE}."ANALYTICS_AT_INTERNET" ;;
  }

  measure: analytics_google_analytics {
    type: sum
    sql: ${TABLE}."ANALYTICS_GOOGLE_ANALYTICS" ;;
  }

  measure: analytics_mixpanel {
    type: sum
    sql: ${TABLE}."ANALYTICS_MIXPANEL" ;;
  }

  measure: analytics_segment {
    type: sum
    sql: ${TABLE}."ANALYTICS_SEGMENT" ;;
  }

  measure: analytics_snowplow {
    type: sum
    sql: ${TABLE}."ANALYTICS_SNOWPLOW" ;;
  }

  measure: datawarehouses_big_query {
    type: sum
    sql: ${TABLE}."DATAWAREHOUSES_BIG_QUERY" ;;
  }

  measure: datawarehouses_rds {
    type: sum
    sql: ${TABLE}."DATAWAREHOUSES_RDS" ;;
  }

  measure: datawarehouses_redshift {
    type: sum
    sql: ${TABLE}."DATAWAREHOUSES_REDSHIFT" ;;
  }

  measure: datawarehouses_snowflake {
    type: sum
    sql: ${TABLE}."DATAWAREHOUSES_SNOWFLAKE" ;;
  }

  measure: gits_bitbucket {
    type: sum
    sql: ${TABLE}."GITS_BITBUCKET" ;;
  }

  measure: gits_github {
    type: sum
    sql: ${TABLE}."GITS_GITHUB" ;;
  }

  measure: gits_gitlab {
    type: sum
    sql: ${TABLE}."GITS_GITLAB" ;;
  }

  measure: mls_databricks {
    type: sum
    sql: ${TABLE}."MLS_DATABRICKS" ;;
  }

  measure: scheduler_airflow {
    type: sum
    sql: ${TABLE}."SCHEDULER_AIRFLOW" ;;
  }

  measure: scheduler_prefect {
    type: sum
    sql: ${TABLE}."SCHEDULER_PREFECT" ;;
  }


  measure: streaming_kafka {
    type: sum
    sql: ${TABLE}."STREAMING_KAFKA" ;;
  }

  measure: transformation_dbt {
    type: sum
    sql: ${TABLE}."TRANSFORMATION_DBT" ;;
  }

  measure: transformation_talend {
    type: sum
    sql: ${TABLE}."TRANSFORMATION_TALEND" ;;
  }

  measure: count {
    type: count
    drill_fields: [usr_last_name, usr_company_name, usr_first_name]
  }
}
