'use strict';
var module;

module = angular.module('md-datelocale.pt_br', ['ngMaterial']);

module.config(function($mdDateLocaleProvider) {
  var now;
  $mdDateLocaleProvider.months = ['Janeiro', 'Fevereiro', 'Março', 'Abril', 'Maio', 'Junho', 'Julho', 'Agosto', 'Setembro', 'Outubro', 'Novembro', 'Dezembro'];
  $mdDateLocaleProvider.shortMonths = ['Jan', 'Fev', 'Mar', 'Abr', 'Mai', 'Jun', 'Jul', 'Ago', 'Set', 'Out', 'Nov', 'Dez'];
  $mdDateLocaleProvider.days = ['Domingo', 'Segunda-feira', 'Terça-feira', 'Quarta-feira', 'Quinta-feira', 'Sexta-feira', 'Sábado'];
  $mdDateLocaleProvider.shortDays = ['Dom', 'Seg', 'Ter', 'Qua', 'Qui', 'Sex', 'Sáb'];
  $mdDateLocaleProvider.firstDayOfWeek = 1;
  $mdDateLocaleProvider.parseDate = function(dateString) {
    var m;
    m = moment(dateString, 'ptBR', true);
    if (m.isValid()) {
      return m.toDate();
    } else {
      return new Date(NaN);
    }
  };
  $mdDateLocaleProvider.formatDate = function(date) {
    var m;
    m = moment(date);
    if (m.isValid()) {
      return m.format('L');
    } else {
      return '';
    }
  };
  $mdDateLocaleProvider.monthHeaderFormatter = function(date) {
    return $mdDateLocaleProvider.shortMonths[date.getMonth()] + ' ' + date.getFullYear();
  };
  $mdDateLocaleProvider.weekNumberFormatter = function(weekNumber) {
    return 'Semana ' + weekNumber;
  };
  $mdDateLocaleProvider.msgCalendar = 'Calendário';
  $mdDateLocaleProvider.msgOpenCalendar = 'Abrir Calendário';
  now = new Date();
  $mdDateLocaleProvider.firstRenderableDate = new Date(1776, 6, 4);
  $mdDateLocaleProvider.lastRenderableDate = new Date(now.getFullYear(), now.getMonth(), now.getDate());
});
