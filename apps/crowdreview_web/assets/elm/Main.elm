module Main exposing (..)

import Html exposing (..)
import Html.Attributes exposing (href, class, style)
import Material
import Material.Color as Color
import Material.Layout as Layout
import Material.Scheme


-- MODEL


type alias Model =
    { count : Int
    , mdl :
        Material.Model

    -- Boilerplate: model store for any and all Mdl components you use.
    }


model : Model
model =
    { count = 0
    , mdl =
        Material.model

    -- Boilerplate: Always use this initial Mdl model store.
    }



-- ACTION, UPDATE


type Msg
    = Mdl (Material.Msg Msg)



-- Boilerplate: Msg clause for internal Mdl messages.


update : Msg -> Model -> ( Model, Cmd Msg )
update msg model =
    case msg of
        -- Boilerplate: Mdl action handler.
        Mdl msg_ ->
            Material.update Mdl msg_ model



-- VIEW


type alias Mdl =
    Material.Model


view : Model -> Html Msg
view model =
    Layout.render Mdl
        model.mdl
        [ Layout.fixedHeader
        ]
        { header = [ viewHeader model ]
        , drawer = [ viewMenu model ]
        , tabs = ( [], [] )
        , main = [ viewBody model ]
        }


viewMenu : Model -> Html Msg
viewMenu model =
    div [] []


viewHeader : Model -> Html Msg
viewHeader model =
    Layout.row
        [ Color.background <| Color.black
        ]
        [ Layout.title [] [ text "Crowd Review" ]
        , Layout.spacer
        , Layout.navigation []
            []
        ]


viewBody : Model -> Html Msg
viewBody model =
    div
        [ style [ ( "padding", "2rem" ) ] ]
        [ text ("Welcome") ]
        |> Material.Scheme.top


main : Program Never Model Msg
main =
    Html.program
        { init = ( model, Cmd.none )
        , view = view
        , subscriptions = always Sub.none
        , update = update
        }
