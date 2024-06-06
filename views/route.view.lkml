view: route {
  sql_table_name: `gcp-sandbox-324617.Cargo_shipping.route` ;;
  drill_fields: [route_id]

  dimension: route_id {
    primary_key: yes
    type: string
    sql: ${TABLE}.route_id ;;
  }
  dimension: cost {
    type: number
    sql: ${TABLE}.cost ;;
  }
  dimension: destination_country {
    type: string
    sql: ${TABLE}.destination_country ;;
  }
  dimension: distance {
    type: number
    sql: ${TABLE}.distance ;;
  }
  dimension: duration {
    type: number
    sql: ${TABLE}.duration ;;
  }
  dimension: origin_country {
    type: string
    sql: ${TABLE}.origin_country ;;
  }
  dimension: shipping_way {
    type: string
    sql: ${TABLE}.shipping_way ;;
  }
  dimension: trip_details {
    type: string
    sql: ${TABLE}.trip_details ;;
  }
  measure: count {
    type: count
    drill_fields: [route_id]
  }
}
