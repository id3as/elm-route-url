module Main exposing (..)

import ExampleViewer
import RouteUrl


main : Program Never (RouteUrl.Model ExampleViewer.Model) (RouteUrl.Msg ExampleViewer.Action)
main =
    RouteUrl.program
        { delta2url = ExampleViewer.delta2hash
        , location2messages = ExampleViewer.hash2messages
        , init = ExampleViewer.init
        , update = ExampleViewer.update
        , view = ExampleViewer.view
        , subscriptions = ExampleViewer.subscriptions
        }
