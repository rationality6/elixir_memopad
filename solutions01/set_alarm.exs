defmodule Alarm do
  @moduledoc """
  Write a function named setAlarm which receives two parameters. The first parameter, employed, is true whenever you are employed and the second parameter, vacation is true whenever you are on vacation.

  The function should return true if you are employed and not on vacation (because these are the circumstances under which you need to set an alarm). It should return false otherwise. Examples:

  setAlarm(true, true) -> false setAlarm(false, true) -> false setAlarm(false, false) -> false setAlarm(true, false) -> true
  """
  def set_alarm(true, false) do
    true
  end

  def set_alarm(_employed, _vacation) do
    false
  end

  def set_alarm01(employed, vacation) do
    employed && !vacation
  end
end

Alarm.set_alarm(true, true)
|> IO.inspect()

Alarm.set_alarm(false, true)
|> IO.inspect()

Alarm.set_alarm(false, false)
|> IO.inspect()

Alarm.set_alarm(true, false)
|> IO.inspect()
