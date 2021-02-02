view: salaries {
  sql_table_name: public.salaries ;;

  dimension: emp_no {
    type: number
    sql: ${TABLE}."emp_no" ;;
  }

  dimension_group: from {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}."from_date" ;;
  }

  dimension: salary {
    type: number
    sql: ${TABLE}."salary" ;;
  }

  dimension_group: to {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}."to_date" ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
