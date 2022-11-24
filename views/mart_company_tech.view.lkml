view: mart_company_tech {

  sql_table_name:
    -- if dev -- @{staging}.MART_COMPANY_TECH
    -- if prod -- @{prod}.MART_COMPANY_TECH
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


  measure: count {
    type: count
    drill_fields: [usr_last_name, usr_company_name, usr_first_name]
  }


  #To generate list use dbt macro : dbt run-operation generate_lookml
  #And copy / past result below
#Dimensions list
  dimension: cloud {
    type: string
    sql: ${TABLE}."CLOUD" ;;
  }

  dimension: datavizs {
    type: string
    sql: ${TABLE}."DATAVIZS" ;;
  }

  dimension: mls {
    type: string
    sql: ${TABLE}."MLS" ;;
  }

  dimension: datawarehouses {
    type: string
    sql: ${TABLE}."DATAWAREHOUSES" ;;
  }

  dimension: gits {
    type: string
    sql: ${TABLE}."GITS" ;;
  }

  dimension: dataingestions {
    type: string
    sql: ${TABLE}."DATAINGESTIONS" ;;
  }

  dimension: scheduler {
    type: string
    sql: ${TABLE}."SCHEDULER" ;;
  }

  dimension: reverseetl {
    type: string
    sql: ${TABLE}."REVERSEETL" ;;
  }

  dimension: transformation {
    type: string
    sql: ${TABLE}."TRANSFORMATION" ;;
  }

  dimension: datagovobs {
    type: string
    sql: ${TABLE}."DATAGOVOBS" ;;
  }

  dimension: streaming {
    type: string
    sql: ${TABLE}."STREAMING" ;;
  }

  dimension: analytics {
    type: string
    sql: ${TABLE}."ANALYTICS" ;;
  }

  dimension: role {
    type: string
    sql: ${TABLE}."ROLE" ;;
  }


  #Measure list



  measure: cloud_azure {
    group_label: "CLOUD"
    type: sum
    sql: ${TABLE}."CLOUD_AZURE" ;;
  }

  measure: cloud_aws {
    group_label: "CLOUD"
    type: sum
    sql: ${TABLE}."CLOUD_AWS" ;;
  }

  measure: cloud_gcp {
    group_label: "CLOUD"
    type: sum
    sql: ${TABLE}."CLOUD_GCP" ;;
  }

  measure: cloud_clickhouse {
    group_label: "CLOUD"
    type: sum
    sql: ${TABLE}."CLOUD_CLICKHOUSE" ;;
  }


  measure: datavizs_tableau {
    group_label: "DATAVIZS"
    type: sum
    sql: ${TABLE}."DATAVIZS_TABLEAU" ;;
  }

  measure: datavizs_looker {
    group_label: "DATAVIZS"
    type: sum
    sql: ${TABLE}."DATAVIZS_LOOKER" ;;
  }

  measure: datavizs_powerbi {
    group_label: "DATAVIZS"
    type: sum
    sql: ${TABLE}."DATAVIZS_POWERBI" ;;
  }

  measure: datavizs_streamlit {
    group_label: "DATAVIZS"
    type: sum
    sql: ${TABLE}."DATAVIZS_STREAMLIT" ;;
  }

  measure: datavizs_metabase {
    group_label: "DATAVIZS"
    type: sum
    sql: ${TABLE}."DATAVIZS_METABASE" ;;
  }

  measure: datavizs_datastudio {
    group_label: "DATAVIZS"
    type: sum
    sql: ${TABLE}."DATAVIZS_DATASTUDIO" ;;
  }

  measure: datavizs_qlik {
    group_label: "DATAVIZS"
    type: sum
    sql: ${TABLE}."DATAVIZS_QLIK" ;;
  }

  measure: datavizs_hex {
    group_label: "DATAVIZS"
    type: sum
    sql: ${TABLE}."DATAVIZS_HEX" ;;
  }

  measure: datavizs_mode {
    group_label: "DATAVIZS"
    type: sum
    sql: ${TABLE}."DATAVIZS_MODE" ;;
  }


  measure: mls_databricks {
    group_label: "MLS"
    type: sum
    sql: ${TABLE}."MLS_DATABRICKS" ;;
  }

  measure: mls_jupyter {
    group_label: "MLS"
    type: sum
    sql: ${TABLE}."MLS_JUPYTER" ;;
  }

  measure: mls_sagemaker {
    group_label: "MLS"
    type: sum
    sql: ${TABLE}."MLS_SAGEMAKER" ;;
  }

  measure: mls_tensorflow {
    group_label: "MLS"
    type: sum
    sql: ${TABLE}."MLS_TENSORFLOW" ;;
  }


  measure: datawarehouses_redshift {
    group_label: "DATAWAREHOUSES"
    type: sum
    sql: ${TABLE}."DATAWAREHOUSES_REDSHIFT" ;;
  }

  measure: datawarehouses_snowflake {
    group_label: "DATAWAREHOUSES"
    type: sum
    sql: ${TABLE}."DATAWAREHOUSES_SNOWFLAKE" ;;
  }

  measure: datawarehouses_bigquery {
    group_label: "DATAWAREHOUSES"
    type: sum
    sql: ${TABLE}."DATAWAREHOUSES_BIGQUERY" ;;
  }

  measure: datawarehouses_rds {
    group_label: "DATAWAREHOUSES"
    type: sum
    sql: ${TABLE}."DATAWAREHOUSES_RDS" ;;
  }


  measure: gits_gitlab {
    group_label: "GITS"
    type: sum
    sql: ${TABLE}."GITS_GITLAB" ;;
  }

  measure: gits_github {
    group_label: "GITS"
    type: sum
    sql: ${TABLE}."GITS_GITHUB" ;;
  }

  measure: gits_bitbucket {
    group_label: "GITS"
    type: sum
    sql: ${TABLE}."GITS_BITBUCKET" ;;
  }


  measure: dataingestions_fivetran {
    group_label: "DATAINGESTIONS"
    type: sum
    sql: ${TABLE}."DATAINGESTIONS_FIVETRAN" ;;
  }

  measure: dataingestions_airbyte {
    group_label: "DATAINGESTIONS"
    type: sum
    sql: ${TABLE}."DATAINGESTIONS_AIRBYTE" ;;
  }

  measure: dataingestions_stitch {
    group_label: "DATAINGESTIONS"
    type: sum
    sql: ${TABLE}."DATAINGESTIONS_STITCH" ;;
  }

  measure: dataingestions_meltano {
    group_label: "DATAINGESTIONS"
    type: sum
    sql: ${TABLE}."DATAINGESTIONS_MELTANO" ;;
  }

  measure: dataingestions_singer {
    group_label: "DATAINGESTIONS"
    type: sum
    sql: ${TABLE}."DATAINGESTIONS_SINGER" ;;
  }


  measure: scheduler_airflow {
    group_label: "SCHEDULER"
    type: sum
    sql: ${TABLE}."SCHEDULER_AIRFLOW" ;;
  }

  measure: scheduler_prefect {
    group_label: "SCHEDULER"
    type: sum
    sql: ${TABLE}."SCHEDULER_PREFECT" ;;
  }


  measure: reverseetl_hightouch {
    group_label: "REVERSEETL"
    type: sum
    sql: ${TABLE}."REVERSEETL_HIGHTOUCH" ;;
  }

  measure: reverseetl_censius {
    group_label: "REVERSEETL"
    type: sum
    sql: ${TABLE}."REVERSEETL_CENSIUS" ;;
  }


  measure: transformation_dbt {
    group_label: "TRANSFORMATION"
    type: sum
    sql: ${TABLE}."TRANSFORMATION_DBT" ;;
  }

  measure: transformation_talend {
    group_label: "TRANSFORMATION"
    type: sum
    sql: ${TABLE}."TRANSFORMATION_TALEND" ;;
  }

  measure: transformation_dataflow {
    group_label: "TRANSFORMATION"
    type: sum
    sql: ${TABLE}."TRANSFORMATION_DATAFLOW" ;;
  }


  measure: datagovobs_atlan {
    group_label: "DATAGOVOBS"
    type: sum
    sql: ${TABLE}."DATAGOVOBS_ATLAN" ;;
  }

  measure: datagovobs_selectstar {
    group_label: "DATAGOVOBS"
    type: sum
    sql: ${TABLE}."DATAGOVOBS_SELECTSTAR" ;;
  }

  measure: datagovobs_sifflet {
    group_label: "DATAGOVOBS"
    type: sum
    sql: ${TABLE}."DATAGOVOBS_SIFFLET" ;;
  }

  measure: datagovobs_castor {
    group_label: "DATAGOVOBS"
    type: sum
    sql: ${TABLE}."DATAGOVOBS_CASTOR" ;;
  }

  measure: datagovobs_secoda {
    group_label: "DATAGOVOBS"
    type: sum
    sql: ${TABLE}."DATAGOVOBS_SECODA" ;;
  }

  measure: datagovobs_collibra {
    group_label: "DATAGOVOBS"
    type: sum
    sql: ${TABLE}."DATAGOVOBS_COLLIBRA" ;;
  }

  measure: datagovobs_immuta {
    group_label: "DATAGOVOBS"
    type: sum
    sql: ${TABLE}."DATAGOVOBS_IMMUTA" ;;
  }


  measure: streaming_kafka {
    group_label: "STREAMING"
    type: sum
    sql: ${TABLE}."STREAMING_KAFKA" ;;
  }

  measure: streaming_kinesis {
    group_label: "STREAMING"
    type: sum
    sql: ${TABLE}."STREAMING_KINESIS" ;;
  }

  measure: streaming_sub {
    group_label: "STREAMING"
    type: sum
    sql: ${TABLE}."STREAMING_SUB" ;;
  }


  measure: analytics_at_internet {
    group_label: "ANALYTICS"
    type: sum
    sql: ${TABLE}."ANALYTICS_AT_INTERNET" ;;
  }

  measure: analytics_snowplow {
    group_label: "ANALYTICS"
    type: sum
    sql: ${TABLE}."ANALYTICS_SNOWPLOW" ;;
  }

  measure: analytics_google_analytics {
    group_label: "ANALYTICS"
    type: sum
    sql: ${TABLE}."ANALYTICS_GOOGLE_ANALYTICS" ;;
  }

  measure: analytics_mixpanel {
    group_label: "ANALYTICS"
    type: sum
    sql: ${TABLE}."ANALYTICS_MIXPANEL" ;;
  }

  measure: analytics_segment {
    group_label: "ANALYTICS"
    type: sum
    sql: ${TABLE}."ANALYTICS_SEGMENT" ;;
  }


  measure: role_analyst {
    group_label: "ROLE"
    type: sum
    sql: ${TABLE}."ROLE_ANALYST" ;;
  }

  measure: role_analytics_eng {
    group_label: "ROLE"
    type: sum
    sql: ${TABLE}."ROLE_ANALYTICS_ENG" ;;
  }

  measure: role_data_science {
    group_label: "ROLE"
    type: sum
    sql: ${TABLE}."ROLE_DATA_SCIENCE" ;;
  }

  measure: role_data_eng {
    group_label: "ROLE"
    type: sum
    sql: ${TABLE}."ROLE_DATA_ENG" ;;
  }

}
