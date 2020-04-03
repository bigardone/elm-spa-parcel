module Pages.Top exposing (Flags, Model, Msg, page)

import Html.Styled as Html
import Html.Styled.Attributes as Html
import Page exposing (Document, Page)
import Styles


type alias Flags =
    ()


type alias Model =
    ()


type alias Msg =
    Never


page : Page Flags Model Msg
page =
    Page.static
        { view = view
        }


view : Document Msg
view =
    { title = "Top"
    , body =
        [ Html.section
            [ Html.css [ Styles.mainSection ] ]
            [ Html.text "Top" ]
        ]
    }
