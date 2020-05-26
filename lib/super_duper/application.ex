defmodule SuperDuper.Application do
  use Application
  alias SuperDuper.Server

  def start(_type, _args) do
    IO.puts ">>>> Starting Super-duper Super-visor <<<<"
    children = [
      {Server, :superdave}, 
      {Server, :superman}, 
      {Server, :supermario} 
    ]

    opts = [strategy: :rest_for_one, name: SuperDuper.Supervisor]
    Supervisor.start_link(children, opts)
  end
end
