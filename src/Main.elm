module Main exposing (..)

import Html exposing (Html, div, text, button, program)
import Html.Events exposing (onClick)

type alias Model = 
  { message: String }


init : (Model, Cmd Msg)
init =
  ({message = "World"} , Cmd.none)

type Msg
  = Switch

view : Model -> Html Msg
view model =
  div []
    [ text ("Hello, " ++ model.message ++ "!")
    , button [onClick Switch ] [ text "Switch"]
    ]

update : Msg -> Model -> ( Model, Cmd Msg)
update msg model =
  case msg of
    Switch ->
      if model.message == "World"
        then ({ model | message = "Elm" }, Cmd.none)
      else ({ model | message = "World"}, Cmd.none)


subscriptions : Model -> Sub Msg
subscriptions model =
  Sub.none

main : Program Never Model Msg
main =
  program
    { init = init
    , view = view
    , update = update
    , subscriptions = subscriptions
    }