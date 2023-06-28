view: OD_GDS {
  sql_table_name: `MIDT_CONSUMPTION.GDS_DIM` ;;

  dimension: GDS_ID {
    type: string
    primary_key: yes
    hidden: yes
    sql: ${TABLE}.GDS_ID ;;
  }

  dimension: GDS_TYPE_CODE {
    type: string
    hidden: yes
    sql: ${TABLE}.GDS_TYPE_CODE ;;
  }

  dimension: GDS_Name {
    type: string
    sql: ${TABLE}.GDS_NAME ;;
  }

  dimension: GDS_Code {
    type: string
    sql: ${TABLE}.GDS_CODE ;;
  }
}
