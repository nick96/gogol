{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.Logging.Projects.Logs.Entries.Write
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Writes log entries to Cloud Logging. Each entry consists of a
-- \`LogEntry\` object. You must fill in all the fields of the object,
-- including one of the payload fields. You may supply a map,
-- \`commonLabels\`, that holds default (key, value) data for the
-- \`entries[].metadata.labels\` map in each entry, saving you the trouble
-- of creating identical copies for each entry.
--
-- /See:/ <https://cloud.google.com/logging/docs/ Google Cloud Logging API Reference> for @LoggingProjectsLogsEntriesWrite@.
module Network.Google.Resource.Logging.Projects.Logs.Entries.Write
    (
    -- * REST Resource
      ProjectsLogsEntriesWriteResource

    -- * Creating a Request
    , projectsLogsEntriesWrite'
    , ProjectsLogsEntriesWrite'

    -- * Request Lenses
    , plewXgafv
    , plewQuotaUser
    , plewPrettyPrint
    , plewUploadProtocol
    , plewLogsId
    , plewPp
    , plewAccessToken
    , plewUploadType
    , plewBearerToken
    , plewKey
    , plewOauthToken
    , plewProjectsId
    , plewFields
    , plewCallback
    , plewAlt
    ) where

import           Network.Google.Logging.Types
import           Network.Google.Prelude

-- | A resource alias for @LoggingProjectsLogsEntriesWrite@ which the
-- 'ProjectsLogsEntriesWrite'' request conforms to.
type ProjectsLogsEntriesWriteResource =
     "v1beta3" :>
       "projects" :>
         Capture "projectsId" Text :>
           "logs" :>
             Capture "logsId" Text :>
               "entries:write" :>
                 QueryParam "$.xgafv" Text :>
                   QueryParam "quotaUser" Text :>
                     QueryParam "prettyPrint" Bool :>
                       QueryParam "upload_protocol" Text :>
                         QueryParam "pp" Bool :>
                           QueryParam "access_token" Text :>
                             QueryParam "uploadType" Text :>
                               QueryParam "bearer_token" Text :>
                                 QueryParam "key" Text :>
                                   QueryParam "oauth_token" Text :>
                                     QueryParam "fields" Text :>
                                       QueryParam "callback" Text :>
                                         QueryParam "alt" Text :>
                                           Post '[JSON] WriteLogEntriesResponse

-- | Writes log entries to Cloud Logging. Each entry consists of a
-- \`LogEntry\` object. You must fill in all the fields of the object,
-- including one of the payload fields. You may supply a map,
-- \`commonLabels\`, that holds default (key, value) data for the
-- \`entries[].metadata.labels\` map in each entry, saving you the trouble
-- of creating identical copies for each entry.
--
-- /See:/ 'projectsLogsEntriesWrite'' smart constructor.
data ProjectsLogsEntriesWrite' = ProjectsLogsEntriesWrite'
    { _plewXgafv          :: !(Maybe Text)
    , _plewQuotaUser      :: !(Maybe Text)
    , _plewPrettyPrint    :: !Bool
    , _plewUploadProtocol :: !(Maybe Text)
    , _plewLogsId         :: !Text
    , _plewPp             :: !Bool
    , _plewAccessToken    :: !(Maybe Text)
    , _plewUploadType     :: !(Maybe Text)
    , _plewBearerToken    :: !(Maybe Text)
    , _plewKey            :: !(Maybe Text)
    , _plewOauthToken     :: !(Maybe Text)
    , _plewProjectsId     :: !Text
    , _plewFields         :: !(Maybe Text)
    , _plewCallback       :: !(Maybe Text)
    , _plewAlt            :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ProjectsLogsEntriesWrite'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'plewXgafv'
--
-- * 'plewQuotaUser'
--
-- * 'plewPrettyPrint'
--
-- * 'plewUploadProtocol'
--
-- * 'plewLogsId'
--
-- * 'plewPp'
--
-- * 'plewAccessToken'
--
-- * 'plewUploadType'
--
-- * 'plewBearerToken'
--
-- * 'plewKey'
--
-- * 'plewOauthToken'
--
-- * 'plewProjectsId'
--
-- * 'plewFields'
--
-- * 'plewCallback'
--
-- * 'plewAlt'
projectsLogsEntriesWrite'
    :: Text -- ^ 'logsId'
    -> Text -- ^ 'projectsId'
    -> ProjectsLogsEntriesWrite'
projectsLogsEntriesWrite' pPlewLogsId_ pPlewProjectsId_ =
    ProjectsLogsEntriesWrite'
    { _plewXgafv = Nothing
    , _plewQuotaUser = Nothing
    , _plewPrettyPrint = True
    , _plewUploadProtocol = Nothing
    , _plewLogsId = pPlewLogsId_
    , _plewPp = True
    , _plewAccessToken = Nothing
    , _plewUploadType = Nothing
    , _plewBearerToken = Nothing
    , _plewKey = Nothing
    , _plewOauthToken = Nothing
    , _plewProjectsId = pPlewProjectsId_
    , _plewFields = Nothing
    , _plewCallback = Nothing
    , _plewAlt = "json"
    }

-- | V1 error format.
plewXgafv :: Lens' ProjectsLogsEntriesWrite' (Maybe Text)
plewXgafv
  = lens _plewXgafv (\ s a -> s{_plewXgafv = a})

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters.
plewQuotaUser :: Lens' ProjectsLogsEntriesWrite' (Maybe Text)
plewQuotaUser
  = lens _plewQuotaUser
      (\ s a -> s{_plewQuotaUser = a})

-- | Returns response with indentations and line breaks.
plewPrettyPrint :: Lens' ProjectsLogsEntriesWrite' Bool
plewPrettyPrint
  = lens _plewPrettyPrint
      (\ s a -> s{_plewPrettyPrint = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
plewUploadProtocol :: Lens' ProjectsLogsEntriesWrite' (Maybe Text)
plewUploadProtocol
  = lens _plewUploadProtocol
      (\ s a -> s{_plewUploadProtocol = a})

-- | Part of \`logName\`. See documentation of \`projectsId\`.
plewLogsId :: Lens' ProjectsLogsEntriesWrite' Text
plewLogsId
  = lens _plewLogsId (\ s a -> s{_plewLogsId = a})

-- | Pretty-print response.
plewPp :: Lens' ProjectsLogsEntriesWrite' Bool
plewPp = lens _plewPp (\ s a -> s{_plewPp = a})

-- | OAuth access token.
plewAccessToken :: Lens' ProjectsLogsEntriesWrite' (Maybe Text)
plewAccessToken
  = lens _plewAccessToken
      (\ s a -> s{_plewAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
plewUploadType :: Lens' ProjectsLogsEntriesWrite' (Maybe Text)
plewUploadType
  = lens _plewUploadType
      (\ s a -> s{_plewUploadType = a})

-- | OAuth bearer token.
plewBearerToken :: Lens' ProjectsLogsEntriesWrite' (Maybe Text)
plewBearerToken
  = lens _plewBearerToken
      (\ s a -> s{_plewBearerToken = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
plewKey :: Lens' ProjectsLogsEntriesWrite' (Maybe Text)
plewKey = lens _plewKey (\ s a -> s{_plewKey = a})

-- | OAuth 2.0 token for the current user.
plewOauthToken :: Lens' ProjectsLogsEntriesWrite' (Maybe Text)
plewOauthToken
  = lens _plewOauthToken
      (\ s a -> s{_plewOauthToken = a})

-- | Part of \`logName\`. The resource name of the log that will receive the
-- log entries.
plewProjectsId :: Lens' ProjectsLogsEntriesWrite' Text
plewProjectsId
  = lens _plewProjectsId
      (\ s a -> s{_plewProjectsId = a})

-- | Selector specifying which fields to include in a partial response.
plewFields :: Lens' ProjectsLogsEntriesWrite' (Maybe Text)
plewFields
  = lens _plewFields (\ s a -> s{_plewFields = a})

-- | JSONP
plewCallback :: Lens' ProjectsLogsEntriesWrite' (Maybe Text)
plewCallback
  = lens _plewCallback (\ s a -> s{_plewCallback = a})

-- | Data format for response.
plewAlt :: Lens' ProjectsLogsEntriesWrite' Text
plewAlt = lens _plewAlt (\ s a -> s{_plewAlt = a})

instance GoogleRequest ProjectsLogsEntriesWrite'
         where
        type Rs ProjectsLogsEntriesWrite' =
             WriteLogEntriesResponse
        request = requestWithRoute defReq loggingURL
        requestWithRoute r u ProjectsLogsEntriesWrite'{..}
          = go _plewXgafv _plewQuotaUser
              (Just _plewPrettyPrint)
              _plewUploadProtocol
              _plewLogsId
              (Just _plewPp)
              _plewAccessToken
              _plewUploadType
              _plewBearerToken
              _plewKey
              _plewOauthToken
              _plewProjectsId
              _plewFields
              _plewCallback
              (Just _plewAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy ProjectsLogsEntriesWriteResource)
                      r
                      u