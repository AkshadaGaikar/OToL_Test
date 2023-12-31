- name: GDS_Report
  title: GDS_Report
  model: OtoL
  explore: OD_Monthly_Bookings
  type: looker_column
  fields: [OD_GDS.GDS_Name, OD_Monthly_Bookings.total_Passenger_Count, OD_Monthly_Bookings.Departure_Month]
  filters:
    OD_Monthly_Bookings.Departure_Month: 2023/05/01
  sorts: [OD_Monthly_Bookings.total_Passenger_Count desc 0]
  limit: 500
  column_limit: 50
  x_axis_gridlines: false
  y_axis_gridlines: true
  show_view_names: false
  show_y_axis_labels: true
  show_y_axis_ticks: true
  y_axis_tick_density: default
  y_axis_tick_density_custom: 5
  show_x_axis_label: true
  show_x_axis_ticks: true
  y_axis_scale_mode: linear
  x_axis_reversed: false
  y_axis_reversed: false
  plot_size_by_field: false
  trellis: ''
  stacking: ''
  limit_displayed_rows: false
  legend_position: center
  point_style: none
  show_value_labels: true
  label_density: 25
  x_axis_scale: auto
  y_axis_combined: true
  ordering: none
  show_null_labels: false
  show_totals_labels: false
  show_silhouette: false
  totals_color: "#808080"
  x_axis_zoom: true
  y_axis_zoom: true
  series_types: {}
  defaults_version: 1
