# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

# $(document).ready(function()
# {
#     setInterval('updateClock()', 1000);
# });

$(document).ready ->
  setInterval 'updateClock()', 1000

# function pad(number) {
#      var paddedNumber
#      if (number < 10) {
#       paddedNumber = "0" + number;
#      } else {
#       paddedNumber = number;
#      }
#     return paddedNumber;
# }

pad = (number) ->
  if number < 10
    '0' + number
  else
    number

# function updateClock() {
#     var currentTime = new Date();
#     var currentHours = currentTime.getHours();
#     var currentMinutes = pad(currentTime.getMinutes());
#     var currentSeconds = pad(currentTime.getSeconds());

#     // AM or PM?
#     var timeOfDay = (currentHours < 12) ? "AM" : "PM";

#     // Convert hours to 12 hour clock
#     var twelveHour = currentHours % 12;
#     // fix 0 to 12
#     twelveHour = (twelveHour === 0) ? "12" : twelveHour;

#     var currentTimeString = twelveHour + ":" + currentMinutes + ":" + currentSeconds + " " + timeOfDay;
#     $("#clock").html(currentTimeString);
# }

@updateClock = ->
  currentTime = new Date
  currentHours = currentTime.getHours()
  currentMinutes = pad(currentTime.getMinutes())

  # Get "AM" or "PM"
  timeOfDay = if currentHours < 12 then 'AM' else 'PM'

  # Convert hours to 12 hour clock
  twelveHour = currentHours % 12
  twelveHour = if twelveHour == 0 then 12 else pad(twelveHour)

  currentTimeString = "#{twelveHour}:#{currentMinutes} #{timeOfDay}"
  $("#jsclock").html currentTimeString


