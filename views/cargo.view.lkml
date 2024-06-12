view: cargo {
  sql_table_name: `gcp-sandbox-324617.Cargo_shipping.cargo` ;;

  dimension: bill_of_lading {
    type: string
    sql: ${TABLE}.bill_of_lading ;;
  }
  dimension: carrier_address {
    type: string
    sql: ${TABLE}.carrier_address ;;
  }
  dimension: carrier_city {
    type: string
    sql: ${TABLE}.carrier_city ;;
  }
  dimension: carrier_code {
    type: string
    sql: ${TABLE}.carrier_code ;;
  }
  dimension: carrier_name {
    type: string
    sql: ${TABLE}.carrier_name ;;
  }
  dimension: carrier_state {
    type: string
    sql: ${TABLE}.carrier_state ;;
  }
  dimension: carrier_zip {
    type: number
    sql: ${TABLE}.carrier_zip ;;
  }
  dimension: client_id {
    type: string
    sql: ${TABLE}.Client_ID ;;
  }
  dimension: consignee {
    type: string
    sql: ${TABLE}.consignee ;;
  }
  dimension: consignee_address {
    type: string
    sql: ${TABLE}.consignee_address ;;
  }
  dimension: container_number {
    type: string
    sql: ${TABLE}.container_number ;;
  }
  dimension: container_type {
    type: string
    sql: ${TABLE}.container_type ;;
  }
  dimension: country_of_origin {
    type: string
    sql: ${TABLE}.country_of_origin ;;
  }
  dimension: foreign_port {
    type: string
    sql: ${TABLE}.foreign_port ;;
  }
  dimension: gross_weight_kg {
    type: number
    sql: ${TABLE}.gross_weight_kg ;;
  }
  dimension: gross_weight_lb {
    type: number
    sql: ${TABLE}.gross_weight_lb ;;
  }
  dimension: house_vs_master {
    type: string
    sql: ${TABLE}.house_vs_master ;;
  }
  dimension: master_b_l {
    type: string
    sql: ${TABLE}.master_b_l ;;
  }
  dimension: measurement {
    type: number
    sql: ${TABLE}.measurement ;;
  }
  dimension: measurement_unit {
    type: string
    sql: ${TABLE}.measurement_unit ;;
  }
  dimension: no_of_containers {
    type: number
    sql: ${TABLE}.no_of_containers ;;
  }
  dimension: notify_address {
    type: string
    sql: ${TABLE}.notify_address ;;
  }
  dimension: notify_party {
    type: string
    sql: ${TABLE}.notify_party ;;
  }
  dimension: place_of_receipt {
    type: string
    sql: ${TABLE}.place_of_receipt ;;
  }
  dimension_group: planned_arrival {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.Planned_arrival_date ;;
  }
  dimension: product_description {
    type: string
    sql: ${TABLE}.product_description ;;
  }
  dimension: quantity {
    type: number
    sql: ${TABLE}.quantity ;;
  }
  dimension: quantity_unit {
    type: string
    sql: ${TABLE}.quantity_unit ;;
  }
  dimension_group: real_arrival {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.Real_arrival_date ;;
  }
  dimension: recommended_route {
    type: string
    sql: ${TABLE}.Recommended_Route ;;
    drill_fields: [client_preference.preference, cargo.recommendation_details, route.distance, route.duration, route.shipping_way, route.cost, route.trip_details]
  }
  dimension: route {
    type: string
    sql: ${TABLE}.Route ;;
  }
  dimension: seal {
    type: string
    sql: ${TABLE}.seal ;;
  }
  dimension: ship_registered_in {
    type: string
    sql: ${TABLE}.ship_registered_in ;;
  }
  dimension: shipper {
    type: string
    sql: ${TABLE}.shipper ;;
  }
  dimension: shipper_address {
    type: string
    sql: ${TABLE}.shipper_address ;;
  }
  dimension: shippment_id {
    type: number
    sql: ${TABLE}.Shippment_ID ;;
  }
  dimension: status {
    type: string
    sql: ${TABLE}.Status ;;
  }
  dimension: us_port {
    type: string
    sql: ${TABLE}.us_port ;;
  }
  dimension: vessel_name {
    type: string
    sql: ${TABLE}.vessel_name ;;
  }
  dimension: recommendation_details {
    type: string
    sql: ${TABLE}.Recommendation_details ;;
  }

  dimension: route_id {
    type: string
    sql: ${TABLE}.route_id ;;
    drill_fields: [route.distance, route.duration, route.shipping_way, route.cost, route.trip_details]
  }
  dimension: voyage_number {
    type: string
    sql: ${TABLE}.voyage_number ;;
  }
  measure: count {
    type: count
    drill_fields: [carrier_name, vessel_name]
  }
}
