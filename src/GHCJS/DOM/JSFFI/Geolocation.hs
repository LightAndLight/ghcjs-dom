{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI, GHCForeignImportPrim,
             UnboxedTuples, MagicHash, UnliftedFFITypes, LambdaCase #-}
module GHCJS.DOM.JSFFI.Geolocation (
    module Generated
  , js_getCurrentPosition
  , getCurrentPosition'
  , getCurrentPosition
) where

import GHC.Base (IO(..))
import GHC.Prim (RealWorld, State#, ByteArray#)

import Control.Monad.IO.Class (MonadIO(..))

import GHCJS.Prim (JSRef(..))
import GHCJS.Foreign (jsNull)
import GHCJS.Marshal.Pure (pFromJSRef)
import GHCJS.DOM.Types

import GHCJS.DOM.JSFFI.PositionError (throwPositionException)
import GHCJS.DOM.JSFFI.Generated.Geolocation as Generated hiding (js_getCurrentPosition, getCurrentPosition)

foreign import javascript interruptible
        "$1[\"getCurrentPosition\"](function(pos) { $c(true, pos); }, function(e) { $c(false, e); }, $2);" js_getCurrentPosition ::
        JSRef Geolocation -> JSRef PositionOptions -> State# RealWorld -> (# State# RealWorld, Bool, ByteArray# #)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Geolocation.getCurrentPosition Mozilla Geolocation.getCurrentPosition documentation>
getCurrentPosition' :: MonadIO m => Geolocation -> Maybe PositionOptions -> m (Either PositionError Geoposition)
getCurrentPosition' self options = liftIO . IO $ \s# ->
      case js_getCurrentPosition (unGeolocation self) (maybe jsNull unPositionOptions options) s# of
          (# s2#, False, error #) -> (# s2#, Left  (PositionError (JSRef error)) #)
          (# s2#, True,  pos   #) -> (# s2#, Right (Geoposition   (JSRef pos  )) #)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Geolocation.getCurrentPosition Mozilla Geolocation.getCurrentPosition documentation>
getCurrentPosition :: MonadIO m => Geolocation -> Maybe PositionOptions -> m Geoposition
getCurrentPosition self options = getCurrentPosition' self options >>= either throwPositionException return
