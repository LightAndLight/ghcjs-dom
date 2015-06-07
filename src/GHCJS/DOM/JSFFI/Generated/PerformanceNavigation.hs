{-# LANGUAGE PatternSynonyms, ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.JSFFI.Generated.PerformanceNavigation
       (pattern TYPE_NAVIGATE, pattern TYPE_RELOAD,
        pattern TYPE_BACK_FORWARD, pattern TYPE_RESERVED,
        js_getRedirectCount, getRedirectCount, PerformanceNavigation,
        castToPerformanceNavigation, gTypePerformanceNavigation)
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
pattern TYPE_NAVIGATE = 0
pattern TYPE_RELOAD = 1
pattern TYPE_BACK_FORWARD = 2
pattern TYPE_RESERVED = 255
 
foreign import javascript unsafe "$1[\"redirectCount\"]"
        js_getRedirectCount :: JSRef PerformanceNavigation -> IO Word

-- | <https://developer.mozilla.org/en-US/docs/Web/API/PerformanceNavigation.redirectCount Mozilla PerformanceNavigation.redirectCount documentation> 
getRedirectCount :: (MonadIO m) => PerformanceNavigation -> m Word
getRedirectCount self
  = liftIO (js_getRedirectCount (unPerformanceNavigation self))