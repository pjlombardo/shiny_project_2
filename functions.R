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



