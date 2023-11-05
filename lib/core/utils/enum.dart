enum APIResultType {
  loading,
  success,
  failure,
  sessionExpired,
  noInternet,
  unauthorised,
  cacheError,
  notFound,
  timeOut
}

enum NetworkResultType {
  success,
  error,
  cacheError,
  timeOut,
  noInternet,
  unauthorised,
  notFound
}

enum FilterType {
  date,
  time,
  city,
  reciter,
  typeOfEvent,
  event,
  age,
  organization

}

enum ImageType {
  local,
  network,
}
