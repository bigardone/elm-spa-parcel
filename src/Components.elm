module Components exposing (layout)

import Document exposing (Document)
import Generated.Route as Route
import Html.Styled as Html exposing (Html)
import Html.Styled.Attributes as Html


layout : { page : Document msg } -> Document msg
layout { page } =
    { title = page.title
    , body =
        [ Html.div
            [ Html.class "main-content" ]
            [ navbar
            , Html.div
                []
                page.body
            , footer
            ]
        ]
    }


navbar : Html msg
navbar =
    Html.header
        [ Html.class "main-content-navbar" ]
        [ Html.a
            [ Html.href (Route.toHref Route.Top) ]
            [ Html.text "home" ]
        ]


footer : Html msg
footer =
    Html.footer
        []
        [ Html.text "built with elm ❤" ]
