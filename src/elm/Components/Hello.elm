module Components.Hello exposing (..)

import Html exposing (..)
import String

-- hello component
hello : Int -> Html a
hello model =
  h1
    []
    [ text ( "Hello, Elm" ++ ( "!" |> String.repeat model ) ) ]
