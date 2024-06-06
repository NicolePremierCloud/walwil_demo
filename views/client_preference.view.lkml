view: client_preference {
  sql_table_name: `Cargo_shipping.Client_Preference` ;;

  dimension: client_id {
    type: string
    sql: ${TABLE}.Client_ID ;;
  }
  dimension: preference {
    type: string
    sql: ${TABLE}.Preference ;;
  }
  dimension: shippment_id {
    type: number
    sql: ${TABLE}.Shippment_ID ;;
  }
  measure: count {
    type: count
  }
}
