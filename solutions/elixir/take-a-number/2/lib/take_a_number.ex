defmodule TakeANumber do
  def start() do
    spawn(&client/0)
  end

  defp client() do
    client(0)
  end

  defp client(n) do
    receive do
      {:report_state, pid} ->
        send(pid, n)
        client(n)
      {:take_a_number, pid} ->
        send(pid, n+1)
        client(n+1)
      :stop -> nil
      _ -> client(n)
    end
  end
end
