connection: "demo_shipping"

include: "/views/*.view.lkml"                # include all views in the views/ folder in this project
# include: "/**/*.view.lkml"                 # include all views in this project
# include: "my_dashboard.dashboard.lookml"   # include a LookML dashboard called my_dashboard

# # Select the views that should be a part of this model,
# # and define the joins that connect them together.
#
explore: cargo {
  join: route{
    type: left_outer
    relationship: many_to_many
    sql_on: ${cargo.route}} = ${route.route_id} ;;
  }

  join: client_preference {
    type: left_outer
    relationship: many_to_many
    sql_on: ${cargo.client_id} = ${client_preference.client_id} ;;
  }
}
