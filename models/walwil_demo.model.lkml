connection: "walwil_demo"

# include all the views
include: "/views/**/*.view.lkml"

datagroup: walwil_demo_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: walwil_demo_default_datagroup

explore: route {}

explore: client_preference {}


explore: cargo {
  join: route {
    type: left_outer
    relationship: many_to_many
    sql_on: ${cargo.route} = ${route.route_id} ;;
  }

  join: client_preference {
    type: left_outer
    relationship: one_to_many
    sql_on: ${cargo.client_id} = ${client_preference.client_id} ;;
  }
}
