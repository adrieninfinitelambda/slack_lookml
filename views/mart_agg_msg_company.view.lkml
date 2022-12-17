view: mart_agg_msg_company {
  sql_table_name: MART_AGG_MSG_COMPANY
    ;;

  dimension: job_board {
    type: string
    sql: ${TABLE}."JOB_BOARD" ;;
  }

  dimension_group: last_msg {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}."LAST_MSG_DATE" ;;
  }

  dimension: slack_source {
    type: string
    sql: ${TABLE}."SLACK_SOURCE" ;;
  }

  dimension: usr_company_name {
    type: string
    sql: ${TABLE}."USR_COMPANY_NAME" ;;
  }


  measure: nb_msg_since_1_year {
    type: sum
    sql: ${TABLE}."NB_MSG_SINCE_1_YEAR" ;;
  }

  measure: nb_msg_since_2_year {
    type: sum
    sql: ${TABLE}."NB_MSG_SINCE_2_YEAR" ;;
  }

  measure: nb_msg_since_3_months {
    type: sum
    sql: ${TABLE}."NB_MSG_SINCE_3_MONTHS" ;;
  }

  measure: nb_msg_since_6_months {
    type: sum
    sql: ${TABLE}."NB_MSG_SINCE_6_MONTHS" ;;
  }

  measure: nb_total_msg {
    type: sum
    sql: ${TABLE}."NB_TOTAL_MSG" ;;
  }

  measure: count {
    type: count
    drill_fields: [usr_company_name, slack_source, job_board, nb_total_msg, nb_msg_since_3_months, nb_msg_since_6_months, nb_msg_since_1_year, nb_msg_since_2_year]
  }
}
