view: route {
  sql_table_name: `Cargo_shipping.Route` ;;
  drill_fields: [route_id]

  dimension: route_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.RouteID ;;
  }
  dimension: destination {
    type: string
    sql: ${TABLE}.Destination ;;
  }
  dimension: distance {
    type: number
    sql: ${TABLE}.Distance ;;
  }
  dimension: origin {
    type: string
    sql: ${TABLE}.Origin ;;
  }
  measure: count {
    type: count
    drill_fields: [route_id]
  }
}
