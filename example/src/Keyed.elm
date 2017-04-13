module Main exposing (..)

import Html
import Html.Attributes
import Html.Keyed


starWars : List ( Int, String )
starWars =
    [ ( 1, "The Phantom Menace" )
    , ( 2, "Attack of the Clones" )
    , ( 3, "Revenge of the Sith" )
    , ( 4, "A New Hope" )
    , ( 5, "The Empire Strikes Back" )
    , ( 6, "Return of the Jedi" )
    , ( 7, "The Force Awakens" )
    ]


main : Html.Html ()
main =
    let
        items =
            List.map (\( i, name ) -> Html.li [ Html.Attributes.attribute "key" (toString i) ] [ Html.text name ]) starWars
    in
        Html.node "ul" [] (items)
