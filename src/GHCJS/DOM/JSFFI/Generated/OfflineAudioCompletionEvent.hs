{-# LANGUAGE PatternSynonyms, ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.JSFFI.Generated.OfflineAudioCompletionEvent
       (js_getRenderedBuffer, getRenderedBuffer,
        OfflineAudioCompletionEvent, castToOfflineAudioCompletionEvent,
        gTypeOfflineAudioCompletionEvent)
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
 
foreign import javascript unsafe "$1[\"renderedBuffer\"]"
        js_getRenderedBuffer ::
        JSRef OfflineAudioCompletionEvent -> IO (JSRef AudioBuffer)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/OfflineAudioCompletionEvent.renderedBuffer Mozilla OfflineAudioCompletionEvent.renderedBuffer documentation> 
getRenderedBuffer ::
                  (MonadIO m) => OfflineAudioCompletionEvent -> m (Maybe AudioBuffer)
getRenderedBuffer self
  = liftIO
      ((js_getRenderedBuffer (unOfflineAudioCompletionEvent self)) >>=
         fromJSRef)