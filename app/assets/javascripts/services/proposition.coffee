angular.module('BornApp').service 'Proposition', ($http, Rails) ->
  base = "/api/propositions/"

  create: (proposition) ->
    $http.post(base, proposition: proposition)
  update: (proposition) ->
    $http.put("#{base}/#{proposition.id}", proposition: proposition)
  choose: (proposition) ->
    $http.put("#{base}/#{proposition.id}/choose", proposition: proposition)