import Html exposing (..)
import Html.Attributes exposing (..)
import Html.App as Html
import Html.Events exposing ( onClick )

-- component import example
import Components.Hello exposing ( hello )


-- APP
main : Program Never
main =
  Html.beginnerProgram { model = model, view = view, update = update }


-- MODEL
type alias Model = Int

model : number
model = 0


-- UPDATE
type Msg = NoOp | Increment

update : Msg -> Model -> Model
update msg model =
  case msg of
    NoOp -> model
    Increment -> model + 1


-- VIEW
-- Html is defined as: elem [ attribs ][ children ]
-- CSS can be applied via class names or inline style attrib
view : Model -> Html Msg
view model =
  div [ class "o-layout o-layout--center" ] [
    div [ class "o-layout__item u-1/1  u-1/2@tablet  u-1/3@desktop", style [("text-align", "center")] ] [
      img [ src "static/img/elm.jpg" ] []
      , hello model                                                   -- ext 'hello' component (takes 'model' as arg)
      , p [] [ text ( "Elm Webpack Starter" ) ]
      , button [ class "c-btn c-btn--primary", onClick Increment ]    -- click handler
          [ text "FTW!" ]
    ]
  ]
