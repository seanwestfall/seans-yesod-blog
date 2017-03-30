module Handler.About where

import Import
import Yesod.Form.Bootstrap3 (BootstrapFormLayout (..), renderBootstrap3,
                              withSmallInput)

getAboutR :: Handler Html
getAboutR = do
    defaultLayout $(widgetFile "about")
