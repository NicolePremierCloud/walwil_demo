view: client_preference {
  sql_table_name: `gcp-sandbox-324617.Cargo_shipping.Client_Preference` ;;

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
