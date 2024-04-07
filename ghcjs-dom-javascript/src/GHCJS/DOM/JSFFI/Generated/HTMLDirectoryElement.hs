{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE JavaScriptFFI #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
module GHCJS.DOM.JSFFI.Generated.HTMLDirectoryElement
       (js_setCompact, setCompact, js_getCompact, getCompact,
        HTMLDirectoryElement(..), gTypeHTMLDirectoryElement)
       where
import Prelude ((.), (==), (>>=), return, IO, Int, Float, Double, Bool(..), Maybe, maybe, fromIntegral, round, fmap, Show, Read, Eq, Ord)
import qualified Prelude (error)
import Data.Typeable (Typeable)
import GHCJS.Types (JSVal(..), JSString)
import GHCJS.Foreign (jsNull, jsUndefined)
import GHC.JS.Foreign.Callback (syncCallback, asyncCallback, syncCallback1, asyncCallback1, syncCallback2, asyncCallback2, OnBlocked(..))
import GHCJS.Marshal (ToJSVal(..), FromJSVal(..))
import GHCJS.Marshal.Pure (PToJSVal(..), PFromJSVal(..))
import Control.Monad (void)
import Control.Monad.IO.Class (MonadIO(..))
import Data.Int (Int64)
import Data.Word (Word, Word64)
import Data.Maybe (fromJust)
import Data.Traversable (mapM)
import GHCJS.DOM.Types
import Control.Applicative ((<$>))
import GHCJS.DOM.EventTargetClosures (EventName, unsafeEventName, unsafeEventNameAsync)
import GHCJS.DOM.JSFFI.Generated.Enums
 
foreign import javascript unsafe "(($1, $2) => { $1[\"compact\"] = $2; })"
        js_setCompact :: HTMLDirectoryElement -> Bool -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLDirectoryElement.compact Mozilla HTMLDirectoryElement.compact documentation> 
setCompact :: (MonadIO m) => HTMLDirectoryElement -> Bool -> m ()
setCompact self val = liftIO (js_setCompact self val)
 
foreign import javascript unsafe "(($1) => { return ($1[\"compact\"] ? 1 : 0); })"
        js_getCompact :: HTMLDirectoryElement -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLDirectoryElement.compact Mozilla HTMLDirectoryElement.compact documentation> 
getCompact :: (MonadIO m) => HTMLDirectoryElement -> m Bool
getCompact self = liftIO (js_getCompact self)