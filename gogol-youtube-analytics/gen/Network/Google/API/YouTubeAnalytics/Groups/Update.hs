{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.API.YouTubeAnalytics.Groups.Update
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Modifies a group. For example, you could change a group\'s title.
--
-- /See:/ <http://developers.google.com/youtube/analytics/ YouTube Analytics API Reference> for @youtubeAnalytics.groups.update@.
module Network.Google.API.YouTubeAnalytics.Groups.Update
    (
    -- * REST Resource
      GroupsUpdateAPI

    -- * Creating a Request
    , groupsUpdate'
    , GroupsUpdate'

    -- * Request Lenses
    , guQuotaUser
    , guPrettyPrint
    , guUserIp
    , guOnBehalfOfContentOwner
    , guKey
    , guOauthToken
    , guFields
    , guAlt
    ) where

import           Network.Google.Prelude
import           Network.Google.YouTubeAnalytics.Types

-- | A resource alias for youtubeAnalytics.groups.update which the
-- 'GroupsUpdate'' request conforms to.
type GroupsUpdateAPI =
     "groups" :>
       QueryParam "quotaUser" Text :>
         QueryParam "prettyPrint" Bool :>
           QueryParam "userIp" Text :>
             QueryParam "onBehalfOfContentOwner" Text :>
               QueryParam "key" Text :>
                 QueryParam "oauth_token" Text :>
                   QueryParam "fields" Text :>
                     QueryParam "alt" Alt :> Put '[JSON] Group

-- | Modifies a group. For example, you could change a group\'s title.
--
-- /See:/ 'groupsUpdate'' smart constructor.
data GroupsUpdate' = GroupsUpdate'
    { _guQuotaUser              :: !(Maybe Text)
    , _guPrettyPrint            :: !Bool
    , _guUserIp                 :: !(Maybe Text)
    , _guOnBehalfOfContentOwner :: !(Maybe Text)
    , _guKey                    :: !(Maybe Text)
    , _guOauthToken             :: !(Maybe Text)
    , _guFields                 :: !(Maybe Text)
    , _guAlt                    :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'GroupsUpdate'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'guQuotaUser'
--
-- * 'guPrettyPrint'
--
-- * 'guUserIp'
--
-- * 'guOnBehalfOfContentOwner'
--
-- * 'guKey'
--
-- * 'guOauthToken'
--
-- * 'guFields'
--
-- * 'guAlt'
groupsUpdate'
    :: GroupsUpdate'
groupsUpdate' =
    GroupsUpdate'
    { _guQuotaUser = Nothing
    , _guPrettyPrint = True
    , _guUserIp = Nothing
    , _guOnBehalfOfContentOwner = Nothing
    , _guKey = Nothing
    , _guOauthToken = Nothing
    , _guFields = Nothing
    , _guAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
guQuotaUser :: Lens' GroupsUpdate' (Maybe Text)
guQuotaUser
  = lens _guQuotaUser (\ s a -> s{_guQuotaUser = a})

-- | Returns response with indentations and line breaks.
guPrettyPrint :: Lens' GroupsUpdate' Bool
guPrettyPrint
  = lens _guPrettyPrint
      (\ s a -> s{_guPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
guUserIp :: Lens' GroupsUpdate' (Maybe Text)
guUserIp = lens _guUserIp (\ s a -> s{_guUserIp = a})

-- | Note: This parameter is intended exclusively for YouTube content
-- partners. The onBehalfOfContentOwner parameter indicates that the
-- request\'s authorization credentials identify a YouTube CMS user who is
-- acting on behalf of the content owner specified in the parameter value.
-- This parameter is intended for YouTube content partners that own and
-- manage many different YouTube channels. It allows content owners to
-- authenticate once and get access to all their video and channel data,
-- without having to provide authentication credentials for each individual
-- channel. The CMS account that the user authenticates with must be linked
-- to the specified YouTube content owner.
guOnBehalfOfContentOwner :: Lens' GroupsUpdate' (Maybe Text)
guOnBehalfOfContentOwner
  = lens _guOnBehalfOfContentOwner
      (\ s a -> s{_guOnBehalfOfContentOwner = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
guKey :: Lens' GroupsUpdate' (Maybe Text)
guKey = lens _guKey (\ s a -> s{_guKey = a})

-- | OAuth 2.0 token for the current user.
guOauthToken :: Lens' GroupsUpdate' (Maybe Text)
guOauthToken
  = lens _guOauthToken (\ s a -> s{_guOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
guFields :: Lens' GroupsUpdate' (Maybe Text)
guFields = lens _guFields (\ s a -> s{_guFields = a})

-- | Data format for the response.
guAlt :: Lens' GroupsUpdate' Alt
guAlt = lens _guAlt (\ s a -> s{_guAlt = a})

instance GoogleRequest GroupsUpdate' where
        type Rs GroupsUpdate' = Group
        request = requestWithRoute defReq youTubeAnalyticsURL
        requestWithRoute r u GroupsUpdate'{..}
          = go _guQuotaUser (Just _guPrettyPrint) _guUserIp
              _guOnBehalfOfContentOwner
              _guKey
              _guOauthToken
              _guFields
              (Just _guAlt)
          where go
                  = clientWithRoute (Proxy :: Proxy GroupsUpdateAPI) r
                      u