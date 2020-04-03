module Styles exposing (mainSection)

import Css


mainSection : Css.Style
mainSection =
    Css.batch
        [ Css.fontSize Css.larger ]
