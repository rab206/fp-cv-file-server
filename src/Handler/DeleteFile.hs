{-# LANGUAGE OverloadedStrings #-}


module Handler.DeleteFile where

import           Yesod

import           Foundation
import           Model

getDeleteFileR :: Key StoredFile -> Handler Html
getDeleteFileR ident = do
    deleteFile ident
    redirect HomeR
