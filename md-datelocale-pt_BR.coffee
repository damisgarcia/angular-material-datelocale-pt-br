'use strict'

module = angular.module('md-datelocale.pt_br', ['ngMaterial'])

module.config ($mdDateLocaleProvider)->
  # Example of a Brazil localization.
  $mdDateLocaleProvider.months = [
    'Janeiro'
    'Fevereiro'
    'Março'
    'Abril'
    'Maio'
    'Junho'
    'Julho'
    'Agosto'
    'Setembro'
    'Outubro'
    'Novembro'
    'Dezembro'
  ]
  $mdDateLocaleProvider.shortMonths = [
    'Jan'
    'Fev'
    'Mar'
    'Abr'
    'Mai'
    'Jun'
    'Jul'
    'Ago'
    'Set'
    'Out'
    'Nov'
    'Dez'
  ]
  $mdDateLocaleProvider.days = [
    'Domingo'
    'Segunda-feira'
    'Terça-feira'
    'Quarta-feira'
    'Quinta-feira'
    'Sexta-feira'
    'Sábado'
  ]
  $mdDateLocaleProvider.shortDays = [
    'Dom'
    'Seg'
    'Ter'
    'Qua'
    'Qui'
    'Sex'
    'Sáb'
  ]
  # Can change week display to start on Monday.
  $mdDateLocaleProvider.firstDayOfWeek = 1

  # Example uses moment.js to parse and format dates.

  $mdDateLocaleProvider.parseDate = (dateString) ->
    m = moment(dateString, 'ptBR', true)
    if m.isValid() then m.toDate() else new Date(NaN)

  $mdDateLocaleProvider.formatDate = (date) ->
    m = moment(date)
    if m.isValid() then m.format('L') else ''

  $mdDateLocaleProvider.monthHeaderFormatter = (date) ->
    $mdDateLocaleProvider.shortMonths[date.getMonth()] + ' ' + date.getFullYear()

  # In addition to date display, date components also need localized messages
  # for aria-labels for screen-reader users.

  $mdDateLocaleProvider.weekNumberFormatter = (weekNumber) ->
    'Semana ' + weekNumber

  $mdDateLocaleProvider.msgCalendar = 'Calendário'
  $mdDateLocaleProvider.msgOpenCalendar = 'Abrir Calendário'
  # You can also set when your calendar begins and ends.
  now = new Date()
  $mdDateLocaleProvider.firstRenderableDate = new Date(1776, 6, 4)
  $mdDateLocaleProvider.lastRenderableDate = new Date(now.getFullYear(), now.getMonth(), now.getDate())
  return
