#' @title Print GMWM Data Object
#' @description 
#' Pretty formatting for \code{gts}, \code{imu}, and \code{lts} objects.
#' @param x         A \code{gts}, \code{imu}, \code{lts} object.
#' @param obs       A \code{integer} the specifies how many from the beginning and end of the data set to show.
#' @param row.names A \code{boolean} that indicates whether row names should be displayed or surpressed.
#' @param ...       Further arguments passed to or from other methods.
#' @return 
#' A \code{logical} value that indicates whether the object is of that class (TRUE) or not (FALSE).
#' @author JJB
#' @rdname print_data
#' @export
print.imu = function(x,
                     obs = 10L,
                     row.names = TRUE, ...)
{
  
  outf(x, obs, row.names, ...)
}

#' @rdname print_data
#' @export
print.lts = function(x,
                     obs = 10L,
                     row.names = TRUE, ...)
{
  outf(x, obs, row.names, ...)
}

#' @rdname print_data
#' @export
print.gts = function(x,
                     obs = 10L,
                     row.names = TRUE, ...)
{
  outf(x, obs, row.names, ...)
}

#' @rdname print_data
outf = function(x, obs = 10L, row.names = TRUE){
  if(!is.numeric(obs)){ obs = 100L }
  if(!is.infinite(obs)){ obs = as.integer(obs) }
  
  if (obs*2 < nrow(x)) {
    print_lines = rbind(head(x,obs), tail(x, obs))
    rn = c(seq_len(obs), seq.int(to=nrow(x), length.out=obs))
    print_dashes = TRUE
  } else {
    print_lines = x$data
    rn = seq_len(nrow(x))
    print_dashes = FALSE
  }
  
  if (isTRUE(row.names)){
    rownames(print_lines) = paste(format(rn,right=TRUE,scientific=FALSE),":",sep="")
  }else{
    rownames(print_lines) = rep("", nrow(print_lines))
  }
  if(is.null(names(x$data))){
    colnames(print_lines) = rep("NA", ncol(print_lines))
  }
  if(print_dashes) {
    print_lines = rbind(head(print_lines,obs),"---"="",tail(print_lines,obs))
    rownames(print_lines) = format(rownames(print_lines),justify="right")
  }
  
  print(print_lines,right=TRUE,quote=FALSE)
  return(invisible())
}

#' @title Is GMWM Object
#' @description 
#' Is the object a
#' \code{gts}, \code{imu}, \code{lts}, \code{wvar}, or \code{gmwm} object?
#' @param x  A \code{gts}, \code{imu}, \code{lts} object.
#' @return 
#' A \code{logical} value that indicates whether the object is of that class (TRUE) or not (FALSE).
#' @details
#'  Uses \code{\link[base]{inherits}} over \code{\link[methods]{is}} for speed. 
#' @author JJB
#' @rdname is_func
#' @export
is.gts = function(x){ inherits(x, "gts") }

#' @rdname is_func
#' @export
is.imu = function(x){ inherits(x, "imu") }

#' @rdname is_func
#' @export
is.lts = function(x){ inherits(x, "lts") }

#' @rdname is_func
#' @export
is.gmwm = function(x){ inherits(x, "gmwm") }

#' @rdname is_func
#' @export
is.wvar = function(x){ inherits(x, "wvar") }

#' @rdname is_func
#' @export
is.ts.model = function(x){ inherits(x, "ts.model") }


#' @title Dimensions of GMWM Objects
#' @description 
#' Returns the dimensions of a 
#' \code{gts}, \code{imu}, or \code{lts} object.
#' @param x  A \code{gts}, \code{imu}, \code{lts} object.
#' @return 
#' A \code{vector} with two elements.
#' 
#' The first element contains the number of rows. 
#' The second element contains the number of columns.
#' @author JJB
#' @rdname dim_func
#' @export
dim.gts = function(x){ dim(x$data) }

#' @rdname dim_func
#' @export
dim.imu = function(x){ dim(x$data) }

#' @rdname dim_func
#' @export
dim.lts = function(x){ dim(x$data) }

#' @title The Number of Rows/Columns of a GMWM Object
#' @description 
#' Returns either the number of rows or columns of a 
#' \code{gts}, \code{imu}, or \code{lts} object.
#' @param x  A \code{gts}, \code{imu}, \code{lts} object.
#' @return 
#' An \code{\link[base]{integer}} of length 1 or \code{\link[base]{NULL}}
#' @author JJB
#' @rdname nvals_func
#' @export
ncol.gts = function(x){ ncol(x$data) }

#' @rdname nvals_func
#' @export
NCOL.gts = function(x){ ncol.gts(x)}

#' @rdname nvals_func
#' @export
nrow.gts = function(x){ nrow(x$data) }

#' @rdname nvals_func
#' @export
NROW.gts = function(x){ nrow.gts(x)}

#' @rdname nvals_func
#' @export
ncol.imu = function(x){ ncol(x$data) }

#' @rdname nvals_func
#' @export
NCOL.imu = function(x){ ncol.imu(x) }

#' @rdname nvals_func
#' @export
nrow.imu = function(x){ nrow(x$data) }

#' @rdname nvals_func
#' @export
NROW.imu = function(x){ nrow.imu(x)}

#' @rdname nvals_func
#' @export
ncol.lts = function(x){ ncol(x$data) }

#' @rdname nvals_func
#' @export
NCOL.lts = function(x){ ncol.lts(x) }

#' @rdname nvals_func
#' @export
nrow.lts = function(x){ nrow(x$data) }

#' @rdname nvals_func
#' @export
NROW.lts = function(x){ nrow.lts(x)}

#' @title Obtain the value of an object's properties
#' @description 
#' Used to access different properties of the
#'  \code{gts}, \code{imu}, or \code{lts} object.
#' @param x      A \code{gts}, \code{imu}, or \code{lts} object.
#' @param type   A \code{string} indicating the field to be retrieved.
#' @return 
#' The method will return a single numeric or string result depending on the
#' slot being accessed.
#' @details 
#' To access information about \code{imu} properties use:
#' \describe{
#'  \item{\code{"accel"}}{Returns the number of accelerometers}
#'  \item{\code{"gyro"}}{Returns the number of gyroscopes}
#'  \item{\code{"sensors"}}{Returns total number of sensors}
#' }
#' @author JJB
#' @export
value = function(x, type){
  UseMethod("value")
}

#' @describeIn value Access \code{imu} object properties
#' @export
value.imu = function(x, type){
    switch(type,
           accel   = x$num.sensor[1],
           gyro    = x$num.sensor[2],
           sensors = sum(x$num.sensor),
           stop("The `type` specified is not an available slot")
    ) 
}


#' @title Return the First or Last Part of a GMWM Object
#' @description Returns the first or last \eqn{n} observations of a \code{gts}, \code{imu}, or \code{lts} object.
#' @param x   A \code{gts}, \code{imu}, or \code{lts} object.
#' @param n   A \code{integer} indicating how many observations should be displayed
#' @param ... Arguments to be passed to or from other methods.
#' @return The method will return a matrix with \eqn{n} observations.
#' @author JJB
#' @rdname head_tail
#' @export
head.imu = function(x, n = 6L, ...){
  head(x$data, n)
}

#' @rdname head_tail
#' @export
tail.imu = function(x, n = 6L, ...){
  tail(x$data, n)
}

#' @rdname head_tail
#' @export
head.gts = function(x, n = 6L, ...){
  head(x$data, n)
}

#' @rdname head_tail
#' @export
tail.gts = function(x, n = 6L, ...){
  tail(x$data, n)
}

#' @rdname head_tail
#' @export
head.lts = function(x, n = 6L, ...){
  head(x$data, n)
}

#' @rdname head_tail
#' @export
tail.lts = function(x, n = 6L, ...){
  tail(x$data, n)
}

#' @title Obtain the value of an object's properties
#' @description 
#' Used to access different properties of the
#'  \code{gts}, \code{imu}, or \code{lts} object.
#' @param x      A \code{gts}, \code{imu}, or \code{lts} object.
#' @param type   A \code{string} indicating the field to be retrieved.
#' @return 
#' The method will return a single TRUE or FALSE response
#' @details 
#' To access information about \code{imu} properties use:
#' \describe{
#'  \item{\code{"accel"}}{Returns whether accelerometers have been specified}
#'  \item{\code{"gyro"}}{Returns whether accelerometers have been specified}
#'  \item{\code{"sensors"}}{Returns whether there exists both types of sensors}
#' }
#' @author JJB
#' @export
has = function(x, type){
  UseMethod("has")
}

#' @describeIn has Access \code{imu} object properties
#' @export
has.imu = function(x, type){
  switch(type,
         accel   = x$num.sensor[1] > 0,
         gyro    = x$num.sensor[2] > 0,
         sensors = x$num.sensor[1] > 0 & x$num.sensor[2] > 0,
         stop("The `type` specified is not an available slot")
  ) 
}