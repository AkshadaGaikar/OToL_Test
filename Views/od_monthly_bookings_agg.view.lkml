view: od_monthly_bookings_agg {
  sql_table_name: `MIDT_CONSUMPTION.OD_MONTHLY_BOOKINGS_AGG`  ;;

  dimension: GDS_ID {
    type: string
    hidden: yes
    sql: ${TABLE}.GDS_ID ;;
  }

  dimension: Departure_Date_key {
    type: date
    primary_key: yes
    hidden: yes
    sql: ${TABLE}.DEPARTURE_DATE ;;
  }

   dimension: Departure_Month {
    type: date_month
    hidden: yes
    #view_label: "O&D Departure Month"
    sql: ${TABLE}.DEPARTURE_DATE ;;
  }

 #----------------------------------------------------------
  dimension: Passenger_Count {
    description: "The total number of orders for each user"
    type: number
    hidden: yes
    sql: ${TABLE}.PASSENGER_COUNT ;;
  }
  measure: Record_count {
    type: count
    view_label: "Measure"
    drill_fields: []
  }
  measure: total_Passenger_Count {
#   description: "Use this for counting Passenger"
  type: sum
  view_label: "Measure"
  sql: ${Passenger_Count} ;;

}



}
