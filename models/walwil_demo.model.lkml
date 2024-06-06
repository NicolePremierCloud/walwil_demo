connection: "demo_shipping"

# include all the views
include: "/views/**/*.view.lkml"

datagroup: walwil_demo_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: walwil_demo_default_datagroup

explore: route {}

explore: client_preference {}

explore: cargo {}

