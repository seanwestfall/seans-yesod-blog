module Handler.Poems where

import Import
import Yesod.Form.Bootstrap3 (BootstrapFormLayout (..), renderBootstrap3,
                              withSmallInput)

getPoemsR :: Handler Html
getPoemsR = do
    defaultLayout $(widgetFile "poems")

