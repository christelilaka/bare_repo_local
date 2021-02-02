connection: "postgres_local"

# include all the views
include: "/views/**/*.view"

datagroup: lookerville_nyc_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: lookerville_nyc_default_datagroup

explore: salaries {}
