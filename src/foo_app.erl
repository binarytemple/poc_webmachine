%% @author author <author@example.com>
%% @copyright YYYY author.

%% @doc Callbacks for the foo application.

-module(foo_app).
-author('author <author@example.com>').

-behaviour(application).
-export([start/2,stop/1]).


%% @spec start(_Type, _StartArgs) -> ServerRet
%% @doc application start callback for foo.
start(_Type, _StartArgs) ->
    foo_sup:start_link().

%% @spec stop(_State) -> ServerRet
%% @doc application stop callback for foo.
stop(_State) ->
    ok.
