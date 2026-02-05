get_choices<-function(df){
  df_names <- names(df)
  var_choices<-list()
  for (i in 1:length(df_names)){
    data_type<-class(df[[df_names[i]]])
    if (data_type %in% c("character","factor")){
      var_choices[[df_names[i]]] <- df_names[i]
    }
  }
  
  return(var_choices)
}

display_table<-function(df, search_str, myvar ){
  if (is.null(df)){
    df
  } else {
    if (search_str == ""){
      df
    } else {
      df %>%
        filter(
          grepl(search_str, get(myvar))
        ) 
    }
  }
}



