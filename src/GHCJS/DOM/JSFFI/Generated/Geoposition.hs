{-# LANGUAGE PatternSynonyms, ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.JSFFI.Generated.Geoposition
       (js_getCoords, getCoords, js_getTimestamp, getTimestamp,
        Geoposition, castToGeoposition, gTypeGeoposition)
       where
import Prelude ((.), (==), (>>=), return, IO, Int, Float, Double, Bool(..), Maybe, maybe, fromIntegral, round, fmap)
import GHCJS.Types (JSRef(..), JSString, castRef)
import GHCJS.Foreign (jsNull)
import GHCJS.Foreign.Callback (syncCallback, asyncCallback, syncCallback1, asyncCallback1, syncCallback2, asyncCallback2, OnBlocked(..))
import GHCJS.Marshal (ToJSRef(..), FromJSRef(..))
import GHCJS.Marshal.Pure (PToJSRef(..), PFromJSRef(..))
import Control.Monad.IO.Class (MonadIO(..))
import Data.Int (Int64)
import Data.Word (Word, Word64)
import GHCJS.DOM.Types
import Control.Applicative ((<$>))
import GHCJS.DOM.EventTargetClosures (EventName, unsafeEventName)
import GHCJS.DOM.Enums
 
foreign import javascript unsafe "$1[\"coords\"]" js_getCoords ::
        JSRef Geoposition -> IO (JSRef Coordinates)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Geoposition.coords Mozilla Geoposition.coords documentation> 
getCoords :: (MonadIO m) => Geoposition -> m (Maybe Coordinates)
getCoords self
  = liftIO ((js_getCoords (unGeoposition self)) >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"timestamp\"]"
        js_getTimestamp :: JSRef Geoposition -> IO Word

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Geoposition.timestamp Mozilla Geoposition.timestamp documentation> 
getTimestamp :: (MonadIO m) => Geoposition -> m Word
getTimestamp self = liftIO (js_getTimestamp (unGeoposition self))