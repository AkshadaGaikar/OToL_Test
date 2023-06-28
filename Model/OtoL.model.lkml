connection: "midt_prod_connect"
include: "/Views/**/*.view"

datagroup: GDS_reporting_2_default_datagroup {
  max_cache_age: "1 hour"
}

persist_with: GDS_reporting_2_default_datagroup

explore: OD_Monthly_Bookings {
  from:od_monthly_bookings_agg
    join: OD_GDS {
    type: left_outer
    sql_on: ${OD_Monthly_Bookings.GDS_ID}=${OD_GDS.GDS_ID};;
    sql_where: ${OD_GDS.GDS_TYPE_CODE}='00' ;;
    relationship: many_to_one
  }



}
