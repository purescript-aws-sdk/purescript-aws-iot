
module AWS.Iot.Types where

import Prelude
import Data.Foreign.Class (class Decode, class Encode)
import Data.Foreign.Generic (defaultOptions, genericDecode, genericEncode)
import Data.Foreign.Generic.Types (Options)
import Data.Generic.Rep (class Generic)
import Data.Generic.Rep.Show (genericShow)
import Data.Maybe (Maybe(..))
import Data.Newtype (class Newtype)
import Data.StrMap (StrMap) as StrMap

import AWS.Request.Types as Types

options :: Options
options = defaultOptions { unwrapSingleConstructors = true }


-- | <p>The input for the AcceptCertificateTransfer operation.</p>
newtype AcceptCertificateTransferRequest = AcceptCertificateTransferRequest 
  { "certificateId" :: (CertificateId)
  , "setAsActive" :: Maybe (SetAsActive)
  }
derive instance newtypeAcceptCertificateTransferRequest :: Newtype AcceptCertificateTransferRequest _
derive instance repGenericAcceptCertificateTransferRequest :: Generic AcceptCertificateTransferRequest _
instance showAcceptCertificateTransferRequest :: Show AcceptCertificateTransferRequest where show = genericShow
instance decodeAcceptCertificateTransferRequest :: Decode AcceptCertificateTransferRequest where decode = genericDecode options
instance encodeAcceptCertificateTransferRequest :: Encode AcceptCertificateTransferRequest where encode = genericEncode options

-- | Constructs AcceptCertificateTransferRequest from required parameters
newAcceptCertificateTransferRequest :: CertificateId -> AcceptCertificateTransferRequest
newAcceptCertificateTransferRequest _certificateId = AcceptCertificateTransferRequest { "certificateId": _certificateId, "setAsActive": Nothing }

-- | Constructs AcceptCertificateTransferRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newAcceptCertificateTransferRequest' :: CertificateId -> ( { "certificateId" :: (CertificateId) , "setAsActive" :: Maybe (SetAsActive) } -> {"certificateId" :: (CertificateId) , "setAsActive" :: Maybe (SetAsActive) } ) -> AcceptCertificateTransferRequest
newAcceptCertificateTransferRequest' _certificateId customize = (AcceptCertificateTransferRequest <<< customize) { "certificateId": _certificateId, "setAsActive": Nothing }



-- | <p>Describes the actions associated with a rule.</p>
newtype Action = Action 
  { "dynamoDB" :: Maybe (DynamoDBAction)
  , "dynamoDBv2" :: Maybe (DynamoDBv2Action)
  , "lambda" :: Maybe (LambdaAction)
  , "sns" :: Maybe (SnsAction)
  , "sqs" :: Maybe (SqsAction)
  , "kinesis" :: Maybe (KinesisAction)
  , "republish" :: Maybe (RepublishAction)
  , "s3" :: Maybe (S3Action)
  , "firehose" :: Maybe (FirehoseAction)
  , "cloudwatchMetric" :: Maybe (CloudwatchMetricAction)
  , "cloudwatchAlarm" :: Maybe (CloudwatchAlarmAction)
  , "elasticsearch" :: Maybe (ElasticsearchAction)
  , "salesforce" :: Maybe (SalesforceAction)
  }
derive instance newtypeAction :: Newtype Action _
derive instance repGenericAction :: Generic Action _
instance showAction :: Show Action where show = genericShow
instance decodeAction :: Decode Action where decode = genericDecode options
instance encodeAction :: Encode Action where encode = genericEncode options

-- | Constructs Action from required parameters
newAction :: Action
newAction  = Action { "cloudwatchAlarm": Nothing, "cloudwatchMetric": Nothing, "dynamoDB": Nothing, "dynamoDBv2": Nothing, "elasticsearch": Nothing, "firehose": Nothing, "kinesis": Nothing, "lambda": Nothing, "republish": Nothing, "s3": Nothing, "salesforce": Nothing, "sns": Nothing, "sqs": Nothing }

-- | Constructs Action's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newAction' :: ( { "dynamoDB" :: Maybe (DynamoDBAction) , "dynamoDBv2" :: Maybe (DynamoDBv2Action) , "lambda" :: Maybe (LambdaAction) , "sns" :: Maybe (SnsAction) , "sqs" :: Maybe (SqsAction) , "kinesis" :: Maybe (KinesisAction) , "republish" :: Maybe (RepublishAction) , "s3" :: Maybe (S3Action) , "firehose" :: Maybe (FirehoseAction) , "cloudwatchMetric" :: Maybe (CloudwatchMetricAction) , "cloudwatchAlarm" :: Maybe (CloudwatchAlarmAction) , "elasticsearch" :: Maybe (ElasticsearchAction) , "salesforce" :: Maybe (SalesforceAction) } -> {"dynamoDB" :: Maybe (DynamoDBAction) , "dynamoDBv2" :: Maybe (DynamoDBv2Action) , "lambda" :: Maybe (LambdaAction) , "sns" :: Maybe (SnsAction) , "sqs" :: Maybe (SqsAction) , "kinesis" :: Maybe (KinesisAction) , "republish" :: Maybe (RepublishAction) , "s3" :: Maybe (S3Action) , "firehose" :: Maybe (FirehoseAction) , "cloudwatchMetric" :: Maybe (CloudwatchMetricAction) , "cloudwatchAlarm" :: Maybe (CloudwatchAlarmAction) , "elasticsearch" :: Maybe (ElasticsearchAction) , "salesforce" :: Maybe (SalesforceAction) } ) -> Action
newAction'  customize = (Action <<< customize) { "cloudwatchAlarm": Nothing, "cloudwatchMetric": Nothing, "dynamoDB": Nothing, "dynamoDBv2": Nothing, "elasticsearch": Nothing, "firehose": Nothing, "kinesis": Nothing, "lambda": Nothing, "republish": Nothing, "s3": Nothing, "salesforce": Nothing, "sns": Nothing, "sqs": Nothing }



newtype ActionList = ActionList (Array Action)
derive instance newtypeActionList :: Newtype ActionList _
derive instance repGenericActionList :: Generic ActionList _
instance showActionList :: Show ActionList where show = genericShow
instance decodeActionList :: Decode ActionList where decode = genericDecode options
instance encodeActionList :: Encode ActionList where encode = genericEncode options



newtype ActionType = ActionType String
derive instance newtypeActionType :: Newtype ActionType _
derive instance repGenericActionType :: Generic ActionType _
instance showActionType :: Show ActionType where show = genericShow
instance decodeActionType :: Decode ActionType where decode = genericDecode options
instance encodeActionType :: Encode ActionType where encode = genericEncode options



newtype AddThingToThingGroupRequest = AddThingToThingGroupRequest 
  { "thingGroupName" :: Maybe (ThingGroupName)
  , "thingGroupArn" :: Maybe (ThingGroupArn)
  , "thingName" :: Maybe (ThingName)
  , "thingArn" :: Maybe (ThingArn)
  }
derive instance newtypeAddThingToThingGroupRequest :: Newtype AddThingToThingGroupRequest _
derive instance repGenericAddThingToThingGroupRequest :: Generic AddThingToThingGroupRequest _
instance showAddThingToThingGroupRequest :: Show AddThingToThingGroupRequest where show = genericShow
instance decodeAddThingToThingGroupRequest :: Decode AddThingToThingGroupRequest where decode = genericDecode options
instance encodeAddThingToThingGroupRequest :: Encode AddThingToThingGroupRequest where encode = genericEncode options

-- | Constructs AddThingToThingGroupRequest from required parameters
newAddThingToThingGroupRequest :: AddThingToThingGroupRequest
newAddThingToThingGroupRequest  = AddThingToThingGroupRequest { "thingArn": Nothing, "thingGroupArn": Nothing, "thingGroupName": Nothing, "thingName": Nothing }

-- | Constructs AddThingToThingGroupRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newAddThingToThingGroupRequest' :: ( { "thingGroupName" :: Maybe (ThingGroupName) , "thingGroupArn" :: Maybe (ThingGroupArn) , "thingName" :: Maybe (ThingName) , "thingArn" :: Maybe (ThingArn) } -> {"thingGroupName" :: Maybe (ThingGroupName) , "thingGroupArn" :: Maybe (ThingGroupArn) , "thingName" :: Maybe (ThingName) , "thingArn" :: Maybe (ThingArn) } ) -> AddThingToThingGroupRequest
newAddThingToThingGroupRequest'  customize = (AddThingToThingGroupRequest <<< customize) { "thingArn": Nothing, "thingGroupArn": Nothing, "thingGroupName": Nothing, "thingName": Nothing }



newtype AddThingToThingGroupResponse = AddThingToThingGroupResponse Types.NoArguments
derive instance newtypeAddThingToThingGroupResponse :: Newtype AddThingToThingGroupResponse _
derive instance repGenericAddThingToThingGroupResponse :: Generic AddThingToThingGroupResponse _
instance showAddThingToThingGroupResponse :: Show AddThingToThingGroupResponse where show = genericShow
instance decodeAddThingToThingGroupResponse :: Decode AddThingToThingGroupResponse where decode = genericDecode options
instance encodeAddThingToThingGroupResponse :: Encode AddThingToThingGroupResponse where encode = genericEncode options



newtype AdditionalParameterMap = AdditionalParameterMap (StrMap.StrMap Value)
derive instance newtypeAdditionalParameterMap :: Newtype AdditionalParameterMap _
derive instance repGenericAdditionalParameterMap :: Generic AdditionalParameterMap _
instance showAdditionalParameterMap :: Show AdditionalParameterMap where show = genericShow
instance decodeAdditionalParameterMap :: Decode AdditionalParameterMap where decode = genericDecode options
instance encodeAdditionalParameterMap :: Encode AdditionalParameterMap where encode = genericEncode options



newtype AlarmName = AlarmName String
derive instance newtypeAlarmName :: Newtype AlarmName _
derive instance repGenericAlarmName :: Generic AlarmName _
instance showAlarmName :: Show AlarmName where show = genericShow
instance decodeAlarmName :: Decode AlarmName where decode = genericDecode options
instance encodeAlarmName :: Encode AlarmName where encode = genericEncode options



newtype AllowAutoRegistration = AllowAutoRegistration Boolean
derive instance newtypeAllowAutoRegistration :: Newtype AllowAutoRegistration _
derive instance repGenericAllowAutoRegistration :: Generic AllowAutoRegistration _
instance showAllowAutoRegistration :: Show AllowAutoRegistration where show = genericShow
instance decodeAllowAutoRegistration :: Decode AllowAutoRegistration where decode = genericDecode options
instance encodeAllowAutoRegistration :: Encode AllowAutoRegistration where encode = genericEncode options



-- | <p>Contains information that allowed the authorization.</p>
newtype Allowed = Allowed 
  { "policies" :: Maybe (Policies)
  }
derive instance newtypeAllowed :: Newtype Allowed _
derive instance repGenericAllowed :: Generic Allowed _
instance showAllowed :: Show Allowed where show = genericShow
instance decodeAllowed :: Decode Allowed where decode = genericDecode options
instance encodeAllowed :: Encode Allowed where encode = genericEncode options

-- | Constructs Allowed from required parameters
newAllowed :: Allowed
newAllowed  = Allowed { "policies": Nothing }

-- | Constructs Allowed's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newAllowed' :: ( { "policies" :: Maybe (Policies) } -> {"policies" :: Maybe (Policies) } ) -> Allowed
newAllowed'  customize = (Allowed <<< customize) { "policies": Nothing }



newtype AscendingOrder = AscendingOrder Boolean
derive instance newtypeAscendingOrder :: Newtype AscendingOrder _
derive instance repGenericAscendingOrder :: Generic AscendingOrder _
instance showAscendingOrder :: Show AscendingOrder where show = genericShow
instance decodeAscendingOrder :: Decode AscendingOrder where decode = genericDecode options
instance encodeAscendingOrder :: Encode AscendingOrder where encode = genericEncode options



newtype AssociateTargetsWithJobRequest = AssociateTargetsWithJobRequest 
  { "targets" :: (JobTargets)
  , "jobId" :: (JobId)
  , "comment" :: Maybe (Comment)
  }
derive instance newtypeAssociateTargetsWithJobRequest :: Newtype AssociateTargetsWithJobRequest _
derive instance repGenericAssociateTargetsWithJobRequest :: Generic AssociateTargetsWithJobRequest _
instance showAssociateTargetsWithJobRequest :: Show AssociateTargetsWithJobRequest where show = genericShow
instance decodeAssociateTargetsWithJobRequest :: Decode AssociateTargetsWithJobRequest where decode = genericDecode options
instance encodeAssociateTargetsWithJobRequest :: Encode AssociateTargetsWithJobRequest where encode = genericEncode options

-- | Constructs AssociateTargetsWithJobRequest from required parameters
newAssociateTargetsWithJobRequest :: JobId -> JobTargets -> AssociateTargetsWithJobRequest
newAssociateTargetsWithJobRequest _jobId _targets = AssociateTargetsWithJobRequest { "jobId": _jobId, "targets": _targets, "comment": Nothing }

-- | Constructs AssociateTargetsWithJobRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newAssociateTargetsWithJobRequest' :: JobId -> JobTargets -> ( { "targets" :: (JobTargets) , "jobId" :: (JobId) , "comment" :: Maybe (Comment) } -> {"targets" :: (JobTargets) , "jobId" :: (JobId) , "comment" :: Maybe (Comment) } ) -> AssociateTargetsWithJobRequest
newAssociateTargetsWithJobRequest' _jobId _targets customize = (AssociateTargetsWithJobRequest <<< customize) { "jobId": _jobId, "targets": _targets, "comment": Nothing }



newtype AssociateTargetsWithJobResponse = AssociateTargetsWithJobResponse 
  { "jobArn" :: Maybe (JobArn)
  , "jobId" :: Maybe (JobId)
  , "description" :: Maybe (JobDescription)
  }
derive instance newtypeAssociateTargetsWithJobResponse :: Newtype AssociateTargetsWithJobResponse _
derive instance repGenericAssociateTargetsWithJobResponse :: Generic AssociateTargetsWithJobResponse _
instance showAssociateTargetsWithJobResponse :: Show AssociateTargetsWithJobResponse where show = genericShow
instance decodeAssociateTargetsWithJobResponse :: Decode AssociateTargetsWithJobResponse where decode = genericDecode options
instance encodeAssociateTargetsWithJobResponse :: Encode AssociateTargetsWithJobResponse where encode = genericEncode options

-- | Constructs AssociateTargetsWithJobResponse from required parameters
newAssociateTargetsWithJobResponse :: AssociateTargetsWithJobResponse
newAssociateTargetsWithJobResponse  = AssociateTargetsWithJobResponse { "description": Nothing, "jobArn": Nothing, "jobId": Nothing }

-- | Constructs AssociateTargetsWithJobResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newAssociateTargetsWithJobResponse' :: ( { "jobArn" :: Maybe (JobArn) , "jobId" :: Maybe (JobId) , "description" :: Maybe (JobDescription) } -> {"jobArn" :: Maybe (JobArn) , "jobId" :: Maybe (JobId) , "description" :: Maybe (JobDescription) } ) -> AssociateTargetsWithJobResponse
newAssociateTargetsWithJobResponse'  customize = (AssociateTargetsWithJobResponse <<< customize) { "description": Nothing, "jobArn": Nothing, "jobId": Nothing }



newtype AttachPolicyRequest = AttachPolicyRequest 
  { "policyName" :: (PolicyName)
  , "target" :: (PolicyTarget)
  }
derive instance newtypeAttachPolicyRequest :: Newtype AttachPolicyRequest _
derive instance repGenericAttachPolicyRequest :: Generic AttachPolicyRequest _
instance showAttachPolicyRequest :: Show AttachPolicyRequest where show = genericShow
instance decodeAttachPolicyRequest :: Decode AttachPolicyRequest where decode = genericDecode options
instance encodeAttachPolicyRequest :: Encode AttachPolicyRequest where encode = genericEncode options

-- | Constructs AttachPolicyRequest from required parameters
newAttachPolicyRequest :: PolicyName -> PolicyTarget -> AttachPolicyRequest
newAttachPolicyRequest _policyName _target = AttachPolicyRequest { "policyName": _policyName, "target": _target }

-- | Constructs AttachPolicyRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newAttachPolicyRequest' :: PolicyName -> PolicyTarget -> ( { "policyName" :: (PolicyName) , "target" :: (PolicyTarget) } -> {"policyName" :: (PolicyName) , "target" :: (PolicyTarget) } ) -> AttachPolicyRequest
newAttachPolicyRequest' _policyName _target customize = (AttachPolicyRequest <<< customize) { "policyName": _policyName, "target": _target }



-- | <p>The input for the AttachPrincipalPolicy operation.</p>
newtype AttachPrincipalPolicyRequest = AttachPrincipalPolicyRequest 
  { "policyName" :: (PolicyName)
  , "principal" :: (Principal)
  }
derive instance newtypeAttachPrincipalPolicyRequest :: Newtype AttachPrincipalPolicyRequest _
derive instance repGenericAttachPrincipalPolicyRequest :: Generic AttachPrincipalPolicyRequest _
instance showAttachPrincipalPolicyRequest :: Show AttachPrincipalPolicyRequest where show = genericShow
instance decodeAttachPrincipalPolicyRequest :: Decode AttachPrincipalPolicyRequest where decode = genericDecode options
instance encodeAttachPrincipalPolicyRequest :: Encode AttachPrincipalPolicyRequest where encode = genericEncode options

-- | Constructs AttachPrincipalPolicyRequest from required parameters
newAttachPrincipalPolicyRequest :: PolicyName -> Principal -> AttachPrincipalPolicyRequest
newAttachPrincipalPolicyRequest _policyName _principal = AttachPrincipalPolicyRequest { "policyName": _policyName, "principal": _principal }

-- | Constructs AttachPrincipalPolicyRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newAttachPrincipalPolicyRequest' :: PolicyName -> Principal -> ( { "policyName" :: (PolicyName) , "principal" :: (Principal) } -> {"policyName" :: (PolicyName) , "principal" :: (Principal) } ) -> AttachPrincipalPolicyRequest
newAttachPrincipalPolicyRequest' _policyName _principal customize = (AttachPrincipalPolicyRequest <<< customize) { "policyName": _policyName, "principal": _principal }



-- | <p>The input for the AttachThingPrincipal operation.</p>
newtype AttachThingPrincipalRequest = AttachThingPrincipalRequest 
  { "thingName" :: (ThingName)
  , "principal" :: (Principal)
  }
derive instance newtypeAttachThingPrincipalRequest :: Newtype AttachThingPrincipalRequest _
derive instance repGenericAttachThingPrincipalRequest :: Generic AttachThingPrincipalRequest _
instance showAttachThingPrincipalRequest :: Show AttachThingPrincipalRequest where show = genericShow
instance decodeAttachThingPrincipalRequest :: Decode AttachThingPrincipalRequest where decode = genericDecode options
instance encodeAttachThingPrincipalRequest :: Encode AttachThingPrincipalRequest where encode = genericEncode options

-- | Constructs AttachThingPrincipalRequest from required parameters
newAttachThingPrincipalRequest :: Principal -> ThingName -> AttachThingPrincipalRequest
newAttachThingPrincipalRequest _principal _thingName = AttachThingPrincipalRequest { "principal": _principal, "thingName": _thingName }

-- | Constructs AttachThingPrincipalRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newAttachThingPrincipalRequest' :: Principal -> ThingName -> ( { "thingName" :: (ThingName) , "principal" :: (Principal) } -> {"thingName" :: (ThingName) , "principal" :: (Principal) } ) -> AttachThingPrincipalRequest
newAttachThingPrincipalRequest' _principal _thingName customize = (AttachThingPrincipalRequest <<< customize) { "principal": _principal, "thingName": _thingName }



-- | <p>The output from the AttachThingPrincipal operation.</p>
newtype AttachThingPrincipalResponse = AttachThingPrincipalResponse Types.NoArguments
derive instance newtypeAttachThingPrincipalResponse :: Newtype AttachThingPrincipalResponse _
derive instance repGenericAttachThingPrincipalResponse :: Generic AttachThingPrincipalResponse _
instance showAttachThingPrincipalResponse :: Show AttachThingPrincipalResponse where show = genericShow
instance decodeAttachThingPrincipalResponse :: Decode AttachThingPrincipalResponse where decode = genericDecode options
instance encodeAttachThingPrincipalResponse :: Encode AttachThingPrincipalResponse where encode = genericEncode options



newtype AttributeName = AttributeName String
derive instance newtypeAttributeName :: Newtype AttributeName _
derive instance repGenericAttributeName :: Generic AttributeName _
instance showAttributeName :: Show AttributeName where show = genericShow
instance decodeAttributeName :: Decode AttributeName where decode = genericDecode options
instance encodeAttributeName :: Encode AttributeName where encode = genericEncode options



-- | <p>The attribute payload.</p>
newtype AttributePayload = AttributePayload 
  { "attributes" :: Maybe (Attributes)
  , "merge" :: Maybe (Flag)
  }
derive instance newtypeAttributePayload :: Newtype AttributePayload _
derive instance repGenericAttributePayload :: Generic AttributePayload _
instance showAttributePayload :: Show AttributePayload where show = genericShow
instance decodeAttributePayload :: Decode AttributePayload where decode = genericDecode options
instance encodeAttributePayload :: Encode AttributePayload where encode = genericEncode options

-- | Constructs AttributePayload from required parameters
newAttributePayload :: AttributePayload
newAttributePayload  = AttributePayload { "attributes": Nothing, "merge": Nothing }

-- | Constructs AttributePayload's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newAttributePayload' :: ( { "attributes" :: Maybe (Attributes) , "merge" :: Maybe (Flag) } -> {"attributes" :: Maybe (Attributes) , "merge" :: Maybe (Flag) } ) -> AttributePayload
newAttributePayload'  customize = (AttributePayload <<< customize) { "attributes": Nothing, "merge": Nothing }



newtype AttributeValue = AttributeValue String
derive instance newtypeAttributeValue :: Newtype AttributeValue _
derive instance repGenericAttributeValue :: Generic AttributeValue _
instance showAttributeValue :: Show AttributeValue where show = genericShow
instance decodeAttributeValue :: Decode AttributeValue where decode = genericDecode options
instance encodeAttributeValue :: Encode AttributeValue where encode = genericEncode options



newtype Attributes = Attributes (StrMap.StrMap AttributeValue)
derive instance newtypeAttributes :: Newtype Attributes _
derive instance repGenericAttributes :: Generic Attributes _
instance showAttributes :: Show Attributes where show = genericShow
instance decodeAttributes :: Decode Attributes where decode = genericDecode options
instance encodeAttributes :: Encode Attributes where encode = genericEncode options



newtype AttributesMap = AttributesMap (StrMap.StrMap Value)
derive instance newtypeAttributesMap :: Newtype AttributesMap _
derive instance repGenericAttributesMap :: Generic AttributesMap _
instance showAttributesMap :: Show AttributesMap where show = genericShow
instance decodeAttributesMap :: Decode AttributesMap where decode = genericDecode options
instance encodeAttributesMap :: Encode AttributesMap where encode = genericEncode options



newtype AuthDecision = AuthDecision String
derive instance newtypeAuthDecision :: Newtype AuthDecision _
derive instance repGenericAuthDecision :: Generic AuthDecision _
instance showAuthDecision :: Show AuthDecision where show = genericShow
instance decodeAuthDecision :: Decode AuthDecision where decode = genericDecode options
instance encodeAuthDecision :: Encode AuthDecision where encode = genericEncode options



-- | <p>A collection of authorization information.</p>
newtype AuthInfo = AuthInfo 
  { "actionType" :: Maybe (ActionType)
  , "resources" :: Maybe (Resources)
  }
derive instance newtypeAuthInfo :: Newtype AuthInfo _
derive instance repGenericAuthInfo :: Generic AuthInfo _
instance showAuthInfo :: Show AuthInfo where show = genericShow
instance decodeAuthInfo :: Decode AuthInfo where decode = genericDecode options
instance encodeAuthInfo :: Encode AuthInfo where encode = genericEncode options

-- | Constructs AuthInfo from required parameters
newAuthInfo :: AuthInfo
newAuthInfo  = AuthInfo { "actionType": Nothing, "resources": Nothing }

-- | Constructs AuthInfo's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newAuthInfo' :: ( { "actionType" :: Maybe (ActionType) , "resources" :: Maybe (Resources) } -> {"actionType" :: Maybe (ActionType) , "resources" :: Maybe (Resources) } ) -> AuthInfo
newAuthInfo'  customize = (AuthInfo <<< customize) { "actionType": Nothing, "resources": Nothing }



newtype AuthInfos = AuthInfos (Array AuthInfo)
derive instance newtypeAuthInfos :: Newtype AuthInfos _
derive instance repGenericAuthInfos :: Generic AuthInfos _
instance showAuthInfos :: Show AuthInfos where show = genericShow
instance decodeAuthInfos :: Decode AuthInfos where decode = genericDecode options
instance encodeAuthInfos :: Encode AuthInfos where encode = genericEncode options



-- | <p>The authorizer result.</p>
newtype AuthResult = AuthResult 
  { "authInfo" :: Maybe (AuthInfo)
  , "allowed" :: Maybe (Allowed)
  , "denied" :: Maybe (Denied)
  , "authDecision" :: Maybe (AuthDecision)
  , "missingContextValues" :: Maybe (MissingContextValues)
  }
derive instance newtypeAuthResult :: Newtype AuthResult _
derive instance repGenericAuthResult :: Generic AuthResult _
instance showAuthResult :: Show AuthResult where show = genericShow
instance decodeAuthResult :: Decode AuthResult where decode = genericDecode options
instance encodeAuthResult :: Encode AuthResult where encode = genericEncode options

-- | Constructs AuthResult from required parameters
newAuthResult :: AuthResult
newAuthResult  = AuthResult { "allowed": Nothing, "authDecision": Nothing, "authInfo": Nothing, "denied": Nothing, "missingContextValues": Nothing }

-- | Constructs AuthResult's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newAuthResult' :: ( { "authInfo" :: Maybe (AuthInfo) , "allowed" :: Maybe (Allowed) , "denied" :: Maybe (Denied) , "authDecision" :: Maybe (AuthDecision) , "missingContextValues" :: Maybe (MissingContextValues) } -> {"authInfo" :: Maybe (AuthInfo) , "allowed" :: Maybe (Allowed) , "denied" :: Maybe (Denied) , "authDecision" :: Maybe (AuthDecision) , "missingContextValues" :: Maybe (MissingContextValues) } ) -> AuthResult
newAuthResult'  customize = (AuthResult <<< customize) { "allowed": Nothing, "authDecision": Nothing, "authInfo": Nothing, "denied": Nothing, "missingContextValues": Nothing }



newtype AuthResults = AuthResults (Array AuthResult)
derive instance newtypeAuthResults :: Newtype AuthResults _
derive instance repGenericAuthResults :: Generic AuthResults _
instance showAuthResults :: Show AuthResults where show = genericShow
instance decodeAuthResults :: Decode AuthResults where decode = genericDecode options
instance encodeAuthResults :: Encode AuthResults where encode = genericEncode options



newtype AuthorizerArn = AuthorizerArn String
derive instance newtypeAuthorizerArn :: Newtype AuthorizerArn _
derive instance repGenericAuthorizerArn :: Generic AuthorizerArn _
instance showAuthorizerArn :: Show AuthorizerArn where show = genericShow
instance decodeAuthorizerArn :: Decode AuthorizerArn where decode = genericDecode options
instance encodeAuthorizerArn :: Encode AuthorizerArn where encode = genericEncode options



-- | <p>The authorizer description.</p>
newtype AuthorizerDescription = AuthorizerDescription 
  { "authorizerName" :: Maybe (AuthorizerName)
  , "authorizerArn" :: Maybe (AuthorizerArn)
  , "authorizerFunctionArn" :: Maybe (AuthorizerFunctionArn)
  , "tokenKeyName" :: Maybe (TokenKeyName)
  , "tokenSigningPublicKeys" :: Maybe (PublicKeyMap)
  , "status" :: Maybe (AuthorizerStatus)
  , "creationDate" :: Maybe (DateType)
  , "lastModifiedDate" :: Maybe (DateType)
  }
derive instance newtypeAuthorizerDescription :: Newtype AuthorizerDescription _
derive instance repGenericAuthorizerDescription :: Generic AuthorizerDescription _
instance showAuthorizerDescription :: Show AuthorizerDescription where show = genericShow
instance decodeAuthorizerDescription :: Decode AuthorizerDescription where decode = genericDecode options
instance encodeAuthorizerDescription :: Encode AuthorizerDescription where encode = genericEncode options

-- | Constructs AuthorizerDescription from required parameters
newAuthorizerDescription :: AuthorizerDescription
newAuthorizerDescription  = AuthorizerDescription { "authorizerArn": Nothing, "authorizerFunctionArn": Nothing, "authorizerName": Nothing, "creationDate": Nothing, "lastModifiedDate": Nothing, "status": Nothing, "tokenKeyName": Nothing, "tokenSigningPublicKeys": Nothing }

-- | Constructs AuthorizerDescription's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newAuthorizerDescription' :: ( { "authorizerName" :: Maybe (AuthorizerName) , "authorizerArn" :: Maybe (AuthorizerArn) , "authorizerFunctionArn" :: Maybe (AuthorizerFunctionArn) , "tokenKeyName" :: Maybe (TokenKeyName) , "tokenSigningPublicKeys" :: Maybe (PublicKeyMap) , "status" :: Maybe (AuthorizerStatus) , "creationDate" :: Maybe (DateType) , "lastModifiedDate" :: Maybe (DateType) } -> {"authorizerName" :: Maybe (AuthorizerName) , "authorizerArn" :: Maybe (AuthorizerArn) , "authorizerFunctionArn" :: Maybe (AuthorizerFunctionArn) , "tokenKeyName" :: Maybe (TokenKeyName) , "tokenSigningPublicKeys" :: Maybe (PublicKeyMap) , "status" :: Maybe (AuthorizerStatus) , "creationDate" :: Maybe (DateType) , "lastModifiedDate" :: Maybe (DateType) } ) -> AuthorizerDescription
newAuthorizerDescription'  customize = (AuthorizerDescription <<< customize) { "authorizerArn": Nothing, "authorizerFunctionArn": Nothing, "authorizerName": Nothing, "creationDate": Nothing, "lastModifiedDate": Nothing, "status": Nothing, "tokenKeyName": Nothing, "tokenSigningPublicKeys": Nothing }



newtype AuthorizerFunctionArn = AuthorizerFunctionArn String
derive instance newtypeAuthorizerFunctionArn :: Newtype AuthorizerFunctionArn _
derive instance repGenericAuthorizerFunctionArn :: Generic AuthorizerFunctionArn _
instance showAuthorizerFunctionArn :: Show AuthorizerFunctionArn where show = genericShow
instance decodeAuthorizerFunctionArn :: Decode AuthorizerFunctionArn where decode = genericDecode options
instance encodeAuthorizerFunctionArn :: Encode AuthorizerFunctionArn where encode = genericEncode options



newtype AuthorizerName = AuthorizerName String
derive instance newtypeAuthorizerName :: Newtype AuthorizerName _
derive instance repGenericAuthorizerName :: Generic AuthorizerName _
instance showAuthorizerName :: Show AuthorizerName where show = genericShow
instance decodeAuthorizerName :: Decode AuthorizerName where decode = genericDecode options
instance encodeAuthorizerName :: Encode AuthorizerName where encode = genericEncode options



newtype AuthorizerStatus = AuthorizerStatus String
derive instance newtypeAuthorizerStatus :: Newtype AuthorizerStatus _
derive instance repGenericAuthorizerStatus :: Generic AuthorizerStatus _
instance showAuthorizerStatus :: Show AuthorizerStatus where show = genericShow
instance decodeAuthorizerStatus :: Decode AuthorizerStatus where decode = genericDecode options
instance encodeAuthorizerStatus :: Encode AuthorizerStatus where encode = genericEncode options



-- | <p>The authorizer summary.</p>
newtype AuthorizerSummary = AuthorizerSummary 
  { "authorizerName" :: Maybe (AuthorizerName)
  , "authorizerArn" :: Maybe (AuthorizerArn)
  }
derive instance newtypeAuthorizerSummary :: Newtype AuthorizerSummary _
derive instance repGenericAuthorizerSummary :: Generic AuthorizerSummary _
instance showAuthorizerSummary :: Show AuthorizerSummary where show = genericShow
instance decodeAuthorizerSummary :: Decode AuthorizerSummary where decode = genericDecode options
instance encodeAuthorizerSummary :: Encode AuthorizerSummary where encode = genericEncode options

-- | Constructs AuthorizerSummary from required parameters
newAuthorizerSummary :: AuthorizerSummary
newAuthorizerSummary  = AuthorizerSummary { "authorizerArn": Nothing, "authorizerName": Nothing }

-- | Constructs AuthorizerSummary's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newAuthorizerSummary' :: ( { "authorizerName" :: Maybe (AuthorizerName) , "authorizerArn" :: Maybe (AuthorizerArn) } -> {"authorizerName" :: Maybe (AuthorizerName) , "authorizerArn" :: Maybe (AuthorizerArn) } ) -> AuthorizerSummary
newAuthorizerSummary'  customize = (AuthorizerSummary <<< customize) { "authorizerArn": Nothing, "authorizerName": Nothing }



newtype Authorizers = Authorizers (Array AuthorizerSummary)
derive instance newtypeAuthorizers :: Newtype Authorizers _
derive instance repGenericAuthorizers :: Generic Authorizers _
instance showAuthorizers :: Show Authorizers where show = genericShow
instance decodeAuthorizers :: Decode Authorizers where decode = genericDecode options
instance encodeAuthorizers :: Encode Authorizers where encode = genericEncode options



newtype AutoRegistrationStatus = AutoRegistrationStatus String
derive instance newtypeAutoRegistrationStatus :: Newtype AutoRegistrationStatus _
derive instance repGenericAutoRegistrationStatus :: Generic AutoRegistrationStatus _
instance showAutoRegistrationStatus :: Show AutoRegistrationStatus where show = genericShow
instance decodeAutoRegistrationStatus :: Decode AutoRegistrationStatus where decode = genericDecode options
instance encodeAutoRegistrationStatus :: Encode AutoRegistrationStatus where encode = genericEncode options



newtype AwsAccountId = AwsAccountId String
derive instance newtypeAwsAccountId :: Newtype AwsAccountId _
derive instance repGenericAwsAccountId :: Generic AwsAccountId _
instance showAwsAccountId :: Show AwsAccountId where show = genericShow
instance decodeAwsAccountId :: Decode AwsAccountId where decode = genericDecode options
instance encodeAwsAccountId :: Encode AwsAccountId where encode = genericEncode options



newtype AwsArn = AwsArn String
derive instance newtypeAwsArn :: Newtype AwsArn _
derive instance repGenericAwsArn :: Generic AwsArn _
instance showAwsArn :: Show AwsArn where show = genericShow
instance decodeAwsArn :: Decode AwsArn where decode = genericDecode options
instance encodeAwsArn :: Encode AwsArn where encode = genericEncode options



newtype AwsIotJobArn = AwsIotJobArn String
derive instance newtypeAwsIotJobArn :: Newtype AwsIotJobArn _
derive instance repGenericAwsIotJobArn :: Generic AwsIotJobArn _
instance showAwsIotJobArn :: Show AwsIotJobArn where show = genericShow
instance decodeAwsIotJobArn :: Decode AwsIotJobArn where decode = genericDecode options
instance encodeAwsIotJobArn :: Encode AwsIotJobArn where encode = genericEncode options



newtype AwsIotJobId = AwsIotJobId String
derive instance newtypeAwsIotJobId :: Newtype AwsIotJobId _
derive instance repGenericAwsIotJobId :: Generic AwsIotJobId _
instance showAwsIotJobId :: Show AwsIotJobId where show = genericShow
instance decodeAwsIotJobId :: Decode AwsIotJobId where decode = genericDecode options
instance encodeAwsIotJobId :: Encode AwsIotJobId where encode = genericEncode options



newtype AwsIotSqlVersion = AwsIotSqlVersion String
derive instance newtypeAwsIotSqlVersion :: Newtype AwsIotSqlVersion _
derive instance repGenericAwsIotSqlVersion :: Generic AwsIotSqlVersion _
instance showAwsIotSqlVersion :: Show AwsIotSqlVersion where show = genericShow
instance decodeAwsIotSqlVersion :: Decode AwsIotSqlVersion where decode = genericDecode options
instance encodeAwsIotSqlVersion :: Encode AwsIotSqlVersion where encode = genericEncode options



newtype BucketName = BucketName String
derive instance newtypeBucketName :: Newtype BucketName _
derive instance repGenericBucketName :: Generic BucketName _
instance showBucketName :: Show BucketName where show = genericShow
instance decodeBucketName :: Decode BucketName where decode = genericDecode options
instance encodeBucketName :: Encode BucketName where encode = genericEncode options



-- | <p>A CA certificate.</p>
newtype CACertificate = CACertificate 
  { "certificateArn" :: Maybe (CertificateArn)
  , "certificateId" :: Maybe (CertificateId)
  , "status" :: Maybe (CACertificateStatus)
  , "creationDate" :: Maybe (DateType)
  }
derive instance newtypeCACertificate :: Newtype CACertificate _
derive instance repGenericCACertificate :: Generic CACertificate _
instance showCACertificate :: Show CACertificate where show = genericShow
instance decodeCACertificate :: Decode CACertificate where decode = genericDecode options
instance encodeCACertificate :: Encode CACertificate where encode = genericEncode options

-- | Constructs CACertificate from required parameters
newCACertificate :: CACertificate
newCACertificate  = CACertificate { "certificateArn": Nothing, "certificateId": Nothing, "creationDate": Nothing, "status": Nothing }

-- | Constructs CACertificate's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCACertificate' :: ( { "certificateArn" :: Maybe (CertificateArn) , "certificateId" :: Maybe (CertificateId) , "status" :: Maybe (CACertificateStatus) , "creationDate" :: Maybe (DateType) } -> {"certificateArn" :: Maybe (CertificateArn) , "certificateId" :: Maybe (CertificateId) , "status" :: Maybe (CACertificateStatus) , "creationDate" :: Maybe (DateType) } ) -> CACertificate
newCACertificate'  customize = (CACertificate <<< customize) { "certificateArn": Nothing, "certificateId": Nothing, "creationDate": Nothing, "status": Nothing }



-- | <p>Describes a CA certificate.</p>
newtype CACertificateDescription = CACertificateDescription 
  { "certificateArn" :: Maybe (CertificateArn)
  , "certificateId" :: Maybe (CertificateId)
  , "status" :: Maybe (CACertificateStatus)
  , "certificatePem" :: Maybe (CertificatePem)
  , "ownedBy" :: Maybe (AwsAccountId)
  , "creationDate" :: Maybe (DateType)
  , "autoRegistrationStatus" :: Maybe (AutoRegistrationStatus)
  }
derive instance newtypeCACertificateDescription :: Newtype CACertificateDescription _
derive instance repGenericCACertificateDescription :: Generic CACertificateDescription _
instance showCACertificateDescription :: Show CACertificateDescription where show = genericShow
instance decodeCACertificateDescription :: Decode CACertificateDescription where decode = genericDecode options
instance encodeCACertificateDescription :: Encode CACertificateDescription where encode = genericEncode options

-- | Constructs CACertificateDescription from required parameters
newCACertificateDescription :: CACertificateDescription
newCACertificateDescription  = CACertificateDescription { "autoRegistrationStatus": Nothing, "certificateArn": Nothing, "certificateId": Nothing, "certificatePem": Nothing, "creationDate": Nothing, "ownedBy": Nothing, "status": Nothing }

-- | Constructs CACertificateDescription's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCACertificateDescription' :: ( { "certificateArn" :: Maybe (CertificateArn) , "certificateId" :: Maybe (CertificateId) , "status" :: Maybe (CACertificateStatus) , "certificatePem" :: Maybe (CertificatePem) , "ownedBy" :: Maybe (AwsAccountId) , "creationDate" :: Maybe (DateType) , "autoRegistrationStatus" :: Maybe (AutoRegistrationStatus) } -> {"certificateArn" :: Maybe (CertificateArn) , "certificateId" :: Maybe (CertificateId) , "status" :: Maybe (CACertificateStatus) , "certificatePem" :: Maybe (CertificatePem) , "ownedBy" :: Maybe (AwsAccountId) , "creationDate" :: Maybe (DateType) , "autoRegistrationStatus" :: Maybe (AutoRegistrationStatus) } ) -> CACertificateDescription
newCACertificateDescription'  customize = (CACertificateDescription <<< customize) { "autoRegistrationStatus": Nothing, "certificateArn": Nothing, "certificateId": Nothing, "certificatePem": Nothing, "creationDate": Nothing, "ownedBy": Nothing, "status": Nothing }



newtype CACertificateStatus = CACertificateStatus String
derive instance newtypeCACertificateStatus :: Newtype CACertificateStatus _
derive instance repGenericCACertificateStatus :: Generic CACertificateStatus _
instance showCACertificateStatus :: Show CACertificateStatus where show = genericShow
instance decodeCACertificateStatus :: Decode CACertificateStatus where decode = genericDecode options
instance encodeCACertificateStatus :: Encode CACertificateStatus where encode = genericEncode options



newtype CACertificates = CACertificates (Array CACertificate)
derive instance newtypeCACertificates :: Newtype CACertificates _
derive instance repGenericCACertificates :: Generic CACertificates _
instance showCACertificates :: Show CACertificates where show = genericShow
instance decodeCACertificates :: Decode CACertificates where decode = genericDecode options
instance encodeCACertificates :: Encode CACertificates where encode = genericEncode options



-- | <p>The input for the CancelCertificateTransfer operation.</p>
newtype CancelCertificateTransferRequest = CancelCertificateTransferRequest 
  { "certificateId" :: (CertificateId)
  }
derive instance newtypeCancelCertificateTransferRequest :: Newtype CancelCertificateTransferRequest _
derive instance repGenericCancelCertificateTransferRequest :: Generic CancelCertificateTransferRequest _
instance showCancelCertificateTransferRequest :: Show CancelCertificateTransferRequest where show = genericShow
instance decodeCancelCertificateTransferRequest :: Decode CancelCertificateTransferRequest where decode = genericDecode options
instance encodeCancelCertificateTransferRequest :: Encode CancelCertificateTransferRequest where encode = genericEncode options

-- | Constructs CancelCertificateTransferRequest from required parameters
newCancelCertificateTransferRequest :: CertificateId -> CancelCertificateTransferRequest
newCancelCertificateTransferRequest _certificateId = CancelCertificateTransferRequest { "certificateId": _certificateId }

-- | Constructs CancelCertificateTransferRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCancelCertificateTransferRequest' :: CertificateId -> ( { "certificateId" :: (CertificateId) } -> {"certificateId" :: (CertificateId) } ) -> CancelCertificateTransferRequest
newCancelCertificateTransferRequest' _certificateId customize = (CancelCertificateTransferRequest <<< customize) { "certificateId": _certificateId }



newtype CancelJobRequest = CancelJobRequest 
  { "jobId" :: (JobId)
  , "comment" :: Maybe (Comment)
  }
derive instance newtypeCancelJobRequest :: Newtype CancelJobRequest _
derive instance repGenericCancelJobRequest :: Generic CancelJobRequest _
instance showCancelJobRequest :: Show CancelJobRequest where show = genericShow
instance decodeCancelJobRequest :: Decode CancelJobRequest where decode = genericDecode options
instance encodeCancelJobRequest :: Encode CancelJobRequest where encode = genericEncode options

-- | Constructs CancelJobRequest from required parameters
newCancelJobRequest :: JobId -> CancelJobRequest
newCancelJobRequest _jobId = CancelJobRequest { "jobId": _jobId, "comment": Nothing }

-- | Constructs CancelJobRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCancelJobRequest' :: JobId -> ( { "jobId" :: (JobId) , "comment" :: Maybe (Comment) } -> {"jobId" :: (JobId) , "comment" :: Maybe (Comment) } ) -> CancelJobRequest
newCancelJobRequest' _jobId customize = (CancelJobRequest <<< customize) { "jobId": _jobId, "comment": Nothing }



newtype CancelJobResponse = CancelJobResponse 
  { "jobArn" :: Maybe (JobArn)
  , "jobId" :: Maybe (JobId)
  , "description" :: Maybe (JobDescription)
  }
derive instance newtypeCancelJobResponse :: Newtype CancelJobResponse _
derive instance repGenericCancelJobResponse :: Generic CancelJobResponse _
instance showCancelJobResponse :: Show CancelJobResponse where show = genericShow
instance decodeCancelJobResponse :: Decode CancelJobResponse where decode = genericDecode options
instance encodeCancelJobResponse :: Encode CancelJobResponse where encode = genericEncode options

-- | Constructs CancelJobResponse from required parameters
newCancelJobResponse :: CancelJobResponse
newCancelJobResponse  = CancelJobResponse { "description": Nothing, "jobArn": Nothing, "jobId": Nothing }

-- | Constructs CancelJobResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCancelJobResponse' :: ( { "jobArn" :: Maybe (JobArn) , "jobId" :: Maybe (JobId) , "description" :: Maybe (JobDescription) } -> {"jobArn" :: Maybe (JobArn) , "jobId" :: Maybe (JobId) , "description" :: Maybe (JobDescription) } ) -> CancelJobResponse
newCancelJobResponse'  customize = (CancelJobResponse <<< customize) { "description": Nothing, "jobArn": Nothing, "jobId": Nothing }



newtype CanceledThings = CanceledThings Int
derive instance newtypeCanceledThings :: Newtype CanceledThings _
derive instance repGenericCanceledThings :: Generic CanceledThings _
instance showCanceledThings :: Show CanceledThings where show = genericShow
instance decodeCanceledThings :: Decode CanceledThings where decode = genericDecode options
instance encodeCanceledThings :: Encode CanceledThings where encode = genericEncode options



newtype CannedAccessControlList = CannedAccessControlList String
derive instance newtypeCannedAccessControlList :: Newtype CannedAccessControlList _
derive instance repGenericCannedAccessControlList :: Generic CannedAccessControlList _
instance showCannedAccessControlList :: Show CannedAccessControlList where show = genericShow
instance decodeCannedAccessControlList :: Decode CannedAccessControlList where decode = genericDecode options
instance encodeCannedAccessControlList :: Encode CannedAccessControlList where encode = genericEncode options



-- | <p>Information about a certificate.</p>
newtype Certificate = Certificate 
  { "certificateArn" :: Maybe (CertificateArn)
  , "certificateId" :: Maybe (CertificateId)
  , "status" :: Maybe (CertificateStatus)
  , "creationDate" :: Maybe (DateType)
  }
derive instance newtypeCertificate :: Newtype Certificate _
derive instance repGenericCertificate :: Generic Certificate _
instance showCertificate :: Show Certificate where show = genericShow
instance decodeCertificate :: Decode Certificate where decode = genericDecode options
instance encodeCertificate :: Encode Certificate where encode = genericEncode options

-- | Constructs Certificate from required parameters
newCertificate :: Certificate
newCertificate  = Certificate { "certificateArn": Nothing, "certificateId": Nothing, "creationDate": Nothing, "status": Nothing }

-- | Constructs Certificate's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCertificate' :: ( { "certificateArn" :: Maybe (CertificateArn) , "certificateId" :: Maybe (CertificateId) , "status" :: Maybe (CertificateStatus) , "creationDate" :: Maybe (DateType) } -> {"certificateArn" :: Maybe (CertificateArn) , "certificateId" :: Maybe (CertificateId) , "status" :: Maybe (CertificateStatus) , "creationDate" :: Maybe (DateType) } ) -> Certificate
newCertificate'  customize = (Certificate <<< customize) { "certificateArn": Nothing, "certificateId": Nothing, "creationDate": Nothing, "status": Nothing }



newtype CertificateArn = CertificateArn String
derive instance newtypeCertificateArn :: Newtype CertificateArn _
derive instance repGenericCertificateArn :: Generic CertificateArn _
instance showCertificateArn :: Show CertificateArn where show = genericShow
instance decodeCertificateArn :: Decode CertificateArn where decode = genericDecode options
instance encodeCertificateArn :: Encode CertificateArn where encode = genericEncode options



-- | <p>Unable to verify the CA certificate used to sign the device certificate you are attempting to register. This is happens when you have registered more than one CA certificate that has the same subject field and public key.</p>
newtype CertificateConflictException = CertificateConflictException 
  { "message" :: Maybe (ErrorMessage')
  }
derive instance newtypeCertificateConflictException :: Newtype CertificateConflictException _
derive instance repGenericCertificateConflictException :: Generic CertificateConflictException _
instance showCertificateConflictException :: Show CertificateConflictException where show = genericShow
instance decodeCertificateConflictException :: Decode CertificateConflictException where decode = genericDecode options
instance encodeCertificateConflictException :: Encode CertificateConflictException where encode = genericEncode options

-- | Constructs CertificateConflictException from required parameters
newCertificateConflictException :: CertificateConflictException
newCertificateConflictException  = CertificateConflictException { "message": Nothing }

-- | Constructs CertificateConflictException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCertificateConflictException' :: ( { "message" :: Maybe (ErrorMessage') } -> {"message" :: Maybe (ErrorMessage') } ) -> CertificateConflictException
newCertificateConflictException'  customize = (CertificateConflictException <<< customize) { "message": Nothing }



-- | <p>Describes a certificate.</p>
newtype CertificateDescription = CertificateDescription 
  { "certificateArn" :: Maybe (CertificateArn)
  , "certificateId" :: Maybe (CertificateId)
  , "caCertificateId" :: Maybe (CertificateId)
  , "status" :: Maybe (CertificateStatus)
  , "certificatePem" :: Maybe (CertificatePem)
  , "ownedBy" :: Maybe (AwsAccountId)
  , "previousOwnedBy" :: Maybe (AwsAccountId)
  , "creationDate" :: Maybe (DateType)
  , "lastModifiedDate" :: Maybe (DateType)
  , "transferData" :: Maybe (TransferData)
  }
derive instance newtypeCertificateDescription :: Newtype CertificateDescription _
derive instance repGenericCertificateDescription :: Generic CertificateDescription _
instance showCertificateDescription :: Show CertificateDescription where show = genericShow
instance decodeCertificateDescription :: Decode CertificateDescription where decode = genericDecode options
instance encodeCertificateDescription :: Encode CertificateDescription where encode = genericEncode options

-- | Constructs CertificateDescription from required parameters
newCertificateDescription :: CertificateDescription
newCertificateDescription  = CertificateDescription { "caCertificateId": Nothing, "certificateArn": Nothing, "certificateId": Nothing, "certificatePem": Nothing, "creationDate": Nothing, "lastModifiedDate": Nothing, "ownedBy": Nothing, "previousOwnedBy": Nothing, "status": Nothing, "transferData": Nothing }

-- | Constructs CertificateDescription's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCertificateDescription' :: ( { "certificateArn" :: Maybe (CertificateArn) , "certificateId" :: Maybe (CertificateId) , "caCertificateId" :: Maybe (CertificateId) , "status" :: Maybe (CertificateStatus) , "certificatePem" :: Maybe (CertificatePem) , "ownedBy" :: Maybe (AwsAccountId) , "previousOwnedBy" :: Maybe (AwsAccountId) , "creationDate" :: Maybe (DateType) , "lastModifiedDate" :: Maybe (DateType) , "transferData" :: Maybe (TransferData) } -> {"certificateArn" :: Maybe (CertificateArn) , "certificateId" :: Maybe (CertificateId) , "caCertificateId" :: Maybe (CertificateId) , "status" :: Maybe (CertificateStatus) , "certificatePem" :: Maybe (CertificatePem) , "ownedBy" :: Maybe (AwsAccountId) , "previousOwnedBy" :: Maybe (AwsAccountId) , "creationDate" :: Maybe (DateType) , "lastModifiedDate" :: Maybe (DateType) , "transferData" :: Maybe (TransferData) } ) -> CertificateDescription
newCertificateDescription'  customize = (CertificateDescription <<< customize) { "caCertificateId": Nothing, "certificateArn": Nothing, "certificateId": Nothing, "certificatePem": Nothing, "creationDate": Nothing, "lastModifiedDate": Nothing, "ownedBy": Nothing, "previousOwnedBy": Nothing, "status": Nothing, "transferData": Nothing }



newtype CertificateId = CertificateId String
derive instance newtypeCertificateId :: Newtype CertificateId _
derive instance repGenericCertificateId :: Generic CertificateId _
instance showCertificateId :: Show CertificateId where show = genericShow
instance decodeCertificateId :: Decode CertificateId where decode = genericDecode options
instance encodeCertificateId :: Encode CertificateId where encode = genericEncode options



newtype CertificateName = CertificateName String
derive instance newtypeCertificateName :: Newtype CertificateName _
derive instance repGenericCertificateName :: Generic CertificateName _
instance showCertificateName :: Show CertificateName where show = genericShow
instance decodeCertificateName :: Decode CertificateName where decode = genericDecode options
instance encodeCertificateName :: Encode CertificateName where encode = genericEncode options



-- | <p>The PEM of a certificate.</p>
newtype CertificatePem = CertificatePem String
derive instance newtypeCertificatePem :: Newtype CertificatePem _
derive instance repGenericCertificatePem :: Generic CertificatePem _
instance showCertificatePem :: Show CertificatePem where show = genericShow
instance decodeCertificatePem :: Decode CertificatePem where decode = genericDecode options
instance encodeCertificatePem :: Encode CertificatePem where encode = genericEncode options



newtype CertificateSigningRequest = CertificateSigningRequest String
derive instance newtypeCertificateSigningRequest :: Newtype CertificateSigningRequest _
derive instance repGenericCertificateSigningRequest :: Generic CertificateSigningRequest _
instance showCertificateSigningRequest :: Show CertificateSigningRequest where show = genericShow
instance decodeCertificateSigningRequest :: Decode CertificateSigningRequest where decode = genericDecode options
instance encodeCertificateSigningRequest :: Encode CertificateSigningRequest where encode = genericEncode options



-- | <p>The certificate operation is not allowed.</p>
newtype CertificateStateException = CertificateStateException 
  { "message" :: Maybe (ErrorMessage')
  }
derive instance newtypeCertificateStateException :: Newtype CertificateStateException _
derive instance repGenericCertificateStateException :: Generic CertificateStateException _
instance showCertificateStateException :: Show CertificateStateException where show = genericShow
instance decodeCertificateStateException :: Decode CertificateStateException where decode = genericDecode options
instance encodeCertificateStateException :: Encode CertificateStateException where encode = genericEncode options

-- | Constructs CertificateStateException from required parameters
newCertificateStateException :: CertificateStateException
newCertificateStateException  = CertificateStateException { "message": Nothing }

-- | Constructs CertificateStateException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCertificateStateException' :: ( { "message" :: Maybe (ErrorMessage') } -> {"message" :: Maybe (ErrorMessage') } ) -> CertificateStateException
newCertificateStateException'  customize = (CertificateStateException <<< customize) { "message": Nothing }



newtype CertificateStatus = CertificateStatus String
derive instance newtypeCertificateStatus :: Newtype CertificateStatus _
derive instance repGenericCertificateStatus :: Generic CertificateStatus _
instance showCertificateStatus :: Show CertificateStatus where show = genericShow
instance decodeCertificateStatus :: Decode CertificateStatus where decode = genericDecode options
instance encodeCertificateStatus :: Encode CertificateStatus where encode = genericEncode options



-- | <p>The certificate is invalid.</p>
newtype CertificateValidationException = CertificateValidationException 
  { "message" :: Maybe (ErrorMessage')
  }
derive instance newtypeCertificateValidationException :: Newtype CertificateValidationException _
derive instance repGenericCertificateValidationException :: Generic CertificateValidationException _
instance showCertificateValidationException :: Show CertificateValidationException where show = genericShow
instance decodeCertificateValidationException :: Decode CertificateValidationException where decode = genericDecode options
instance encodeCertificateValidationException :: Encode CertificateValidationException where encode = genericEncode options

-- | Constructs CertificateValidationException from required parameters
newCertificateValidationException :: CertificateValidationException
newCertificateValidationException  = CertificateValidationException { "message": Nothing }

-- | Constructs CertificateValidationException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCertificateValidationException' :: ( { "message" :: Maybe (ErrorMessage') } -> {"message" :: Maybe (ErrorMessage') } ) -> CertificateValidationException
newCertificateValidationException'  customize = (CertificateValidationException <<< customize) { "message": Nothing }



newtype Certificates = Certificates (Array Certificate)
derive instance newtypeCertificates :: Newtype Certificates _
derive instance repGenericCertificates :: Generic Certificates _
instance showCertificates :: Show Certificates where show = genericShow
instance decodeCertificates :: Decode Certificates where decode = genericDecode options
instance encodeCertificates :: Encode Certificates where encode = genericEncode options



newtype ClearDefaultAuthorizerRequest = ClearDefaultAuthorizerRequest Types.NoArguments
derive instance newtypeClearDefaultAuthorizerRequest :: Newtype ClearDefaultAuthorizerRequest _
derive instance repGenericClearDefaultAuthorizerRequest :: Generic ClearDefaultAuthorizerRequest _
instance showClearDefaultAuthorizerRequest :: Show ClearDefaultAuthorizerRequest where show = genericShow
instance decodeClearDefaultAuthorizerRequest :: Decode ClearDefaultAuthorizerRequest where decode = genericDecode options
instance encodeClearDefaultAuthorizerRequest :: Encode ClearDefaultAuthorizerRequest where encode = genericEncode options



newtype ClearDefaultAuthorizerResponse = ClearDefaultAuthorizerResponse Types.NoArguments
derive instance newtypeClearDefaultAuthorizerResponse :: Newtype ClearDefaultAuthorizerResponse _
derive instance repGenericClearDefaultAuthorizerResponse :: Generic ClearDefaultAuthorizerResponse _
instance showClearDefaultAuthorizerResponse :: Show ClearDefaultAuthorizerResponse where show = genericShow
instance decodeClearDefaultAuthorizerResponse :: Decode ClearDefaultAuthorizerResponse where decode = genericDecode options
instance encodeClearDefaultAuthorizerResponse :: Encode ClearDefaultAuthorizerResponse where encode = genericEncode options



newtype ClientId = ClientId String
derive instance newtypeClientId :: Newtype ClientId _
derive instance repGenericClientId :: Generic ClientId _
instance showClientId :: Show ClientId where show = genericShow
instance decodeClientId :: Decode ClientId where decode = genericDecode options
instance encodeClientId :: Encode ClientId where encode = genericEncode options



-- | <p>Describes an action that updates a CloudWatch alarm.</p>
newtype CloudwatchAlarmAction = CloudwatchAlarmAction 
  { "roleArn" :: (AwsArn)
  , "alarmName" :: (AlarmName)
  , "stateReason" :: (StateReason)
  , "stateValue" :: (StateValue)
  }
derive instance newtypeCloudwatchAlarmAction :: Newtype CloudwatchAlarmAction _
derive instance repGenericCloudwatchAlarmAction :: Generic CloudwatchAlarmAction _
instance showCloudwatchAlarmAction :: Show CloudwatchAlarmAction where show = genericShow
instance decodeCloudwatchAlarmAction :: Decode CloudwatchAlarmAction where decode = genericDecode options
instance encodeCloudwatchAlarmAction :: Encode CloudwatchAlarmAction where encode = genericEncode options

-- | Constructs CloudwatchAlarmAction from required parameters
newCloudwatchAlarmAction :: AlarmName -> AwsArn -> StateReason -> StateValue -> CloudwatchAlarmAction
newCloudwatchAlarmAction _alarmName _roleArn _stateReason _stateValue = CloudwatchAlarmAction { "alarmName": _alarmName, "roleArn": _roleArn, "stateReason": _stateReason, "stateValue": _stateValue }

-- | Constructs CloudwatchAlarmAction's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCloudwatchAlarmAction' :: AlarmName -> AwsArn -> StateReason -> StateValue -> ( { "roleArn" :: (AwsArn) , "alarmName" :: (AlarmName) , "stateReason" :: (StateReason) , "stateValue" :: (StateValue) } -> {"roleArn" :: (AwsArn) , "alarmName" :: (AlarmName) , "stateReason" :: (StateReason) , "stateValue" :: (StateValue) } ) -> CloudwatchAlarmAction
newCloudwatchAlarmAction' _alarmName _roleArn _stateReason _stateValue customize = (CloudwatchAlarmAction <<< customize) { "alarmName": _alarmName, "roleArn": _roleArn, "stateReason": _stateReason, "stateValue": _stateValue }



-- | <p>Describes an action that captures a CloudWatch metric.</p>
newtype CloudwatchMetricAction = CloudwatchMetricAction 
  { "roleArn" :: (AwsArn)
  , "metricNamespace" :: (MetricNamespace)
  , "metricName" :: (MetricName)
  , "metricValue" :: (MetricValue)
  , "metricUnit" :: (MetricUnit)
  , "metricTimestamp" :: Maybe (MetricTimestamp)
  }
derive instance newtypeCloudwatchMetricAction :: Newtype CloudwatchMetricAction _
derive instance repGenericCloudwatchMetricAction :: Generic CloudwatchMetricAction _
instance showCloudwatchMetricAction :: Show CloudwatchMetricAction where show = genericShow
instance decodeCloudwatchMetricAction :: Decode CloudwatchMetricAction where decode = genericDecode options
instance encodeCloudwatchMetricAction :: Encode CloudwatchMetricAction where encode = genericEncode options

-- | Constructs CloudwatchMetricAction from required parameters
newCloudwatchMetricAction :: MetricName -> MetricNamespace -> MetricUnit -> MetricValue -> AwsArn -> CloudwatchMetricAction
newCloudwatchMetricAction _metricName _metricNamespace _metricUnit _metricValue _roleArn = CloudwatchMetricAction { "metricName": _metricName, "metricNamespace": _metricNamespace, "metricUnit": _metricUnit, "metricValue": _metricValue, "roleArn": _roleArn, "metricTimestamp": Nothing }

-- | Constructs CloudwatchMetricAction's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCloudwatchMetricAction' :: MetricName -> MetricNamespace -> MetricUnit -> MetricValue -> AwsArn -> ( { "roleArn" :: (AwsArn) , "metricNamespace" :: (MetricNamespace) , "metricName" :: (MetricName) , "metricValue" :: (MetricValue) , "metricUnit" :: (MetricUnit) , "metricTimestamp" :: Maybe (MetricTimestamp) } -> {"roleArn" :: (AwsArn) , "metricNamespace" :: (MetricNamespace) , "metricName" :: (MetricName) , "metricValue" :: (MetricValue) , "metricUnit" :: (MetricUnit) , "metricTimestamp" :: Maybe (MetricTimestamp) } ) -> CloudwatchMetricAction
newCloudwatchMetricAction' _metricName _metricNamespace _metricUnit _metricValue _roleArn customize = (CloudwatchMetricAction <<< customize) { "metricName": _metricName, "metricNamespace": _metricNamespace, "metricUnit": _metricUnit, "metricValue": _metricValue, "roleArn": _roleArn, "metricTimestamp": Nothing }



newtype Code = Code String
derive instance newtypeCode :: Newtype Code _
derive instance repGenericCode :: Generic Code _
instance showCode :: Show Code where show = genericShow
instance decodeCode :: Decode Code where decode = genericDecode options
instance encodeCode :: Encode Code where encode = genericEncode options



-- | <p>Describes the method to use when code signing a file.</p>
newtype CodeSigning = CodeSigning 
  { "awsSignerJobId" :: Maybe (SigningJobId)
  , "customCodeSigning" :: Maybe (CustomCodeSigning)
  }
derive instance newtypeCodeSigning :: Newtype CodeSigning _
derive instance repGenericCodeSigning :: Generic CodeSigning _
instance showCodeSigning :: Show CodeSigning where show = genericShow
instance decodeCodeSigning :: Decode CodeSigning where decode = genericDecode options
instance encodeCodeSigning :: Encode CodeSigning where encode = genericEncode options

-- | Constructs CodeSigning from required parameters
newCodeSigning :: CodeSigning
newCodeSigning  = CodeSigning { "awsSignerJobId": Nothing, "customCodeSigning": Nothing }

-- | Constructs CodeSigning's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCodeSigning' :: ( { "awsSignerJobId" :: Maybe (SigningJobId) , "customCodeSigning" :: Maybe (CustomCodeSigning) } -> {"awsSignerJobId" :: Maybe (SigningJobId) , "customCodeSigning" :: Maybe (CustomCodeSigning) } ) -> CodeSigning
newCodeSigning'  customize = (CodeSigning <<< customize) { "awsSignerJobId": Nothing, "customCodeSigning": Nothing }



-- | <p>Describes the certificate chain being used when code signing a file.</p>
newtype CodeSigningCertificateChain = CodeSigningCertificateChain 
  { "stream" :: Maybe (Stream)
  , "certificateName" :: Maybe (CertificateName)
  , "inlineDocument" :: Maybe (InlineDocument)
  }
derive instance newtypeCodeSigningCertificateChain :: Newtype CodeSigningCertificateChain _
derive instance repGenericCodeSigningCertificateChain :: Generic CodeSigningCertificateChain _
instance showCodeSigningCertificateChain :: Show CodeSigningCertificateChain where show = genericShow
instance decodeCodeSigningCertificateChain :: Decode CodeSigningCertificateChain where decode = genericDecode options
instance encodeCodeSigningCertificateChain :: Encode CodeSigningCertificateChain where encode = genericEncode options

-- | Constructs CodeSigningCertificateChain from required parameters
newCodeSigningCertificateChain :: CodeSigningCertificateChain
newCodeSigningCertificateChain  = CodeSigningCertificateChain { "certificateName": Nothing, "inlineDocument": Nothing, "stream": Nothing }

-- | Constructs CodeSigningCertificateChain's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCodeSigningCertificateChain' :: ( { "stream" :: Maybe (Stream) , "certificateName" :: Maybe (CertificateName) , "inlineDocument" :: Maybe (InlineDocument) } -> {"stream" :: Maybe (Stream) , "certificateName" :: Maybe (CertificateName) , "inlineDocument" :: Maybe (InlineDocument) } ) -> CodeSigningCertificateChain
newCodeSigningCertificateChain'  customize = (CodeSigningCertificateChain <<< customize) { "certificateName": Nothing, "inlineDocument": Nothing, "stream": Nothing }



-- | <p>Describes the signature for a file.</p>
newtype CodeSigningSignature = CodeSigningSignature 
  { "stream" :: Maybe (Stream)
  , "inlineDocument" :: Maybe (Signature)
  }
derive instance newtypeCodeSigningSignature :: Newtype CodeSigningSignature _
derive instance repGenericCodeSigningSignature :: Generic CodeSigningSignature _
instance showCodeSigningSignature :: Show CodeSigningSignature where show = genericShow
instance decodeCodeSigningSignature :: Decode CodeSigningSignature where decode = genericDecode options
instance encodeCodeSigningSignature :: Encode CodeSigningSignature where encode = genericEncode options

-- | Constructs CodeSigningSignature from required parameters
newCodeSigningSignature :: CodeSigningSignature
newCodeSigningSignature  = CodeSigningSignature { "inlineDocument": Nothing, "stream": Nothing }

-- | Constructs CodeSigningSignature's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCodeSigningSignature' :: ( { "stream" :: Maybe (Stream) , "inlineDocument" :: Maybe (Signature) } -> {"stream" :: Maybe (Stream) , "inlineDocument" :: Maybe (Signature) } ) -> CodeSigningSignature
newCodeSigningSignature'  customize = (CodeSigningSignature <<< customize) { "inlineDocument": Nothing, "stream": Nothing }



newtype CognitoIdentityPoolId = CognitoIdentityPoolId String
derive instance newtypeCognitoIdentityPoolId :: Newtype CognitoIdentityPoolId _
derive instance repGenericCognitoIdentityPoolId :: Generic CognitoIdentityPoolId _
instance showCognitoIdentityPoolId :: Show CognitoIdentityPoolId where show = genericShow
instance decodeCognitoIdentityPoolId :: Decode CognitoIdentityPoolId where decode = genericDecode options
instance encodeCognitoIdentityPoolId :: Encode CognitoIdentityPoolId where encode = genericEncode options



newtype Comment = Comment String
derive instance newtypeComment :: Newtype Comment _
derive instance repGenericComment :: Generic Comment _
instance showComment :: Show Comment where show = genericShow
instance decodeComment :: Decode Comment where decode = genericDecode options
instance encodeComment :: Encode Comment where encode = genericEncode options



-- | <p>Configuration.</p>
newtype Configuration = Configuration 
  { "Enabled" :: Maybe (Enabled)
  }
derive instance newtypeConfiguration :: Newtype Configuration _
derive instance repGenericConfiguration :: Generic Configuration _
instance showConfiguration :: Show Configuration where show = genericShow
instance decodeConfiguration :: Decode Configuration where decode = genericDecode options
instance encodeConfiguration :: Encode Configuration where encode = genericEncode options

-- | Constructs Configuration from required parameters
newConfiguration :: Configuration
newConfiguration  = Configuration { "Enabled": Nothing }

-- | Constructs Configuration's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newConfiguration' :: ( { "Enabled" :: Maybe (Enabled) } -> {"Enabled" :: Maybe (Enabled) } ) -> Configuration
newConfiguration'  customize = (Configuration <<< customize) { "Enabled": Nothing }



-- | <p>A conflicting resource update exception. This exception is thrown when two pending updates cause a conflict.</p>
newtype ConflictingResourceUpdateException = ConflictingResourceUpdateException 
  { "message" :: Maybe (ErrorMessage')
  }
derive instance newtypeConflictingResourceUpdateException :: Newtype ConflictingResourceUpdateException _
derive instance repGenericConflictingResourceUpdateException :: Generic ConflictingResourceUpdateException _
instance showConflictingResourceUpdateException :: Show ConflictingResourceUpdateException where show = genericShow
instance decodeConflictingResourceUpdateException :: Decode ConflictingResourceUpdateException where decode = genericDecode options
instance encodeConflictingResourceUpdateException :: Encode ConflictingResourceUpdateException where encode = genericEncode options

-- | Constructs ConflictingResourceUpdateException from required parameters
newConflictingResourceUpdateException :: ConflictingResourceUpdateException
newConflictingResourceUpdateException  = ConflictingResourceUpdateException { "message": Nothing }

-- | Constructs ConflictingResourceUpdateException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newConflictingResourceUpdateException' :: ( { "message" :: Maybe (ErrorMessage') } -> {"message" :: Maybe (ErrorMessage') } ) -> ConflictingResourceUpdateException
newConflictingResourceUpdateException'  customize = (ConflictingResourceUpdateException <<< customize) { "message": Nothing }



newtype Count = Count Int
derive instance newtypeCount :: Newtype Count _
derive instance repGenericCount :: Generic Count _
instance showCount :: Show Count where show = genericShow
instance decodeCount :: Decode Count where decode = genericDecode options
instance encodeCount :: Encode Count where encode = genericEncode options



newtype CreateAuthorizerRequest = CreateAuthorizerRequest 
  { "authorizerName" :: (AuthorizerName)
  , "authorizerFunctionArn" :: (AuthorizerFunctionArn)
  , "tokenKeyName" :: (TokenKeyName)
  , "tokenSigningPublicKeys" :: (PublicKeyMap)
  , "status" :: Maybe (AuthorizerStatus)
  }
derive instance newtypeCreateAuthorizerRequest :: Newtype CreateAuthorizerRequest _
derive instance repGenericCreateAuthorizerRequest :: Generic CreateAuthorizerRequest _
instance showCreateAuthorizerRequest :: Show CreateAuthorizerRequest where show = genericShow
instance decodeCreateAuthorizerRequest :: Decode CreateAuthorizerRequest where decode = genericDecode options
instance encodeCreateAuthorizerRequest :: Encode CreateAuthorizerRequest where encode = genericEncode options

-- | Constructs CreateAuthorizerRequest from required parameters
newCreateAuthorizerRequest :: AuthorizerFunctionArn -> AuthorizerName -> TokenKeyName -> PublicKeyMap -> CreateAuthorizerRequest
newCreateAuthorizerRequest _authorizerFunctionArn _authorizerName _tokenKeyName _tokenSigningPublicKeys = CreateAuthorizerRequest { "authorizerFunctionArn": _authorizerFunctionArn, "authorizerName": _authorizerName, "tokenKeyName": _tokenKeyName, "tokenSigningPublicKeys": _tokenSigningPublicKeys, "status": Nothing }

-- | Constructs CreateAuthorizerRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCreateAuthorizerRequest' :: AuthorizerFunctionArn -> AuthorizerName -> TokenKeyName -> PublicKeyMap -> ( { "authorizerName" :: (AuthorizerName) , "authorizerFunctionArn" :: (AuthorizerFunctionArn) , "tokenKeyName" :: (TokenKeyName) , "tokenSigningPublicKeys" :: (PublicKeyMap) , "status" :: Maybe (AuthorizerStatus) } -> {"authorizerName" :: (AuthorizerName) , "authorizerFunctionArn" :: (AuthorizerFunctionArn) , "tokenKeyName" :: (TokenKeyName) , "tokenSigningPublicKeys" :: (PublicKeyMap) , "status" :: Maybe (AuthorizerStatus) } ) -> CreateAuthorizerRequest
newCreateAuthorizerRequest' _authorizerFunctionArn _authorizerName _tokenKeyName _tokenSigningPublicKeys customize = (CreateAuthorizerRequest <<< customize) { "authorizerFunctionArn": _authorizerFunctionArn, "authorizerName": _authorizerName, "tokenKeyName": _tokenKeyName, "tokenSigningPublicKeys": _tokenSigningPublicKeys, "status": Nothing }



newtype CreateAuthorizerResponse = CreateAuthorizerResponse 
  { "authorizerName" :: Maybe (AuthorizerName)
  , "authorizerArn" :: Maybe (AuthorizerArn)
  }
derive instance newtypeCreateAuthorizerResponse :: Newtype CreateAuthorizerResponse _
derive instance repGenericCreateAuthorizerResponse :: Generic CreateAuthorizerResponse _
instance showCreateAuthorizerResponse :: Show CreateAuthorizerResponse where show = genericShow
instance decodeCreateAuthorizerResponse :: Decode CreateAuthorizerResponse where decode = genericDecode options
instance encodeCreateAuthorizerResponse :: Encode CreateAuthorizerResponse where encode = genericEncode options

-- | Constructs CreateAuthorizerResponse from required parameters
newCreateAuthorizerResponse :: CreateAuthorizerResponse
newCreateAuthorizerResponse  = CreateAuthorizerResponse { "authorizerArn": Nothing, "authorizerName": Nothing }

-- | Constructs CreateAuthorizerResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCreateAuthorizerResponse' :: ( { "authorizerName" :: Maybe (AuthorizerName) , "authorizerArn" :: Maybe (AuthorizerArn) } -> {"authorizerName" :: Maybe (AuthorizerName) , "authorizerArn" :: Maybe (AuthorizerArn) } ) -> CreateAuthorizerResponse
newCreateAuthorizerResponse'  customize = (CreateAuthorizerResponse <<< customize) { "authorizerArn": Nothing, "authorizerName": Nothing }



-- | <p>The input for the CreateCertificateFromCsr operation.</p>
newtype CreateCertificateFromCsrRequest = CreateCertificateFromCsrRequest 
  { "certificateSigningRequest" :: (CertificateSigningRequest)
  , "setAsActive" :: Maybe (SetAsActive)
  }
derive instance newtypeCreateCertificateFromCsrRequest :: Newtype CreateCertificateFromCsrRequest _
derive instance repGenericCreateCertificateFromCsrRequest :: Generic CreateCertificateFromCsrRequest _
instance showCreateCertificateFromCsrRequest :: Show CreateCertificateFromCsrRequest where show = genericShow
instance decodeCreateCertificateFromCsrRequest :: Decode CreateCertificateFromCsrRequest where decode = genericDecode options
instance encodeCreateCertificateFromCsrRequest :: Encode CreateCertificateFromCsrRequest where encode = genericEncode options

-- | Constructs CreateCertificateFromCsrRequest from required parameters
newCreateCertificateFromCsrRequest :: CertificateSigningRequest -> CreateCertificateFromCsrRequest
newCreateCertificateFromCsrRequest _certificateSigningRequest = CreateCertificateFromCsrRequest { "certificateSigningRequest": _certificateSigningRequest, "setAsActive": Nothing }

-- | Constructs CreateCertificateFromCsrRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCreateCertificateFromCsrRequest' :: CertificateSigningRequest -> ( { "certificateSigningRequest" :: (CertificateSigningRequest) , "setAsActive" :: Maybe (SetAsActive) } -> {"certificateSigningRequest" :: (CertificateSigningRequest) , "setAsActive" :: Maybe (SetAsActive) } ) -> CreateCertificateFromCsrRequest
newCreateCertificateFromCsrRequest' _certificateSigningRequest customize = (CreateCertificateFromCsrRequest <<< customize) { "certificateSigningRequest": _certificateSigningRequest, "setAsActive": Nothing }



-- | <p>The output from the CreateCertificateFromCsr operation.</p>
newtype CreateCertificateFromCsrResponse = CreateCertificateFromCsrResponse 
  { "certificateArn" :: Maybe (CertificateArn)
  , "certificateId" :: Maybe (CertificateId)
  , "certificatePem" :: Maybe (CertificatePem)
  }
derive instance newtypeCreateCertificateFromCsrResponse :: Newtype CreateCertificateFromCsrResponse _
derive instance repGenericCreateCertificateFromCsrResponse :: Generic CreateCertificateFromCsrResponse _
instance showCreateCertificateFromCsrResponse :: Show CreateCertificateFromCsrResponse where show = genericShow
instance decodeCreateCertificateFromCsrResponse :: Decode CreateCertificateFromCsrResponse where decode = genericDecode options
instance encodeCreateCertificateFromCsrResponse :: Encode CreateCertificateFromCsrResponse where encode = genericEncode options

-- | Constructs CreateCertificateFromCsrResponse from required parameters
newCreateCertificateFromCsrResponse :: CreateCertificateFromCsrResponse
newCreateCertificateFromCsrResponse  = CreateCertificateFromCsrResponse { "certificateArn": Nothing, "certificateId": Nothing, "certificatePem": Nothing }

-- | Constructs CreateCertificateFromCsrResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCreateCertificateFromCsrResponse' :: ( { "certificateArn" :: Maybe (CertificateArn) , "certificateId" :: Maybe (CertificateId) , "certificatePem" :: Maybe (CertificatePem) } -> {"certificateArn" :: Maybe (CertificateArn) , "certificateId" :: Maybe (CertificateId) , "certificatePem" :: Maybe (CertificatePem) } ) -> CreateCertificateFromCsrResponse
newCreateCertificateFromCsrResponse'  customize = (CreateCertificateFromCsrResponse <<< customize) { "certificateArn": Nothing, "certificateId": Nothing, "certificatePem": Nothing }



newtype CreateJobRequest = CreateJobRequest 
  { "jobId" :: (JobId)
  , "targets" :: (JobTargets)
  , "documentSource" :: Maybe (JobDocumentSource)
  , "document" :: Maybe (JobDocument)
  , "description" :: Maybe (JobDescription)
  , "presignedUrlConfig" :: Maybe (PresignedUrlConfig)
  , "targetSelection" :: Maybe (TargetSelection)
  , "jobExecutionsRolloutConfig" :: Maybe (JobExecutionsRolloutConfig)
  , "documentParameters" :: Maybe (JobDocumentParameters)
  }
derive instance newtypeCreateJobRequest :: Newtype CreateJobRequest _
derive instance repGenericCreateJobRequest :: Generic CreateJobRequest _
instance showCreateJobRequest :: Show CreateJobRequest where show = genericShow
instance decodeCreateJobRequest :: Decode CreateJobRequest where decode = genericDecode options
instance encodeCreateJobRequest :: Encode CreateJobRequest where encode = genericEncode options

-- | Constructs CreateJobRequest from required parameters
newCreateJobRequest :: JobId -> JobTargets -> CreateJobRequest
newCreateJobRequest _jobId _targets = CreateJobRequest { "jobId": _jobId, "targets": _targets, "description": Nothing, "document": Nothing, "documentParameters": Nothing, "documentSource": Nothing, "jobExecutionsRolloutConfig": Nothing, "presignedUrlConfig": Nothing, "targetSelection": Nothing }

-- | Constructs CreateJobRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCreateJobRequest' :: JobId -> JobTargets -> ( { "jobId" :: (JobId) , "targets" :: (JobTargets) , "documentSource" :: Maybe (JobDocumentSource) , "document" :: Maybe (JobDocument) , "description" :: Maybe (JobDescription) , "presignedUrlConfig" :: Maybe (PresignedUrlConfig) , "targetSelection" :: Maybe (TargetSelection) , "jobExecutionsRolloutConfig" :: Maybe (JobExecutionsRolloutConfig) , "documentParameters" :: Maybe (JobDocumentParameters) } -> {"jobId" :: (JobId) , "targets" :: (JobTargets) , "documentSource" :: Maybe (JobDocumentSource) , "document" :: Maybe (JobDocument) , "description" :: Maybe (JobDescription) , "presignedUrlConfig" :: Maybe (PresignedUrlConfig) , "targetSelection" :: Maybe (TargetSelection) , "jobExecutionsRolloutConfig" :: Maybe (JobExecutionsRolloutConfig) , "documentParameters" :: Maybe (JobDocumentParameters) } ) -> CreateJobRequest
newCreateJobRequest' _jobId _targets customize = (CreateJobRequest <<< customize) { "jobId": _jobId, "targets": _targets, "description": Nothing, "document": Nothing, "documentParameters": Nothing, "documentSource": Nothing, "jobExecutionsRolloutConfig": Nothing, "presignedUrlConfig": Nothing, "targetSelection": Nothing }



newtype CreateJobResponse = CreateJobResponse 
  { "jobArn" :: Maybe (JobArn)
  , "jobId" :: Maybe (JobId)
  , "description" :: Maybe (JobDescription)
  }
derive instance newtypeCreateJobResponse :: Newtype CreateJobResponse _
derive instance repGenericCreateJobResponse :: Generic CreateJobResponse _
instance showCreateJobResponse :: Show CreateJobResponse where show = genericShow
instance decodeCreateJobResponse :: Decode CreateJobResponse where decode = genericDecode options
instance encodeCreateJobResponse :: Encode CreateJobResponse where encode = genericEncode options

-- | Constructs CreateJobResponse from required parameters
newCreateJobResponse :: CreateJobResponse
newCreateJobResponse  = CreateJobResponse { "description": Nothing, "jobArn": Nothing, "jobId": Nothing }

-- | Constructs CreateJobResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCreateJobResponse' :: ( { "jobArn" :: Maybe (JobArn) , "jobId" :: Maybe (JobId) , "description" :: Maybe (JobDescription) } -> {"jobArn" :: Maybe (JobArn) , "jobId" :: Maybe (JobId) , "description" :: Maybe (JobDescription) } ) -> CreateJobResponse
newCreateJobResponse'  customize = (CreateJobResponse <<< customize) { "description": Nothing, "jobArn": Nothing, "jobId": Nothing }



-- | <p>The input for the CreateKeysAndCertificate operation.</p>
newtype CreateKeysAndCertificateRequest = CreateKeysAndCertificateRequest 
  { "setAsActive" :: Maybe (SetAsActive)
  }
derive instance newtypeCreateKeysAndCertificateRequest :: Newtype CreateKeysAndCertificateRequest _
derive instance repGenericCreateKeysAndCertificateRequest :: Generic CreateKeysAndCertificateRequest _
instance showCreateKeysAndCertificateRequest :: Show CreateKeysAndCertificateRequest where show = genericShow
instance decodeCreateKeysAndCertificateRequest :: Decode CreateKeysAndCertificateRequest where decode = genericDecode options
instance encodeCreateKeysAndCertificateRequest :: Encode CreateKeysAndCertificateRequest where encode = genericEncode options

-- | Constructs CreateKeysAndCertificateRequest from required parameters
newCreateKeysAndCertificateRequest :: CreateKeysAndCertificateRequest
newCreateKeysAndCertificateRequest  = CreateKeysAndCertificateRequest { "setAsActive": Nothing }

-- | Constructs CreateKeysAndCertificateRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCreateKeysAndCertificateRequest' :: ( { "setAsActive" :: Maybe (SetAsActive) } -> {"setAsActive" :: Maybe (SetAsActive) } ) -> CreateKeysAndCertificateRequest
newCreateKeysAndCertificateRequest'  customize = (CreateKeysAndCertificateRequest <<< customize) { "setAsActive": Nothing }



-- | <p>The output of the CreateKeysAndCertificate operation.</p>
newtype CreateKeysAndCertificateResponse = CreateKeysAndCertificateResponse 
  { "certificateArn" :: Maybe (CertificateArn)
  , "certificateId" :: Maybe (CertificateId)
  , "certificatePem" :: Maybe (CertificatePem)
  , "keyPair" :: Maybe (KeyPair)
  }
derive instance newtypeCreateKeysAndCertificateResponse :: Newtype CreateKeysAndCertificateResponse _
derive instance repGenericCreateKeysAndCertificateResponse :: Generic CreateKeysAndCertificateResponse _
instance showCreateKeysAndCertificateResponse :: Show CreateKeysAndCertificateResponse where show = genericShow
instance decodeCreateKeysAndCertificateResponse :: Decode CreateKeysAndCertificateResponse where decode = genericDecode options
instance encodeCreateKeysAndCertificateResponse :: Encode CreateKeysAndCertificateResponse where encode = genericEncode options

-- | Constructs CreateKeysAndCertificateResponse from required parameters
newCreateKeysAndCertificateResponse :: CreateKeysAndCertificateResponse
newCreateKeysAndCertificateResponse  = CreateKeysAndCertificateResponse { "certificateArn": Nothing, "certificateId": Nothing, "certificatePem": Nothing, "keyPair": Nothing }

-- | Constructs CreateKeysAndCertificateResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCreateKeysAndCertificateResponse' :: ( { "certificateArn" :: Maybe (CertificateArn) , "certificateId" :: Maybe (CertificateId) , "certificatePem" :: Maybe (CertificatePem) , "keyPair" :: Maybe (KeyPair) } -> {"certificateArn" :: Maybe (CertificateArn) , "certificateId" :: Maybe (CertificateId) , "certificatePem" :: Maybe (CertificatePem) , "keyPair" :: Maybe (KeyPair) } ) -> CreateKeysAndCertificateResponse
newCreateKeysAndCertificateResponse'  customize = (CreateKeysAndCertificateResponse <<< customize) { "certificateArn": Nothing, "certificateId": Nothing, "certificatePem": Nothing, "keyPair": Nothing }



newtype CreateOTAUpdateRequest = CreateOTAUpdateRequest 
  { "otaUpdateId" :: (OTAUpdateId)
  , "description" :: Maybe (OTAUpdateDescription)
  , "targets" :: (Targets)
  , "targetSelection" :: Maybe (TargetSelection)
  , "files" :: (OTAUpdateFiles)
  , "roleArn" :: (RoleArn)
  , "additionalParameters" :: Maybe (AdditionalParameterMap)
  }
derive instance newtypeCreateOTAUpdateRequest :: Newtype CreateOTAUpdateRequest _
derive instance repGenericCreateOTAUpdateRequest :: Generic CreateOTAUpdateRequest _
instance showCreateOTAUpdateRequest :: Show CreateOTAUpdateRequest where show = genericShow
instance decodeCreateOTAUpdateRequest :: Decode CreateOTAUpdateRequest where decode = genericDecode options
instance encodeCreateOTAUpdateRequest :: Encode CreateOTAUpdateRequest where encode = genericEncode options

-- | Constructs CreateOTAUpdateRequest from required parameters
newCreateOTAUpdateRequest :: OTAUpdateFiles -> OTAUpdateId -> RoleArn -> Targets -> CreateOTAUpdateRequest
newCreateOTAUpdateRequest _files _otaUpdateId _roleArn _targets = CreateOTAUpdateRequest { "files": _files, "otaUpdateId": _otaUpdateId, "roleArn": _roleArn, "targets": _targets, "additionalParameters": Nothing, "description": Nothing, "targetSelection": Nothing }

-- | Constructs CreateOTAUpdateRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCreateOTAUpdateRequest' :: OTAUpdateFiles -> OTAUpdateId -> RoleArn -> Targets -> ( { "otaUpdateId" :: (OTAUpdateId) , "description" :: Maybe (OTAUpdateDescription) , "targets" :: (Targets) , "targetSelection" :: Maybe (TargetSelection) , "files" :: (OTAUpdateFiles) , "roleArn" :: (RoleArn) , "additionalParameters" :: Maybe (AdditionalParameterMap) } -> {"otaUpdateId" :: (OTAUpdateId) , "description" :: Maybe (OTAUpdateDescription) , "targets" :: (Targets) , "targetSelection" :: Maybe (TargetSelection) , "files" :: (OTAUpdateFiles) , "roleArn" :: (RoleArn) , "additionalParameters" :: Maybe (AdditionalParameterMap) } ) -> CreateOTAUpdateRequest
newCreateOTAUpdateRequest' _files _otaUpdateId _roleArn _targets customize = (CreateOTAUpdateRequest <<< customize) { "files": _files, "otaUpdateId": _otaUpdateId, "roleArn": _roleArn, "targets": _targets, "additionalParameters": Nothing, "description": Nothing, "targetSelection": Nothing }



newtype CreateOTAUpdateResponse = CreateOTAUpdateResponse 
  { "otaUpdateId" :: Maybe (OTAUpdateId)
  , "awsIotJobId" :: Maybe (AwsIotJobId)
  , "otaUpdateArn" :: Maybe (OTAUpdateArn)
  , "awsIotJobArn" :: Maybe (AwsIotJobArn)
  , "otaUpdateStatus" :: Maybe (OTAUpdateStatus)
  }
derive instance newtypeCreateOTAUpdateResponse :: Newtype CreateOTAUpdateResponse _
derive instance repGenericCreateOTAUpdateResponse :: Generic CreateOTAUpdateResponse _
instance showCreateOTAUpdateResponse :: Show CreateOTAUpdateResponse where show = genericShow
instance decodeCreateOTAUpdateResponse :: Decode CreateOTAUpdateResponse where decode = genericDecode options
instance encodeCreateOTAUpdateResponse :: Encode CreateOTAUpdateResponse where encode = genericEncode options

-- | Constructs CreateOTAUpdateResponse from required parameters
newCreateOTAUpdateResponse :: CreateOTAUpdateResponse
newCreateOTAUpdateResponse  = CreateOTAUpdateResponse { "awsIotJobArn": Nothing, "awsIotJobId": Nothing, "otaUpdateArn": Nothing, "otaUpdateId": Nothing, "otaUpdateStatus": Nothing }

-- | Constructs CreateOTAUpdateResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCreateOTAUpdateResponse' :: ( { "otaUpdateId" :: Maybe (OTAUpdateId) , "awsIotJobId" :: Maybe (AwsIotJobId) , "otaUpdateArn" :: Maybe (OTAUpdateArn) , "awsIotJobArn" :: Maybe (AwsIotJobArn) , "otaUpdateStatus" :: Maybe (OTAUpdateStatus) } -> {"otaUpdateId" :: Maybe (OTAUpdateId) , "awsIotJobId" :: Maybe (AwsIotJobId) , "otaUpdateArn" :: Maybe (OTAUpdateArn) , "awsIotJobArn" :: Maybe (AwsIotJobArn) , "otaUpdateStatus" :: Maybe (OTAUpdateStatus) } ) -> CreateOTAUpdateResponse
newCreateOTAUpdateResponse'  customize = (CreateOTAUpdateResponse <<< customize) { "awsIotJobArn": Nothing, "awsIotJobId": Nothing, "otaUpdateArn": Nothing, "otaUpdateId": Nothing, "otaUpdateStatus": Nothing }



-- | <p>The input for the CreatePolicy operation.</p>
newtype CreatePolicyRequest = CreatePolicyRequest 
  { "policyName" :: (PolicyName)
  , "policyDocument" :: (PolicyDocument)
  }
derive instance newtypeCreatePolicyRequest :: Newtype CreatePolicyRequest _
derive instance repGenericCreatePolicyRequest :: Generic CreatePolicyRequest _
instance showCreatePolicyRequest :: Show CreatePolicyRequest where show = genericShow
instance decodeCreatePolicyRequest :: Decode CreatePolicyRequest where decode = genericDecode options
instance encodeCreatePolicyRequest :: Encode CreatePolicyRequest where encode = genericEncode options

-- | Constructs CreatePolicyRequest from required parameters
newCreatePolicyRequest :: PolicyDocument -> PolicyName -> CreatePolicyRequest
newCreatePolicyRequest _policyDocument _policyName = CreatePolicyRequest { "policyDocument": _policyDocument, "policyName": _policyName }

-- | Constructs CreatePolicyRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCreatePolicyRequest' :: PolicyDocument -> PolicyName -> ( { "policyName" :: (PolicyName) , "policyDocument" :: (PolicyDocument) } -> {"policyName" :: (PolicyName) , "policyDocument" :: (PolicyDocument) } ) -> CreatePolicyRequest
newCreatePolicyRequest' _policyDocument _policyName customize = (CreatePolicyRequest <<< customize) { "policyDocument": _policyDocument, "policyName": _policyName }



-- | <p>The output from the CreatePolicy operation.</p>
newtype CreatePolicyResponse = CreatePolicyResponse 
  { "policyName" :: Maybe (PolicyName)
  , "policyArn" :: Maybe (PolicyArn)
  , "policyDocument" :: Maybe (PolicyDocument)
  , "policyVersionId" :: Maybe (PolicyVersionId)
  }
derive instance newtypeCreatePolicyResponse :: Newtype CreatePolicyResponse _
derive instance repGenericCreatePolicyResponse :: Generic CreatePolicyResponse _
instance showCreatePolicyResponse :: Show CreatePolicyResponse where show = genericShow
instance decodeCreatePolicyResponse :: Decode CreatePolicyResponse where decode = genericDecode options
instance encodeCreatePolicyResponse :: Encode CreatePolicyResponse where encode = genericEncode options

-- | Constructs CreatePolicyResponse from required parameters
newCreatePolicyResponse :: CreatePolicyResponse
newCreatePolicyResponse  = CreatePolicyResponse { "policyArn": Nothing, "policyDocument": Nothing, "policyName": Nothing, "policyVersionId": Nothing }

-- | Constructs CreatePolicyResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCreatePolicyResponse' :: ( { "policyName" :: Maybe (PolicyName) , "policyArn" :: Maybe (PolicyArn) , "policyDocument" :: Maybe (PolicyDocument) , "policyVersionId" :: Maybe (PolicyVersionId) } -> {"policyName" :: Maybe (PolicyName) , "policyArn" :: Maybe (PolicyArn) , "policyDocument" :: Maybe (PolicyDocument) , "policyVersionId" :: Maybe (PolicyVersionId) } ) -> CreatePolicyResponse
newCreatePolicyResponse'  customize = (CreatePolicyResponse <<< customize) { "policyArn": Nothing, "policyDocument": Nothing, "policyName": Nothing, "policyVersionId": Nothing }



-- | <p>The input for the CreatePolicyVersion operation.</p>
newtype CreatePolicyVersionRequest = CreatePolicyVersionRequest 
  { "policyName" :: (PolicyName)
  , "policyDocument" :: (PolicyDocument)
  , "setAsDefault" :: Maybe (SetAsDefault)
  }
derive instance newtypeCreatePolicyVersionRequest :: Newtype CreatePolicyVersionRequest _
derive instance repGenericCreatePolicyVersionRequest :: Generic CreatePolicyVersionRequest _
instance showCreatePolicyVersionRequest :: Show CreatePolicyVersionRequest where show = genericShow
instance decodeCreatePolicyVersionRequest :: Decode CreatePolicyVersionRequest where decode = genericDecode options
instance encodeCreatePolicyVersionRequest :: Encode CreatePolicyVersionRequest where encode = genericEncode options

-- | Constructs CreatePolicyVersionRequest from required parameters
newCreatePolicyVersionRequest :: PolicyDocument -> PolicyName -> CreatePolicyVersionRequest
newCreatePolicyVersionRequest _policyDocument _policyName = CreatePolicyVersionRequest { "policyDocument": _policyDocument, "policyName": _policyName, "setAsDefault": Nothing }

-- | Constructs CreatePolicyVersionRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCreatePolicyVersionRequest' :: PolicyDocument -> PolicyName -> ( { "policyName" :: (PolicyName) , "policyDocument" :: (PolicyDocument) , "setAsDefault" :: Maybe (SetAsDefault) } -> {"policyName" :: (PolicyName) , "policyDocument" :: (PolicyDocument) , "setAsDefault" :: Maybe (SetAsDefault) } ) -> CreatePolicyVersionRequest
newCreatePolicyVersionRequest' _policyDocument _policyName customize = (CreatePolicyVersionRequest <<< customize) { "policyDocument": _policyDocument, "policyName": _policyName, "setAsDefault": Nothing }



-- | <p>The output of the CreatePolicyVersion operation.</p>
newtype CreatePolicyVersionResponse = CreatePolicyVersionResponse 
  { "policyArn" :: Maybe (PolicyArn)
  , "policyDocument" :: Maybe (PolicyDocument)
  , "policyVersionId" :: Maybe (PolicyVersionId)
  , "isDefaultVersion" :: Maybe (IsDefaultVersion)
  }
derive instance newtypeCreatePolicyVersionResponse :: Newtype CreatePolicyVersionResponse _
derive instance repGenericCreatePolicyVersionResponse :: Generic CreatePolicyVersionResponse _
instance showCreatePolicyVersionResponse :: Show CreatePolicyVersionResponse where show = genericShow
instance decodeCreatePolicyVersionResponse :: Decode CreatePolicyVersionResponse where decode = genericDecode options
instance encodeCreatePolicyVersionResponse :: Encode CreatePolicyVersionResponse where encode = genericEncode options

-- | Constructs CreatePolicyVersionResponse from required parameters
newCreatePolicyVersionResponse :: CreatePolicyVersionResponse
newCreatePolicyVersionResponse  = CreatePolicyVersionResponse { "isDefaultVersion": Nothing, "policyArn": Nothing, "policyDocument": Nothing, "policyVersionId": Nothing }

-- | Constructs CreatePolicyVersionResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCreatePolicyVersionResponse' :: ( { "policyArn" :: Maybe (PolicyArn) , "policyDocument" :: Maybe (PolicyDocument) , "policyVersionId" :: Maybe (PolicyVersionId) , "isDefaultVersion" :: Maybe (IsDefaultVersion) } -> {"policyArn" :: Maybe (PolicyArn) , "policyDocument" :: Maybe (PolicyDocument) , "policyVersionId" :: Maybe (PolicyVersionId) , "isDefaultVersion" :: Maybe (IsDefaultVersion) } ) -> CreatePolicyVersionResponse
newCreatePolicyVersionResponse'  customize = (CreatePolicyVersionResponse <<< customize) { "isDefaultVersion": Nothing, "policyArn": Nothing, "policyDocument": Nothing, "policyVersionId": Nothing }



newtype CreateRoleAliasRequest = CreateRoleAliasRequest 
  { "roleAlias" :: (RoleAlias)
  , "roleArn" :: (RoleArn)
  , "credentialDurationSeconds" :: Maybe (CredentialDurationSeconds)
  }
derive instance newtypeCreateRoleAliasRequest :: Newtype CreateRoleAliasRequest _
derive instance repGenericCreateRoleAliasRequest :: Generic CreateRoleAliasRequest _
instance showCreateRoleAliasRequest :: Show CreateRoleAliasRequest where show = genericShow
instance decodeCreateRoleAliasRequest :: Decode CreateRoleAliasRequest where decode = genericDecode options
instance encodeCreateRoleAliasRequest :: Encode CreateRoleAliasRequest where encode = genericEncode options

-- | Constructs CreateRoleAliasRequest from required parameters
newCreateRoleAliasRequest :: RoleAlias -> RoleArn -> CreateRoleAliasRequest
newCreateRoleAliasRequest _roleAlias _roleArn = CreateRoleAliasRequest { "roleAlias": _roleAlias, "roleArn": _roleArn, "credentialDurationSeconds": Nothing }

-- | Constructs CreateRoleAliasRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCreateRoleAliasRequest' :: RoleAlias -> RoleArn -> ( { "roleAlias" :: (RoleAlias) , "roleArn" :: (RoleArn) , "credentialDurationSeconds" :: Maybe (CredentialDurationSeconds) } -> {"roleAlias" :: (RoleAlias) , "roleArn" :: (RoleArn) , "credentialDurationSeconds" :: Maybe (CredentialDurationSeconds) } ) -> CreateRoleAliasRequest
newCreateRoleAliasRequest' _roleAlias _roleArn customize = (CreateRoleAliasRequest <<< customize) { "roleAlias": _roleAlias, "roleArn": _roleArn, "credentialDurationSeconds": Nothing }



newtype CreateRoleAliasResponse = CreateRoleAliasResponse 
  { "roleAlias" :: Maybe (RoleAlias)
  , "roleAliasArn" :: Maybe (RoleAliasArn)
  }
derive instance newtypeCreateRoleAliasResponse :: Newtype CreateRoleAliasResponse _
derive instance repGenericCreateRoleAliasResponse :: Generic CreateRoleAliasResponse _
instance showCreateRoleAliasResponse :: Show CreateRoleAliasResponse where show = genericShow
instance decodeCreateRoleAliasResponse :: Decode CreateRoleAliasResponse where decode = genericDecode options
instance encodeCreateRoleAliasResponse :: Encode CreateRoleAliasResponse where encode = genericEncode options

-- | Constructs CreateRoleAliasResponse from required parameters
newCreateRoleAliasResponse :: CreateRoleAliasResponse
newCreateRoleAliasResponse  = CreateRoleAliasResponse { "roleAlias": Nothing, "roleAliasArn": Nothing }

-- | Constructs CreateRoleAliasResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCreateRoleAliasResponse' :: ( { "roleAlias" :: Maybe (RoleAlias) , "roleAliasArn" :: Maybe (RoleAliasArn) } -> {"roleAlias" :: Maybe (RoleAlias) , "roleAliasArn" :: Maybe (RoleAliasArn) } ) -> CreateRoleAliasResponse
newCreateRoleAliasResponse'  customize = (CreateRoleAliasResponse <<< customize) { "roleAlias": Nothing, "roleAliasArn": Nothing }



newtype CreateStreamRequest = CreateStreamRequest 
  { "streamId" :: (StreamId)
  , "description" :: Maybe (StreamDescription)
  , "files" :: (StreamFiles)
  , "roleArn" :: (RoleArn)
  }
derive instance newtypeCreateStreamRequest :: Newtype CreateStreamRequest _
derive instance repGenericCreateStreamRequest :: Generic CreateStreamRequest _
instance showCreateStreamRequest :: Show CreateStreamRequest where show = genericShow
instance decodeCreateStreamRequest :: Decode CreateStreamRequest where decode = genericDecode options
instance encodeCreateStreamRequest :: Encode CreateStreamRequest where encode = genericEncode options

-- | Constructs CreateStreamRequest from required parameters
newCreateStreamRequest :: StreamFiles -> RoleArn -> StreamId -> CreateStreamRequest
newCreateStreamRequest _files _roleArn _streamId = CreateStreamRequest { "files": _files, "roleArn": _roleArn, "streamId": _streamId, "description": Nothing }

-- | Constructs CreateStreamRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCreateStreamRequest' :: StreamFiles -> RoleArn -> StreamId -> ( { "streamId" :: (StreamId) , "description" :: Maybe (StreamDescription) , "files" :: (StreamFiles) , "roleArn" :: (RoleArn) } -> {"streamId" :: (StreamId) , "description" :: Maybe (StreamDescription) , "files" :: (StreamFiles) , "roleArn" :: (RoleArn) } ) -> CreateStreamRequest
newCreateStreamRequest' _files _roleArn _streamId customize = (CreateStreamRequest <<< customize) { "files": _files, "roleArn": _roleArn, "streamId": _streamId, "description": Nothing }



newtype CreateStreamResponse = CreateStreamResponse 
  { "streamId" :: Maybe (StreamId)
  , "streamArn" :: Maybe (StreamArn)
  , "description" :: Maybe (StreamDescription)
  , "streamVersion" :: Maybe (StreamVersion)
  }
derive instance newtypeCreateStreamResponse :: Newtype CreateStreamResponse _
derive instance repGenericCreateStreamResponse :: Generic CreateStreamResponse _
instance showCreateStreamResponse :: Show CreateStreamResponse where show = genericShow
instance decodeCreateStreamResponse :: Decode CreateStreamResponse where decode = genericDecode options
instance encodeCreateStreamResponse :: Encode CreateStreamResponse where encode = genericEncode options

-- | Constructs CreateStreamResponse from required parameters
newCreateStreamResponse :: CreateStreamResponse
newCreateStreamResponse  = CreateStreamResponse { "description": Nothing, "streamArn": Nothing, "streamId": Nothing, "streamVersion": Nothing }

-- | Constructs CreateStreamResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCreateStreamResponse' :: ( { "streamId" :: Maybe (StreamId) , "streamArn" :: Maybe (StreamArn) , "description" :: Maybe (StreamDescription) , "streamVersion" :: Maybe (StreamVersion) } -> {"streamId" :: Maybe (StreamId) , "streamArn" :: Maybe (StreamArn) , "description" :: Maybe (StreamDescription) , "streamVersion" :: Maybe (StreamVersion) } ) -> CreateStreamResponse
newCreateStreamResponse'  customize = (CreateStreamResponse <<< customize) { "description": Nothing, "streamArn": Nothing, "streamId": Nothing, "streamVersion": Nothing }



newtype CreateThingGroupRequest = CreateThingGroupRequest 
  { "thingGroupName" :: (ThingGroupName)
  , "parentGroupName" :: Maybe (ThingGroupName)
  , "thingGroupProperties" :: Maybe (ThingGroupProperties)
  }
derive instance newtypeCreateThingGroupRequest :: Newtype CreateThingGroupRequest _
derive instance repGenericCreateThingGroupRequest :: Generic CreateThingGroupRequest _
instance showCreateThingGroupRequest :: Show CreateThingGroupRequest where show = genericShow
instance decodeCreateThingGroupRequest :: Decode CreateThingGroupRequest where decode = genericDecode options
instance encodeCreateThingGroupRequest :: Encode CreateThingGroupRequest where encode = genericEncode options

-- | Constructs CreateThingGroupRequest from required parameters
newCreateThingGroupRequest :: ThingGroupName -> CreateThingGroupRequest
newCreateThingGroupRequest _thingGroupName = CreateThingGroupRequest { "thingGroupName": _thingGroupName, "parentGroupName": Nothing, "thingGroupProperties": Nothing }

-- | Constructs CreateThingGroupRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCreateThingGroupRequest' :: ThingGroupName -> ( { "thingGroupName" :: (ThingGroupName) , "parentGroupName" :: Maybe (ThingGroupName) , "thingGroupProperties" :: Maybe (ThingGroupProperties) } -> {"thingGroupName" :: (ThingGroupName) , "parentGroupName" :: Maybe (ThingGroupName) , "thingGroupProperties" :: Maybe (ThingGroupProperties) } ) -> CreateThingGroupRequest
newCreateThingGroupRequest' _thingGroupName customize = (CreateThingGroupRequest <<< customize) { "thingGroupName": _thingGroupName, "parentGroupName": Nothing, "thingGroupProperties": Nothing }



newtype CreateThingGroupResponse = CreateThingGroupResponse 
  { "thingGroupName" :: Maybe (ThingGroupName)
  , "thingGroupArn" :: Maybe (ThingGroupArn)
  , "thingGroupId" :: Maybe (ThingGroupId)
  }
derive instance newtypeCreateThingGroupResponse :: Newtype CreateThingGroupResponse _
derive instance repGenericCreateThingGroupResponse :: Generic CreateThingGroupResponse _
instance showCreateThingGroupResponse :: Show CreateThingGroupResponse where show = genericShow
instance decodeCreateThingGroupResponse :: Decode CreateThingGroupResponse where decode = genericDecode options
instance encodeCreateThingGroupResponse :: Encode CreateThingGroupResponse where encode = genericEncode options

-- | Constructs CreateThingGroupResponse from required parameters
newCreateThingGroupResponse :: CreateThingGroupResponse
newCreateThingGroupResponse  = CreateThingGroupResponse { "thingGroupArn": Nothing, "thingGroupId": Nothing, "thingGroupName": Nothing }

-- | Constructs CreateThingGroupResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCreateThingGroupResponse' :: ( { "thingGroupName" :: Maybe (ThingGroupName) , "thingGroupArn" :: Maybe (ThingGroupArn) , "thingGroupId" :: Maybe (ThingGroupId) } -> {"thingGroupName" :: Maybe (ThingGroupName) , "thingGroupArn" :: Maybe (ThingGroupArn) , "thingGroupId" :: Maybe (ThingGroupId) } ) -> CreateThingGroupResponse
newCreateThingGroupResponse'  customize = (CreateThingGroupResponse <<< customize) { "thingGroupArn": Nothing, "thingGroupId": Nothing, "thingGroupName": Nothing }



-- | <p>The input for the CreateThing operation.</p>
newtype CreateThingRequest = CreateThingRequest 
  { "thingName" :: (ThingName)
  , "thingTypeName" :: Maybe (ThingTypeName)
  , "attributePayload" :: Maybe (AttributePayload)
  }
derive instance newtypeCreateThingRequest :: Newtype CreateThingRequest _
derive instance repGenericCreateThingRequest :: Generic CreateThingRequest _
instance showCreateThingRequest :: Show CreateThingRequest where show = genericShow
instance decodeCreateThingRequest :: Decode CreateThingRequest where decode = genericDecode options
instance encodeCreateThingRequest :: Encode CreateThingRequest where encode = genericEncode options

-- | Constructs CreateThingRequest from required parameters
newCreateThingRequest :: ThingName -> CreateThingRequest
newCreateThingRequest _thingName = CreateThingRequest { "thingName": _thingName, "attributePayload": Nothing, "thingTypeName": Nothing }

-- | Constructs CreateThingRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCreateThingRequest' :: ThingName -> ( { "thingName" :: (ThingName) , "thingTypeName" :: Maybe (ThingTypeName) , "attributePayload" :: Maybe (AttributePayload) } -> {"thingName" :: (ThingName) , "thingTypeName" :: Maybe (ThingTypeName) , "attributePayload" :: Maybe (AttributePayload) } ) -> CreateThingRequest
newCreateThingRequest' _thingName customize = (CreateThingRequest <<< customize) { "thingName": _thingName, "attributePayload": Nothing, "thingTypeName": Nothing }



-- | <p>The output of the CreateThing operation.</p>
newtype CreateThingResponse = CreateThingResponse 
  { "thingName" :: Maybe (ThingName)
  , "thingArn" :: Maybe (ThingArn)
  , "thingId" :: Maybe (ThingId)
  }
derive instance newtypeCreateThingResponse :: Newtype CreateThingResponse _
derive instance repGenericCreateThingResponse :: Generic CreateThingResponse _
instance showCreateThingResponse :: Show CreateThingResponse where show = genericShow
instance decodeCreateThingResponse :: Decode CreateThingResponse where decode = genericDecode options
instance encodeCreateThingResponse :: Encode CreateThingResponse where encode = genericEncode options

-- | Constructs CreateThingResponse from required parameters
newCreateThingResponse :: CreateThingResponse
newCreateThingResponse  = CreateThingResponse { "thingArn": Nothing, "thingId": Nothing, "thingName": Nothing }

-- | Constructs CreateThingResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCreateThingResponse' :: ( { "thingName" :: Maybe (ThingName) , "thingArn" :: Maybe (ThingArn) , "thingId" :: Maybe (ThingId) } -> {"thingName" :: Maybe (ThingName) , "thingArn" :: Maybe (ThingArn) , "thingId" :: Maybe (ThingId) } ) -> CreateThingResponse
newCreateThingResponse'  customize = (CreateThingResponse <<< customize) { "thingArn": Nothing, "thingId": Nothing, "thingName": Nothing }



-- | <p>The input for the CreateThingType operation.</p>
newtype CreateThingTypeRequest = CreateThingTypeRequest 
  { "thingTypeName" :: (ThingTypeName)
  , "thingTypeProperties" :: Maybe (ThingTypeProperties)
  }
derive instance newtypeCreateThingTypeRequest :: Newtype CreateThingTypeRequest _
derive instance repGenericCreateThingTypeRequest :: Generic CreateThingTypeRequest _
instance showCreateThingTypeRequest :: Show CreateThingTypeRequest where show = genericShow
instance decodeCreateThingTypeRequest :: Decode CreateThingTypeRequest where decode = genericDecode options
instance encodeCreateThingTypeRequest :: Encode CreateThingTypeRequest where encode = genericEncode options

-- | Constructs CreateThingTypeRequest from required parameters
newCreateThingTypeRequest :: ThingTypeName -> CreateThingTypeRequest
newCreateThingTypeRequest _thingTypeName = CreateThingTypeRequest { "thingTypeName": _thingTypeName, "thingTypeProperties": Nothing }

-- | Constructs CreateThingTypeRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCreateThingTypeRequest' :: ThingTypeName -> ( { "thingTypeName" :: (ThingTypeName) , "thingTypeProperties" :: Maybe (ThingTypeProperties) } -> {"thingTypeName" :: (ThingTypeName) , "thingTypeProperties" :: Maybe (ThingTypeProperties) } ) -> CreateThingTypeRequest
newCreateThingTypeRequest' _thingTypeName customize = (CreateThingTypeRequest <<< customize) { "thingTypeName": _thingTypeName, "thingTypeProperties": Nothing }



-- | <p>The output of the CreateThingType operation.</p>
newtype CreateThingTypeResponse = CreateThingTypeResponse 
  { "thingTypeName" :: Maybe (ThingTypeName)
  , "thingTypeArn" :: Maybe (ThingTypeArn)
  , "thingTypeId" :: Maybe (ThingTypeId)
  }
derive instance newtypeCreateThingTypeResponse :: Newtype CreateThingTypeResponse _
derive instance repGenericCreateThingTypeResponse :: Generic CreateThingTypeResponse _
instance showCreateThingTypeResponse :: Show CreateThingTypeResponse where show = genericShow
instance decodeCreateThingTypeResponse :: Decode CreateThingTypeResponse where decode = genericDecode options
instance encodeCreateThingTypeResponse :: Encode CreateThingTypeResponse where encode = genericEncode options

-- | Constructs CreateThingTypeResponse from required parameters
newCreateThingTypeResponse :: CreateThingTypeResponse
newCreateThingTypeResponse  = CreateThingTypeResponse { "thingTypeArn": Nothing, "thingTypeId": Nothing, "thingTypeName": Nothing }

-- | Constructs CreateThingTypeResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCreateThingTypeResponse' :: ( { "thingTypeName" :: Maybe (ThingTypeName) , "thingTypeArn" :: Maybe (ThingTypeArn) , "thingTypeId" :: Maybe (ThingTypeId) } -> {"thingTypeName" :: Maybe (ThingTypeName) , "thingTypeArn" :: Maybe (ThingTypeArn) , "thingTypeId" :: Maybe (ThingTypeId) } ) -> CreateThingTypeResponse
newCreateThingTypeResponse'  customize = (CreateThingTypeResponse <<< customize) { "thingTypeArn": Nothing, "thingTypeId": Nothing, "thingTypeName": Nothing }



-- | <p>The input for the CreateTopicRule operation.</p>
newtype CreateTopicRuleRequest = CreateTopicRuleRequest 
  { "ruleName" :: (RuleName)
  , "topicRulePayload" :: (TopicRulePayload)
  }
derive instance newtypeCreateTopicRuleRequest :: Newtype CreateTopicRuleRequest _
derive instance repGenericCreateTopicRuleRequest :: Generic CreateTopicRuleRequest _
instance showCreateTopicRuleRequest :: Show CreateTopicRuleRequest where show = genericShow
instance decodeCreateTopicRuleRequest :: Decode CreateTopicRuleRequest where decode = genericDecode options
instance encodeCreateTopicRuleRequest :: Encode CreateTopicRuleRequest where encode = genericEncode options

-- | Constructs CreateTopicRuleRequest from required parameters
newCreateTopicRuleRequest :: RuleName -> TopicRulePayload -> CreateTopicRuleRequest
newCreateTopicRuleRequest _ruleName _topicRulePayload = CreateTopicRuleRequest { "ruleName": _ruleName, "topicRulePayload": _topicRulePayload }

-- | Constructs CreateTopicRuleRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCreateTopicRuleRequest' :: RuleName -> TopicRulePayload -> ( { "ruleName" :: (RuleName) , "topicRulePayload" :: (TopicRulePayload) } -> {"ruleName" :: (RuleName) , "topicRulePayload" :: (TopicRulePayload) } ) -> CreateTopicRuleRequest
newCreateTopicRuleRequest' _ruleName _topicRulePayload customize = (CreateTopicRuleRequest <<< customize) { "ruleName": _ruleName, "topicRulePayload": _topicRulePayload }



newtype CreatedAtDate = CreatedAtDate Types.Timestamp
derive instance newtypeCreatedAtDate :: Newtype CreatedAtDate _
derive instance repGenericCreatedAtDate :: Generic CreatedAtDate _
instance showCreatedAtDate :: Show CreatedAtDate where show = genericShow
instance decodeCreatedAtDate :: Decode CreatedAtDate where decode = genericDecode options
instance encodeCreatedAtDate :: Encode CreatedAtDate where encode = genericEncode options



newtype CreationDate = CreationDate Types.Timestamp
derive instance newtypeCreationDate :: Newtype CreationDate _
derive instance repGenericCreationDate :: Generic CreationDate _
instance showCreationDate :: Show CreationDate where show = genericShow
instance decodeCreationDate :: Decode CreationDate where decode = genericDecode options
instance encodeCreationDate :: Encode CreationDate where encode = genericEncode options



newtype CredentialDurationSeconds = CredentialDurationSeconds Int
derive instance newtypeCredentialDurationSeconds :: Newtype CredentialDurationSeconds _
derive instance repGenericCredentialDurationSeconds :: Generic CredentialDurationSeconds _
instance showCredentialDurationSeconds :: Show CredentialDurationSeconds where show = genericShow
instance decodeCredentialDurationSeconds :: Decode CredentialDurationSeconds where decode = genericDecode options
instance encodeCredentialDurationSeconds :: Encode CredentialDurationSeconds where encode = genericEncode options



-- | <p>Describes a custom method used to code sign a file.</p>
newtype CustomCodeSigning = CustomCodeSigning 
  { "signature" :: Maybe (CodeSigningSignature)
  , "certificateChain" :: Maybe (CodeSigningCertificateChain)
  , "hashAlgorithm" :: Maybe (HashAlgorithm)
  , "signatureAlgorithm" :: Maybe (SignatureAlgorithm)
  }
derive instance newtypeCustomCodeSigning :: Newtype CustomCodeSigning _
derive instance repGenericCustomCodeSigning :: Generic CustomCodeSigning _
instance showCustomCodeSigning :: Show CustomCodeSigning where show = genericShow
instance decodeCustomCodeSigning :: Decode CustomCodeSigning where decode = genericDecode options
instance encodeCustomCodeSigning :: Encode CustomCodeSigning where encode = genericEncode options

-- | Constructs CustomCodeSigning from required parameters
newCustomCodeSigning :: CustomCodeSigning
newCustomCodeSigning  = CustomCodeSigning { "certificateChain": Nothing, "hashAlgorithm": Nothing, "signature": Nothing, "signatureAlgorithm": Nothing }

-- | Constructs CustomCodeSigning's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCustomCodeSigning' :: ( { "signature" :: Maybe (CodeSigningSignature) , "certificateChain" :: Maybe (CodeSigningCertificateChain) , "hashAlgorithm" :: Maybe (HashAlgorithm) , "signatureAlgorithm" :: Maybe (SignatureAlgorithm) } -> {"signature" :: Maybe (CodeSigningSignature) , "certificateChain" :: Maybe (CodeSigningCertificateChain) , "hashAlgorithm" :: Maybe (HashAlgorithm) , "signatureAlgorithm" :: Maybe (SignatureAlgorithm) } ) -> CustomCodeSigning
newCustomCodeSigning'  customize = (CustomCodeSigning <<< customize) { "certificateChain": Nothing, "hashAlgorithm": Nothing, "signature": Nothing, "signatureAlgorithm": Nothing }



newtype DateType = DateType Types.Timestamp
derive instance newtypeDateType :: Newtype DateType _
derive instance repGenericDateType :: Generic DateType _
instance showDateType :: Show DateType where show = genericShow
instance decodeDateType :: Decode DateType where decode = genericDecode options
instance encodeDateType :: Encode DateType where encode = genericEncode options



newtype DeleteAuthorizerRequest = DeleteAuthorizerRequest 
  { "authorizerName" :: (AuthorizerName)
  }
derive instance newtypeDeleteAuthorizerRequest :: Newtype DeleteAuthorizerRequest _
derive instance repGenericDeleteAuthorizerRequest :: Generic DeleteAuthorizerRequest _
instance showDeleteAuthorizerRequest :: Show DeleteAuthorizerRequest where show = genericShow
instance decodeDeleteAuthorizerRequest :: Decode DeleteAuthorizerRequest where decode = genericDecode options
instance encodeDeleteAuthorizerRequest :: Encode DeleteAuthorizerRequest where encode = genericEncode options

-- | Constructs DeleteAuthorizerRequest from required parameters
newDeleteAuthorizerRequest :: AuthorizerName -> DeleteAuthorizerRequest
newDeleteAuthorizerRequest _authorizerName = DeleteAuthorizerRequest { "authorizerName": _authorizerName }

-- | Constructs DeleteAuthorizerRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDeleteAuthorizerRequest' :: AuthorizerName -> ( { "authorizerName" :: (AuthorizerName) } -> {"authorizerName" :: (AuthorizerName) } ) -> DeleteAuthorizerRequest
newDeleteAuthorizerRequest' _authorizerName customize = (DeleteAuthorizerRequest <<< customize) { "authorizerName": _authorizerName }



newtype DeleteAuthorizerResponse = DeleteAuthorizerResponse Types.NoArguments
derive instance newtypeDeleteAuthorizerResponse :: Newtype DeleteAuthorizerResponse _
derive instance repGenericDeleteAuthorizerResponse :: Generic DeleteAuthorizerResponse _
instance showDeleteAuthorizerResponse :: Show DeleteAuthorizerResponse where show = genericShow
instance decodeDeleteAuthorizerResponse :: Decode DeleteAuthorizerResponse where decode = genericDecode options
instance encodeDeleteAuthorizerResponse :: Encode DeleteAuthorizerResponse where encode = genericEncode options



-- | <p>Input for the DeleteCACertificate operation.</p>
newtype DeleteCACertificateRequest = DeleteCACertificateRequest 
  { "certificateId" :: (CertificateId)
  }
derive instance newtypeDeleteCACertificateRequest :: Newtype DeleteCACertificateRequest _
derive instance repGenericDeleteCACertificateRequest :: Generic DeleteCACertificateRequest _
instance showDeleteCACertificateRequest :: Show DeleteCACertificateRequest where show = genericShow
instance decodeDeleteCACertificateRequest :: Decode DeleteCACertificateRequest where decode = genericDecode options
instance encodeDeleteCACertificateRequest :: Encode DeleteCACertificateRequest where encode = genericEncode options

-- | Constructs DeleteCACertificateRequest from required parameters
newDeleteCACertificateRequest :: CertificateId -> DeleteCACertificateRequest
newDeleteCACertificateRequest _certificateId = DeleteCACertificateRequest { "certificateId": _certificateId }

-- | Constructs DeleteCACertificateRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDeleteCACertificateRequest' :: CertificateId -> ( { "certificateId" :: (CertificateId) } -> {"certificateId" :: (CertificateId) } ) -> DeleteCACertificateRequest
newDeleteCACertificateRequest' _certificateId customize = (DeleteCACertificateRequest <<< customize) { "certificateId": _certificateId }



-- | <p>The output for the DeleteCACertificate operation.</p>
newtype DeleteCACertificateResponse = DeleteCACertificateResponse Types.NoArguments
derive instance newtypeDeleteCACertificateResponse :: Newtype DeleteCACertificateResponse _
derive instance repGenericDeleteCACertificateResponse :: Generic DeleteCACertificateResponse _
instance showDeleteCACertificateResponse :: Show DeleteCACertificateResponse where show = genericShow
instance decodeDeleteCACertificateResponse :: Decode DeleteCACertificateResponse where decode = genericDecode options
instance encodeDeleteCACertificateResponse :: Encode DeleteCACertificateResponse where encode = genericEncode options



-- | <p>The input for the DeleteCertificate operation.</p>
newtype DeleteCertificateRequest = DeleteCertificateRequest 
  { "certificateId" :: (CertificateId)
  , "forceDelete" :: Maybe (ForceDelete)
  }
derive instance newtypeDeleteCertificateRequest :: Newtype DeleteCertificateRequest _
derive instance repGenericDeleteCertificateRequest :: Generic DeleteCertificateRequest _
instance showDeleteCertificateRequest :: Show DeleteCertificateRequest where show = genericShow
instance decodeDeleteCertificateRequest :: Decode DeleteCertificateRequest where decode = genericDecode options
instance encodeDeleteCertificateRequest :: Encode DeleteCertificateRequest where encode = genericEncode options

-- | Constructs DeleteCertificateRequest from required parameters
newDeleteCertificateRequest :: CertificateId -> DeleteCertificateRequest
newDeleteCertificateRequest _certificateId = DeleteCertificateRequest { "certificateId": _certificateId, "forceDelete": Nothing }

-- | Constructs DeleteCertificateRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDeleteCertificateRequest' :: CertificateId -> ( { "certificateId" :: (CertificateId) , "forceDelete" :: Maybe (ForceDelete) } -> {"certificateId" :: (CertificateId) , "forceDelete" :: Maybe (ForceDelete) } ) -> DeleteCertificateRequest
newDeleteCertificateRequest' _certificateId customize = (DeleteCertificateRequest <<< customize) { "certificateId": _certificateId, "forceDelete": Nothing }



-- | <p>You can't delete the resource because it is attached to one or more resources.</p>
newtype DeleteConflictException = DeleteConflictException 
  { "message" :: Maybe (ErrorMessage')
  }
derive instance newtypeDeleteConflictException :: Newtype DeleteConflictException _
derive instance repGenericDeleteConflictException :: Generic DeleteConflictException _
instance showDeleteConflictException :: Show DeleteConflictException where show = genericShow
instance decodeDeleteConflictException :: Decode DeleteConflictException where decode = genericDecode options
instance encodeDeleteConflictException :: Encode DeleteConflictException where encode = genericEncode options

-- | Constructs DeleteConflictException from required parameters
newDeleteConflictException :: DeleteConflictException
newDeleteConflictException  = DeleteConflictException { "message": Nothing }

-- | Constructs DeleteConflictException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDeleteConflictException' :: ( { "message" :: Maybe (ErrorMessage') } -> {"message" :: Maybe (ErrorMessage') } ) -> DeleteConflictException
newDeleteConflictException'  customize = (DeleteConflictException <<< customize) { "message": Nothing }



newtype DeleteOTAUpdateRequest = DeleteOTAUpdateRequest 
  { "otaUpdateId" :: (OTAUpdateId)
  }
derive instance newtypeDeleteOTAUpdateRequest :: Newtype DeleteOTAUpdateRequest _
derive instance repGenericDeleteOTAUpdateRequest :: Generic DeleteOTAUpdateRequest _
instance showDeleteOTAUpdateRequest :: Show DeleteOTAUpdateRequest where show = genericShow
instance decodeDeleteOTAUpdateRequest :: Decode DeleteOTAUpdateRequest where decode = genericDecode options
instance encodeDeleteOTAUpdateRequest :: Encode DeleteOTAUpdateRequest where encode = genericEncode options

-- | Constructs DeleteOTAUpdateRequest from required parameters
newDeleteOTAUpdateRequest :: OTAUpdateId -> DeleteOTAUpdateRequest
newDeleteOTAUpdateRequest _otaUpdateId = DeleteOTAUpdateRequest { "otaUpdateId": _otaUpdateId }

-- | Constructs DeleteOTAUpdateRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDeleteOTAUpdateRequest' :: OTAUpdateId -> ( { "otaUpdateId" :: (OTAUpdateId) } -> {"otaUpdateId" :: (OTAUpdateId) } ) -> DeleteOTAUpdateRequest
newDeleteOTAUpdateRequest' _otaUpdateId customize = (DeleteOTAUpdateRequest <<< customize) { "otaUpdateId": _otaUpdateId }



newtype DeleteOTAUpdateResponse = DeleteOTAUpdateResponse Types.NoArguments
derive instance newtypeDeleteOTAUpdateResponse :: Newtype DeleteOTAUpdateResponse _
derive instance repGenericDeleteOTAUpdateResponse :: Generic DeleteOTAUpdateResponse _
instance showDeleteOTAUpdateResponse :: Show DeleteOTAUpdateResponse where show = genericShow
instance decodeDeleteOTAUpdateResponse :: Decode DeleteOTAUpdateResponse where decode = genericDecode options
instance encodeDeleteOTAUpdateResponse :: Encode DeleteOTAUpdateResponse where encode = genericEncode options



-- | <p>The input for the DeletePolicy operation.</p>
newtype DeletePolicyRequest = DeletePolicyRequest 
  { "policyName" :: (PolicyName)
  }
derive instance newtypeDeletePolicyRequest :: Newtype DeletePolicyRequest _
derive instance repGenericDeletePolicyRequest :: Generic DeletePolicyRequest _
instance showDeletePolicyRequest :: Show DeletePolicyRequest where show = genericShow
instance decodeDeletePolicyRequest :: Decode DeletePolicyRequest where decode = genericDecode options
instance encodeDeletePolicyRequest :: Encode DeletePolicyRequest where encode = genericEncode options

-- | Constructs DeletePolicyRequest from required parameters
newDeletePolicyRequest :: PolicyName -> DeletePolicyRequest
newDeletePolicyRequest _policyName = DeletePolicyRequest { "policyName": _policyName }

-- | Constructs DeletePolicyRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDeletePolicyRequest' :: PolicyName -> ( { "policyName" :: (PolicyName) } -> {"policyName" :: (PolicyName) } ) -> DeletePolicyRequest
newDeletePolicyRequest' _policyName customize = (DeletePolicyRequest <<< customize) { "policyName": _policyName }



-- | <p>The input for the DeletePolicyVersion operation.</p>
newtype DeletePolicyVersionRequest = DeletePolicyVersionRequest 
  { "policyName" :: (PolicyName)
  , "policyVersionId" :: (PolicyVersionId)
  }
derive instance newtypeDeletePolicyVersionRequest :: Newtype DeletePolicyVersionRequest _
derive instance repGenericDeletePolicyVersionRequest :: Generic DeletePolicyVersionRequest _
instance showDeletePolicyVersionRequest :: Show DeletePolicyVersionRequest where show = genericShow
instance decodeDeletePolicyVersionRequest :: Decode DeletePolicyVersionRequest where decode = genericDecode options
instance encodeDeletePolicyVersionRequest :: Encode DeletePolicyVersionRequest where encode = genericEncode options

-- | Constructs DeletePolicyVersionRequest from required parameters
newDeletePolicyVersionRequest :: PolicyName -> PolicyVersionId -> DeletePolicyVersionRequest
newDeletePolicyVersionRequest _policyName _policyVersionId = DeletePolicyVersionRequest { "policyName": _policyName, "policyVersionId": _policyVersionId }

-- | Constructs DeletePolicyVersionRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDeletePolicyVersionRequest' :: PolicyName -> PolicyVersionId -> ( { "policyName" :: (PolicyName) , "policyVersionId" :: (PolicyVersionId) } -> {"policyName" :: (PolicyName) , "policyVersionId" :: (PolicyVersionId) } ) -> DeletePolicyVersionRequest
newDeletePolicyVersionRequest' _policyName _policyVersionId customize = (DeletePolicyVersionRequest <<< customize) { "policyName": _policyName, "policyVersionId": _policyVersionId }



-- | <p>The input for the DeleteRegistrationCode operation.</p>
newtype DeleteRegistrationCodeRequest = DeleteRegistrationCodeRequest Types.NoArguments
derive instance newtypeDeleteRegistrationCodeRequest :: Newtype DeleteRegistrationCodeRequest _
derive instance repGenericDeleteRegistrationCodeRequest :: Generic DeleteRegistrationCodeRequest _
instance showDeleteRegistrationCodeRequest :: Show DeleteRegistrationCodeRequest where show = genericShow
instance decodeDeleteRegistrationCodeRequest :: Decode DeleteRegistrationCodeRequest where decode = genericDecode options
instance encodeDeleteRegistrationCodeRequest :: Encode DeleteRegistrationCodeRequest where encode = genericEncode options



-- | <p>The output for the DeleteRegistrationCode operation.</p>
newtype DeleteRegistrationCodeResponse = DeleteRegistrationCodeResponse Types.NoArguments
derive instance newtypeDeleteRegistrationCodeResponse :: Newtype DeleteRegistrationCodeResponse _
derive instance repGenericDeleteRegistrationCodeResponse :: Generic DeleteRegistrationCodeResponse _
instance showDeleteRegistrationCodeResponse :: Show DeleteRegistrationCodeResponse where show = genericShow
instance decodeDeleteRegistrationCodeResponse :: Decode DeleteRegistrationCodeResponse where decode = genericDecode options
instance encodeDeleteRegistrationCodeResponse :: Encode DeleteRegistrationCodeResponse where encode = genericEncode options



newtype DeleteRoleAliasRequest = DeleteRoleAliasRequest 
  { "roleAlias" :: (RoleAlias)
  }
derive instance newtypeDeleteRoleAliasRequest :: Newtype DeleteRoleAliasRequest _
derive instance repGenericDeleteRoleAliasRequest :: Generic DeleteRoleAliasRequest _
instance showDeleteRoleAliasRequest :: Show DeleteRoleAliasRequest where show = genericShow
instance decodeDeleteRoleAliasRequest :: Decode DeleteRoleAliasRequest where decode = genericDecode options
instance encodeDeleteRoleAliasRequest :: Encode DeleteRoleAliasRequest where encode = genericEncode options

-- | Constructs DeleteRoleAliasRequest from required parameters
newDeleteRoleAliasRequest :: RoleAlias -> DeleteRoleAliasRequest
newDeleteRoleAliasRequest _roleAlias = DeleteRoleAliasRequest { "roleAlias": _roleAlias }

-- | Constructs DeleteRoleAliasRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDeleteRoleAliasRequest' :: RoleAlias -> ( { "roleAlias" :: (RoleAlias) } -> {"roleAlias" :: (RoleAlias) } ) -> DeleteRoleAliasRequest
newDeleteRoleAliasRequest' _roleAlias customize = (DeleteRoleAliasRequest <<< customize) { "roleAlias": _roleAlias }



newtype DeleteRoleAliasResponse = DeleteRoleAliasResponse Types.NoArguments
derive instance newtypeDeleteRoleAliasResponse :: Newtype DeleteRoleAliasResponse _
derive instance repGenericDeleteRoleAliasResponse :: Generic DeleteRoleAliasResponse _
instance showDeleteRoleAliasResponse :: Show DeleteRoleAliasResponse where show = genericShow
instance decodeDeleteRoleAliasResponse :: Decode DeleteRoleAliasResponse where decode = genericDecode options
instance encodeDeleteRoleAliasResponse :: Encode DeleteRoleAliasResponse where encode = genericEncode options



newtype DeleteStreamRequest = DeleteStreamRequest 
  { "streamId" :: (StreamId)
  }
derive instance newtypeDeleteStreamRequest :: Newtype DeleteStreamRequest _
derive instance repGenericDeleteStreamRequest :: Generic DeleteStreamRequest _
instance showDeleteStreamRequest :: Show DeleteStreamRequest where show = genericShow
instance decodeDeleteStreamRequest :: Decode DeleteStreamRequest where decode = genericDecode options
instance encodeDeleteStreamRequest :: Encode DeleteStreamRequest where encode = genericEncode options

-- | Constructs DeleteStreamRequest from required parameters
newDeleteStreamRequest :: StreamId -> DeleteStreamRequest
newDeleteStreamRequest _streamId = DeleteStreamRequest { "streamId": _streamId }

-- | Constructs DeleteStreamRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDeleteStreamRequest' :: StreamId -> ( { "streamId" :: (StreamId) } -> {"streamId" :: (StreamId) } ) -> DeleteStreamRequest
newDeleteStreamRequest' _streamId customize = (DeleteStreamRequest <<< customize) { "streamId": _streamId }



newtype DeleteStreamResponse = DeleteStreamResponse Types.NoArguments
derive instance newtypeDeleteStreamResponse :: Newtype DeleteStreamResponse _
derive instance repGenericDeleteStreamResponse :: Generic DeleteStreamResponse _
instance showDeleteStreamResponse :: Show DeleteStreamResponse where show = genericShow
instance decodeDeleteStreamResponse :: Decode DeleteStreamResponse where decode = genericDecode options
instance encodeDeleteStreamResponse :: Encode DeleteStreamResponse where encode = genericEncode options



newtype DeleteThingGroupRequest = DeleteThingGroupRequest 
  { "thingGroupName" :: (ThingGroupName)
  , "expectedVersion" :: Maybe (OptionalVersion)
  }
derive instance newtypeDeleteThingGroupRequest :: Newtype DeleteThingGroupRequest _
derive instance repGenericDeleteThingGroupRequest :: Generic DeleteThingGroupRequest _
instance showDeleteThingGroupRequest :: Show DeleteThingGroupRequest where show = genericShow
instance decodeDeleteThingGroupRequest :: Decode DeleteThingGroupRequest where decode = genericDecode options
instance encodeDeleteThingGroupRequest :: Encode DeleteThingGroupRequest where encode = genericEncode options

-- | Constructs DeleteThingGroupRequest from required parameters
newDeleteThingGroupRequest :: ThingGroupName -> DeleteThingGroupRequest
newDeleteThingGroupRequest _thingGroupName = DeleteThingGroupRequest { "thingGroupName": _thingGroupName, "expectedVersion": Nothing }

-- | Constructs DeleteThingGroupRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDeleteThingGroupRequest' :: ThingGroupName -> ( { "thingGroupName" :: (ThingGroupName) , "expectedVersion" :: Maybe (OptionalVersion) } -> {"thingGroupName" :: (ThingGroupName) , "expectedVersion" :: Maybe (OptionalVersion) } ) -> DeleteThingGroupRequest
newDeleteThingGroupRequest' _thingGroupName customize = (DeleteThingGroupRequest <<< customize) { "thingGroupName": _thingGroupName, "expectedVersion": Nothing }



newtype DeleteThingGroupResponse = DeleteThingGroupResponse Types.NoArguments
derive instance newtypeDeleteThingGroupResponse :: Newtype DeleteThingGroupResponse _
derive instance repGenericDeleteThingGroupResponse :: Generic DeleteThingGroupResponse _
instance showDeleteThingGroupResponse :: Show DeleteThingGroupResponse where show = genericShow
instance decodeDeleteThingGroupResponse :: Decode DeleteThingGroupResponse where decode = genericDecode options
instance encodeDeleteThingGroupResponse :: Encode DeleteThingGroupResponse where encode = genericEncode options



-- | <p>The input for the DeleteThing operation.</p>
newtype DeleteThingRequest = DeleteThingRequest 
  { "thingName" :: (ThingName)
  , "expectedVersion" :: Maybe (OptionalVersion)
  }
derive instance newtypeDeleteThingRequest :: Newtype DeleteThingRequest _
derive instance repGenericDeleteThingRequest :: Generic DeleteThingRequest _
instance showDeleteThingRequest :: Show DeleteThingRequest where show = genericShow
instance decodeDeleteThingRequest :: Decode DeleteThingRequest where decode = genericDecode options
instance encodeDeleteThingRequest :: Encode DeleteThingRequest where encode = genericEncode options

-- | Constructs DeleteThingRequest from required parameters
newDeleteThingRequest :: ThingName -> DeleteThingRequest
newDeleteThingRequest _thingName = DeleteThingRequest { "thingName": _thingName, "expectedVersion": Nothing }

-- | Constructs DeleteThingRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDeleteThingRequest' :: ThingName -> ( { "thingName" :: (ThingName) , "expectedVersion" :: Maybe (OptionalVersion) } -> {"thingName" :: (ThingName) , "expectedVersion" :: Maybe (OptionalVersion) } ) -> DeleteThingRequest
newDeleteThingRequest' _thingName customize = (DeleteThingRequest <<< customize) { "thingName": _thingName, "expectedVersion": Nothing }



-- | <p>The output of the DeleteThing operation.</p>
newtype DeleteThingResponse = DeleteThingResponse Types.NoArguments
derive instance newtypeDeleteThingResponse :: Newtype DeleteThingResponse _
derive instance repGenericDeleteThingResponse :: Generic DeleteThingResponse _
instance showDeleteThingResponse :: Show DeleteThingResponse where show = genericShow
instance decodeDeleteThingResponse :: Decode DeleteThingResponse where decode = genericDecode options
instance encodeDeleteThingResponse :: Encode DeleteThingResponse where encode = genericEncode options



-- | <p>The input for the DeleteThingType operation.</p>
newtype DeleteThingTypeRequest = DeleteThingTypeRequest 
  { "thingTypeName" :: (ThingTypeName)
  }
derive instance newtypeDeleteThingTypeRequest :: Newtype DeleteThingTypeRequest _
derive instance repGenericDeleteThingTypeRequest :: Generic DeleteThingTypeRequest _
instance showDeleteThingTypeRequest :: Show DeleteThingTypeRequest where show = genericShow
instance decodeDeleteThingTypeRequest :: Decode DeleteThingTypeRequest where decode = genericDecode options
instance encodeDeleteThingTypeRequest :: Encode DeleteThingTypeRequest where encode = genericEncode options

-- | Constructs DeleteThingTypeRequest from required parameters
newDeleteThingTypeRequest :: ThingTypeName -> DeleteThingTypeRequest
newDeleteThingTypeRequest _thingTypeName = DeleteThingTypeRequest { "thingTypeName": _thingTypeName }

-- | Constructs DeleteThingTypeRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDeleteThingTypeRequest' :: ThingTypeName -> ( { "thingTypeName" :: (ThingTypeName) } -> {"thingTypeName" :: (ThingTypeName) } ) -> DeleteThingTypeRequest
newDeleteThingTypeRequest' _thingTypeName customize = (DeleteThingTypeRequest <<< customize) { "thingTypeName": _thingTypeName }



-- | <p>The output for the DeleteThingType operation.</p>
newtype DeleteThingTypeResponse = DeleteThingTypeResponse Types.NoArguments
derive instance newtypeDeleteThingTypeResponse :: Newtype DeleteThingTypeResponse _
derive instance repGenericDeleteThingTypeResponse :: Generic DeleteThingTypeResponse _
instance showDeleteThingTypeResponse :: Show DeleteThingTypeResponse where show = genericShow
instance decodeDeleteThingTypeResponse :: Decode DeleteThingTypeResponse where decode = genericDecode options
instance encodeDeleteThingTypeResponse :: Encode DeleteThingTypeResponse where encode = genericEncode options



-- | <p>The input for the DeleteTopicRule operation.</p>
newtype DeleteTopicRuleRequest = DeleteTopicRuleRequest 
  { "ruleName" :: (RuleName)
  }
derive instance newtypeDeleteTopicRuleRequest :: Newtype DeleteTopicRuleRequest _
derive instance repGenericDeleteTopicRuleRequest :: Generic DeleteTopicRuleRequest _
instance showDeleteTopicRuleRequest :: Show DeleteTopicRuleRequest where show = genericShow
instance decodeDeleteTopicRuleRequest :: Decode DeleteTopicRuleRequest where decode = genericDecode options
instance encodeDeleteTopicRuleRequest :: Encode DeleteTopicRuleRequest where encode = genericEncode options

-- | Constructs DeleteTopicRuleRequest from required parameters
newDeleteTopicRuleRequest :: RuleName -> DeleteTopicRuleRequest
newDeleteTopicRuleRequest _ruleName = DeleteTopicRuleRequest { "ruleName": _ruleName }

-- | Constructs DeleteTopicRuleRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDeleteTopicRuleRequest' :: RuleName -> ( { "ruleName" :: (RuleName) } -> {"ruleName" :: (RuleName) } ) -> DeleteTopicRuleRequest
newDeleteTopicRuleRequest' _ruleName customize = (DeleteTopicRuleRequest <<< customize) { "ruleName": _ruleName }



newtype DeleteV2LoggingLevelRequest = DeleteV2LoggingLevelRequest 
  { "targetType" :: (LogTargetType)
  , "targetName" :: (LogTargetName)
  }
derive instance newtypeDeleteV2LoggingLevelRequest :: Newtype DeleteV2LoggingLevelRequest _
derive instance repGenericDeleteV2LoggingLevelRequest :: Generic DeleteV2LoggingLevelRequest _
instance showDeleteV2LoggingLevelRequest :: Show DeleteV2LoggingLevelRequest where show = genericShow
instance decodeDeleteV2LoggingLevelRequest :: Decode DeleteV2LoggingLevelRequest where decode = genericDecode options
instance encodeDeleteV2LoggingLevelRequest :: Encode DeleteV2LoggingLevelRequest where encode = genericEncode options

-- | Constructs DeleteV2LoggingLevelRequest from required parameters
newDeleteV2LoggingLevelRequest :: LogTargetName -> LogTargetType -> DeleteV2LoggingLevelRequest
newDeleteV2LoggingLevelRequest _targetName _targetType = DeleteV2LoggingLevelRequest { "targetName": _targetName, "targetType": _targetType }

-- | Constructs DeleteV2LoggingLevelRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDeleteV2LoggingLevelRequest' :: LogTargetName -> LogTargetType -> ( { "targetType" :: (LogTargetType) , "targetName" :: (LogTargetName) } -> {"targetType" :: (LogTargetType) , "targetName" :: (LogTargetName) } ) -> DeleteV2LoggingLevelRequest
newDeleteV2LoggingLevelRequest' _targetName _targetType customize = (DeleteV2LoggingLevelRequest <<< customize) { "targetName": _targetName, "targetType": _targetType }



newtype DeliveryStreamName = DeliveryStreamName String
derive instance newtypeDeliveryStreamName :: Newtype DeliveryStreamName _
derive instance repGenericDeliveryStreamName :: Generic DeliveryStreamName _
instance showDeliveryStreamName :: Show DeliveryStreamName where show = genericShow
instance decodeDeliveryStreamName :: Decode DeliveryStreamName where decode = genericDecode options
instance encodeDeliveryStreamName :: Encode DeliveryStreamName where encode = genericEncode options



-- | <p>Contains information that denied the authorization.</p>
newtype Denied = Denied 
  { "implicitDeny" :: Maybe (ImplicitDeny)
  , "explicitDeny" :: Maybe (ExplicitDeny)
  }
derive instance newtypeDenied :: Newtype Denied _
derive instance repGenericDenied :: Generic Denied _
instance showDenied :: Show Denied where show = genericShow
instance decodeDenied :: Decode Denied where decode = genericDecode options
instance encodeDenied :: Encode Denied where encode = genericEncode options

-- | Constructs Denied from required parameters
newDenied :: Denied
newDenied  = Denied { "explicitDeny": Nothing, "implicitDeny": Nothing }

-- | Constructs Denied's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDenied' :: ( { "implicitDeny" :: Maybe (ImplicitDeny) , "explicitDeny" :: Maybe (ExplicitDeny) } -> {"implicitDeny" :: Maybe (ImplicitDeny) , "explicitDeny" :: Maybe (ExplicitDeny) } ) -> Denied
newDenied'  customize = (Denied <<< customize) { "explicitDeny": Nothing, "implicitDeny": Nothing }



-- | <p>The input for the DeprecateThingType operation.</p>
newtype DeprecateThingTypeRequest = DeprecateThingTypeRequest 
  { "thingTypeName" :: (ThingTypeName)
  , "undoDeprecate" :: Maybe (UndoDeprecate)
  }
derive instance newtypeDeprecateThingTypeRequest :: Newtype DeprecateThingTypeRequest _
derive instance repGenericDeprecateThingTypeRequest :: Generic DeprecateThingTypeRequest _
instance showDeprecateThingTypeRequest :: Show DeprecateThingTypeRequest where show = genericShow
instance decodeDeprecateThingTypeRequest :: Decode DeprecateThingTypeRequest where decode = genericDecode options
instance encodeDeprecateThingTypeRequest :: Encode DeprecateThingTypeRequest where encode = genericEncode options

-- | Constructs DeprecateThingTypeRequest from required parameters
newDeprecateThingTypeRequest :: ThingTypeName -> DeprecateThingTypeRequest
newDeprecateThingTypeRequest _thingTypeName = DeprecateThingTypeRequest { "thingTypeName": _thingTypeName, "undoDeprecate": Nothing }

-- | Constructs DeprecateThingTypeRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDeprecateThingTypeRequest' :: ThingTypeName -> ( { "thingTypeName" :: (ThingTypeName) , "undoDeprecate" :: Maybe (UndoDeprecate) } -> {"thingTypeName" :: (ThingTypeName) , "undoDeprecate" :: Maybe (UndoDeprecate) } ) -> DeprecateThingTypeRequest
newDeprecateThingTypeRequest' _thingTypeName customize = (DeprecateThingTypeRequest <<< customize) { "thingTypeName": _thingTypeName, "undoDeprecate": Nothing }



-- | <p>The output for the DeprecateThingType operation.</p>
newtype DeprecateThingTypeResponse = DeprecateThingTypeResponse Types.NoArguments
derive instance newtypeDeprecateThingTypeResponse :: Newtype DeprecateThingTypeResponse _
derive instance repGenericDeprecateThingTypeResponse :: Generic DeprecateThingTypeResponse _
instance showDeprecateThingTypeResponse :: Show DeprecateThingTypeResponse where show = genericShow
instance decodeDeprecateThingTypeResponse :: Decode DeprecateThingTypeResponse where decode = genericDecode options
instance encodeDeprecateThingTypeResponse :: Encode DeprecateThingTypeResponse where encode = genericEncode options



newtype DeprecationDate = DeprecationDate Types.Timestamp
derive instance newtypeDeprecationDate :: Newtype DeprecationDate _
derive instance repGenericDeprecationDate :: Generic DeprecationDate _
instance showDeprecationDate :: Show DeprecationDate where show = genericShow
instance decodeDeprecationDate :: Decode DeprecationDate where decode = genericDecode options
instance encodeDeprecationDate :: Encode DeprecationDate where encode = genericEncode options



newtype DescribeAuthorizerRequest = DescribeAuthorizerRequest 
  { "authorizerName" :: (AuthorizerName)
  }
derive instance newtypeDescribeAuthorizerRequest :: Newtype DescribeAuthorizerRequest _
derive instance repGenericDescribeAuthorizerRequest :: Generic DescribeAuthorizerRequest _
instance showDescribeAuthorizerRequest :: Show DescribeAuthorizerRequest where show = genericShow
instance decodeDescribeAuthorizerRequest :: Decode DescribeAuthorizerRequest where decode = genericDecode options
instance encodeDescribeAuthorizerRequest :: Encode DescribeAuthorizerRequest where encode = genericEncode options

-- | Constructs DescribeAuthorizerRequest from required parameters
newDescribeAuthorizerRequest :: AuthorizerName -> DescribeAuthorizerRequest
newDescribeAuthorizerRequest _authorizerName = DescribeAuthorizerRequest { "authorizerName": _authorizerName }

-- | Constructs DescribeAuthorizerRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDescribeAuthorizerRequest' :: AuthorizerName -> ( { "authorizerName" :: (AuthorizerName) } -> {"authorizerName" :: (AuthorizerName) } ) -> DescribeAuthorizerRequest
newDescribeAuthorizerRequest' _authorizerName customize = (DescribeAuthorizerRequest <<< customize) { "authorizerName": _authorizerName }



newtype DescribeAuthorizerResponse = DescribeAuthorizerResponse 
  { "authorizerDescription" :: Maybe (AuthorizerDescription)
  }
derive instance newtypeDescribeAuthorizerResponse :: Newtype DescribeAuthorizerResponse _
derive instance repGenericDescribeAuthorizerResponse :: Generic DescribeAuthorizerResponse _
instance showDescribeAuthorizerResponse :: Show DescribeAuthorizerResponse where show = genericShow
instance decodeDescribeAuthorizerResponse :: Decode DescribeAuthorizerResponse where decode = genericDecode options
instance encodeDescribeAuthorizerResponse :: Encode DescribeAuthorizerResponse where encode = genericEncode options

-- | Constructs DescribeAuthorizerResponse from required parameters
newDescribeAuthorizerResponse :: DescribeAuthorizerResponse
newDescribeAuthorizerResponse  = DescribeAuthorizerResponse { "authorizerDescription": Nothing }

-- | Constructs DescribeAuthorizerResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDescribeAuthorizerResponse' :: ( { "authorizerDescription" :: Maybe (AuthorizerDescription) } -> {"authorizerDescription" :: Maybe (AuthorizerDescription) } ) -> DescribeAuthorizerResponse
newDescribeAuthorizerResponse'  customize = (DescribeAuthorizerResponse <<< customize) { "authorizerDescription": Nothing }



-- | <p>The input for the DescribeCACertificate operation.</p>
newtype DescribeCACertificateRequest = DescribeCACertificateRequest 
  { "certificateId" :: (CertificateId)
  }
derive instance newtypeDescribeCACertificateRequest :: Newtype DescribeCACertificateRequest _
derive instance repGenericDescribeCACertificateRequest :: Generic DescribeCACertificateRequest _
instance showDescribeCACertificateRequest :: Show DescribeCACertificateRequest where show = genericShow
instance decodeDescribeCACertificateRequest :: Decode DescribeCACertificateRequest where decode = genericDecode options
instance encodeDescribeCACertificateRequest :: Encode DescribeCACertificateRequest where encode = genericEncode options

-- | Constructs DescribeCACertificateRequest from required parameters
newDescribeCACertificateRequest :: CertificateId -> DescribeCACertificateRequest
newDescribeCACertificateRequest _certificateId = DescribeCACertificateRequest { "certificateId": _certificateId }

-- | Constructs DescribeCACertificateRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDescribeCACertificateRequest' :: CertificateId -> ( { "certificateId" :: (CertificateId) } -> {"certificateId" :: (CertificateId) } ) -> DescribeCACertificateRequest
newDescribeCACertificateRequest' _certificateId customize = (DescribeCACertificateRequest <<< customize) { "certificateId": _certificateId }



-- | <p>The output from the DescribeCACertificate operation.</p>
newtype DescribeCACertificateResponse = DescribeCACertificateResponse 
  { "certificateDescription" :: Maybe (CACertificateDescription)
  , "registrationConfig" :: Maybe (RegistrationConfig)
  }
derive instance newtypeDescribeCACertificateResponse :: Newtype DescribeCACertificateResponse _
derive instance repGenericDescribeCACertificateResponse :: Generic DescribeCACertificateResponse _
instance showDescribeCACertificateResponse :: Show DescribeCACertificateResponse where show = genericShow
instance decodeDescribeCACertificateResponse :: Decode DescribeCACertificateResponse where decode = genericDecode options
instance encodeDescribeCACertificateResponse :: Encode DescribeCACertificateResponse where encode = genericEncode options

-- | Constructs DescribeCACertificateResponse from required parameters
newDescribeCACertificateResponse :: DescribeCACertificateResponse
newDescribeCACertificateResponse  = DescribeCACertificateResponse { "certificateDescription": Nothing, "registrationConfig": Nothing }

-- | Constructs DescribeCACertificateResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDescribeCACertificateResponse' :: ( { "certificateDescription" :: Maybe (CACertificateDescription) , "registrationConfig" :: Maybe (RegistrationConfig) } -> {"certificateDescription" :: Maybe (CACertificateDescription) , "registrationConfig" :: Maybe (RegistrationConfig) } ) -> DescribeCACertificateResponse
newDescribeCACertificateResponse'  customize = (DescribeCACertificateResponse <<< customize) { "certificateDescription": Nothing, "registrationConfig": Nothing }



-- | <p>The input for the DescribeCertificate operation.</p>
newtype DescribeCertificateRequest = DescribeCertificateRequest 
  { "certificateId" :: (CertificateId)
  }
derive instance newtypeDescribeCertificateRequest :: Newtype DescribeCertificateRequest _
derive instance repGenericDescribeCertificateRequest :: Generic DescribeCertificateRequest _
instance showDescribeCertificateRequest :: Show DescribeCertificateRequest where show = genericShow
instance decodeDescribeCertificateRequest :: Decode DescribeCertificateRequest where decode = genericDecode options
instance encodeDescribeCertificateRequest :: Encode DescribeCertificateRequest where encode = genericEncode options

-- | Constructs DescribeCertificateRequest from required parameters
newDescribeCertificateRequest :: CertificateId -> DescribeCertificateRequest
newDescribeCertificateRequest _certificateId = DescribeCertificateRequest { "certificateId": _certificateId }

-- | Constructs DescribeCertificateRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDescribeCertificateRequest' :: CertificateId -> ( { "certificateId" :: (CertificateId) } -> {"certificateId" :: (CertificateId) } ) -> DescribeCertificateRequest
newDescribeCertificateRequest' _certificateId customize = (DescribeCertificateRequest <<< customize) { "certificateId": _certificateId }



-- | <p>The output of the DescribeCertificate operation.</p>
newtype DescribeCertificateResponse = DescribeCertificateResponse 
  { "certificateDescription" :: Maybe (CertificateDescription)
  }
derive instance newtypeDescribeCertificateResponse :: Newtype DescribeCertificateResponse _
derive instance repGenericDescribeCertificateResponse :: Generic DescribeCertificateResponse _
instance showDescribeCertificateResponse :: Show DescribeCertificateResponse where show = genericShow
instance decodeDescribeCertificateResponse :: Decode DescribeCertificateResponse where decode = genericDecode options
instance encodeDescribeCertificateResponse :: Encode DescribeCertificateResponse where encode = genericEncode options

-- | Constructs DescribeCertificateResponse from required parameters
newDescribeCertificateResponse :: DescribeCertificateResponse
newDescribeCertificateResponse  = DescribeCertificateResponse { "certificateDescription": Nothing }

-- | Constructs DescribeCertificateResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDescribeCertificateResponse' :: ( { "certificateDescription" :: Maybe (CertificateDescription) } -> {"certificateDescription" :: Maybe (CertificateDescription) } ) -> DescribeCertificateResponse
newDescribeCertificateResponse'  customize = (DescribeCertificateResponse <<< customize) { "certificateDescription": Nothing }



newtype DescribeDefaultAuthorizerRequest = DescribeDefaultAuthorizerRequest Types.NoArguments
derive instance newtypeDescribeDefaultAuthorizerRequest :: Newtype DescribeDefaultAuthorizerRequest _
derive instance repGenericDescribeDefaultAuthorizerRequest :: Generic DescribeDefaultAuthorizerRequest _
instance showDescribeDefaultAuthorizerRequest :: Show DescribeDefaultAuthorizerRequest where show = genericShow
instance decodeDescribeDefaultAuthorizerRequest :: Decode DescribeDefaultAuthorizerRequest where decode = genericDecode options
instance encodeDescribeDefaultAuthorizerRequest :: Encode DescribeDefaultAuthorizerRequest where encode = genericEncode options



newtype DescribeDefaultAuthorizerResponse = DescribeDefaultAuthorizerResponse 
  { "authorizerDescription" :: Maybe (AuthorizerDescription)
  }
derive instance newtypeDescribeDefaultAuthorizerResponse :: Newtype DescribeDefaultAuthorizerResponse _
derive instance repGenericDescribeDefaultAuthorizerResponse :: Generic DescribeDefaultAuthorizerResponse _
instance showDescribeDefaultAuthorizerResponse :: Show DescribeDefaultAuthorizerResponse where show = genericShow
instance decodeDescribeDefaultAuthorizerResponse :: Decode DescribeDefaultAuthorizerResponse where decode = genericDecode options
instance encodeDescribeDefaultAuthorizerResponse :: Encode DescribeDefaultAuthorizerResponse where encode = genericEncode options

-- | Constructs DescribeDefaultAuthorizerResponse from required parameters
newDescribeDefaultAuthorizerResponse :: DescribeDefaultAuthorizerResponse
newDescribeDefaultAuthorizerResponse  = DescribeDefaultAuthorizerResponse { "authorizerDescription": Nothing }

-- | Constructs DescribeDefaultAuthorizerResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDescribeDefaultAuthorizerResponse' :: ( { "authorizerDescription" :: Maybe (AuthorizerDescription) } -> {"authorizerDescription" :: Maybe (AuthorizerDescription) } ) -> DescribeDefaultAuthorizerResponse
newDescribeDefaultAuthorizerResponse'  customize = (DescribeDefaultAuthorizerResponse <<< customize) { "authorizerDescription": Nothing }



-- | <p>The input for the DescribeEndpoint operation.</p>
newtype DescribeEndpointRequest = DescribeEndpointRequest 
  { "endpointType" :: Maybe (EndpointType)
  }
derive instance newtypeDescribeEndpointRequest :: Newtype DescribeEndpointRequest _
derive instance repGenericDescribeEndpointRequest :: Generic DescribeEndpointRequest _
instance showDescribeEndpointRequest :: Show DescribeEndpointRequest where show = genericShow
instance decodeDescribeEndpointRequest :: Decode DescribeEndpointRequest where decode = genericDecode options
instance encodeDescribeEndpointRequest :: Encode DescribeEndpointRequest where encode = genericEncode options

-- | Constructs DescribeEndpointRequest from required parameters
newDescribeEndpointRequest :: DescribeEndpointRequest
newDescribeEndpointRequest  = DescribeEndpointRequest { "endpointType": Nothing }

-- | Constructs DescribeEndpointRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDescribeEndpointRequest' :: ( { "endpointType" :: Maybe (EndpointType) } -> {"endpointType" :: Maybe (EndpointType) } ) -> DescribeEndpointRequest
newDescribeEndpointRequest'  customize = (DescribeEndpointRequest <<< customize) { "endpointType": Nothing }



-- | <p>The output from the DescribeEndpoint operation.</p>
newtype DescribeEndpointResponse = DescribeEndpointResponse 
  { "endpointAddress" :: Maybe (EndpointAddress)
  }
derive instance newtypeDescribeEndpointResponse :: Newtype DescribeEndpointResponse _
derive instance repGenericDescribeEndpointResponse :: Generic DescribeEndpointResponse _
instance showDescribeEndpointResponse :: Show DescribeEndpointResponse where show = genericShow
instance decodeDescribeEndpointResponse :: Decode DescribeEndpointResponse where decode = genericDecode options
instance encodeDescribeEndpointResponse :: Encode DescribeEndpointResponse where encode = genericEncode options

-- | Constructs DescribeEndpointResponse from required parameters
newDescribeEndpointResponse :: DescribeEndpointResponse
newDescribeEndpointResponse  = DescribeEndpointResponse { "endpointAddress": Nothing }

-- | Constructs DescribeEndpointResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDescribeEndpointResponse' :: ( { "endpointAddress" :: Maybe (EndpointAddress) } -> {"endpointAddress" :: Maybe (EndpointAddress) } ) -> DescribeEndpointResponse
newDescribeEndpointResponse'  customize = (DescribeEndpointResponse <<< customize) { "endpointAddress": Nothing }



newtype DescribeEventConfigurationsRequest = DescribeEventConfigurationsRequest Types.NoArguments
derive instance newtypeDescribeEventConfigurationsRequest :: Newtype DescribeEventConfigurationsRequest _
derive instance repGenericDescribeEventConfigurationsRequest :: Generic DescribeEventConfigurationsRequest _
instance showDescribeEventConfigurationsRequest :: Show DescribeEventConfigurationsRequest where show = genericShow
instance decodeDescribeEventConfigurationsRequest :: Decode DescribeEventConfigurationsRequest where decode = genericDecode options
instance encodeDescribeEventConfigurationsRequest :: Encode DescribeEventConfigurationsRequest where encode = genericEncode options



newtype DescribeEventConfigurationsResponse = DescribeEventConfigurationsResponse 
  { "eventConfigurations" :: Maybe (EventConfigurations)
  , "creationDate" :: Maybe (CreationDate)
  , "lastModifiedDate" :: Maybe (LastModifiedDate)
  }
derive instance newtypeDescribeEventConfigurationsResponse :: Newtype DescribeEventConfigurationsResponse _
derive instance repGenericDescribeEventConfigurationsResponse :: Generic DescribeEventConfigurationsResponse _
instance showDescribeEventConfigurationsResponse :: Show DescribeEventConfigurationsResponse where show = genericShow
instance decodeDescribeEventConfigurationsResponse :: Decode DescribeEventConfigurationsResponse where decode = genericDecode options
instance encodeDescribeEventConfigurationsResponse :: Encode DescribeEventConfigurationsResponse where encode = genericEncode options

-- | Constructs DescribeEventConfigurationsResponse from required parameters
newDescribeEventConfigurationsResponse :: DescribeEventConfigurationsResponse
newDescribeEventConfigurationsResponse  = DescribeEventConfigurationsResponse { "creationDate": Nothing, "eventConfigurations": Nothing, "lastModifiedDate": Nothing }

-- | Constructs DescribeEventConfigurationsResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDescribeEventConfigurationsResponse' :: ( { "eventConfigurations" :: Maybe (EventConfigurations) , "creationDate" :: Maybe (CreationDate) , "lastModifiedDate" :: Maybe (LastModifiedDate) } -> {"eventConfigurations" :: Maybe (EventConfigurations) , "creationDate" :: Maybe (CreationDate) , "lastModifiedDate" :: Maybe (LastModifiedDate) } ) -> DescribeEventConfigurationsResponse
newDescribeEventConfigurationsResponse'  customize = (DescribeEventConfigurationsResponse <<< customize) { "creationDate": Nothing, "eventConfigurations": Nothing, "lastModifiedDate": Nothing }



newtype DescribeIndexRequest = DescribeIndexRequest 
  { "indexName" :: (IndexName)
  }
derive instance newtypeDescribeIndexRequest :: Newtype DescribeIndexRequest _
derive instance repGenericDescribeIndexRequest :: Generic DescribeIndexRequest _
instance showDescribeIndexRequest :: Show DescribeIndexRequest where show = genericShow
instance decodeDescribeIndexRequest :: Decode DescribeIndexRequest where decode = genericDecode options
instance encodeDescribeIndexRequest :: Encode DescribeIndexRequest where encode = genericEncode options

-- | Constructs DescribeIndexRequest from required parameters
newDescribeIndexRequest :: IndexName -> DescribeIndexRequest
newDescribeIndexRequest _indexName = DescribeIndexRequest { "indexName": _indexName }

-- | Constructs DescribeIndexRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDescribeIndexRequest' :: IndexName -> ( { "indexName" :: (IndexName) } -> {"indexName" :: (IndexName) } ) -> DescribeIndexRequest
newDescribeIndexRequest' _indexName customize = (DescribeIndexRequest <<< customize) { "indexName": _indexName }



newtype DescribeIndexResponse = DescribeIndexResponse 
  { "indexName" :: Maybe (IndexName)
  , "indexStatus" :: Maybe (IndexStatus)
  , "schema" :: Maybe (IndexSchema)
  }
derive instance newtypeDescribeIndexResponse :: Newtype DescribeIndexResponse _
derive instance repGenericDescribeIndexResponse :: Generic DescribeIndexResponse _
instance showDescribeIndexResponse :: Show DescribeIndexResponse where show = genericShow
instance decodeDescribeIndexResponse :: Decode DescribeIndexResponse where decode = genericDecode options
instance encodeDescribeIndexResponse :: Encode DescribeIndexResponse where encode = genericEncode options

-- | Constructs DescribeIndexResponse from required parameters
newDescribeIndexResponse :: DescribeIndexResponse
newDescribeIndexResponse  = DescribeIndexResponse { "indexName": Nothing, "indexStatus": Nothing, "schema": Nothing }

-- | Constructs DescribeIndexResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDescribeIndexResponse' :: ( { "indexName" :: Maybe (IndexName) , "indexStatus" :: Maybe (IndexStatus) , "schema" :: Maybe (IndexSchema) } -> {"indexName" :: Maybe (IndexName) , "indexStatus" :: Maybe (IndexStatus) , "schema" :: Maybe (IndexSchema) } ) -> DescribeIndexResponse
newDescribeIndexResponse'  customize = (DescribeIndexResponse <<< customize) { "indexName": Nothing, "indexStatus": Nothing, "schema": Nothing }



newtype DescribeJobExecutionRequest = DescribeJobExecutionRequest 
  { "jobId" :: (JobId)
  , "thingName" :: (ThingName)
  , "executionNumber" :: Maybe (ExecutionNumber)
  }
derive instance newtypeDescribeJobExecutionRequest :: Newtype DescribeJobExecutionRequest _
derive instance repGenericDescribeJobExecutionRequest :: Generic DescribeJobExecutionRequest _
instance showDescribeJobExecutionRequest :: Show DescribeJobExecutionRequest where show = genericShow
instance decodeDescribeJobExecutionRequest :: Decode DescribeJobExecutionRequest where decode = genericDecode options
instance encodeDescribeJobExecutionRequest :: Encode DescribeJobExecutionRequest where encode = genericEncode options

-- | Constructs DescribeJobExecutionRequest from required parameters
newDescribeJobExecutionRequest :: JobId -> ThingName -> DescribeJobExecutionRequest
newDescribeJobExecutionRequest _jobId _thingName = DescribeJobExecutionRequest { "jobId": _jobId, "thingName": _thingName, "executionNumber": Nothing }

-- | Constructs DescribeJobExecutionRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDescribeJobExecutionRequest' :: JobId -> ThingName -> ( { "jobId" :: (JobId) , "thingName" :: (ThingName) , "executionNumber" :: Maybe (ExecutionNumber) } -> {"jobId" :: (JobId) , "thingName" :: (ThingName) , "executionNumber" :: Maybe (ExecutionNumber) } ) -> DescribeJobExecutionRequest
newDescribeJobExecutionRequest' _jobId _thingName customize = (DescribeJobExecutionRequest <<< customize) { "jobId": _jobId, "thingName": _thingName, "executionNumber": Nothing }



newtype DescribeJobExecutionResponse = DescribeJobExecutionResponse 
  { "execution" :: Maybe (JobExecution)
  }
derive instance newtypeDescribeJobExecutionResponse :: Newtype DescribeJobExecutionResponse _
derive instance repGenericDescribeJobExecutionResponse :: Generic DescribeJobExecutionResponse _
instance showDescribeJobExecutionResponse :: Show DescribeJobExecutionResponse where show = genericShow
instance decodeDescribeJobExecutionResponse :: Decode DescribeJobExecutionResponse where decode = genericDecode options
instance encodeDescribeJobExecutionResponse :: Encode DescribeJobExecutionResponse where encode = genericEncode options

-- | Constructs DescribeJobExecutionResponse from required parameters
newDescribeJobExecutionResponse :: DescribeJobExecutionResponse
newDescribeJobExecutionResponse  = DescribeJobExecutionResponse { "execution": Nothing }

-- | Constructs DescribeJobExecutionResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDescribeJobExecutionResponse' :: ( { "execution" :: Maybe (JobExecution) } -> {"execution" :: Maybe (JobExecution) } ) -> DescribeJobExecutionResponse
newDescribeJobExecutionResponse'  customize = (DescribeJobExecutionResponse <<< customize) { "execution": Nothing }



newtype DescribeJobRequest = DescribeJobRequest 
  { "jobId" :: (JobId)
  }
derive instance newtypeDescribeJobRequest :: Newtype DescribeJobRequest _
derive instance repGenericDescribeJobRequest :: Generic DescribeJobRequest _
instance showDescribeJobRequest :: Show DescribeJobRequest where show = genericShow
instance decodeDescribeJobRequest :: Decode DescribeJobRequest where decode = genericDecode options
instance encodeDescribeJobRequest :: Encode DescribeJobRequest where encode = genericEncode options

-- | Constructs DescribeJobRequest from required parameters
newDescribeJobRequest :: JobId -> DescribeJobRequest
newDescribeJobRequest _jobId = DescribeJobRequest { "jobId": _jobId }

-- | Constructs DescribeJobRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDescribeJobRequest' :: JobId -> ( { "jobId" :: (JobId) } -> {"jobId" :: (JobId) } ) -> DescribeJobRequest
newDescribeJobRequest' _jobId customize = (DescribeJobRequest <<< customize) { "jobId": _jobId }



newtype DescribeJobResponse = DescribeJobResponse 
  { "documentSource" :: Maybe (JobDocumentSource)
  , "job" :: Maybe (Job)
  }
derive instance newtypeDescribeJobResponse :: Newtype DescribeJobResponse _
derive instance repGenericDescribeJobResponse :: Generic DescribeJobResponse _
instance showDescribeJobResponse :: Show DescribeJobResponse where show = genericShow
instance decodeDescribeJobResponse :: Decode DescribeJobResponse where decode = genericDecode options
instance encodeDescribeJobResponse :: Encode DescribeJobResponse where encode = genericEncode options

-- | Constructs DescribeJobResponse from required parameters
newDescribeJobResponse :: DescribeJobResponse
newDescribeJobResponse  = DescribeJobResponse { "documentSource": Nothing, "job": Nothing }

-- | Constructs DescribeJobResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDescribeJobResponse' :: ( { "documentSource" :: Maybe (JobDocumentSource) , "job" :: Maybe (Job) } -> {"documentSource" :: Maybe (JobDocumentSource) , "job" :: Maybe (Job) } ) -> DescribeJobResponse
newDescribeJobResponse'  customize = (DescribeJobResponse <<< customize) { "documentSource": Nothing, "job": Nothing }



newtype DescribeRoleAliasRequest = DescribeRoleAliasRequest 
  { "roleAlias" :: (RoleAlias)
  }
derive instance newtypeDescribeRoleAliasRequest :: Newtype DescribeRoleAliasRequest _
derive instance repGenericDescribeRoleAliasRequest :: Generic DescribeRoleAliasRequest _
instance showDescribeRoleAliasRequest :: Show DescribeRoleAliasRequest where show = genericShow
instance decodeDescribeRoleAliasRequest :: Decode DescribeRoleAliasRequest where decode = genericDecode options
instance encodeDescribeRoleAliasRequest :: Encode DescribeRoleAliasRequest where encode = genericEncode options

-- | Constructs DescribeRoleAliasRequest from required parameters
newDescribeRoleAliasRequest :: RoleAlias -> DescribeRoleAliasRequest
newDescribeRoleAliasRequest _roleAlias = DescribeRoleAliasRequest { "roleAlias": _roleAlias }

-- | Constructs DescribeRoleAliasRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDescribeRoleAliasRequest' :: RoleAlias -> ( { "roleAlias" :: (RoleAlias) } -> {"roleAlias" :: (RoleAlias) } ) -> DescribeRoleAliasRequest
newDescribeRoleAliasRequest' _roleAlias customize = (DescribeRoleAliasRequest <<< customize) { "roleAlias": _roleAlias }



newtype DescribeRoleAliasResponse = DescribeRoleAliasResponse 
  { "roleAliasDescription" :: Maybe (RoleAliasDescription)
  }
derive instance newtypeDescribeRoleAliasResponse :: Newtype DescribeRoleAliasResponse _
derive instance repGenericDescribeRoleAliasResponse :: Generic DescribeRoleAliasResponse _
instance showDescribeRoleAliasResponse :: Show DescribeRoleAliasResponse where show = genericShow
instance decodeDescribeRoleAliasResponse :: Decode DescribeRoleAliasResponse where decode = genericDecode options
instance encodeDescribeRoleAliasResponse :: Encode DescribeRoleAliasResponse where encode = genericEncode options

-- | Constructs DescribeRoleAliasResponse from required parameters
newDescribeRoleAliasResponse :: DescribeRoleAliasResponse
newDescribeRoleAliasResponse  = DescribeRoleAliasResponse { "roleAliasDescription": Nothing }

-- | Constructs DescribeRoleAliasResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDescribeRoleAliasResponse' :: ( { "roleAliasDescription" :: Maybe (RoleAliasDescription) } -> {"roleAliasDescription" :: Maybe (RoleAliasDescription) } ) -> DescribeRoleAliasResponse
newDescribeRoleAliasResponse'  customize = (DescribeRoleAliasResponse <<< customize) { "roleAliasDescription": Nothing }



newtype DescribeStreamRequest = DescribeStreamRequest 
  { "streamId" :: (StreamId)
  }
derive instance newtypeDescribeStreamRequest :: Newtype DescribeStreamRequest _
derive instance repGenericDescribeStreamRequest :: Generic DescribeStreamRequest _
instance showDescribeStreamRequest :: Show DescribeStreamRequest where show = genericShow
instance decodeDescribeStreamRequest :: Decode DescribeStreamRequest where decode = genericDecode options
instance encodeDescribeStreamRequest :: Encode DescribeStreamRequest where encode = genericEncode options

-- | Constructs DescribeStreamRequest from required parameters
newDescribeStreamRequest :: StreamId -> DescribeStreamRequest
newDescribeStreamRequest _streamId = DescribeStreamRequest { "streamId": _streamId }

-- | Constructs DescribeStreamRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDescribeStreamRequest' :: StreamId -> ( { "streamId" :: (StreamId) } -> {"streamId" :: (StreamId) } ) -> DescribeStreamRequest
newDescribeStreamRequest' _streamId customize = (DescribeStreamRequest <<< customize) { "streamId": _streamId }



newtype DescribeStreamResponse = DescribeStreamResponse 
  { "streamInfo" :: Maybe (StreamInfo)
  }
derive instance newtypeDescribeStreamResponse :: Newtype DescribeStreamResponse _
derive instance repGenericDescribeStreamResponse :: Generic DescribeStreamResponse _
instance showDescribeStreamResponse :: Show DescribeStreamResponse where show = genericShow
instance decodeDescribeStreamResponse :: Decode DescribeStreamResponse where decode = genericDecode options
instance encodeDescribeStreamResponse :: Encode DescribeStreamResponse where encode = genericEncode options

-- | Constructs DescribeStreamResponse from required parameters
newDescribeStreamResponse :: DescribeStreamResponse
newDescribeStreamResponse  = DescribeStreamResponse { "streamInfo": Nothing }

-- | Constructs DescribeStreamResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDescribeStreamResponse' :: ( { "streamInfo" :: Maybe (StreamInfo) } -> {"streamInfo" :: Maybe (StreamInfo) } ) -> DescribeStreamResponse
newDescribeStreamResponse'  customize = (DescribeStreamResponse <<< customize) { "streamInfo": Nothing }



newtype DescribeThingGroupRequest = DescribeThingGroupRequest 
  { "thingGroupName" :: (ThingGroupName)
  }
derive instance newtypeDescribeThingGroupRequest :: Newtype DescribeThingGroupRequest _
derive instance repGenericDescribeThingGroupRequest :: Generic DescribeThingGroupRequest _
instance showDescribeThingGroupRequest :: Show DescribeThingGroupRequest where show = genericShow
instance decodeDescribeThingGroupRequest :: Decode DescribeThingGroupRequest where decode = genericDecode options
instance encodeDescribeThingGroupRequest :: Encode DescribeThingGroupRequest where encode = genericEncode options

-- | Constructs DescribeThingGroupRequest from required parameters
newDescribeThingGroupRequest :: ThingGroupName -> DescribeThingGroupRequest
newDescribeThingGroupRequest _thingGroupName = DescribeThingGroupRequest { "thingGroupName": _thingGroupName }

-- | Constructs DescribeThingGroupRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDescribeThingGroupRequest' :: ThingGroupName -> ( { "thingGroupName" :: (ThingGroupName) } -> {"thingGroupName" :: (ThingGroupName) } ) -> DescribeThingGroupRequest
newDescribeThingGroupRequest' _thingGroupName customize = (DescribeThingGroupRequest <<< customize) { "thingGroupName": _thingGroupName }



newtype DescribeThingGroupResponse = DescribeThingGroupResponse 
  { "thingGroupName" :: Maybe (ThingGroupName)
  , "thingGroupId" :: Maybe (ThingGroupId)
  , "thingGroupArn" :: Maybe (ThingGroupArn)
  , "version" :: Maybe (Version)
  , "thingGroupProperties" :: Maybe (ThingGroupProperties)
  , "thingGroupMetadata" :: Maybe (ThingGroupMetadata)
  }
derive instance newtypeDescribeThingGroupResponse :: Newtype DescribeThingGroupResponse _
derive instance repGenericDescribeThingGroupResponse :: Generic DescribeThingGroupResponse _
instance showDescribeThingGroupResponse :: Show DescribeThingGroupResponse where show = genericShow
instance decodeDescribeThingGroupResponse :: Decode DescribeThingGroupResponse where decode = genericDecode options
instance encodeDescribeThingGroupResponse :: Encode DescribeThingGroupResponse where encode = genericEncode options

-- | Constructs DescribeThingGroupResponse from required parameters
newDescribeThingGroupResponse :: DescribeThingGroupResponse
newDescribeThingGroupResponse  = DescribeThingGroupResponse { "thingGroupArn": Nothing, "thingGroupId": Nothing, "thingGroupMetadata": Nothing, "thingGroupName": Nothing, "thingGroupProperties": Nothing, "version": Nothing }

-- | Constructs DescribeThingGroupResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDescribeThingGroupResponse' :: ( { "thingGroupName" :: Maybe (ThingGroupName) , "thingGroupId" :: Maybe (ThingGroupId) , "thingGroupArn" :: Maybe (ThingGroupArn) , "version" :: Maybe (Version) , "thingGroupProperties" :: Maybe (ThingGroupProperties) , "thingGroupMetadata" :: Maybe (ThingGroupMetadata) } -> {"thingGroupName" :: Maybe (ThingGroupName) , "thingGroupId" :: Maybe (ThingGroupId) , "thingGroupArn" :: Maybe (ThingGroupArn) , "version" :: Maybe (Version) , "thingGroupProperties" :: Maybe (ThingGroupProperties) , "thingGroupMetadata" :: Maybe (ThingGroupMetadata) } ) -> DescribeThingGroupResponse
newDescribeThingGroupResponse'  customize = (DescribeThingGroupResponse <<< customize) { "thingGroupArn": Nothing, "thingGroupId": Nothing, "thingGroupMetadata": Nothing, "thingGroupName": Nothing, "thingGroupProperties": Nothing, "version": Nothing }



newtype DescribeThingRegistrationTaskRequest = DescribeThingRegistrationTaskRequest 
  { "taskId" :: (TaskId)
  }
derive instance newtypeDescribeThingRegistrationTaskRequest :: Newtype DescribeThingRegistrationTaskRequest _
derive instance repGenericDescribeThingRegistrationTaskRequest :: Generic DescribeThingRegistrationTaskRequest _
instance showDescribeThingRegistrationTaskRequest :: Show DescribeThingRegistrationTaskRequest where show = genericShow
instance decodeDescribeThingRegistrationTaskRequest :: Decode DescribeThingRegistrationTaskRequest where decode = genericDecode options
instance encodeDescribeThingRegistrationTaskRequest :: Encode DescribeThingRegistrationTaskRequest where encode = genericEncode options

-- | Constructs DescribeThingRegistrationTaskRequest from required parameters
newDescribeThingRegistrationTaskRequest :: TaskId -> DescribeThingRegistrationTaskRequest
newDescribeThingRegistrationTaskRequest _taskId = DescribeThingRegistrationTaskRequest { "taskId": _taskId }

-- | Constructs DescribeThingRegistrationTaskRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDescribeThingRegistrationTaskRequest' :: TaskId -> ( { "taskId" :: (TaskId) } -> {"taskId" :: (TaskId) } ) -> DescribeThingRegistrationTaskRequest
newDescribeThingRegistrationTaskRequest' _taskId customize = (DescribeThingRegistrationTaskRequest <<< customize) { "taskId": _taskId }



newtype DescribeThingRegistrationTaskResponse = DescribeThingRegistrationTaskResponse 
  { "taskId" :: Maybe (TaskId)
  , "creationDate" :: Maybe (CreationDate)
  , "lastModifiedDate" :: Maybe (LastModifiedDate)
  , "templateBody" :: Maybe (TemplateBody)
  , "inputFileBucket" :: Maybe (RegistryS3BucketName)
  , "inputFileKey" :: Maybe (RegistryS3KeyName)
  , "roleArn" :: Maybe (RoleArn)
  , "status" :: Maybe (Status)
  , "message" :: Maybe (ErrorMessage)
  , "successCount" :: Maybe (Count)
  , "failureCount" :: Maybe (Count)
  , "percentageProgress" :: Maybe (Percentage)
  }
derive instance newtypeDescribeThingRegistrationTaskResponse :: Newtype DescribeThingRegistrationTaskResponse _
derive instance repGenericDescribeThingRegistrationTaskResponse :: Generic DescribeThingRegistrationTaskResponse _
instance showDescribeThingRegistrationTaskResponse :: Show DescribeThingRegistrationTaskResponse where show = genericShow
instance decodeDescribeThingRegistrationTaskResponse :: Decode DescribeThingRegistrationTaskResponse where decode = genericDecode options
instance encodeDescribeThingRegistrationTaskResponse :: Encode DescribeThingRegistrationTaskResponse where encode = genericEncode options

-- | Constructs DescribeThingRegistrationTaskResponse from required parameters
newDescribeThingRegistrationTaskResponse :: DescribeThingRegistrationTaskResponse
newDescribeThingRegistrationTaskResponse  = DescribeThingRegistrationTaskResponse { "creationDate": Nothing, "failureCount": Nothing, "inputFileBucket": Nothing, "inputFileKey": Nothing, "lastModifiedDate": Nothing, "message": Nothing, "percentageProgress": Nothing, "roleArn": Nothing, "status": Nothing, "successCount": Nothing, "taskId": Nothing, "templateBody": Nothing }

-- | Constructs DescribeThingRegistrationTaskResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDescribeThingRegistrationTaskResponse' :: ( { "taskId" :: Maybe (TaskId) , "creationDate" :: Maybe (CreationDate) , "lastModifiedDate" :: Maybe (LastModifiedDate) , "templateBody" :: Maybe (TemplateBody) , "inputFileBucket" :: Maybe (RegistryS3BucketName) , "inputFileKey" :: Maybe (RegistryS3KeyName) , "roleArn" :: Maybe (RoleArn) , "status" :: Maybe (Status) , "message" :: Maybe (ErrorMessage) , "successCount" :: Maybe (Count) , "failureCount" :: Maybe (Count) , "percentageProgress" :: Maybe (Percentage) } -> {"taskId" :: Maybe (TaskId) , "creationDate" :: Maybe (CreationDate) , "lastModifiedDate" :: Maybe (LastModifiedDate) , "templateBody" :: Maybe (TemplateBody) , "inputFileBucket" :: Maybe (RegistryS3BucketName) , "inputFileKey" :: Maybe (RegistryS3KeyName) , "roleArn" :: Maybe (RoleArn) , "status" :: Maybe (Status) , "message" :: Maybe (ErrorMessage) , "successCount" :: Maybe (Count) , "failureCount" :: Maybe (Count) , "percentageProgress" :: Maybe (Percentage) } ) -> DescribeThingRegistrationTaskResponse
newDescribeThingRegistrationTaskResponse'  customize = (DescribeThingRegistrationTaskResponse <<< customize) { "creationDate": Nothing, "failureCount": Nothing, "inputFileBucket": Nothing, "inputFileKey": Nothing, "lastModifiedDate": Nothing, "message": Nothing, "percentageProgress": Nothing, "roleArn": Nothing, "status": Nothing, "successCount": Nothing, "taskId": Nothing, "templateBody": Nothing }



-- | <p>The input for the DescribeThing operation.</p>
newtype DescribeThingRequest = DescribeThingRequest 
  { "thingName" :: (ThingName)
  }
derive instance newtypeDescribeThingRequest :: Newtype DescribeThingRequest _
derive instance repGenericDescribeThingRequest :: Generic DescribeThingRequest _
instance showDescribeThingRequest :: Show DescribeThingRequest where show = genericShow
instance decodeDescribeThingRequest :: Decode DescribeThingRequest where decode = genericDecode options
instance encodeDescribeThingRequest :: Encode DescribeThingRequest where encode = genericEncode options

-- | Constructs DescribeThingRequest from required parameters
newDescribeThingRequest :: ThingName -> DescribeThingRequest
newDescribeThingRequest _thingName = DescribeThingRequest { "thingName": _thingName }

-- | Constructs DescribeThingRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDescribeThingRequest' :: ThingName -> ( { "thingName" :: (ThingName) } -> {"thingName" :: (ThingName) } ) -> DescribeThingRequest
newDescribeThingRequest' _thingName customize = (DescribeThingRequest <<< customize) { "thingName": _thingName }



-- | <p>The output from the DescribeThing operation.</p>
newtype DescribeThingResponse = DescribeThingResponse 
  { "defaultClientId" :: Maybe (ClientId)
  , "thingName" :: Maybe (ThingName)
  , "thingId" :: Maybe (ThingId)
  , "thingArn" :: Maybe (ThingArn)
  , "thingTypeName" :: Maybe (ThingTypeName)
  , "attributes" :: Maybe (Attributes)
  , "version" :: Maybe (Version)
  }
derive instance newtypeDescribeThingResponse :: Newtype DescribeThingResponse _
derive instance repGenericDescribeThingResponse :: Generic DescribeThingResponse _
instance showDescribeThingResponse :: Show DescribeThingResponse where show = genericShow
instance decodeDescribeThingResponse :: Decode DescribeThingResponse where decode = genericDecode options
instance encodeDescribeThingResponse :: Encode DescribeThingResponse where encode = genericEncode options

-- | Constructs DescribeThingResponse from required parameters
newDescribeThingResponse :: DescribeThingResponse
newDescribeThingResponse  = DescribeThingResponse { "attributes": Nothing, "defaultClientId": Nothing, "thingArn": Nothing, "thingId": Nothing, "thingName": Nothing, "thingTypeName": Nothing, "version": Nothing }

-- | Constructs DescribeThingResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDescribeThingResponse' :: ( { "defaultClientId" :: Maybe (ClientId) , "thingName" :: Maybe (ThingName) , "thingId" :: Maybe (ThingId) , "thingArn" :: Maybe (ThingArn) , "thingTypeName" :: Maybe (ThingTypeName) , "attributes" :: Maybe (Attributes) , "version" :: Maybe (Version) } -> {"defaultClientId" :: Maybe (ClientId) , "thingName" :: Maybe (ThingName) , "thingId" :: Maybe (ThingId) , "thingArn" :: Maybe (ThingArn) , "thingTypeName" :: Maybe (ThingTypeName) , "attributes" :: Maybe (Attributes) , "version" :: Maybe (Version) } ) -> DescribeThingResponse
newDescribeThingResponse'  customize = (DescribeThingResponse <<< customize) { "attributes": Nothing, "defaultClientId": Nothing, "thingArn": Nothing, "thingId": Nothing, "thingName": Nothing, "thingTypeName": Nothing, "version": Nothing }



-- | <p>The input for the DescribeThingType operation.</p>
newtype DescribeThingTypeRequest = DescribeThingTypeRequest 
  { "thingTypeName" :: (ThingTypeName)
  }
derive instance newtypeDescribeThingTypeRequest :: Newtype DescribeThingTypeRequest _
derive instance repGenericDescribeThingTypeRequest :: Generic DescribeThingTypeRequest _
instance showDescribeThingTypeRequest :: Show DescribeThingTypeRequest where show = genericShow
instance decodeDescribeThingTypeRequest :: Decode DescribeThingTypeRequest where decode = genericDecode options
instance encodeDescribeThingTypeRequest :: Encode DescribeThingTypeRequest where encode = genericEncode options

-- | Constructs DescribeThingTypeRequest from required parameters
newDescribeThingTypeRequest :: ThingTypeName -> DescribeThingTypeRequest
newDescribeThingTypeRequest _thingTypeName = DescribeThingTypeRequest { "thingTypeName": _thingTypeName }

-- | Constructs DescribeThingTypeRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDescribeThingTypeRequest' :: ThingTypeName -> ( { "thingTypeName" :: (ThingTypeName) } -> {"thingTypeName" :: (ThingTypeName) } ) -> DescribeThingTypeRequest
newDescribeThingTypeRequest' _thingTypeName customize = (DescribeThingTypeRequest <<< customize) { "thingTypeName": _thingTypeName }



-- | <p>The output for the DescribeThingType operation.</p>
newtype DescribeThingTypeResponse = DescribeThingTypeResponse 
  { "thingTypeName" :: Maybe (ThingTypeName)
  , "thingTypeId" :: Maybe (ThingTypeId)
  , "thingTypeArn" :: Maybe (ThingTypeArn)
  , "thingTypeProperties" :: Maybe (ThingTypeProperties)
  , "thingTypeMetadata" :: Maybe (ThingTypeMetadata)
  }
derive instance newtypeDescribeThingTypeResponse :: Newtype DescribeThingTypeResponse _
derive instance repGenericDescribeThingTypeResponse :: Generic DescribeThingTypeResponse _
instance showDescribeThingTypeResponse :: Show DescribeThingTypeResponse where show = genericShow
instance decodeDescribeThingTypeResponse :: Decode DescribeThingTypeResponse where decode = genericDecode options
instance encodeDescribeThingTypeResponse :: Encode DescribeThingTypeResponse where encode = genericEncode options

-- | Constructs DescribeThingTypeResponse from required parameters
newDescribeThingTypeResponse :: DescribeThingTypeResponse
newDescribeThingTypeResponse  = DescribeThingTypeResponse { "thingTypeArn": Nothing, "thingTypeId": Nothing, "thingTypeMetadata": Nothing, "thingTypeName": Nothing, "thingTypeProperties": Nothing }

-- | Constructs DescribeThingTypeResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDescribeThingTypeResponse' :: ( { "thingTypeName" :: Maybe (ThingTypeName) , "thingTypeId" :: Maybe (ThingTypeId) , "thingTypeArn" :: Maybe (ThingTypeArn) , "thingTypeProperties" :: Maybe (ThingTypeProperties) , "thingTypeMetadata" :: Maybe (ThingTypeMetadata) } -> {"thingTypeName" :: Maybe (ThingTypeName) , "thingTypeId" :: Maybe (ThingTypeId) , "thingTypeArn" :: Maybe (ThingTypeArn) , "thingTypeProperties" :: Maybe (ThingTypeProperties) , "thingTypeMetadata" :: Maybe (ThingTypeMetadata) } ) -> DescribeThingTypeResponse
newDescribeThingTypeResponse'  customize = (DescribeThingTypeResponse <<< customize) { "thingTypeArn": Nothing, "thingTypeId": Nothing, "thingTypeMetadata": Nothing, "thingTypeName": Nothing, "thingTypeProperties": Nothing }



newtype Description = Description String
derive instance newtypeDescription :: Newtype Description _
derive instance repGenericDescription :: Generic Description _
instance showDescription :: Show Description where show = genericShow
instance decodeDescription :: Decode Description where decode = genericDecode options
instance encodeDescription :: Encode Description where encode = genericEncode options



newtype DetachPolicyRequest = DetachPolicyRequest 
  { "policyName" :: (PolicyName)
  , "target" :: (PolicyTarget)
  }
derive instance newtypeDetachPolicyRequest :: Newtype DetachPolicyRequest _
derive instance repGenericDetachPolicyRequest :: Generic DetachPolicyRequest _
instance showDetachPolicyRequest :: Show DetachPolicyRequest where show = genericShow
instance decodeDetachPolicyRequest :: Decode DetachPolicyRequest where decode = genericDecode options
instance encodeDetachPolicyRequest :: Encode DetachPolicyRequest where encode = genericEncode options

-- | Constructs DetachPolicyRequest from required parameters
newDetachPolicyRequest :: PolicyName -> PolicyTarget -> DetachPolicyRequest
newDetachPolicyRequest _policyName _target = DetachPolicyRequest { "policyName": _policyName, "target": _target }

-- | Constructs DetachPolicyRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDetachPolicyRequest' :: PolicyName -> PolicyTarget -> ( { "policyName" :: (PolicyName) , "target" :: (PolicyTarget) } -> {"policyName" :: (PolicyName) , "target" :: (PolicyTarget) } ) -> DetachPolicyRequest
newDetachPolicyRequest' _policyName _target customize = (DetachPolicyRequest <<< customize) { "policyName": _policyName, "target": _target }



-- | <p>The input for the DetachPrincipalPolicy operation.</p>
newtype DetachPrincipalPolicyRequest = DetachPrincipalPolicyRequest 
  { "policyName" :: (PolicyName)
  , "principal" :: (Principal)
  }
derive instance newtypeDetachPrincipalPolicyRequest :: Newtype DetachPrincipalPolicyRequest _
derive instance repGenericDetachPrincipalPolicyRequest :: Generic DetachPrincipalPolicyRequest _
instance showDetachPrincipalPolicyRequest :: Show DetachPrincipalPolicyRequest where show = genericShow
instance decodeDetachPrincipalPolicyRequest :: Decode DetachPrincipalPolicyRequest where decode = genericDecode options
instance encodeDetachPrincipalPolicyRequest :: Encode DetachPrincipalPolicyRequest where encode = genericEncode options

-- | Constructs DetachPrincipalPolicyRequest from required parameters
newDetachPrincipalPolicyRequest :: PolicyName -> Principal -> DetachPrincipalPolicyRequest
newDetachPrincipalPolicyRequest _policyName _principal = DetachPrincipalPolicyRequest { "policyName": _policyName, "principal": _principal }

-- | Constructs DetachPrincipalPolicyRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDetachPrincipalPolicyRequest' :: PolicyName -> Principal -> ( { "policyName" :: (PolicyName) , "principal" :: (Principal) } -> {"policyName" :: (PolicyName) , "principal" :: (Principal) } ) -> DetachPrincipalPolicyRequest
newDetachPrincipalPolicyRequest' _policyName _principal customize = (DetachPrincipalPolicyRequest <<< customize) { "policyName": _policyName, "principal": _principal }



-- | <p>The input for the DetachThingPrincipal operation.</p>
newtype DetachThingPrincipalRequest = DetachThingPrincipalRequest 
  { "thingName" :: (ThingName)
  , "principal" :: (Principal)
  }
derive instance newtypeDetachThingPrincipalRequest :: Newtype DetachThingPrincipalRequest _
derive instance repGenericDetachThingPrincipalRequest :: Generic DetachThingPrincipalRequest _
instance showDetachThingPrincipalRequest :: Show DetachThingPrincipalRequest where show = genericShow
instance decodeDetachThingPrincipalRequest :: Decode DetachThingPrincipalRequest where decode = genericDecode options
instance encodeDetachThingPrincipalRequest :: Encode DetachThingPrincipalRequest where encode = genericEncode options

-- | Constructs DetachThingPrincipalRequest from required parameters
newDetachThingPrincipalRequest :: Principal -> ThingName -> DetachThingPrincipalRequest
newDetachThingPrincipalRequest _principal _thingName = DetachThingPrincipalRequest { "principal": _principal, "thingName": _thingName }

-- | Constructs DetachThingPrincipalRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDetachThingPrincipalRequest' :: Principal -> ThingName -> ( { "thingName" :: (ThingName) , "principal" :: (Principal) } -> {"thingName" :: (ThingName) , "principal" :: (Principal) } ) -> DetachThingPrincipalRequest
newDetachThingPrincipalRequest' _principal _thingName customize = (DetachThingPrincipalRequest <<< customize) { "principal": _principal, "thingName": _thingName }



-- | <p>The output from the DetachThingPrincipal operation.</p>
newtype DetachThingPrincipalResponse = DetachThingPrincipalResponse Types.NoArguments
derive instance newtypeDetachThingPrincipalResponse :: Newtype DetachThingPrincipalResponse _
derive instance repGenericDetachThingPrincipalResponse :: Generic DetachThingPrincipalResponse _
instance showDetachThingPrincipalResponse :: Show DetachThingPrincipalResponse where show = genericShow
instance decodeDetachThingPrincipalResponse :: Decode DetachThingPrincipalResponse where decode = genericDecode options
instance encodeDetachThingPrincipalResponse :: Encode DetachThingPrincipalResponse where encode = genericEncode options



newtype DetailsKey = DetailsKey String
derive instance newtypeDetailsKey :: Newtype DetailsKey _
derive instance repGenericDetailsKey :: Generic DetailsKey _
instance showDetailsKey :: Show DetailsKey where show = genericShow
instance decodeDetailsKey :: Decode DetailsKey where decode = genericDecode options
instance encodeDetailsKey :: Encode DetailsKey where encode = genericEncode options



newtype DetailsMap = DetailsMap (StrMap.StrMap DetailsValue)
derive instance newtypeDetailsMap :: Newtype DetailsMap _
derive instance repGenericDetailsMap :: Generic DetailsMap _
instance showDetailsMap :: Show DetailsMap where show = genericShow
instance decodeDetailsMap :: Decode DetailsMap where decode = genericDecode options
instance encodeDetailsMap :: Encode DetailsMap where encode = genericEncode options



newtype DetailsValue = DetailsValue String
derive instance newtypeDetailsValue :: Newtype DetailsValue _
derive instance repGenericDetailsValue :: Generic DetailsValue _
instance showDetailsValue :: Show DetailsValue where show = genericShow
instance decodeDetailsValue :: Decode DetailsValue where decode = genericDecode options
instance encodeDetailsValue :: Encode DetailsValue where encode = genericEncode options



newtype DisableAllLogs = DisableAllLogs Boolean
derive instance newtypeDisableAllLogs :: Newtype DisableAllLogs _
derive instance repGenericDisableAllLogs :: Generic DisableAllLogs _
instance showDisableAllLogs :: Show DisableAllLogs where show = genericShow
instance decodeDisableAllLogs :: Decode DisableAllLogs where decode = genericDecode options
instance encodeDisableAllLogs :: Encode DisableAllLogs where encode = genericEncode options



-- | <p>The input for the DisableTopicRuleRequest operation.</p>
newtype DisableTopicRuleRequest = DisableTopicRuleRequest 
  { "ruleName" :: (RuleName)
  }
derive instance newtypeDisableTopicRuleRequest :: Newtype DisableTopicRuleRequest _
derive instance repGenericDisableTopicRuleRequest :: Generic DisableTopicRuleRequest _
instance showDisableTopicRuleRequest :: Show DisableTopicRuleRequest where show = genericShow
instance decodeDisableTopicRuleRequest :: Decode DisableTopicRuleRequest where decode = genericDecode options
instance encodeDisableTopicRuleRequest :: Encode DisableTopicRuleRequest where encode = genericEncode options

-- | Constructs DisableTopicRuleRequest from required parameters
newDisableTopicRuleRequest :: RuleName -> DisableTopicRuleRequest
newDisableTopicRuleRequest _ruleName = DisableTopicRuleRequest { "ruleName": _ruleName }

-- | Constructs DisableTopicRuleRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDisableTopicRuleRequest' :: RuleName -> ( { "ruleName" :: (RuleName) } -> {"ruleName" :: (RuleName) } ) -> DisableTopicRuleRequest
newDisableTopicRuleRequest' _ruleName customize = (DisableTopicRuleRequest <<< customize) { "ruleName": _ruleName }



-- | <p>Describes an action to write to a DynamoDB table.</p> <p>The <code>tableName</code>, <code>hashKeyField</code>, and <code>rangeKeyField</code> values must match the values used when you created the table.</p> <p>The <code>hashKeyValue</code> and <code>rangeKeyvalue</code> fields use a substitution template syntax. These templates provide data at runtime. The syntax is as follows: ${<i>sql-expression</i>}.</p> <p>You can specify any valid expression in a WHERE or SELECT clause, including JSON properties, comparisons, calculations, and functions. For example, the following field uses the third level of the topic:</p> <p> <code>"hashKeyValue": "${topic(3)}"</code> </p> <p>The following field uses the timestamp:</p> <p> <code>"rangeKeyValue": "${timestamp()}"</code> </p>
newtype DynamoDBAction = DynamoDBAction 
  { "tableName" :: (TableName)
  , "roleArn" :: (AwsArn)
  , "operation" :: Maybe (DynamoOperation)
  , "hashKeyField" :: (HashKeyField)
  , "hashKeyValue" :: (HashKeyValue)
  , "hashKeyType" :: Maybe (DynamoKeyType)
  , "rangeKeyField" :: Maybe (RangeKeyField)
  , "rangeKeyValue" :: Maybe (RangeKeyValue)
  , "rangeKeyType" :: Maybe (DynamoKeyType)
  , "payloadField" :: Maybe (PayloadField)
  }
derive instance newtypeDynamoDBAction :: Newtype DynamoDBAction _
derive instance repGenericDynamoDBAction :: Generic DynamoDBAction _
instance showDynamoDBAction :: Show DynamoDBAction where show = genericShow
instance decodeDynamoDBAction :: Decode DynamoDBAction where decode = genericDecode options
instance encodeDynamoDBAction :: Encode DynamoDBAction where encode = genericEncode options

-- | Constructs DynamoDBAction from required parameters
newDynamoDBAction :: HashKeyField -> HashKeyValue -> AwsArn -> TableName -> DynamoDBAction
newDynamoDBAction _hashKeyField _hashKeyValue _roleArn _tableName = DynamoDBAction { "hashKeyField": _hashKeyField, "hashKeyValue": _hashKeyValue, "roleArn": _roleArn, "tableName": _tableName, "hashKeyType": Nothing, "operation": Nothing, "payloadField": Nothing, "rangeKeyField": Nothing, "rangeKeyType": Nothing, "rangeKeyValue": Nothing }

-- | Constructs DynamoDBAction's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDynamoDBAction' :: HashKeyField -> HashKeyValue -> AwsArn -> TableName -> ( { "tableName" :: (TableName) , "roleArn" :: (AwsArn) , "operation" :: Maybe (DynamoOperation) , "hashKeyField" :: (HashKeyField) , "hashKeyValue" :: (HashKeyValue) , "hashKeyType" :: Maybe (DynamoKeyType) , "rangeKeyField" :: Maybe (RangeKeyField) , "rangeKeyValue" :: Maybe (RangeKeyValue) , "rangeKeyType" :: Maybe (DynamoKeyType) , "payloadField" :: Maybe (PayloadField) } -> {"tableName" :: (TableName) , "roleArn" :: (AwsArn) , "operation" :: Maybe (DynamoOperation) , "hashKeyField" :: (HashKeyField) , "hashKeyValue" :: (HashKeyValue) , "hashKeyType" :: Maybe (DynamoKeyType) , "rangeKeyField" :: Maybe (RangeKeyField) , "rangeKeyValue" :: Maybe (RangeKeyValue) , "rangeKeyType" :: Maybe (DynamoKeyType) , "payloadField" :: Maybe (PayloadField) } ) -> DynamoDBAction
newDynamoDBAction' _hashKeyField _hashKeyValue _roleArn _tableName customize = (DynamoDBAction <<< customize) { "hashKeyField": _hashKeyField, "hashKeyValue": _hashKeyValue, "roleArn": _roleArn, "tableName": _tableName, "hashKeyType": Nothing, "operation": Nothing, "payloadField": Nothing, "rangeKeyField": Nothing, "rangeKeyType": Nothing, "rangeKeyValue": Nothing }



-- | <p>Describes an action to write to a DynamoDB table.</p> <p>This DynamoDB action writes each attribute in the message payload into it's own column in the DynamoDB table.</p>
newtype DynamoDBv2Action = DynamoDBv2Action 
  { "roleArn" :: Maybe (AwsArn)
  , "putItem" :: Maybe (PutItemInput)
  }
derive instance newtypeDynamoDBv2Action :: Newtype DynamoDBv2Action _
derive instance repGenericDynamoDBv2Action :: Generic DynamoDBv2Action _
instance showDynamoDBv2Action :: Show DynamoDBv2Action where show = genericShow
instance decodeDynamoDBv2Action :: Decode DynamoDBv2Action where decode = genericDecode options
instance encodeDynamoDBv2Action :: Encode DynamoDBv2Action where encode = genericEncode options

-- | Constructs DynamoDBv2Action from required parameters
newDynamoDBv2Action :: DynamoDBv2Action
newDynamoDBv2Action  = DynamoDBv2Action { "putItem": Nothing, "roleArn": Nothing }

-- | Constructs DynamoDBv2Action's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDynamoDBv2Action' :: ( { "roleArn" :: Maybe (AwsArn) , "putItem" :: Maybe (PutItemInput) } -> {"roleArn" :: Maybe (AwsArn) , "putItem" :: Maybe (PutItemInput) } ) -> DynamoDBv2Action
newDynamoDBv2Action'  customize = (DynamoDBv2Action <<< customize) { "putItem": Nothing, "roleArn": Nothing }



newtype DynamoKeyType = DynamoKeyType String
derive instance newtypeDynamoKeyType :: Newtype DynamoKeyType _
derive instance repGenericDynamoKeyType :: Generic DynamoKeyType _
instance showDynamoKeyType :: Show DynamoKeyType where show = genericShow
instance decodeDynamoKeyType :: Decode DynamoKeyType where decode = genericDecode options
instance encodeDynamoKeyType :: Encode DynamoKeyType where encode = genericEncode options



newtype DynamoOperation = DynamoOperation String
derive instance newtypeDynamoOperation :: Newtype DynamoOperation _
derive instance repGenericDynamoOperation :: Generic DynamoOperation _
instance showDynamoOperation :: Show DynamoOperation where show = genericShow
instance decodeDynamoOperation :: Decode DynamoOperation where decode = genericDecode options
instance encodeDynamoOperation :: Encode DynamoOperation where encode = genericEncode options



newtype EffectivePolicies = EffectivePolicies (Array EffectivePolicy)
derive instance newtypeEffectivePolicies :: Newtype EffectivePolicies _
derive instance repGenericEffectivePolicies :: Generic EffectivePolicies _
instance showEffectivePolicies :: Show EffectivePolicies where show = genericShow
instance decodeEffectivePolicies :: Decode EffectivePolicies where decode = genericDecode options
instance encodeEffectivePolicies :: Encode EffectivePolicies where encode = genericEncode options



-- | <p>The policy that has the effect on the authorization results.</p>
newtype EffectivePolicy = EffectivePolicy 
  { "policyName" :: Maybe (PolicyName)
  , "policyArn" :: Maybe (PolicyArn)
  , "policyDocument" :: Maybe (PolicyDocument)
  }
derive instance newtypeEffectivePolicy :: Newtype EffectivePolicy _
derive instance repGenericEffectivePolicy :: Generic EffectivePolicy _
instance showEffectivePolicy :: Show EffectivePolicy where show = genericShow
instance decodeEffectivePolicy :: Decode EffectivePolicy where decode = genericDecode options
instance encodeEffectivePolicy :: Encode EffectivePolicy where encode = genericEncode options

-- | Constructs EffectivePolicy from required parameters
newEffectivePolicy :: EffectivePolicy
newEffectivePolicy  = EffectivePolicy { "policyArn": Nothing, "policyDocument": Nothing, "policyName": Nothing }

-- | Constructs EffectivePolicy's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newEffectivePolicy' :: ( { "policyName" :: Maybe (PolicyName) , "policyArn" :: Maybe (PolicyArn) , "policyDocument" :: Maybe (PolicyDocument) } -> {"policyName" :: Maybe (PolicyName) , "policyArn" :: Maybe (PolicyArn) , "policyDocument" :: Maybe (PolicyDocument) } ) -> EffectivePolicy
newEffectivePolicy'  customize = (EffectivePolicy <<< customize) { "policyArn": Nothing, "policyDocument": Nothing, "policyName": Nothing }



-- | <p>Describes an action that writes data to an Amazon Elasticsearch Service domain.</p>
newtype ElasticsearchAction = ElasticsearchAction 
  { "roleArn" :: (AwsArn)
  , "endpoint" :: (ElasticsearchEndpoint)
  , "index" :: (ElasticsearchIndex)
  , "type" :: (ElasticsearchType)
  , "id" :: (ElasticsearchId)
  }
derive instance newtypeElasticsearchAction :: Newtype ElasticsearchAction _
derive instance repGenericElasticsearchAction :: Generic ElasticsearchAction _
instance showElasticsearchAction :: Show ElasticsearchAction where show = genericShow
instance decodeElasticsearchAction :: Decode ElasticsearchAction where decode = genericDecode options
instance encodeElasticsearchAction :: Encode ElasticsearchAction where encode = genericEncode options

-- | Constructs ElasticsearchAction from required parameters
newElasticsearchAction :: ElasticsearchEndpoint -> ElasticsearchId -> ElasticsearchIndex -> AwsArn -> ElasticsearchType -> ElasticsearchAction
newElasticsearchAction _endpoint _id _index _roleArn _type = ElasticsearchAction { "endpoint": _endpoint, "id": _id, "index": _index, "roleArn": _roleArn, "type": _type }

-- | Constructs ElasticsearchAction's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newElasticsearchAction' :: ElasticsearchEndpoint -> ElasticsearchId -> ElasticsearchIndex -> AwsArn -> ElasticsearchType -> ( { "roleArn" :: (AwsArn) , "endpoint" :: (ElasticsearchEndpoint) , "index" :: (ElasticsearchIndex) , "type" :: (ElasticsearchType) , "id" :: (ElasticsearchId) } -> {"roleArn" :: (AwsArn) , "endpoint" :: (ElasticsearchEndpoint) , "index" :: (ElasticsearchIndex) , "type" :: (ElasticsearchType) , "id" :: (ElasticsearchId) } ) -> ElasticsearchAction
newElasticsearchAction' _endpoint _id _index _roleArn _type customize = (ElasticsearchAction <<< customize) { "endpoint": _endpoint, "id": _id, "index": _index, "roleArn": _roleArn, "type": _type }



newtype ElasticsearchEndpoint = ElasticsearchEndpoint String
derive instance newtypeElasticsearchEndpoint :: Newtype ElasticsearchEndpoint _
derive instance repGenericElasticsearchEndpoint :: Generic ElasticsearchEndpoint _
instance showElasticsearchEndpoint :: Show ElasticsearchEndpoint where show = genericShow
instance decodeElasticsearchEndpoint :: Decode ElasticsearchEndpoint where decode = genericDecode options
instance encodeElasticsearchEndpoint :: Encode ElasticsearchEndpoint where encode = genericEncode options



newtype ElasticsearchId = ElasticsearchId String
derive instance newtypeElasticsearchId :: Newtype ElasticsearchId _
derive instance repGenericElasticsearchId :: Generic ElasticsearchId _
instance showElasticsearchId :: Show ElasticsearchId where show = genericShow
instance decodeElasticsearchId :: Decode ElasticsearchId where decode = genericDecode options
instance encodeElasticsearchId :: Encode ElasticsearchId where encode = genericEncode options



newtype ElasticsearchIndex = ElasticsearchIndex String
derive instance newtypeElasticsearchIndex :: Newtype ElasticsearchIndex _
derive instance repGenericElasticsearchIndex :: Generic ElasticsearchIndex _
instance showElasticsearchIndex :: Show ElasticsearchIndex where show = genericShow
instance decodeElasticsearchIndex :: Decode ElasticsearchIndex where decode = genericDecode options
instance encodeElasticsearchIndex :: Encode ElasticsearchIndex where encode = genericEncode options



newtype ElasticsearchType = ElasticsearchType String
derive instance newtypeElasticsearchType :: Newtype ElasticsearchType _
derive instance repGenericElasticsearchType :: Generic ElasticsearchType _
instance showElasticsearchType :: Show ElasticsearchType where show = genericShow
instance decodeElasticsearchType :: Decode ElasticsearchType where decode = genericDecode options
instance encodeElasticsearchType :: Encode ElasticsearchType where encode = genericEncode options



-- | <p>The input for the EnableTopicRuleRequest operation.</p>
newtype EnableTopicRuleRequest = EnableTopicRuleRequest 
  { "ruleName" :: (RuleName)
  }
derive instance newtypeEnableTopicRuleRequest :: Newtype EnableTopicRuleRequest _
derive instance repGenericEnableTopicRuleRequest :: Generic EnableTopicRuleRequest _
instance showEnableTopicRuleRequest :: Show EnableTopicRuleRequest where show = genericShow
instance decodeEnableTopicRuleRequest :: Decode EnableTopicRuleRequest where decode = genericDecode options
instance encodeEnableTopicRuleRequest :: Encode EnableTopicRuleRequest where encode = genericEncode options

-- | Constructs EnableTopicRuleRequest from required parameters
newEnableTopicRuleRequest :: RuleName -> EnableTopicRuleRequest
newEnableTopicRuleRequest _ruleName = EnableTopicRuleRequest { "ruleName": _ruleName }

-- | Constructs EnableTopicRuleRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newEnableTopicRuleRequest' :: RuleName -> ( { "ruleName" :: (RuleName) } -> {"ruleName" :: (RuleName) } ) -> EnableTopicRuleRequest
newEnableTopicRuleRequest' _ruleName customize = (EnableTopicRuleRequest <<< customize) { "ruleName": _ruleName }



newtype Enabled = Enabled Boolean
derive instance newtypeEnabled :: Newtype Enabled _
derive instance repGenericEnabled :: Generic Enabled _
instance showEnabled :: Show Enabled where show = genericShow
instance decodeEnabled :: Decode Enabled where decode = genericDecode options
instance encodeEnabled :: Encode Enabled where encode = genericEncode options



newtype EndpointAddress = EndpointAddress String
derive instance newtypeEndpointAddress :: Newtype EndpointAddress _
derive instance repGenericEndpointAddress :: Generic EndpointAddress _
instance showEndpointAddress :: Show EndpointAddress where show = genericShow
instance decodeEndpointAddress :: Decode EndpointAddress where decode = genericDecode options
instance encodeEndpointAddress :: Encode EndpointAddress where encode = genericEncode options



newtype EndpointType = EndpointType String
derive instance newtypeEndpointType :: Newtype EndpointType _
derive instance repGenericEndpointType :: Generic EndpointType _
instance showEndpointType :: Show EndpointType where show = genericShow
instance decodeEndpointType :: Decode EndpointType where decode = genericDecode options
instance encodeEndpointType :: Encode EndpointType where encode = genericEncode options



-- | <p>Error information.</p>
newtype ErrorInfo = ErrorInfo 
  { "code" :: Maybe (Code)
  , "message" :: Maybe (OTAUpdateErrorMessage)
  }
derive instance newtypeErrorInfo :: Newtype ErrorInfo _
derive instance repGenericErrorInfo :: Generic ErrorInfo _
instance showErrorInfo :: Show ErrorInfo where show = genericShow
instance decodeErrorInfo :: Decode ErrorInfo where decode = genericDecode options
instance encodeErrorInfo :: Encode ErrorInfo where encode = genericEncode options

-- | Constructs ErrorInfo from required parameters
newErrorInfo :: ErrorInfo
newErrorInfo  = ErrorInfo { "code": Nothing, "message": Nothing }

-- | Constructs ErrorInfo's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newErrorInfo' :: ( { "code" :: Maybe (Code) , "message" :: Maybe (OTAUpdateErrorMessage) } -> {"code" :: Maybe (Code) , "message" :: Maybe (OTAUpdateErrorMessage) } ) -> ErrorInfo
newErrorInfo'  customize = (ErrorInfo <<< customize) { "code": Nothing, "message": Nothing }



newtype ErrorMessage = ErrorMessage String
derive instance newtypeErrorMessage :: Newtype ErrorMessage _
derive instance repGenericErrorMessage :: Generic ErrorMessage _
instance showErrorMessage :: Show ErrorMessage where show = genericShow
instance decodeErrorMessage :: Decode ErrorMessage where decode = genericDecode options
instance encodeErrorMessage :: Encode ErrorMessage where encode = genericEncode options



newtype EventConfigurations = EventConfigurations (StrMap.StrMap Configuration)
derive instance newtypeEventConfigurations :: Newtype EventConfigurations _
derive instance repGenericEventConfigurations :: Generic EventConfigurations _
instance showEventConfigurations :: Show EventConfigurations where show = genericShow
instance decodeEventConfigurations :: Decode EventConfigurations where decode = genericDecode options
instance encodeEventConfigurations :: Encode EventConfigurations where encode = genericEncode options



newtype EventType = EventType String
derive instance newtypeEventType :: Newtype EventType _
derive instance repGenericEventType :: Generic EventType _
instance showEventType :: Show EventType where show = genericShow
instance decodeEventType :: Decode EventType where decode = genericDecode options
instance encodeEventType :: Encode EventType where encode = genericEncode options



newtype ExecutionNumber = ExecutionNumber Number
derive instance newtypeExecutionNumber :: Newtype ExecutionNumber _
derive instance repGenericExecutionNumber :: Generic ExecutionNumber _
instance showExecutionNumber :: Show ExecutionNumber where show = genericShow
instance decodeExecutionNumber :: Decode ExecutionNumber where decode = genericDecode options
instance encodeExecutionNumber :: Encode ExecutionNumber where encode = genericEncode options



newtype ExpiresInSec = ExpiresInSec Number
derive instance newtypeExpiresInSec :: Newtype ExpiresInSec _
derive instance repGenericExpiresInSec :: Generic ExpiresInSec _
instance showExpiresInSec :: Show ExpiresInSec where show = genericShow
instance decodeExpiresInSec :: Decode ExpiresInSec where decode = genericDecode options
instance encodeExpiresInSec :: Encode ExpiresInSec where encode = genericEncode options



-- | <p>Information that explicitly denies authorization.</p>
newtype ExplicitDeny = ExplicitDeny 
  { "policies" :: Maybe (Policies)
  }
derive instance newtypeExplicitDeny :: Newtype ExplicitDeny _
derive instance repGenericExplicitDeny :: Generic ExplicitDeny _
instance showExplicitDeny :: Show ExplicitDeny where show = genericShow
instance decodeExplicitDeny :: Decode ExplicitDeny where decode = genericDecode options
instance encodeExplicitDeny :: Encode ExplicitDeny where encode = genericEncode options

-- | Constructs ExplicitDeny from required parameters
newExplicitDeny :: ExplicitDeny
newExplicitDeny  = ExplicitDeny { "policies": Nothing }

-- | Constructs ExplicitDeny's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newExplicitDeny' :: ( { "policies" :: Maybe (Policies) } -> {"policies" :: Maybe (Policies) } ) -> ExplicitDeny
newExplicitDeny'  customize = (ExplicitDeny <<< customize) { "policies": Nothing }



newtype FailedThings = FailedThings Int
derive instance newtypeFailedThings :: Newtype FailedThings _
derive instance repGenericFailedThings :: Generic FailedThings _
instance showFailedThings :: Show FailedThings where show = genericShow
instance decodeFailedThings :: Decode FailedThings where decode = genericDecode options
instance encodeFailedThings :: Encode FailedThings where encode = genericEncode options



newtype FileId = FileId Int
derive instance newtypeFileId :: Newtype FileId _
derive instance repGenericFileId :: Generic FileId _
instance showFileId :: Show FileId where show = genericShow
instance decodeFileId :: Decode FileId where decode = genericDecode options
instance encodeFileId :: Encode FileId where encode = genericEncode options



newtype FileName = FileName String
derive instance newtypeFileName :: Newtype FileName _
derive instance repGenericFileName :: Generic FileName _
instance showFileName :: Show FileName where show = genericShow
instance decodeFileName :: Decode FileName where decode = genericDecode options
instance encodeFileName :: Encode FileName where encode = genericEncode options



-- | <p>Describes an action that writes data to an Amazon Kinesis Firehose stream.</p>
newtype FirehoseAction = FirehoseAction 
  { "roleArn" :: (AwsArn)
  , "deliveryStreamName" :: (DeliveryStreamName)
  , "separator" :: Maybe (FirehoseSeparator)
  }
derive instance newtypeFirehoseAction :: Newtype FirehoseAction _
derive instance repGenericFirehoseAction :: Generic FirehoseAction _
instance showFirehoseAction :: Show FirehoseAction where show = genericShow
instance decodeFirehoseAction :: Decode FirehoseAction where decode = genericDecode options
instance encodeFirehoseAction :: Encode FirehoseAction where encode = genericEncode options

-- | Constructs FirehoseAction from required parameters
newFirehoseAction :: DeliveryStreamName -> AwsArn -> FirehoseAction
newFirehoseAction _deliveryStreamName _roleArn = FirehoseAction { "deliveryStreamName": _deliveryStreamName, "roleArn": _roleArn, "separator": Nothing }

-- | Constructs FirehoseAction's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newFirehoseAction' :: DeliveryStreamName -> AwsArn -> ( { "roleArn" :: (AwsArn) , "deliveryStreamName" :: (DeliveryStreamName) , "separator" :: Maybe (FirehoseSeparator) } -> {"roleArn" :: (AwsArn) , "deliveryStreamName" :: (DeliveryStreamName) , "separator" :: Maybe (FirehoseSeparator) } ) -> FirehoseAction
newFirehoseAction' _deliveryStreamName _roleArn customize = (FirehoseAction <<< customize) { "deliveryStreamName": _deliveryStreamName, "roleArn": _roleArn, "separator": Nothing }



newtype FirehoseSeparator = FirehoseSeparator String
derive instance newtypeFirehoseSeparator :: Newtype FirehoseSeparator _
derive instance repGenericFirehoseSeparator :: Generic FirehoseSeparator _
instance showFirehoseSeparator :: Show FirehoseSeparator where show = genericShow
instance decodeFirehoseSeparator :: Decode FirehoseSeparator where decode = genericDecode options
instance encodeFirehoseSeparator :: Encode FirehoseSeparator where encode = genericEncode options



newtype Flag = Flag Boolean
derive instance newtypeFlag :: Newtype Flag _
derive instance repGenericFlag :: Generic Flag _
instance showFlag :: Show Flag where show = genericShow
instance decodeFlag :: Decode Flag where decode = genericDecode options
instance encodeFlag :: Encode Flag where encode = genericEncode options



newtype ForceDelete = ForceDelete Boolean
derive instance newtypeForceDelete :: Newtype ForceDelete _
derive instance repGenericForceDelete :: Generic ForceDelete _
instance showForceDelete :: Show ForceDelete where show = genericShow
instance decodeForceDelete :: Decode ForceDelete where decode = genericDecode options
instance encodeForceDelete :: Encode ForceDelete where encode = genericEncode options



newtype FunctionArn = FunctionArn String
derive instance newtypeFunctionArn :: Newtype FunctionArn _
derive instance repGenericFunctionArn :: Generic FunctionArn _
instance showFunctionArn :: Show FunctionArn where show = genericShow
instance decodeFunctionArn :: Decode FunctionArn where decode = genericDecode options
instance encodeFunctionArn :: Encode FunctionArn where encode = genericEncode options



newtype GEMaxResults = GEMaxResults Int
derive instance newtypeGEMaxResults :: Newtype GEMaxResults _
derive instance repGenericGEMaxResults :: Generic GEMaxResults _
instance showGEMaxResults :: Show GEMaxResults where show = genericShow
instance decodeGEMaxResults :: Decode GEMaxResults where decode = genericDecode options
instance encodeGEMaxResults :: Encode GEMaxResults where encode = genericEncode options



newtype GetEffectivePoliciesRequest = GetEffectivePoliciesRequest 
  { "principal" :: Maybe (Principal)
  , "cognitoIdentityPoolId" :: Maybe (CognitoIdentityPoolId)
  , "thingName" :: Maybe (ThingName)
  }
derive instance newtypeGetEffectivePoliciesRequest :: Newtype GetEffectivePoliciesRequest _
derive instance repGenericGetEffectivePoliciesRequest :: Generic GetEffectivePoliciesRequest _
instance showGetEffectivePoliciesRequest :: Show GetEffectivePoliciesRequest where show = genericShow
instance decodeGetEffectivePoliciesRequest :: Decode GetEffectivePoliciesRequest where decode = genericDecode options
instance encodeGetEffectivePoliciesRequest :: Encode GetEffectivePoliciesRequest where encode = genericEncode options

-- | Constructs GetEffectivePoliciesRequest from required parameters
newGetEffectivePoliciesRequest :: GetEffectivePoliciesRequest
newGetEffectivePoliciesRequest  = GetEffectivePoliciesRequest { "cognitoIdentityPoolId": Nothing, "principal": Nothing, "thingName": Nothing }

-- | Constructs GetEffectivePoliciesRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGetEffectivePoliciesRequest' :: ( { "principal" :: Maybe (Principal) , "cognitoIdentityPoolId" :: Maybe (CognitoIdentityPoolId) , "thingName" :: Maybe (ThingName) } -> {"principal" :: Maybe (Principal) , "cognitoIdentityPoolId" :: Maybe (CognitoIdentityPoolId) , "thingName" :: Maybe (ThingName) } ) -> GetEffectivePoliciesRequest
newGetEffectivePoliciesRequest'  customize = (GetEffectivePoliciesRequest <<< customize) { "cognitoIdentityPoolId": Nothing, "principal": Nothing, "thingName": Nothing }



newtype GetEffectivePoliciesResponse = GetEffectivePoliciesResponse 
  { "effectivePolicies" :: Maybe (EffectivePolicies)
  }
derive instance newtypeGetEffectivePoliciesResponse :: Newtype GetEffectivePoliciesResponse _
derive instance repGenericGetEffectivePoliciesResponse :: Generic GetEffectivePoliciesResponse _
instance showGetEffectivePoliciesResponse :: Show GetEffectivePoliciesResponse where show = genericShow
instance decodeGetEffectivePoliciesResponse :: Decode GetEffectivePoliciesResponse where decode = genericDecode options
instance encodeGetEffectivePoliciesResponse :: Encode GetEffectivePoliciesResponse where encode = genericEncode options

-- | Constructs GetEffectivePoliciesResponse from required parameters
newGetEffectivePoliciesResponse :: GetEffectivePoliciesResponse
newGetEffectivePoliciesResponse  = GetEffectivePoliciesResponse { "effectivePolicies": Nothing }

-- | Constructs GetEffectivePoliciesResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGetEffectivePoliciesResponse' :: ( { "effectivePolicies" :: Maybe (EffectivePolicies) } -> {"effectivePolicies" :: Maybe (EffectivePolicies) } ) -> GetEffectivePoliciesResponse
newGetEffectivePoliciesResponse'  customize = (GetEffectivePoliciesResponse <<< customize) { "effectivePolicies": Nothing }



newtype GetIndexingConfigurationRequest = GetIndexingConfigurationRequest Types.NoArguments
derive instance newtypeGetIndexingConfigurationRequest :: Newtype GetIndexingConfigurationRequest _
derive instance repGenericGetIndexingConfigurationRequest :: Generic GetIndexingConfigurationRequest _
instance showGetIndexingConfigurationRequest :: Show GetIndexingConfigurationRequest where show = genericShow
instance decodeGetIndexingConfigurationRequest :: Decode GetIndexingConfigurationRequest where decode = genericDecode options
instance encodeGetIndexingConfigurationRequest :: Encode GetIndexingConfigurationRequest where encode = genericEncode options



newtype GetIndexingConfigurationResponse = GetIndexingConfigurationResponse 
  { "thingIndexingConfiguration" :: Maybe (ThingIndexingConfiguration)
  }
derive instance newtypeGetIndexingConfigurationResponse :: Newtype GetIndexingConfigurationResponse _
derive instance repGenericGetIndexingConfigurationResponse :: Generic GetIndexingConfigurationResponse _
instance showGetIndexingConfigurationResponse :: Show GetIndexingConfigurationResponse where show = genericShow
instance decodeGetIndexingConfigurationResponse :: Decode GetIndexingConfigurationResponse where decode = genericDecode options
instance encodeGetIndexingConfigurationResponse :: Encode GetIndexingConfigurationResponse where encode = genericEncode options

-- | Constructs GetIndexingConfigurationResponse from required parameters
newGetIndexingConfigurationResponse :: GetIndexingConfigurationResponse
newGetIndexingConfigurationResponse  = GetIndexingConfigurationResponse { "thingIndexingConfiguration": Nothing }

-- | Constructs GetIndexingConfigurationResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGetIndexingConfigurationResponse' :: ( { "thingIndexingConfiguration" :: Maybe (ThingIndexingConfiguration) } -> {"thingIndexingConfiguration" :: Maybe (ThingIndexingConfiguration) } ) -> GetIndexingConfigurationResponse
newGetIndexingConfigurationResponse'  customize = (GetIndexingConfigurationResponse <<< customize) { "thingIndexingConfiguration": Nothing }



newtype GetJobDocumentRequest = GetJobDocumentRequest 
  { "jobId" :: (JobId)
  }
derive instance newtypeGetJobDocumentRequest :: Newtype GetJobDocumentRequest _
derive instance repGenericGetJobDocumentRequest :: Generic GetJobDocumentRequest _
instance showGetJobDocumentRequest :: Show GetJobDocumentRequest where show = genericShow
instance decodeGetJobDocumentRequest :: Decode GetJobDocumentRequest where decode = genericDecode options
instance encodeGetJobDocumentRequest :: Encode GetJobDocumentRequest where encode = genericEncode options

-- | Constructs GetJobDocumentRequest from required parameters
newGetJobDocumentRequest :: JobId -> GetJobDocumentRequest
newGetJobDocumentRequest _jobId = GetJobDocumentRequest { "jobId": _jobId }

-- | Constructs GetJobDocumentRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGetJobDocumentRequest' :: JobId -> ( { "jobId" :: (JobId) } -> {"jobId" :: (JobId) } ) -> GetJobDocumentRequest
newGetJobDocumentRequest' _jobId customize = (GetJobDocumentRequest <<< customize) { "jobId": _jobId }



newtype GetJobDocumentResponse = GetJobDocumentResponse 
  { "document" :: Maybe (JobDocument)
  }
derive instance newtypeGetJobDocumentResponse :: Newtype GetJobDocumentResponse _
derive instance repGenericGetJobDocumentResponse :: Generic GetJobDocumentResponse _
instance showGetJobDocumentResponse :: Show GetJobDocumentResponse where show = genericShow
instance decodeGetJobDocumentResponse :: Decode GetJobDocumentResponse where decode = genericDecode options
instance encodeGetJobDocumentResponse :: Encode GetJobDocumentResponse where encode = genericEncode options

-- | Constructs GetJobDocumentResponse from required parameters
newGetJobDocumentResponse :: GetJobDocumentResponse
newGetJobDocumentResponse  = GetJobDocumentResponse { "document": Nothing }

-- | Constructs GetJobDocumentResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGetJobDocumentResponse' :: ( { "document" :: Maybe (JobDocument) } -> {"document" :: Maybe (JobDocument) } ) -> GetJobDocumentResponse
newGetJobDocumentResponse'  customize = (GetJobDocumentResponse <<< customize) { "document": Nothing }



-- | <p>The input for the GetLoggingOptions operation.</p>
newtype GetLoggingOptionsRequest = GetLoggingOptionsRequest Types.NoArguments
derive instance newtypeGetLoggingOptionsRequest :: Newtype GetLoggingOptionsRequest _
derive instance repGenericGetLoggingOptionsRequest :: Generic GetLoggingOptionsRequest _
instance showGetLoggingOptionsRequest :: Show GetLoggingOptionsRequest where show = genericShow
instance decodeGetLoggingOptionsRequest :: Decode GetLoggingOptionsRequest where decode = genericDecode options
instance encodeGetLoggingOptionsRequest :: Encode GetLoggingOptionsRequest where encode = genericEncode options



-- | <p>The output from the GetLoggingOptions operation.</p>
newtype GetLoggingOptionsResponse = GetLoggingOptionsResponse 
  { "roleArn" :: Maybe (AwsArn)
  , "logLevel" :: Maybe (LogLevel)
  }
derive instance newtypeGetLoggingOptionsResponse :: Newtype GetLoggingOptionsResponse _
derive instance repGenericGetLoggingOptionsResponse :: Generic GetLoggingOptionsResponse _
instance showGetLoggingOptionsResponse :: Show GetLoggingOptionsResponse where show = genericShow
instance decodeGetLoggingOptionsResponse :: Decode GetLoggingOptionsResponse where decode = genericDecode options
instance encodeGetLoggingOptionsResponse :: Encode GetLoggingOptionsResponse where encode = genericEncode options

-- | Constructs GetLoggingOptionsResponse from required parameters
newGetLoggingOptionsResponse :: GetLoggingOptionsResponse
newGetLoggingOptionsResponse  = GetLoggingOptionsResponse { "logLevel": Nothing, "roleArn": Nothing }

-- | Constructs GetLoggingOptionsResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGetLoggingOptionsResponse' :: ( { "roleArn" :: Maybe (AwsArn) , "logLevel" :: Maybe (LogLevel) } -> {"roleArn" :: Maybe (AwsArn) , "logLevel" :: Maybe (LogLevel) } ) -> GetLoggingOptionsResponse
newGetLoggingOptionsResponse'  customize = (GetLoggingOptionsResponse <<< customize) { "logLevel": Nothing, "roleArn": Nothing }



newtype GetOTAUpdateRequest = GetOTAUpdateRequest 
  { "otaUpdateId" :: (OTAUpdateId)
  }
derive instance newtypeGetOTAUpdateRequest :: Newtype GetOTAUpdateRequest _
derive instance repGenericGetOTAUpdateRequest :: Generic GetOTAUpdateRequest _
instance showGetOTAUpdateRequest :: Show GetOTAUpdateRequest where show = genericShow
instance decodeGetOTAUpdateRequest :: Decode GetOTAUpdateRequest where decode = genericDecode options
instance encodeGetOTAUpdateRequest :: Encode GetOTAUpdateRequest where encode = genericEncode options

-- | Constructs GetOTAUpdateRequest from required parameters
newGetOTAUpdateRequest :: OTAUpdateId -> GetOTAUpdateRequest
newGetOTAUpdateRequest _otaUpdateId = GetOTAUpdateRequest { "otaUpdateId": _otaUpdateId }

-- | Constructs GetOTAUpdateRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGetOTAUpdateRequest' :: OTAUpdateId -> ( { "otaUpdateId" :: (OTAUpdateId) } -> {"otaUpdateId" :: (OTAUpdateId) } ) -> GetOTAUpdateRequest
newGetOTAUpdateRequest' _otaUpdateId customize = (GetOTAUpdateRequest <<< customize) { "otaUpdateId": _otaUpdateId }



newtype GetOTAUpdateResponse = GetOTAUpdateResponse 
  { "otaUpdateInfo" :: Maybe (OTAUpdateInfo)
  }
derive instance newtypeGetOTAUpdateResponse :: Newtype GetOTAUpdateResponse _
derive instance repGenericGetOTAUpdateResponse :: Generic GetOTAUpdateResponse _
instance showGetOTAUpdateResponse :: Show GetOTAUpdateResponse where show = genericShow
instance decodeGetOTAUpdateResponse :: Decode GetOTAUpdateResponse where decode = genericDecode options
instance encodeGetOTAUpdateResponse :: Encode GetOTAUpdateResponse where encode = genericEncode options

-- | Constructs GetOTAUpdateResponse from required parameters
newGetOTAUpdateResponse :: GetOTAUpdateResponse
newGetOTAUpdateResponse  = GetOTAUpdateResponse { "otaUpdateInfo": Nothing }

-- | Constructs GetOTAUpdateResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGetOTAUpdateResponse' :: ( { "otaUpdateInfo" :: Maybe (OTAUpdateInfo) } -> {"otaUpdateInfo" :: Maybe (OTAUpdateInfo) } ) -> GetOTAUpdateResponse
newGetOTAUpdateResponse'  customize = (GetOTAUpdateResponse <<< customize) { "otaUpdateInfo": Nothing }



-- | <p>The input for the GetPolicy operation.</p>
newtype GetPolicyRequest = GetPolicyRequest 
  { "policyName" :: (PolicyName)
  }
derive instance newtypeGetPolicyRequest :: Newtype GetPolicyRequest _
derive instance repGenericGetPolicyRequest :: Generic GetPolicyRequest _
instance showGetPolicyRequest :: Show GetPolicyRequest where show = genericShow
instance decodeGetPolicyRequest :: Decode GetPolicyRequest where decode = genericDecode options
instance encodeGetPolicyRequest :: Encode GetPolicyRequest where encode = genericEncode options

-- | Constructs GetPolicyRequest from required parameters
newGetPolicyRequest :: PolicyName -> GetPolicyRequest
newGetPolicyRequest _policyName = GetPolicyRequest { "policyName": _policyName }

-- | Constructs GetPolicyRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGetPolicyRequest' :: PolicyName -> ( { "policyName" :: (PolicyName) } -> {"policyName" :: (PolicyName) } ) -> GetPolicyRequest
newGetPolicyRequest' _policyName customize = (GetPolicyRequest <<< customize) { "policyName": _policyName }



-- | <p>The output from the GetPolicy operation.</p>
newtype GetPolicyResponse = GetPolicyResponse 
  { "policyName" :: Maybe (PolicyName)
  , "policyArn" :: Maybe (PolicyArn)
  , "policyDocument" :: Maybe (PolicyDocument)
  , "defaultVersionId" :: Maybe (PolicyVersionId)
  }
derive instance newtypeGetPolicyResponse :: Newtype GetPolicyResponse _
derive instance repGenericGetPolicyResponse :: Generic GetPolicyResponse _
instance showGetPolicyResponse :: Show GetPolicyResponse where show = genericShow
instance decodeGetPolicyResponse :: Decode GetPolicyResponse where decode = genericDecode options
instance encodeGetPolicyResponse :: Encode GetPolicyResponse where encode = genericEncode options

-- | Constructs GetPolicyResponse from required parameters
newGetPolicyResponse :: GetPolicyResponse
newGetPolicyResponse  = GetPolicyResponse { "defaultVersionId": Nothing, "policyArn": Nothing, "policyDocument": Nothing, "policyName": Nothing }

-- | Constructs GetPolicyResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGetPolicyResponse' :: ( { "policyName" :: Maybe (PolicyName) , "policyArn" :: Maybe (PolicyArn) , "policyDocument" :: Maybe (PolicyDocument) , "defaultVersionId" :: Maybe (PolicyVersionId) } -> {"policyName" :: Maybe (PolicyName) , "policyArn" :: Maybe (PolicyArn) , "policyDocument" :: Maybe (PolicyDocument) , "defaultVersionId" :: Maybe (PolicyVersionId) } ) -> GetPolicyResponse
newGetPolicyResponse'  customize = (GetPolicyResponse <<< customize) { "defaultVersionId": Nothing, "policyArn": Nothing, "policyDocument": Nothing, "policyName": Nothing }



-- | <p>The input for the GetPolicyVersion operation.</p>
newtype GetPolicyVersionRequest = GetPolicyVersionRequest 
  { "policyName" :: (PolicyName)
  , "policyVersionId" :: (PolicyVersionId)
  }
derive instance newtypeGetPolicyVersionRequest :: Newtype GetPolicyVersionRequest _
derive instance repGenericGetPolicyVersionRequest :: Generic GetPolicyVersionRequest _
instance showGetPolicyVersionRequest :: Show GetPolicyVersionRequest where show = genericShow
instance decodeGetPolicyVersionRequest :: Decode GetPolicyVersionRequest where decode = genericDecode options
instance encodeGetPolicyVersionRequest :: Encode GetPolicyVersionRequest where encode = genericEncode options

-- | Constructs GetPolicyVersionRequest from required parameters
newGetPolicyVersionRequest :: PolicyName -> PolicyVersionId -> GetPolicyVersionRequest
newGetPolicyVersionRequest _policyName _policyVersionId = GetPolicyVersionRequest { "policyName": _policyName, "policyVersionId": _policyVersionId }

-- | Constructs GetPolicyVersionRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGetPolicyVersionRequest' :: PolicyName -> PolicyVersionId -> ( { "policyName" :: (PolicyName) , "policyVersionId" :: (PolicyVersionId) } -> {"policyName" :: (PolicyName) , "policyVersionId" :: (PolicyVersionId) } ) -> GetPolicyVersionRequest
newGetPolicyVersionRequest' _policyName _policyVersionId customize = (GetPolicyVersionRequest <<< customize) { "policyName": _policyName, "policyVersionId": _policyVersionId }



-- | <p>The output from the GetPolicyVersion operation.</p>
newtype GetPolicyVersionResponse = GetPolicyVersionResponse 
  { "policyArn" :: Maybe (PolicyArn)
  , "policyName" :: Maybe (PolicyName)
  , "policyDocument" :: Maybe (PolicyDocument)
  , "policyVersionId" :: Maybe (PolicyVersionId)
  , "isDefaultVersion" :: Maybe (IsDefaultVersion)
  }
derive instance newtypeGetPolicyVersionResponse :: Newtype GetPolicyVersionResponse _
derive instance repGenericGetPolicyVersionResponse :: Generic GetPolicyVersionResponse _
instance showGetPolicyVersionResponse :: Show GetPolicyVersionResponse where show = genericShow
instance decodeGetPolicyVersionResponse :: Decode GetPolicyVersionResponse where decode = genericDecode options
instance encodeGetPolicyVersionResponse :: Encode GetPolicyVersionResponse where encode = genericEncode options

-- | Constructs GetPolicyVersionResponse from required parameters
newGetPolicyVersionResponse :: GetPolicyVersionResponse
newGetPolicyVersionResponse  = GetPolicyVersionResponse { "isDefaultVersion": Nothing, "policyArn": Nothing, "policyDocument": Nothing, "policyName": Nothing, "policyVersionId": Nothing }

-- | Constructs GetPolicyVersionResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGetPolicyVersionResponse' :: ( { "policyArn" :: Maybe (PolicyArn) , "policyName" :: Maybe (PolicyName) , "policyDocument" :: Maybe (PolicyDocument) , "policyVersionId" :: Maybe (PolicyVersionId) , "isDefaultVersion" :: Maybe (IsDefaultVersion) } -> {"policyArn" :: Maybe (PolicyArn) , "policyName" :: Maybe (PolicyName) , "policyDocument" :: Maybe (PolicyDocument) , "policyVersionId" :: Maybe (PolicyVersionId) , "isDefaultVersion" :: Maybe (IsDefaultVersion) } ) -> GetPolicyVersionResponse
newGetPolicyVersionResponse'  customize = (GetPolicyVersionResponse <<< customize) { "isDefaultVersion": Nothing, "policyArn": Nothing, "policyDocument": Nothing, "policyName": Nothing, "policyVersionId": Nothing }



-- | <p>The input to the GetRegistrationCode operation.</p>
newtype GetRegistrationCodeRequest = GetRegistrationCodeRequest Types.NoArguments
derive instance newtypeGetRegistrationCodeRequest :: Newtype GetRegistrationCodeRequest _
derive instance repGenericGetRegistrationCodeRequest :: Generic GetRegistrationCodeRequest _
instance showGetRegistrationCodeRequest :: Show GetRegistrationCodeRequest where show = genericShow
instance decodeGetRegistrationCodeRequest :: Decode GetRegistrationCodeRequest where decode = genericDecode options
instance encodeGetRegistrationCodeRequest :: Encode GetRegistrationCodeRequest where encode = genericEncode options



-- | <p>The output from the GetRegistrationCode operation.</p>
newtype GetRegistrationCodeResponse = GetRegistrationCodeResponse 
  { "registrationCode" :: Maybe (RegistrationCode)
  }
derive instance newtypeGetRegistrationCodeResponse :: Newtype GetRegistrationCodeResponse _
derive instance repGenericGetRegistrationCodeResponse :: Generic GetRegistrationCodeResponse _
instance showGetRegistrationCodeResponse :: Show GetRegistrationCodeResponse where show = genericShow
instance decodeGetRegistrationCodeResponse :: Decode GetRegistrationCodeResponse where decode = genericDecode options
instance encodeGetRegistrationCodeResponse :: Encode GetRegistrationCodeResponse where encode = genericEncode options

-- | Constructs GetRegistrationCodeResponse from required parameters
newGetRegistrationCodeResponse :: GetRegistrationCodeResponse
newGetRegistrationCodeResponse  = GetRegistrationCodeResponse { "registrationCode": Nothing }

-- | Constructs GetRegistrationCodeResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGetRegistrationCodeResponse' :: ( { "registrationCode" :: Maybe (RegistrationCode) } -> {"registrationCode" :: Maybe (RegistrationCode) } ) -> GetRegistrationCodeResponse
newGetRegistrationCodeResponse'  customize = (GetRegistrationCodeResponse <<< customize) { "registrationCode": Nothing }



-- | <p>The input for the GetTopicRule operation.</p>
newtype GetTopicRuleRequest = GetTopicRuleRequest 
  { "ruleName" :: (RuleName)
  }
derive instance newtypeGetTopicRuleRequest :: Newtype GetTopicRuleRequest _
derive instance repGenericGetTopicRuleRequest :: Generic GetTopicRuleRequest _
instance showGetTopicRuleRequest :: Show GetTopicRuleRequest where show = genericShow
instance decodeGetTopicRuleRequest :: Decode GetTopicRuleRequest where decode = genericDecode options
instance encodeGetTopicRuleRequest :: Encode GetTopicRuleRequest where encode = genericEncode options

-- | Constructs GetTopicRuleRequest from required parameters
newGetTopicRuleRequest :: RuleName -> GetTopicRuleRequest
newGetTopicRuleRequest _ruleName = GetTopicRuleRequest { "ruleName": _ruleName }

-- | Constructs GetTopicRuleRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGetTopicRuleRequest' :: RuleName -> ( { "ruleName" :: (RuleName) } -> {"ruleName" :: (RuleName) } ) -> GetTopicRuleRequest
newGetTopicRuleRequest' _ruleName customize = (GetTopicRuleRequest <<< customize) { "ruleName": _ruleName }



-- | <p>The output from the GetTopicRule operation.</p>
newtype GetTopicRuleResponse = GetTopicRuleResponse 
  { "ruleArn" :: Maybe (RuleArn)
  , "rule" :: Maybe (TopicRule)
  }
derive instance newtypeGetTopicRuleResponse :: Newtype GetTopicRuleResponse _
derive instance repGenericGetTopicRuleResponse :: Generic GetTopicRuleResponse _
instance showGetTopicRuleResponse :: Show GetTopicRuleResponse where show = genericShow
instance decodeGetTopicRuleResponse :: Decode GetTopicRuleResponse where decode = genericDecode options
instance encodeGetTopicRuleResponse :: Encode GetTopicRuleResponse where encode = genericEncode options

-- | Constructs GetTopicRuleResponse from required parameters
newGetTopicRuleResponse :: GetTopicRuleResponse
newGetTopicRuleResponse  = GetTopicRuleResponse { "rule": Nothing, "ruleArn": Nothing }

-- | Constructs GetTopicRuleResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGetTopicRuleResponse' :: ( { "ruleArn" :: Maybe (RuleArn) , "rule" :: Maybe (TopicRule) } -> {"ruleArn" :: Maybe (RuleArn) , "rule" :: Maybe (TopicRule) } ) -> GetTopicRuleResponse
newGetTopicRuleResponse'  customize = (GetTopicRuleResponse <<< customize) { "rule": Nothing, "ruleArn": Nothing }



newtype GetV2LoggingOptionsRequest = GetV2LoggingOptionsRequest Types.NoArguments
derive instance newtypeGetV2LoggingOptionsRequest :: Newtype GetV2LoggingOptionsRequest _
derive instance repGenericGetV2LoggingOptionsRequest :: Generic GetV2LoggingOptionsRequest _
instance showGetV2LoggingOptionsRequest :: Show GetV2LoggingOptionsRequest where show = genericShow
instance decodeGetV2LoggingOptionsRequest :: Decode GetV2LoggingOptionsRequest where decode = genericDecode options
instance encodeGetV2LoggingOptionsRequest :: Encode GetV2LoggingOptionsRequest where encode = genericEncode options



newtype GetV2LoggingOptionsResponse = GetV2LoggingOptionsResponse 
  { "roleArn" :: Maybe (AwsArn)
  , "defaultLogLevel" :: Maybe (LogLevel)
  , "disableAllLogs" :: Maybe (DisableAllLogs)
  }
derive instance newtypeGetV2LoggingOptionsResponse :: Newtype GetV2LoggingOptionsResponse _
derive instance repGenericGetV2LoggingOptionsResponse :: Generic GetV2LoggingOptionsResponse _
instance showGetV2LoggingOptionsResponse :: Show GetV2LoggingOptionsResponse where show = genericShow
instance decodeGetV2LoggingOptionsResponse :: Decode GetV2LoggingOptionsResponse where decode = genericDecode options
instance encodeGetV2LoggingOptionsResponse :: Encode GetV2LoggingOptionsResponse where encode = genericEncode options

-- | Constructs GetV2LoggingOptionsResponse from required parameters
newGetV2LoggingOptionsResponse :: GetV2LoggingOptionsResponse
newGetV2LoggingOptionsResponse  = GetV2LoggingOptionsResponse { "defaultLogLevel": Nothing, "disableAllLogs": Nothing, "roleArn": Nothing }

-- | Constructs GetV2LoggingOptionsResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGetV2LoggingOptionsResponse' :: ( { "roleArn" :: Maybe (AwsArn) , "defaultLogLevel" :: Maybe (LogLevel) , "disableAllLogs" :: Maybe (DisableAllLogs) } -> {"roleArn" :: Maybe (AwsArn) , "defaultLogLevel" :: Maybe (LogLevel) , "disableAllLogs" :: Maybe (DisableAllLogs) } ) -> GetV2LoggingOptionsResponse
newGetV2LoggingOptionsResponse'  customize = (GetV2LoggingOptionsResponse <<< customize) { "defaultLogLevel": Nothing, "disableAllLogs": Nothing, "roleArn": Nothing }



-- | <p>The name and ARN of a group.</p>
newtype GroupNameAndArn = GroupNameAndArn 
  { "groupName" :: Maybe (ThingGroupName)
  , "groupArn" :: Maybe (ThingGroupArn)
  }
derive instance newtypeGroupNameAndArn :: Newtype GroupNameAndArn _
derive instance repGenericGroupNameAndArn :: Generic GroupNameAndArn _
instance showGroupNameAndArn :: Show GroupNameAndArn where show = genericShow
instance decodeGroupNameAndArn :: Decode GroupNameAndArn where decode = genericDecode options
instance encodeGroupNameAndArn :: Encode GroupNameAndArn where encode = genericEncode options

-- | Constructs GroupNameAndArn from required parameters
newGroupNameAndArn :: GroupNameAndArn
newGroupNameAndArn  = GroupNameAndArn { "groupArn": Nothing, "groupName": Nothing }

-- | Constructs GroupNameAndArn's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGroupNameAndArn' :: ( { "groupName" :: Maybe (ThingGroupName) , "groupArn" :: Maybe (ThingGroupArn) } -> {"groupName" :: Maybe (ThingGroupName) , "groupArn" :: Maybe (ThingGroupArn) } ) -> GroupNameAndArn
newGroupNameAndArn'  customize = (GroupNameAndArn <<< customize) { "groupArn": Nothing, "groupName": Nothing }



newtype HashAlgorithm = HashAlgorithm String
derive instance newtypeHashAlgorithm :: Newtype HashAlgorithm _
derive instance repGenericHashAlgorithm :: Generic HashAlgorithm _
instance showHashAlgorithm :: Show HashAlgorithm where show = genericShow
instance decodeHashAlgorithm :: Decode HashAlgorithm where decode = genericDecode options
instance encodeHashAlgorithm :: Encode HashAlgorithm where encode = genericEncode options



newtype HashKeyField = HashKeyField String
derive instance newtypeHashKeyField :: Newtype HashKeyField _
derive instance repGenericHashKeyField :: Generic HashKeyField _
instance showHashKeyField :: Show HashKeyField where show = genericShow
instance decodeHashKeyField :: Decode HashKeyField where decode = genericDecode options
instance encodeHashKeyField :: Encode HashKeyField where encode = genericEncode options



newtype HashKeyValue = HashKeyValue String
derive instance newtypeHashKeyValue :: Newtype HashKeyValue _
derive instance repGenericHashKeyValue :: Generic HashKeyValue _
instance showHashKeyValue :: Show HashKeyValue where show = genericShow
instance decodeHashKeyValue :: Decode HashKeyValue where decode = genericDecode options
instance encodeHashKeyValue :: Encode HashKeyValue where encode = genericEncode options



-- | <p>Information that implicitly denies authorization. When policy doesn't explicitly deny or allow an action on a resource it is considered an implicit deny.</p>
newtype ImplicitDeny = ImplicitDeny 
  { "policies" :: Maybe (Policies)
  }
derive instance newtypeImplicitDeny :: Newtype ImplicitDeny _
derive instance repGenericImplicitDeny :: Generic ImplicitDeny _
instance showImplicitDeny :: Show ImplicitDeny where show = genericShow
instance decodeImplicitDeny :: Decode ImplicitDeny where decode = genericDecode options
instance encodeImplicitDeny :: Encode ImplicitDeny where encode = genericEncode options

-- | Constructs ImplicitDeny from required parameters
newImplicitDeny :: ImplicitDeny
newImplicitDeny  = ImplicitDeny { "policies": Nothing }

-- | Constructs ImplicitDeny's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newImplicitDeny' :: ( { "policies" :: Maybe (Policies) } -> {"policies" :: Maybe (Policies) } ) -> ImplicitDeny
newImplicitDeny'  customize = (ImplicitDeny <<< customize) { "policies": Nothing }



newtype InProgressThings = InProgressThings Int
derive instance newtypeInProgressThings :: Newtype InProgressThings _
derive instance repGenericInProgressThings :: Generic InProgressThings _
instance showInProgressThings :: Show InProgressThings where show = genericShow
instance decodeInProgressThings :: Decode InProgressThings where decode = genericDecode options
instance encodeInProgressThings :: Encode InProgressThings where encode = genericEncode options



newtype IndexName = IndexName String
derive instance newtypeIndexName :: Newtype IndexName _
derive instance repGenericIndexName :: Generic IndexName _
instance showIndexName :: Show IndexName where show = genericShow
instance decodeIndexName :: Decode IndexName where decode = genericDecode options
instance encodeIndexName :: Encode IndexName where encode = genericEncode options



newtype IndexNamesList = IndexNamesList (Array IndexName)
derive instance newtypeIndexNamesList :: Newtype IndexNamesList _
derive instance repGenericIndexNamesList :: Generic IndexNamesList _
instance showIndexNamesList :: Show IndexNamesList where show = genericShow
instance decodeIndexNamesList :: Decode IndexNamesList where decode = genericDecode options
instance encodeIndexNamesList :: Encode IndexNamesList where encode = genericEncode options



-- | <p>The index is not ready.</p>
newtype IndexNotReadyException = IndexNotReadyException 
  { "message" :: Maybe (ErrorMessage')
  }
derive instance newtypeIndexNotReadyException :: Newtype IndexNotReadyException _
derive instance repGenericIndexNotReadyException :: Generic IndexNotReadyException _
instance showIndexNotReadyException :: Show IndexNotReadyException where show = genericShow
instance decodeIndexNotReadyException :: Decode IndexNotReadyException where decode = genericDecode options
instance encodeIndexNotReadyException :: Encode IndexNotReadyException where encode = genericEncode options

-- | Constructs IndexNotReadyException from required parameters
newIndexNotReadyException :: IndexNotReadyException
newIndexNotReadyException  = IndexNotReadyException { "message": Nothing }

-- | Constructs IndexNotReadyException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newIndexNotReadyException' :: ( { "message" :: Maybe (ErrorMessage') } -> {"message" :: Maybe (ErrorMessage') } ) -> IndexNotReadyException
newIndexNotReadyException'  customize = (IndexNotReadyException <<< customize) { "message": Nothing }



newtype IndexSchema = IndexSchema String
derive instance newtypeIndexSchema :: Newtype IndexSchema _
derive instance repGenericIndexSchema :: Generic IndexSchema _
instance showIndexSchema :: Show IndexSchema where show = genericShow
instance decodeIndexSchema :: Decode IndexSchema where decode = genericDecode options
instance encodeIndexSchema :: Encode IndexSchema where encode = genericEncode options



newtype IndexStatus = IndexStatus String
derive instance newtypeIndexStatus :: Newtype IndexStatus _
derive instance repGenericIndexStatus :: Generic IndexStatus _
instance showIndexStatus :: Show IndexStatus where show = genericShow
instance decodeIndexStatus :: Decode IndexStatus where decode = genericDecode options
instance encodeIndexStatus :: Encode IndexStatus where encode = genericEncode options



newtype InlineDocument = InlineDocument String
derive instance newtypeInlineDocument :: Newtype InlineDocument _
derive instance repGenericInlineDocument :: Generic InlineDocument _
instance showInlineDocument :: Show InlineDocument where show = genericShow
instance decodeInlineDocument :: Decode InlineDocument where decode = genericDecode options
instance encodeInlineDocument :: Encode InlineDocument where encode = genericEncode options



-- | <p>An unexpected error has occurred.</p>
newtype InternalException = InternalException 
  { "message" :: Maybe (ErrorMessage')
  }
derive instance newtypeInternalException :: Newtype InternalException _
derive instance repGenericInternalException :: Generic InternalException _
instance showInternalException :: Show InternalException where show = genericShow
instance decodeInternalException :: Decode InternalException where decode = genericDecode options
instance encodeInternalException :: Encode InternalException where encode = genericEncode options

-- | Constructs InternalException from required parameters
newInternalException :: InternalException
newInternalException  = InternalException { "message": Nothing }

-- | Constructs InternalException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newInternalException' :: ( { "message" :: Maybe (ErrorMessage') } -> {"message" :: Maybe (ErrorMessage') } ) -> InternalException
newInternalException'  customize = (InternalException <<< customize) { "message": Nothing }



-- | <p>An unexpected error has occurred.</p>
newtype InternalFailureException = InternalFailureException 
  { "message" :: Maybe (ErrorMessage')
  }
derive instance newtypeInternalFailureException :: Newtype InternalFailureException _
derive instance repGenericInternalFailureException :: Generic InternalFailureException _
instance showInternalFailureException :: Show InternalFailureException where show = genericShow
instance decodeInternalFailureException :: Decode InternalFailureException where decode = genericDecode options
instance encodeInternalFailureException :: Encode InternalFailureException where encode = genericEncode options

-- | Constructs InternalFailureException from required parameters
newInternalFailureException :: InternalFailureException
newInternalFailureException  = InternalFailureException { "message": Nothing }

-- | Constructs InternalFailureException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newInternalFailureException' :: ( { "message" :: Maybe (ErrorMessage') } -> {"message" :: Maybe (ErrorMessage') } ) -> InternalFailureException
newInternalFailureException'  customize = (InternalFailureException <<< customize) { "message": Nothing }



-- | <p>The query is invalid.</p>
newtype InvalidQueryException = InvalidQueryException 
  { "message" :: Maybe (ErrorMessage')
  }
derive instance newtypeInvalidQueryException :: Newtype InvalidQueryException _
derive instance repGenericInvalidQueryException :: Generic InvalidQueryException _
instance showInvalidQueryException :: Show InvalidQueryException where show = genericShow
instance decodeInvalidQueryException :: Decode InvalidQueryException where decode = genericDecode options
instance encodeInvalidQueryException :: Encode InvalidQueryException where encode = genericEncode options

-- | Constructs InvalidQueryException from required parameters
newInvalidQueryException :: InvalidQueryException
newInvalidQueryException  = InvalidQueryException { "message": Nothing }

-- | Constructs InvalidQueryException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newInvalidQueryException' :: ( { "message" :: Maybe (ErrorMessage') } -> {"message" :: Maybe (ErrorMessage') } ) -> InvalidQueryException
newInvalidQueryException'  customize = (InvalidQueryException <<< customize) { "message": Nothing }



-- | <p>The request is not valid.</p>
newtype InvalidRequestException = InvalidRequestException 
  { "message" :: Maybe (ErrorMessage')
  }
derive instance newtypeInvalidRequestException :: Newtype InvalidRequestException _
derive instance repGenericInvalidRequestException :: Generic InvalidRequestException _
instance showInvalidRequestException :: Show InvalidRequestException where show = genericShow
instance decodeInvalidRequestException :: Decode InvalidRequestException where decode = genericDecode options
instance encodeInvalidRequestException :: Encode InvalidRequestException where encode = genericEncode options

-- | Constructs InvalidRequestException from required parameters
newInvalidRequestException :: InvalidRequestException
newInvalidRequestException  = InvalidRequestException { "message": Nothing }

-- | Constructs InvalidRequestException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newInvalidRequestException' :: ( { "message" :: Maybe (ErrorMessage') } -> {"message" :: Maybe (ErrorMessage') } ) -> InvalidRequestException
newInvalidRequestException'  customize = (InvalidRequestException <<< customize) { "message": Nothing }



-- | <p>The response is invalid.</p>
newtype InvalidResponseException = InvalidResponseException 
  { "message" :: Maybe (ErrorMessage')
  }
derive instance newtypeInvalidResponseException :: Newtype InvalidResponseException _
derive instance repGenericInvalidResponseException :: Generic InvalidResponseException _
instance showInvalidResponseException :: Show InvalidResponseException where show = genericShow
instance decodeInvalidResponseException :: Decode InvalidResponseException where decode = genericDecode options
instance encodeInvalidResponseException :: Encode InvalidResponseException where encode = genericEncode options

-- | Constructs InvalidResponseException from required parameters
newInvalidResponseException :: InvalidResponseException
newInvalidResponseException  = InvalidResponseException { "message": Nothing }

-- | Constructs InvalidResponseException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newInvalidResponseException' :: ( { "message" :: Maybe (ErrorMessage') } -> {"message" :: Maybe (ErrorMessage') } ) -> InvalidResponseException
newInvalidResponseException'  customize = (InvalidResponseException <<< customize) { "message": Nothing }



newtype IsAuthenticated = IsAuthenticated Boolean
derive instance newtypeIsAuthenticated :: Newtype IsAuthenticated _
derive instance repGenericIsAuthenticated :: Generic IsAuthenticated _
instance showIsAuthenticated :: Show IsAuthenticated where show = genericShow
instance decodeIsAuthenticated :: Decode IsAuthenticated where decode = genericDecode options
instance encodeIsAuthenticated :: Encode IsAuthenticated where encode = genericEncode options



newtype IsDefaultVersion = IsDefaultVersion Boolean
derive instance newtypeIsDefaultVersion :: Newtype IsDefaultVersion _
derive instance repGenericIsDefaultVersion :: Generic IsDefaultVersion _
instance showIsDefaultVersion :: Show IsDefaultVersion where show = genericShow
instance decodeIsDefaultVersion :: Decode IsDefaultVersion where decode = genericDecode options
instance encodeIsDefaultVersion :: Encode IsDefaultVersion where encode = genericEncode options



newtype IsDisabled = IsDisabled Boolean
derive instance newtypeIsDisabled :: Newtype IsDisabled _
derive instance repGenericIsDisabled :: Generic IsDisabled _
instance showIsDisabled :: Show IsDisabled where show = genericShow
instance decodeIsDisabled :: Decode IsDisabled where decode = genericDecode options
instance encodeIsDisabled :: Encode IsDisabled where encode = genericEncode options



-- | <p>The <code>Job</code> object contains details about a job.</p>
newtype Job = Job 
  { "jobArn" :: Maybe (JobArn)
  , "jobId" :: Maybe (JobId)
  , "targetSelection" :: Maybe (TargetSelection)
  , "status" :: Maybe (JobStatus)
  , "comment" :: Maybe (Comment)
  , "targets" :: Maybe (JobTargets)
  , "description" :: Maybe (JobDescription)
  , "presignedUrlConfig" :: Maybe (PresignedUrlConfig)
  , "jobExecutionsRolloutConfig" :: Maybe (JobExecutionsRolloutConfig)
  , "createdAt" :: Maybe (DateType)
  , "lastUpdatedAt" :: Maybe (DateType)
  , "completedAt" :: Maybe (DateType)
  , "jobProcessDetails" :: Maybe (JobProcessDetails)
  , "documentParameters" :: Maybe (JobDocumentParameters)
  }
derive instance newtypeJob :: Newtype Job _
derive instance repGenericJob :: Generic Job _
instance showJob :: Show Job where show = genericShow
instance decodeJob :: Decode Job where decode = genericDecode options
instance encodeJob :: Encode Job where encode = genericEncode options

-- | Constructs Job from required parameters
newJob :: Job
newJob  = Job { "comment": Nothing, "completedAt": Nothing, "createdAt": Nothing, "description": Nothing, "documentParameters": Nothing, "jobArn": Nothing, "jobExecutionsRolloutConfig": Nothing, "jobId": Nothing, "jobProcessDetails": Nothing, "lastUpdatedAt": Nothing, "presignedUrlConfig": Nothing, "status": Nothing, "targetSelection": Nothing, "targets": Nothing }

-- | Constructs Job's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newJob' :: ( { "jobArn" :: Maybe (JobArn) , "jobId" :: Maybe (JobId) , "targetSelection" :: Maybe (TargetSelection) , "status" :: Maybe (JobStatus) , "comment" :: Maybe (Comment) , "targets" :: Maybe (JobTargets) , "description" :: Maybe (JobDescription) , "presignedUrlConfig" :: Maybe (PresignedUrlConfig) , "jobExecutionsRolloutConfig" :: Maybe (JobExecutionsRolloutConfig) , "createdAt" :: Maybe (DateType) , "lastUpdatedAt" :: Maybe (DateType) , "completedAt" :: Maybe (DateType) , "jobProcessDetails" :: Maybe (JobProcessDetails) , "documentParameters" :: Maybe (JobDocumentParameters) } -> {"jobArn" :: Maybe (JobArn) , "jobId" :: Maybe (JobId) , "targetSelection" :: Maybe (TargetSelection) , "status" :: Maybe (JobStatus) , "comment" :: Maybe (Comment) , "targets" :: Maybe (JobTargets) , "description" :: Maybe (JobDescription) , "presignedUrlConfig" :: Maybe (PresignedUrlConfig) , "jobExecutionsRolloutConfig" :: Maybe (JobExecutionsRolloutConfig) , "createdAt" :: Maybe (DateType) , "lastUpdatedAt" :: Maybe (DateType) , "completedAt" :: Maybe (DateType) , "jobProcessDetails" :: Maybe (JobProcessDetails) , "documentParameters" :: Maybe (JobDocumentParameters) } ) -> Job
newJob'  customize = (Job <<< customize) { "comment": Nothing, "completedAt": Nothing, "createdAt": Nothing, "description": Nothing, "documentParameters": Nothing, "jobArn": Nothing, "jobExecutionsRolloutConfig": Nothing, "jobId": Nothing, "jobProcessDetails": Nothing, "lastUpdatedAt": Nothing, "presignedUrlConfig": Nothing, "status": Nothing, "targetSelection": Nothing, "targets": Nothing }



newtype JobArn = JobArn String
derive instance newtypeJobArn :: Newtype JobArn _
derive instance repGenericJobArn :: Generic JobArn _
instance showJobArn :: Show JobArn where show = genericShow
instance decodeJobArn :: Decode JobArn where decode = genericDecode options
instance encodeJobArn :: Encode JobArn where encode = genericEncode options



newtype JobDescription = JobDescription String
derive instance newtypeJobDescription :: Newtype JobDescription _
derive instance repGenericJobDescription :: Generic JobDescription _
instance showJobDescription :: Show JobDescription where show = genericShow
instance decodeJobDescription :: Decode JobDescription where decode = genericDecode options
instance encodeJobDescription :: Encode JobDescription where encode = genericEncode options



newtype JobDocument = JobDocument String
derive instance newtypeJobDocument :: Newtype JobDocument _
derive instance repGenericJobDocument :: Generic JobDocument _
instance showJobDocument :: Show JobDocument where show = genericShow
instance decodeJobDocument :: Decode JobDocument where decode = genericDecode options
instance encodeJobDocument :: Encode JobDocument where encode = genericEncode options



newtype JobDocumentParameters = JobDocumentParameters (StrMap.StrMap ParameterValue)
derive instance newtypeJobDocumentParameters :: Newtype JobDocumentParameters _
derive instance repGenericJobDocumentParameters :: Generic JobDocumentParameters _
instance showJobDocumentParameters :: Show JobDocumentParameters where show = genericShow
instance decodeJobDocumentParameters :: Decode JobDocumentParameters where decode = genericDecode options
instance encodeJobDocumentParameters :: Encode JobDocumentParameters where encode = genericEncode options



newtype JobDocumentSource = JobDocumentSource String
derive instance newtypeJobDocumentSource :: Newtype JobDocumentSource _
derive instance repGenericJobDocumentSource :: Generic JobDocumentSource _
instance showJobDocumentSource :: Show JobDocumentSource where show = genericShow
instance decodeJobDocumentSource :: Decode JobDocumentSource where decode = genericDecode options
instance encodeJobDocumentSource :: Encode JobDocumentSource where encode = genericEncode options



-- | <p>The job execution object represents the execution of a job on a particular device.</p>
newtype JobExecution = JobExecution 
  { "jobId" :: Maybe (JobId)
  , "status" :: Maybe (JobExecutionStatus)
  , "statusDetails" :: Maybe (JobExecutionStatusDetails)
  , "thingArn" :: Maybe (ThingArn)
  , "queuedAt" :: Maybe (DateType)
  , "startedAt" :: Maybe (DateType)
  , "lastUpdatedAt" :: Maybe (DateType)
  , "executionNumber" :: Maybe (ExecutionNumber)
  }
derive instance newtypeJobExecution :: Newtype JobExecution _
derive instance repGenericJobExecution :: Generic JobExecution _
instance showJobExecution :: Show JobExecution where show = genericShow
instance decodeJobExecution :: Decode JobExecution where decode = genericDecode options
instance encodeJobExecution :: Encode JobExecution where encode = genericEncode options

-- | Constructs JobExecution from required parameters
newJobExecution :: JobExecution
newJobExecution  = JobExecution { "executionNumber": Nothing, "jobId": Nothing, "lastUpdatedAt": Nothing, "queuedAt": Nothing, "startedAt": Nothing, "status": Nothing, "statusDetails": Nothing, "thingArn": Nothing }

-- | Constructs JobExecution's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newJobExecution' :: ( { "jobId" :: Maybe (JobId) , "status" :: Maybe (JobExecutionStatus) , "statusDetails" :: Maybe (JobExecutionStatusDetails) , "thingArn" :: Maybe (ThingArn) , "queuedAt" :: Maybe (DateType) , "startedAt" :: Maybe (DateType) , "lastUpdatedAt" :: Maybe (DateType) , "executionNumber" :: Maybe (ExecutionNumber) } -> {"jobId" :: Maybe (JobId) , "status" :: Maybe (JobExecutionStatus) , "statusDetails" :: Maybe (JobExecutionStatusDetails) , "thingArn" :: Maybe (ThingArn) , "queuedAt" :: Maybe (DateType) , "startedAt" :: Maybe (DateType) , "lastUpdatedAt" :: Maybe (DateType) , "executionNumber" :: Maybe (ExecutionNumber) } ) -> JobExecution
newJobExecution'  customize = (JobExecution <<< customize) { "executionNumber": Nothing, "jobId": Nothing, "lastUpdatedAt": Nothing, "queuedAt": Nothing, "startedAt": Nothing, "status": Nothing, "statusDetails": Nothing, "thingArn": Nothing }



newtype JobExecutionStatus = JobExecutionStatus String
derive instance newtypeJobExecutionStatus :: Newtype JobExecutionStatus _
derive instance repGenericJobExecutionStatus :: Generic JobExecutionStatus _
instance showJobExecutionStatus :: Show JobExecutionStatus where show = genericShow
instance decodeJobExecutionStatus :: Decode JobExecutionStatus where decode = genericDecode options
instance encodeJobExecutionStatus :: Encode JobExecutionStatus where encode = genericEncode options



-- | <p>Details of the job execution status.</p>
newtype JobExecutionStatusDetails = JobExecutionStatusDetails 
  { "detailsMap" :: Maybe (DetailsMap)
  }
derive instance newtypeJobExecutionStatusDetails :: Newtype JobExecutionStatusDetails _
derive instance repGenericJobExecutionStatusDetails :: Generic JobExecutionStatusDetails _
instance showJobExecutionStatusDetails :: Show JobExecutionStatusDetails where show = genericShow
instance decodeJobExecutionStatusDetails :: Decode JobExecutionStatusDetails where decode = genericDecode options
instance encodeJobExecutionStatusDetails :: Encode JobExecutionStatusDetails where encode = genericEncode options

-- | Constructs JobExecutionStatusDetails from required parameters
newJobExecutionStatusDetails :: JobExecutionStatusDetails
newJobExecutionStatusDetails  = JobExecutionStatusDetails { "detailsMap": Nothing }

-- | Constructs JobExecutionStatusDetails's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newJobExecutionStatusDetails' :: ( { "detailsMap" :: Maybe (DetailsMap) } -> {"detailsMap" :: Maybe (DetailsMap) } ) -> JobExecutionStatusDetails
newJobExecutionStatusDetails'  customize = (JobExecutionStatusDetails <<< customize) { "detailsMap": Nothing }



-- | <p>The job execution summary.</p>
newtype JobExecutionSummary = JobExecutionSummary 
  { "status" :: Maybe (JobExecutionStatus)
  , "queuedAt" :: Maybe (DateType)
  , "startedAt" :: Maybe (DateType)
  , "lastUpdatedAt" :: Maybe (DateType)
  , "executionNumber" :: Maybe (ExecutionNumber)
  }
derive instance newtypeJobExecutionSummary :: Newtype JobExecutionSummary _
derive instance repGenericJobExecutionSummary :: Generic JobExecutionSummary _
instance showJobExecutionSummary :: Show JobExecutionSummary where show = genericShow
instance decodeJobExecutionSummary :: Decode JobExecutionSummary where decode = genericDecode options
instance encodeJobExecutionSummary :: Encode JobExecutionSummary where encode = genericEncode options

-- | Constructs JobExecutionSummary from required parameters
newJobExecutionSummary :: JobExecutionSummary
newJobExecutionSummary  = JobExecutionSummary { "executionNumber": Nothing, "lastUpdatedAt": Nothing, "queuedAt": Nothing, "startedAt": Nothing, "status": Nothing }

-- | Constructs JobExecutionSummary's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newJobExecutionSummary' :: ( { "status" :: Maybe (JobExecutionStatus) , "queuedAt" :: Maybe (DateType) , "startedAt" :: Maybe (DateType) , "lastUpdatedAt" :: Maybe (DateType) , "executionNumber" :: Maybe (ExecutionNumber) } -> {"status" :: Maybe (JobExecutionStatus) , "queuedAt" :: Maybe (DateType) , "startedAt" :: Maybe (DateType) , "lastUpdatedAt" :: Maybe (DateType) , "executionNumber" :: Maybe (ExecutionNumber) } ) -> JobExecutionSummary
newJobExecutionSummary'  customize = (JobExecutionSummary <<< customize) { "executionNumber": Nothing, "lastUpdatedAt": Nothing, "queuedAt": Nothing, "startedAt": Nothing, "status": Nothing }



-- | <p>Contains a summary of information about job executions for a specific job.</p>
newtype JobExecutionSummaryForJob = JobExecutionSummaryForJob 
  { "thingArn" :: Maybe (ThingArn)
  , "jobExecutionSummary" :: Maybe (JobExecutionSummary)
  }
derive instance newtypeJobExecutionSummaryForJob :: Newtype JobExecutionSummaryForJob _
derive instance repGenericJobExecutionSummaryForJob :: Generic JobExecutionSummaryForJob _
instance showJobExecutionSummaryForJob :: Show JobExecutionSummaryForJob where show = genericShow
instance decodeJobExecutionSummaryForJob :: Decode JobExecutionSummaryForJob where decode = genericDecode options
instance encodeJobExecutionSummaryForJob :: Encode JobExecutionSummaryForJob where encode = genericEncode options

-- | Constructs JobExecutionSummaryForJob from required parameters
newJobExecutionSummaryForJob :: JobExecutionSummaryForJob
newJobExecutionSummaryForJob  = JobExecutionSummaryForJob { "jobExecutionSummary": Nothing, "thingArn": Nothing }

-- | Constructs JobExecutionSummaryForJob's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newJobExecutionSummaryForJob' :: ( { "thingArn" :: Maybe (ThingArn) , "jobExecutionSummary" :: Maybe (JobExecutionSummary) } -> {"thingArn" :: Maybe (ThingArn) , "jobExecutionSummary" :: Maybe (JobExecutionSummary) } ) -> JobExecutionSummaryForJob
newJobExecutionSummaryForJob'  customize = (JobExecutionSummaryForJob <<< customize) { "jobExecutionSummary": Nothing, "thingArn": Nothing }



newtype JobExecutionSummaryForJobList = JobExecutionSummaryForJobList (Array JobExecutionSummaryForJob)
derive instance newtypeJobExecutionSummaryForJobList :: Newtype JobExecutionSummaryForJobList _
derive instance repGenericJobExecutionSummaryForJobList :: Generic JobExecutionSummaryForJobList _
instance showJobExecutionSummaryForJobList :: Show JobExecutionSummaryForJobList where show = genericShow
instance decodeJobExecutionSummaryForJobList :: Decode JobExecutionSummaryForJobList where decode = genericDecode options
instance encodeJobExecutionSummaryForJobList :: Encode JobExecutionSummaryForJobList where encode = genericEncode options



-- | <p>The job execution summary for a thing.</p>
newtype JobExecutionSummaryForThing = JobExecutionSummaryForThing 
  { "jobId" :: Maybe (JobId)
  , "jobExecutionSummary" :: Maybe (JobExecutionSummary)
  }
derive instance newtypeJobExecutionSummaryForThing :: Newtype JobExecutionSummaryForThing _
derive instance repGenericJobExecutionSummaryForThing :: Generic JobExecutionSummaryForThing _
instance showJobExecutionSummaryForThing :: Show JobExecutionSummaryForThing where show = genericShow
instance decodeJobExecutionSummaryForThing :: Decode JobExecutionSummaryForThing where decode = genericDecode options
instance encodeJobExecutionSummaryForThing :: Encode JobExecutionSummaryForThing where encode = genericEncode options

-- | Constructs JobExecutionSummaryForThing from required parameters
newJobExecutionSummaryForThing :: JobExecutionSummaryForThing
newJobExecutionSummaryForThing  = JobExecutionSummaryForThing { "jobExecutionSummary": Nothing, "jobId": Nothing }

-- | Constructs JobExecutionSummaryForThing's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newJobExecutionSummaryForThing' :: ( { "jobId" :: Maybe (JobId) , "jobExecutionSummary" :: Maybe (JobExecutionSummary) } -> {"jobId" :: Maybe (JobId) , "jobExecutionSummary" :: Maybe (JobExecutionSummary) } ) -> JobExecutionSummaryForThing
newJobExecutionSummaryForThing'  customize = (JobExecutionSummaryForThing <<< customize) { "jobExecutionSummary": Nothing, "jobId": Nothing }



newtype JobExecutionSummaryForThingList = JobExecutionSummaryForThingList (Array JobExecutionSummaryForThing)
derive instance newtypeJobExecutionSummaryForThingList :: Newtype JobExecutionSummaryForThingList _
derive instance repGenericJobExecutionSummaryForThingList :: Generic JobExecutionSummaryForThingList _
instance showJobExecutionSummaryForThingList :: Show JobExecutionSummaryForThingList where show = genericShow
instance decodeJobExecutionSummaryForThingList :: Decode JobExecutionSummaryForThingList where decode = genericDecode options
instance encodeJobExecutionSummaryForThingList :: Encode JobExecutionSummaryForThingList where encode = genericEncode options



-- | <p>Allows you to create a staged rollout of a job.</p>
newtype JobExecutionsRolloutConfig = JobExecutionsRolloutConfig 
  { "maximumPerMinute" :: Maybe (MaxJobExecutionsPerMin)
  }
derive instance newtypeJobExecutionsRolloutConfig :: Newtype JobExecutionsRolloutConfig _
derive instance repGenericJobExecutionsRolloutConfig :: Generic JobExecutionsRolloutConfig _
instance showJobExecutionsRolloutConfig :: Show JobExecutionsRolloutConfig where show = genericShow
instance decodeJobExecutionsRolloutConfig :: Decode JobExecutionsRolloutConfig where decode = genericDecode options
instance encodeJobExecutionsRolloutConfig :: Encode JobExecutionsRolloutConfig where encode = genericEncode options

-- | Constructs JobExecutionsRolloutConfig from required parameters
newJobExecutionsRolloutConfig :: JobExecutionsRolloutConfig
newJobExecutionsRolloutConfig  = JobExecutionsRolloutConfig { "maximumPerMinute": Nothing }

-- | Constructs JobExecutionsRolloutConfig's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newJobExecutionsRolloutConfig' :: ( { "maximumPerMinute" :: Maybe (MaxJobExecutionsPerMin) } -> {"maximumPerMinute" :: Maybe (MaxJobExecutionsPerMin) } ) -> JobExecutionsRolloutConfig
newJobExecutionsRolloutConfig'  customize = (JobExecutionsRolloutConfig <<< customize) { "maximumPerMinute": Nothing }



newtype JobId = JobId String
derive instance newtypeJobId :: Newtype JobId _
derive instance repGenericJobId :: Generic JobId _
instance showJobId :: Show JobId where show = genericShow
instance decodeJobId :: Decode JobId where decode = genericDecode options
instance encodeJobId :: Encode JobId where encode = genericEncode options



-- | <p>The job process details.</p>
newtype JobProcessDetails = JobProcessDetails 
  { "processingTargets" :: Maybe (ProcessingTargetNameList)
  , "numberOfCanceledThings" :: Maybe (CanceledThings)
  , "numberOfSucceededThings" :: Maybe (SucceededThings)
  , "numberOfFailedThings" :: Maybe (FailedThings)
  , "numberOfRejectedThings" :: Maybe (RejectedThings)
  , "numberOfQueuedThings" :: Maybe (QueuedThings)
  , "numberOfInProgressThings" :: Maybe (InProgressThings)
  , "numberOfRemovedThings" :: Maybe (RemovedThings)
  }
derive instance newtypeJobProcessDetails :: Newtype JobProcessDetails _
derive instance repGenericJobProcessDetails :: Generic JobProcessDetails _
instance showJobProcessDetails :: Show JobProcessDetails where show = genericShow
instance decodeJobProcessDetails :: Decode JobProcessDetails where decode = genericDecode options
instance encodeJobProcessDetails :: Encode JobProcessDetails where encode = genericEncode options

-- | Constructs JobProcessDetails from required parameters
newJobProcessDetails :: JobProcessDetails
newJobProcessDetails  = JobProcessDetails { "numberOfCanceledThings": Nothing, "numberOfFailedThings": Nothing, "numberOfInProgressThings": Nothing, "numberOfQueuedThings": Nothing, "numberOfRejectedThings": Nothing, "numberOfRemovedThings": Nothing, "numberOfSucceededThings": Nothing, "processingTargets": Nothing }

-- | Constructs JobProcessDetails's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newJobProcessDetails' :: ( { "processingTargets" :: Maybe (ProcessingTargetNameList) , "numberOfCanceledThings" :: Maybe (CanceledThings) , "numberOfSucceededThings" :: Maybe (SucceededThings) , "numberOfFailedThings" :: Maybe (FailedThings) , "numberOfRejectedThings" :: Maybe (RejectedThings) , "numberOfQueuedThings" :: Maybe (QueuedThings) , "numberOfInProgressThings" :: Maybe (InProgressThings) , "numberOfRemovedThings" :: Maybe (RemovedThings) } -> {"processingTargets" :: Maybe (ProcessingTargetNameList) , "numberOfCanceledThings" :: Maybe (CanceledThings) , "numberOfSucceededThings" :: Maybe (SucceededThings) , "numberOfFailedThings" :: Maybe (FailedThings) , "numberOfRejectedThings" :: Maybe (RejectedThings) , "numberOfQueuedThings" :: Maybe (QueuedThings) , "numberOfInProgressThings" :: Maybe (InProgressThings) , "numberOfRemovedThings" :: Maybe (RemovedThings) } ) -> JobProcessDetails
newJobProcessDetails'  customize = (JobProcessDetails <<< customize) { "numberOfCanceledThings": Nothing, "numberOfFailedThings": Nothing, "numberOfInProgressThings": Nothing, "numberOfQueuedThings": Nothing, "numberOfRejectedThings": Nothing, "numberOfRemovedThings": Nothing, "numberOfSucceededThings": Nothing, "processingTargets": Nothing }



newtype JobStatus = JobStatus String
derive instance newtypeJobStatus :: Newtype JobStatus _
derive instance repGenericJobStatus :: Generic JobStatus _
instance showJobStatus :: Show JobStatus where show = genericShow
instance decodeJobStatus :: Decode JobStatus where decode = genericDecode options
instance encodeJobStatus :: Encode JobStatus where encode = genericEncode options



-- | <p>The job summary.</p>
newtype JobSummary = JobSummary 
  { "jobArn" :: Maybe (JobArn)
  , "jobId" :: Maybe (JobId)
  , "thingGroupId" :: Maybe (ThingGroupId)
  , "targetSelection" :: Maybe (TargetSelection)
  , "status" :: Maybe (JobStatus)
  , "createdAt" :: Maybe (DateType)
  , "lastUpdatedAt" :: Maybe (DateType)
  , "completedAt" :: Maybe (DateType)
  }
derive instance newtypeJobSummary :: Newtype JobSummary _
derive instance repGenericJobSummary :: Generic JobSummary _
instance showJobSummary :: Show JobSummary where show = genericShow
instance decodeJobSummary :: Decode JobSummary where decode = genericDecode options
instance encodeJobSummary :: Encode JobSummary where encode = genericEncode options

-- | Constructs JobSummary from required parameters
newJobSummary :: JobSummary
newJobSummary  = JobSummary { "completedAt": Nothing, "createdAt": Nothing, "jobArn": Nothing, "jobId": Nothing, "lastUpdatedAt": Nothing, "status": Nothing, "targetSelection": Nothing, "thingGroupId": Nothing }

-- | Constructs JobSummary's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newJobSummary' :: ( { "jobArn" :: Maybe (JobArn) , "jobId" :: Maybe (JobId) , "thingGroupId" :: Maybe (ThingGroupId) , "targetSelection" :: Maybe (TargetSelection) , "status" :: Maybe (JobStatus) , "createdAt" :: Maybe (DateType) , "lastUpdatedAt" :: Maybe (DateType) , "completedAt" :: Maybe (DateType) } -> {"jobArn" :: Maybe (JobArn) , "jobId" :: Maybe (JobId) , "thingGroupId" :: Maybe (ThingGroupId) , "targetSelection" :: Maybe (TargetSelection) , "status" :: Maybe (JobStatus) , "createdAt" :: Maybe (DateType) , "lastUpdatedAt" :: Maybe (DateType) , "completedAt" :: Maybe (DateType) } ) -> JobSummary
newJobSummary'  customize = (JobSummary <<< customize) { "completedAt": Nothing, "createdAt": Nothing, "jobArn": Nothing, "jobId": Nothing, "lastUpdatedAt": Nothing, "status": Nothing, "targetSelection": Nothing, "thingGroupId": Nothing }



newtype JobSummaryList = JobSummaryList (Array JobSummary)
derive instance newtypeJobSummaryList :: Newtype JobSummaryList _
derive instance repGenericJobSummaryList :: Generic JobSummaryList _
instance showJobSummaryList :: Show JobSummaryList where show = genericShow
instance decodeJobSummaryList :: Decode JobSummaryList where decode = genericDecode options
instance encodeJobSummaryList :: Encode JobSummaryList where encode = genericEncode options



newtype JobTargets = JobTargets (Array TargetArn)
derive instance newtypeJobTargets :: Newtype JobTargets _
derive instance repGenericJobTargets :: Generic JobTargets _
instance showJobTargets :: Show JobTargets where show = genericShow
instance decodeJobTargets :: Decode JobTargets where decode = genericDecode options
instance encodeJobTargets :: Encode JobTargets where encode = genericEncode options



newtype JsonDocument = JsonDocument String
derive instance newtypeJsonDocument :: Newtype JsonDocument _
derive instance repGenericJsonDocument :: Generic JsonDocument _
instance showJsonDocument :: Show JsonDocument where show = genericShow
instance decodeJsonDocument :: Decode JsonDocument where decode = genericDecode options
instance encodeJsonDocument :: Encode JsonDocument where encode = genericEncode options



newtype Key = Key String
derive instance newtypeKey :: Newtype Key _
derive instance repGenericKey :: Generic Key _
instance showKey :: Show Key where show = genericShow
instance decodeKey :: Decode Key where decode = genericDecode options
instance encodeKey :: Encode Key where encode = genericEncode options



newtype KeyName = KeyName String
derive instance newtypeKeyName :: Newtype KeyName _
derive instance repGenericKeyName :: Generic KeyName _
instance showKeyName :: Show KeyName where show = genericShow
instance decodeKeyName :: Decode KeyName where decode = genericDecode options
instance encodeKeyName :: Encode KeyName where encode = genericEncode options



-- | <p>Describes a key pair.</p>
newtype KeyPair = KeyPair 
  { "PublicKey" :: Maybe (PublicKey)
  , "PrivateKey" :: Maybe (PrivateKey)
  }
derive instance newtypeKeyPair :: Newtype KeyPair _
derive instance repGenericKeyPair :: Generic KeyPair _
instance showKeyPair :: Show KeyPair where show = genericShow
instance decodeKeyPair :: Decode KeyPair where decode = genericDecode options
instance encodeKeyPair :: Encode KeyPair where encode = genericEncode options

-- | Constructs KeyPair from required parameters
newKeyPair :: KeyPair
newKeyPair  = KeyPair { "PrivateKey": Nothing, "PublicKey": Nothing }

-- | Constructs KeyPair's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newKeyPair' :: ( { "PublicKey" :: Maybe (PublicKey) , "PrivateKey" :: Maybe (PrivateKey) } -> {"PublicKey" :: Maybe (PublicKey) , "PrivateKey" :: Maybe (PrivateKey) } ) -> KeyPair
newKeyPair'  customize = (KeyPair <<< customize) { "PrivateKey": Nothing, "PublicKey": Nothing }



newtype KeyValue = KeyValue String
derive instance newtypeKeyValue :: Newtype KeyValue _
derive instance repGenericKeyValue :: Generic KeyValue _
instance showKeyValue :: Show KeyValue where show = genericShow
instance decodeKeyValue :: Decode KeyValue where decode = genericDecode options
instance encodeKeyValue :: Encode KeyValue where encode = genericEncode options



-- | <p>Describes an action to write data to an Amazon Kinesis stream.</p>
newtype KinesisAction = KinesisAction 
  { "roleArn" :: (AwsArn)
  , "streamName" :: (StreamName)
  , "partitionKey" :: Maybe (PartitionKey)
  }
derive instance newtypeKinesisAction :: Newtype KinesisAction _
derive instance repGenericKinesisAction :: Generic KinesisAction _
instance showKinesisAction :: Show KinesisAction where show = genericShow
instance decodeKinesisAction :: Decode KinesisAction where decode = genericDecode options
instance encodeKinesisAction :: Encode KinesisAction where encode = genericEncode options

-- | Constructs KinesisAction from required parameters
newKinesisAction :: AwsArn -> StreamName -> KinesisAction
newKinesisAction _roleArn _streamName = KinesisAction { "roleArn": _roleArn, "streamName": _streamName, "partitionKey": Nothing }

-- | Constructs KinesisAction's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newKinesisAction' :: AwsArn -> StreamName -> ( { "roleArn" :: (AwsArn) , "streamName" :: (StreamName) , "partitionKey" :: Maybe (PartitionKey) } -> {"roleArn" :: (AwsArn) , "streamName" :: (StreamName) , "partitionKey" :: Maybe (PartitionKey) } ) -> KinesisAction
newKinesisAction' _roleArn _streamName customize = (KinesisAction <<< customize) { "roleArn": _roleArn, "streamName": _streamName, "partitionKey": Nothing }



-- | <p>Describes an action to invoke a Lambda function.</p>
newtype LambdaAction = LambdaAction 
  { "functionArn" :: (FunctionArn)
  }
derive instance newtypeLambdaAction :: Newtype LambdaAction _
derive instance repGenericLambdaAction :: Generic LambdaAction _
instance showLambdaAction :: Show LambdaAction where show = genericShow
instance decodeLambdaAction :: Decode LambdaAction where decode = genericDecode options
instance encodeLambdaAction :: Encode LambdaAction where encode = genericEncode options

-- | Constructs LambdaAction from required parameters
newLambdaAction :: FunctionArn -> LambdaAction
newLambdaAction _functionArn = LambdaAction { "functionArn": _functionArn }

-- | Constructs LambdaAction's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newLambdaAction' :: FunctionArn -> ( { "functionArn" :: (FunctionArn) } -> {"functionArn" :: (FunctionArn) } ) -> LambdaAction
newLambdaAction' _functionArn customize = (LambdaAction <<< customize) { "functionArn": _functionArn }



newtype LaserMaxResults = LaserMaxResults Int
derive instance newtypeLaserMaxResults :: Newtype LaserMaxResults _
derive instance repGenericLaserMaxResults :: Generic LaserMaxResults _
instance showLaserMaxResults :: Show LaserMaxResults where show = genericShow
instance decodeLaserMaxResults :: Decode LaserMaxResults where decode = genericDecode options
instance encodeLaserMaxResults :: Encode LaserMaxResults where encode = genericEncode options



newtype LastModifiedDate = LastModifiedDate Types.Timestamp
derive instance newtypeLastModifiedDate :: Newtype LastModifiedDate _
derive instance repGenericLastModifiedDate :: Generic LastModifiedDate _
instance showLastModifiedDate :: Show LastModifiedDate where show = genericShow
instance decodeLastModifiedDate :: Decode LastModifiedDate where decode = genericDecode options
instance encodeLastModifiedDate :: Encode LastModifiedDate where encode = genericEncode options



-- | <p>The number of attached entities exceeds the limit.</p>
newtype LimitExceededException = LimitExceededException 
  { "message" :: Maybe (ErrorMessage')
  }
derive instance newtypeLimitExceededException :: Newtype LimitExceededException _
derive instance repGenericLimitExceededException :: Generic LimitExceededException _
instance showLimitExceededException :: Show LimitExceededException where show = genericShow
instance decodeLimitExceededException :: Decode LimitExceededException where decode = genericDecode options
instance encodeLimitExceededException :: Encode LimitExceededException where encode = genericEncode options

-- | Constructs LimitExceededException from required parameters
newLimitExceededException :: LimitExceededException
newLimitExceededException  = LimitExceededException { "message": Nothing }

-- | Constructs LimitExceededException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newLimitExceededException' :: ( { "message" :: Maybe (ErrorMessage') } -> {"message" :: Maybe (ErrorMessage') } ) -> LimitExceededException
newLimitExceededException'  customize = (LimitExceededException <<< customize) { "message": Nothing }



newtype ListAttachedPoliciesRequest = ListAttachedPoliciesRequest 
  { "target" :: (PolicyTarget)
  , "recursive" :: Maybe (Recursive)
  , "marker" :: Maybe (Marker)
  , "pageSize" :: Maybe (PageSize)
  }
derive instance newtypeListAttachedPoliciesRequest :: Newtype ListAttachedPoliciesRequest _
derive instance repGenericListAttachedPoliciesRequest :: Generic ListAttachedPoliciesRequest _
instance showListAttachedPoliciesRequest :: Show ListAttachedPoliciesRequest where show = genericShow
instance decodeListAttachedPoliciesRequest :: Decode ListAttachedPoliciesRequest where decode = genericDecode options
instance encodeListAttachedPoliciesRequest :: Encode ListAttachedPoliciesRequest where encode = genericEncode options

-- | Constructs ListAttachedPoliciesRequest from required parameters
newListAttachedPoliciesRequest :: PolicyTarget -> ListAttachedPoliciesRequest
newListAttachedPoliciesRequest _target = ListAttachedPoliciesRequest { "target": _target, "marker": Nothing, "pageSize": Nothing, "recursive": Nothing }

-- | Constructs ListAttachedPoliciesRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListAttachedPoliciesRequest' :: PolicyTarget -> ( { "target" :: (PolicyTarget) , "recursive" :: Maybe (Recursive) , "marker" :: Maybe (Marker) , "pageSize" :: Maybe (PageSize) } -> {"target" :: (PolicyTarget) , "recursive" :: Maybe (Recursive) , "marker" :: Maybe (Marker) , "pageSize" :: Maybe (PageSize) } ) -> ListAttachedPoliciesRequest
newListAttachedPoliciesRequest' _target customize = (ListAttachedPoliciesRequest <<< customize) { "target": _target, "marker": Nothing, "pageSize": Nothing, "recursive": Nothing }



newtype ListAttachedPoliciesResponse = ListAttachedPoliciesResponse 
  { "policies" :: Maybe (Policies)
  , "nextMarker" :: Maybe (Marker)
  }
derive instance newtypeListAttachedPoliciesResponse :: Newtype ListAttachedPoliciesResponse _
derive instance repGenericListAttachedPoliciesResponse :: Generic ListAttachedPoliciesResponse _
instance showListAttachedPoliciesResponse :: Show ListAttachedPoliciesResponse where show = genericShow
instance decodeListAttachedPoliciesResponse :: Decode ListAttachedPoliciesResponse where decode = genericDecode options
instance encodeListAttachedPoliciesResponse :: Encode ListAttachedPoliciesResponse where encode = genericEncode options

-- | Constructs ListAttachedPoliciesResponse from required parameters
newListAttachedPoliciesResponse :: ListAttachedPoliciesResponse
newListAttachedPoliciesResponse  = ListAttachedPoliciesResponse { "nextMarker": Nothing, "policies": Nothing }

-- | Constructs ListAttachedPoliciesResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListAttachedPoliciesResponse' :: ( { "policies" :: Maybe (Policies) , "nextMarker" :: Maybe (Marker) } -> {"policies" :: Maybe (Policies) , "nextMarker" :: Maybe (Marker) } ) -> ListAttachedPoliciesResponse
newListAttachedPoliciesResponse'  customize = (ListAttachedPoliciesResponse <<< customize) { "nextMarker": Nothing, "policies": Nothing }



newtype ListAuthorizersRequest = ListAuthorizersRequest 
  { "pageSize" :: Maybe (PageSize)
  , "marker" :: Maybe (Marker)
  , "ascendingOrder" :: Maybe (AscendingOrder)
  , "status" :: Maybe (AuthorizerStatus)
  }
derive instance newtypeListAuthorizersRequest :: Newtype ListAuthorizersRequest _
derive instance repGenericListAuthorizersRequest :: Generic ListAuthorizersRequest _
instance showListAuthorizersRequest :: Show ListAuthorizersRequest where show = genericShow
instance decodeListAuthorizersRequest :: Decode ListAuthorizersRequest where decode = genericDecode options
instance encodeListAuthorizersRequest :: Encode ListAuthorizersRequest where encode = genericEncode options

-- | Constructs ListAuthorizersRequest from required parameters
newListAuthorizersRequest :: ListAuthorizersRequest
newListAuthorizersRequest  = ListAuthorizersRequest { "ascendingOrder": Nothing, "marker": Nothing, "pageSize": Nothing, "status": Nothing }

-- | Constructs ListAuthorizersRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListAuthorizersRequest' :: ( { "pageSize" :: Maybe (PageSize) , "marker" :: Maybe (Marker) , "ascendingOrder" :: Maybe (AscendingOrder) , "status" :: Maybe (AuthorizerStatus) } -> {"pageSize" :: Maybe (PageSize) , "marker" :: Maybe (Marker) , "ascendingOrder" :: Maybe (AscendingOrder) , "status" :: Maybe (AuthorizerStatus) } ) -> ListAuthorizersRequest
newListAuthorizersRequest'  customize = (ListAuthorizersRequest <<< customize) { "ascendingOrder": Nothing, "marker": Nothing, "pageSize": Nothing, "status": Nothing }



newtype ListAuthorizersResponse = ListAuthorizersResponse 
  { "authorizers" :: Maybe (Authorizers)
  , "nextMarker" :: Maybe (Marker)
  }
derive instance newtypeListAuthorizersResponse :: Newtype ListAuthorizersResponse _
derive instance repGenericListAuthorizersResponse :: Generic ListAuthorizersResponse _
instance showListAuthorizersResponse :: Show ListAuthorizersResponse where show = genericShow
instance decodeListAuthorizersResponse :: Decode ListAuthorizersResponse where decode = genericDecode options
instance encodeListAuthorizersResponse :: Encode ListAuthorizersResponse where encode = genericEncode options

-- | Constructs ListAuthorizersResponse from required parameters
newListAuthorizersResponse :: ListAuthorizersResponse
newListAuthorizersResponse  = ListAuthorizersResponse { "authorizers": Nothing, "nextMarker": Nothing }

-- | Constructs ListAuthorizersResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListAuthorizersResponse' :: ( { "authorizers" :: Maybe (Authorizers) , "nextMarker" :: Maybe (Marker) } -> {"authorizers" :: Maybe (Authorizers) , "nextMarker" :: Maybe (Marker) } ) -> ListAuthorizersResponse
newListAuthorizersResponse'  customize = (ListAuthorizersResponse <<< customize) { "authorizers": Nothing, "nextMarker": Nothing }



-- | <p>Input for the ListCACertificates operation.</p>
newtype ListCACertificatesRequest = ListCACertificatesRequest 
  { "pageSize" :: Maybe (PageSize)
  , "marker" :: Maybe (Marker)
  , "ascendingOrder" :: Maybe (AscendingOrder)
  }
derive instance newtypeListCACertificatesRequest :: Newtype ListCACertificatesRequest _
derive instance repGenericListCACertificatesRequest :: Generic ListCACertificatesRequest _
instance showListCACertificatesRequest :: Show ListCACertificatesRequest where show = genericShow
instance decodeListCACertificatesRequest :: Decode ListCACertificatesRequest where decode = genericDecode options
instance encodeListCACertificatesRequest :: Encode ListCACertificatesRequest where encode = genericEncode options

-- | Constructs ListCACertificatesRequest from required parameters
newListCACertificatesRequest :: ListCACertificatesRequest
newListCACertificatesRequest  = ListCACertificatesRequest { "ascendingOrder": Nothing, "marker": Nothing, "pageSize": Nothing }

-- | Constructs ListCACertificatesRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListCACertificatesRequest' :: ( { "pageSize" :: Maybe (PageSize) , "marker" :: Maybe (Marker) , "ascendingOrder" :: Maybe (AscendingOrder) } -> {"pageSize" :: Maybe (PageSize) , "marker" :: Maybe (Marker) , "ascendingOrder" :: Maybe (AscendingOrder) } ) -> ListCACertificatesRequest
newListCACertificatesRequest'  customize = (ListCACertificatesRequest <<< customize) { "ascendingOrder": Nothing, "marker": Nothing, "pageSize": Nothing }



-- | <p>The output from the ListCACertificates operation.</p>
newtype ListCACertificatesResponse = ListCACertificatesResponse 
  { "certificates" :: Maybe (CACertificates)
  , "nextMarker" :: Maybe (Marker)
  }
derive instance newtypeListCACertificatesResponse :: Newtype ListCACertificatesResponse _
derive instance repGenericListCACertificatesResponse :: Generic ListCACertificatesResponse _
instance showListCACertificatesResponse :: Show ListCACertificatesResponse where show = genericShow
instance decodeListCACertificatesResponse :: Decode ListCACertificatesResponse where decode = genericDecode options
instance encodeListCACertificatesResponse :: Encode ListCACertificatesResponse where encode = genericEncode options

-- | Constructs ListCACertificatesResponse from required parameters
newListCACertificatesResponse :: ListCACertificatesResponse
newListCACertificatesResponse  = ListCACertificatesResponse { "certificates": Nothing, "nextMarker": Nothing }

-- | Constructs ListCACertificatesResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListCACertificatesResponse' :: ( { "certificates" :: Maybe (CACertificates) , "nextMarker" :: Maybe (Marker) } -> {"certificates" :: Maybe (CACertificates) , "nextMarker" :: Maybe (Marker) } ) -> ListCACertificatesResponse
newListCACertificatesResponse'  customize = (ListCACertificatesResponse <<< customize) { "certificates": Nothing, "nextMarker": Nothing }



-- | <p>The input to the ListCertificatesByCA operation.</p>
newtype ListCertificatesByCARequest = ListCertificatesByCARequest 
  { "caCertificateId" :: (CertificateId)
  , "pageSize" :: Maybe (PageSize)
  , "marker" :: Maybe (Marker)
  , "ascendingOrder" :: Maybe (AscendingOrder)
  }
derive instance newtypeListCertificatesByCARequest :: Newtype ListCertificatesByCARequest _
derive instance repGenericListCertificatesByCARequest :: Generic ListCertificatesByCARequest _
instance showListCertificatesByCARequest :: Show ListCertificatesByCARequest where show = genericShow
instance decodeListCertificatesByCARequest :: Decode ListCertificatesByCARequest where decode = genericDecode options
instance encodeListCertificatesByCARequest :: Encode ListCertificatesByCARequest where encode = genericEncode options

-- | Constructs ListCertificatesByCARequest from required parameters
newListCertificatesByCARequest :: CertificateId -> ListCertificatesByCARequest
newListCertificatesByCARequest _caCertificateId = ListCertificatesByCARequest { "caCertificateId": _caCertificateId, "ascendingOrder": Nothing, "marker": Nothing, "pageSize": Nothing }

-- | Constructs ListCertificatesByCARequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListCertificatesByCARequest' :: CertificateId -> ( { "caCertificateId" :: (CertificateId) , "pageSize" :: Maybe (PageSize) , "marker" :: Maybe (Marker) , "ascendingOrder" :: Maybe (AscendingOrder) } -> {"caCertificateId" :: (CertificateId) , "pageSize" :: Maybe (PageSize) , "marker" :: Maybe (Marker) , "ascendingOrder" :: Maybe (AscendingOrder) } ) -> ListCertificatesByCARequest
newListCertificatesByCARequest' _caCertificateId customize = (ListCertificatesByCARequest <<< customize) { "caCertificateId": _caCertificateId, "ascendingOrder": Nothing, "marker": Nothing, "pageSize": Nothing }



-- | <p>The output of the ListCertificatesByCA operation.</p>
newtype ListCertificatesByCAResponse = ListCertificatesByCAResponse 
  { "certificates" :: Maybe (Certificates)
  , "nextMarker" :: Maybe (Marker)
  }
derive instance newtypeListCertificatesByCAResponse :: Newtype ListCertificatesByCAResponse _
derive instance repGenericListCertificatesByCAResponse :: Generic ListCertificatesByCAResponse _
instance showListCertificatesByCAResponse :: Show ListCertificatesByCAResponse where show = genericShow
instance decodeListCertificatesByCAResponse :: Decode ListCertificatesByCAResponse where decode = genericDecode options
instance encodeListCertificatesByCAResponse :: Encode ListCertificatesByCAResponse where encode = genericEncode options

-- | Constructs ListCertificatesByCAResponse from required parameters
newListCertificatesByCAResponse :: ListCertificatesByCAResponse
newListCertificatesByCAResponse  = ListCertificatesByCAResponse { "certificates": Nothing, "nextMarker": Nothing }

-- | Constructs ListCertificatesByCAResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListCertificatesByCAResponse' :: ( { "certificates" :: Maybe (Certificates) , "nextMarker" :: Maybe (Marker) } -> {"certificates" :: Maybe (Certificates) , "nextMarker" :: Maybe (Marker) } ) -> ListCertificatesByCAResponse
newListCertificatesByCAResponse'  customize = (ListCertificatesByCAResponse <<< customize) { "certificates": Nothing, "nextMarker": Nothing }



-- | <p>The input for the ListCertificates operation.</p>
newtype ListCertificatesRequest = ListCertificatesRequest 
  { "pageSize" :: Maybe (PageSize)
  , "marker" :: Maybe (Marker)
  , "ascendingOrder" :: Maybe (AscendingOrder)
  }
derive instance newtypeListCertificatesRequest :: Newtype ListCertificatesRequest _
derive instance repGenericListCertificatesRequest :: Generic ListCertificatesRequest _
instance showListCertificatesRequest :: Show ListCertificatesRequest where show = genericShow
instance decodeListCertificatesRequest :: Decode ListCertificatesRequest where decode = genericDecode options
instance encodeListCertificatesRequest :: Encode ListCertificatesRequest where encode = genericEncode options

-- | Constructs ListCertificatesRequest from required parameters
newListCertificatesRequest :: ListCertificatesRequest
newListCertificatesRequest  = ListCertificatesRequest { "ascendingOrder": Nothing, "marker": Nothing, "pageSize": Nothing }

-- | Constructs ListCertificatesRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListCertificatesRequest' :: ( { "pageSize" :: Maybe (PageSize) , "marker" :: Maybe (Marker) , "ascendingOrder" :: Maybe (AscendingOrder) } -> {"pageSize" :: Maybe (PageSize) , "marker" :: Maybe (Marker) , "ascendingOrder" :: Maybe (AscendingOrder) } ) -> ListCertificatesRequest
newListCertificatesRequest'  customize = (ListCertificatesRequest <<< customize) { "ascendingOrder": Nothing, "marker": Nothing, "pageSize": Nothing }



-- | <p>The output of the ListCertificates operation.</p>
newtype ListCertificatesResponse = ListCertificatesResponse 
  { "certificates" :: Maybe (Certificates)
  , "nextMarker" :: Maybe (Marker)
  }
derive instance newtypeListCertificatesResponse :: Newtype ListCertificatesResponse _
derive instance repGenericListCertificatesResponse :: Generic ListCertificatesResponse _
instance showListCertificatesResponse :: Show ListCertificatesResponse where show = genericShow
instance decodeListCertificatesResponse :: Decode ListCertificatesResponse where decode = genericDecode options
instance encodeListCertificatesResponse :: Encode ListCertificatesResponse where encode = genericEncode options

-- | Constructs ListCertificatesResponse from required parameters
newListCertificatesResponse :: ListCertificatesResponse
newListCertificatesResponse  = ListCertificatesResponse { "certificates": Nothing, "nextMarker": Nothing }

-- | Constructs ListCertificatesResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListCertificatesResponse' :: ( { "certificates" :: Maybe (Certificates) , "nextMarker" :: Maybe (Marker) } -> {"certificates" :: Maybe (Certificates) , "nextMarker" :: Maybe (Marker) } ) -> ListCertificatesResponse
newListCertificatesResponse'  customize = (ListCertificatesResponse <<< customize) { "certificates": Nothing, "nextMarker": Nothing }



newtype ListIndicesRequest = ListIndicesRequest 
  { "nextToken" :: Maybe (NextToken)
  , "maxResults" :: Maybe (QueryMaxResults)
  }
derive instance newtypeListIndicesRequest :: Newtype ListIndicesRequest _
derive instance repGenericListIndicesRequest :: Generic ListIndicesRequest _
instance showListIndicesRequest :: Show ListIndicesRequest where show = genericShow
instance decodeListIndicesRequest :: Decode ListIndicesRequest where decode = genericDecode options
instance encodeListIndicesRequest :: Encode ListIndicesRequest where encode = genericEncode options

-- | Constructs ListIndicesRequest from required parameters
newListIndicesRequest :: ListIndicesRequest
newListIndicesRequest  = ListIndicesRequest { "maxResults": Nothing, "nextToken": Nothing }

-- | Constructs ListIndicesRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListIndicesRequest' :: ( { "nextToken" :: Maybe (NextToken) , "maxResults" :: Maybe (QueryMaxResults) } -> {"nextToken" :: Maybe (NextToken) , "maxResults" :: Maybe (QueryMaxResults) } ) -> ListIndicesRequest
newListIndicesRequest'  customize = (ListIndicesRequest <<< customize) { "maxResults": Nothing, "nextToken": Nothing }



newtype ListIndicesResponse = ListIndicesResponse 
  { "indexNames" :: Maybe (IndexNamesList)
  , "nextToken" :: Maybe (NextToken)
  }
derive instance newtypeListIndicesResponse :: Newtype ListIndicesResponse _
derive instance repGenericListIndicesResponse :: Generic ListIndicesResponse _
instance showListIndicesResponse :: Show ListIndicesResponse where show = genericShow
instance decodeListIndicesResponse :: Decode ListIndicesResponse where decode = genericDecode options
instance encodeListIndicesResponse :: Encode ListIndicesResponse where encode = genericEncode options

-- | Constructs ListIndicesResponse from required parameters
newListIndicesResponse :: ListIndicesResponse
newListIndicesResponse  = ListIndicesResponse { "indexNames": Nothing, "nextToken": Nothing }

-- | Constructs ListIndicesResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListIndicesResponse' :: ( { "indexNames" :: Maybe (IndexNamesList) , "nextToken" :: Maybe (NextToken) } -> {"indexNames" :: Maybe (IndexNamesList) , "nextToken" :: Maybe (NextToken) } ) -> ListIndicesResponse
newListIndicesResponse'  customize = (ListIndicesResponse <<< customize) { "indexNames": Nothing, "nextToken": Nothing }



newtype ListJobExecutionsForJobRequest = ListJobExecutionsForJobRequest 
  { "jobId" :: (JobId)
  , "status" :: Maybe (JobExecutionStatus)
  , "maxResults" :: Maybe (LaserMaxResults)
  , "nextToken" :: Maybe (NextToken)
  }
derive instance newtypeListJobExecutionsForJobRequest :: Newtype ListJobExecutionsForJobRequest _
derive instance repGenericListJobExecutionsForJobRequest :: Generic ListJobExecutionsForJobRequest _
instance showListJobExecutionsForJobRequest :: Show ListJobExecutionsForJobRequest where show = genericShow
instance decodeListJobExecutionsForJobRequest :: Decode ListJobExecutionsForJobRequest where decode = genericDecode options
instance encodeListJobExecutionsForJobRequest :: Encode ListJobExecutionsForJobRequest where encode = genericEncode options

-- | Constructs ListJobExecutionsForJobRequest from required parameters
newListJobExecutionsForJobRequest :: JobId -> ListJobExecutionsForJobRequest
newListJobExecutionsForJobRequest _jobId = ListJobExecutionsForJobRequest { "jobId": _jobId, "maxResults": Nothing, "nextToken": Nothing, "status": Nothing }

-- | Constructs ListJobExecutionsForJobRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListJobExecutionsForJobRequest' :: JobId -> ( { "jobId" :: (JobId) , "status" :: Maybe (JobExecutionStatus) , "maxResults" :: Maybe (LaserMaxResults) , "nextToken" :: Maybe (NextToken) } -> {"jobId" :: (JobId) , "status" :: Maybe (JobExecutionStatus) , "maxResults" :: Maybe (LaserMaxResults) , "nextToken" :: Maybe (NextToken) } ) -> ListJobExecutionsForJobRequest
newListJobExecutionsForJobRequest' _jobId customize = (ListJobExecutionsForJobRequest <<< customize) { "jobId": _jobId, "maxResults": Nothing, "nextToken": Nothing, "status": Nothing }



newtype ListJobExecutionsForJobResponse = ListJobExecutionsForJobResponse 
  { "executionSummaries" :: Maybe (JobExecutionSummaryForJobList)
  , "nextToken" :: Maybe (NextToken)
  }
derive instance newtypeListJobExecutionsForJobResponse :: Newtype ListJobExecutionsForJobResponse _
derive instance repGenericListJobExecutionsForJobResponse :: Generic ListJobExecutionsForJobResponse _
instance showListJobExecutionsForJobResponse :: Show ListJobExecutionsForJobResponse where show = genericShow
instance decodeListJobExecutionsForJobResponse :: Decode ListJobExecutionsForJobResponse where decode = genericDecode options
instance encodeListJobExecutionsForJobResponse :: Encode ListJobExecutionsForJobResponse where encode = genericEncode options

-- | Constructs ListJobExecutionsForJobResponse from required parameters
newListJobExecutionsForJobResponse :: ListJobExecutionsForJobResponse
newListJobExecutionsForJobResponse  = ListJobExecutionsForJobResponse { "executionSummaries": Nothing, "nextToken": Nothing }

-- | Constructs ListJobExecutionsForJobResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListJobExecutionsForJobResponse' :: ( { "executionSummaries" :: Maybe (JobExecutionSummaryForJobList) , "nextToken" :: Maybe (NextToken) } -> {"executionSummaries" :: Maybe (JobExecutionSummaryForJobList) , "nextToken" :: Maybe (NextToken) } ) -> ListJobExecutionsForJobResponse
newListJobExecutionsForJobResponse'  customize = (ListJobExecutionsForJobResponse <<< customize) { "executionSummaries": Nothing, "nextToken": Nothing }



newtype ListJobExecutionsForThingRequest = ListJobExecutionsForThingRequest 
  { "thingName" :: (ThingName)
  , "status" :: Maybe (JobExecutionStatus)
  , "maxResults" :: Maybe (LaserMaxResults)
  , "nextToken" :: Maybe (NextToken)
  }
derive instance newtypeListJobExecutionsForThingRequest :: Newtype ListJobExecutionsForThingRequest _
derive instance repGenericListJobExecutionsForThingRequest :: Generic ListJobExecutionsForThingRequest _
instance showListJobExecutionsForThingRequest :: Show ListJobExecutionsForThingRequest where show = genericShow
instance decodeListJobExecutionsForThingRequest :: Decode ListJobExecutionsForThingRequest where decode = genericDecode options
instance encodeListJobExecutionsForThingRequest :: Encode ListJobExecutionsForThingRequest where encode = genericEncode options

-- | Constructs ListJobExecutionsForThingRequest from required parameters
newListJobExecutionsForThingRequest :: ThingName -> ListJobExecutionsForThingRequest
newListJobExecutionsForThingRequest _thingName = ListJobExecutionsForThingRequest { "thingName": _thingName, "maxResults": Nothing, "nextToken": Nothing, "status": Nothing }

-- | Constructs ListJobExecutionsForThingRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListJobExecutionsForThingRequest' :: ThingName -> ( { "thingName" :: (ThingName) , "status" :: Maybe (JobExecutionStatus) , "maxResults" :: Maybe (LaserMaxResults) , "nextToken" :: Maybe (NextToken) } -> {"thingName" :: (ThingName) , "status" :: Maybe (JobExecutionStatus) , "maxResults" :: Maybe (LaserMaxResults) , "nextToken" :: Maybe (NextToken) } ) -> ListJobExecutionsForThingRequest
newListJobExecutionsForThingRequest' _thingName customize = (ListJobExecutionsForThingRequest <<< customize) { "thingName": _thingName, "maxResults": Nothing, "nextToken": Nothing, "status": Nothing }



newtype ListJobExecutionsForThingResponse = ListJobExecutionsForThingResponse 
  { "executionSummaries" :: Maybe (JobExecutionSummaryForThingList)
  , "nextToken" :: Maybe (NextToken)
  }
derive instance newtypeListJobExecutionsForThingResponse :: Newtype ListJobExecutionsForThingResponse _
derive instance repGenericListJobExecutionsForThingResponse :: Generic ListJobExecutionsForThingResponse _
instance showListJobExecutionsForThingResponse :: Show ListJobExecutionsForThingResponse where show = genericShow
instance decodeListJobExecutionsForThingResponse :: Decode ListJobExecutionsForThingResponse where decode = genericDecode options
instance encodeListJobExecutionsForThingResponse :: Encode ListJobExecutionsForThingResponse where encode = genericEncode options

-- | Constructs ListJobExecutionsForThingResponse from required parameters
newListJobExecutionsForThingResponse :: ListJobExecutionsForThingResponse
newListJobExecutionsForThingResponse  = ListJobExecutionsForThingResponse { "executionSummaries": Nothing, "nextToken": Nothing }

-- | Constructs ListJobExecutionsForThingResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListJobExecutionsForThingResponse' :: ( { "executionSummaries" :: Maybe (JobExecutionSummaryForThingList) , "nextToken" :: Maybe (NextToken) } -> {"executionSummaries" :: Maybe (JobExecutionSummaryForThingList) , "nextToken" :: Maybe (NextToken) } ) -> ListJobExecutionsForThingResponse
newListJobExecutionsForThingResponse'  customize = (ListJobExecutionsForThingResponse <<< customize) { "executionSummaries": Nothing, "nextToken": Nothing }



newtype ListJobsRequest = ListJobsRequest 
  { "status" :: Maybe (JobStatus)
  , "targetSelection" :: Maybe (TargetSelection)
  , "maxResults" :: Maybe (LaserMaxResults)
  , "nextToken" :: Maybe (NextToken)
  , "thingGroupName" :: Maybe (ThingGroupName)
  , "thingGroupId" :: Maybe (ThingGroupId)
  }
derive instance newtypeListJobsRequest :: Newtype ListJobsRequest _
derive instance repGenericListJobsRequest :: Generic ListJobsRequest _
instance showListJobsRequest :: Show ListJobsRequest where show = genericShow
instance decodeListJobsRequest :: Decode ListJobsRequest where decode = genericDecode options
instance encodeListJobsRequest :: Encode ListJobsRequest where encode = genericEncode options

-- | Constructs ListJobsRequest from required parameters
newListJobsRequest :: ListJobsRequest
newListJobsRequest  = ListJobsRequest { "maxResults": Nothing, "nextToken": Nothing, "status": Nothing, "targetSelection": Nothing, "thingGroupId": Nothing, "thingGroupName": Nothing }

-- | Constructs ListJobsRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListJobsRequest' :: ( { "status" :: Maybe (JobStatus) , "targetSelection" :: Maybe (TargetSelection) , "maxResults" :: Maybe (LaserMaxResults) , "nextToken" :: Maybe (NextToken) , "thingGroupName" :: Maybe (ThingGroupName) , "thingGroupId" :: Maybe (ThingGroupId) } -> {"status" :: Maybe (JobStatus) , "targetSelection" :: Maybe (TargetSelection) , "maxResults" :: Maybe (LaserMaxResults) , "nextToken" :: Maybe (NextToken) , "thingGroupName" :: Maybe (ThingGroupName) , "thingGroupId" :: Maybe (ThingGroupId) } ) -> ListJobsRequest
newListJobsRequest'  customize = (ListJobsRequest <<< customize) { "maxResults": Nothing, "nextToken": Nothing, "status": Nothing, "targetSelection": Nothing, "thingGroupId": Nothing, "thingGroupName": Nothing }



newtype ListJobsResponse = ListJobsResponse 
  { "jobs" :: Maybe (JobSummaryList)
  , "nextToken" :: Maybe (NextToken)
  }
derive instance newtypeListJobsResponse :: Newtype ListJobsResponse _
derive instance repGenericListJobsResponse :: Generic ListJobsResponse _
instance showListJobsResponse :: Show ListJobsResponse where show = genericShow
instance decodeListJobsResponse :: Decode ListJobsResponse where decode = genericDecode options
instance encodeListJobsResponse :: Encode ListJobsResponse where encode = genericEncode options

-- | Constructs ListJobsResponse from required parameters
newListJobsResponse :: ListJobsResponse
newListJobsResponse  = ListJobsResponse { "jobs": Nothing, "nextToken": Nothing }

-- | Constructs ListJobsResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListJobsResponse' :: ( { "jobs" :: Maybe (JobSummaryList) , "nextToken" :: Maybe (NextToken) } -> {"jobs" :: Maybe (JobSummaryList) , "nextToken" :: Maybe (NextToken) } ) -> ListJobsResponse
newListJobsResponse'  customize = (ListJobsResponse <<< customize) { "jobs": Nothing, "nextToken": Nothing }



newtype ListOTAUpdatesRequest = ListOTAUpdatesRequest 
  { "maxResults" :: Maybe (MaxResults)
  , "nextToken" :: Maybe (NextToken)
  , "otaUpdateStatus" :: Maybe (OTAUpdateStatus)
  }
derive instance newtypeListOTAUpdatesRequest :: Newtype ListOTAUpdatesRequest _
derive instance repGenericListOTAUpdatesRequest :: Generic ListOTAUpdatesRequest _
instance showListOTAUpdatesRequest :: Show ListOTAUpdatesRequest where show = genericShow
instance decodeListOTAUpdatesRequest :: Decode ListOTAUpdatesRequest where decode = genericDecode options
instance encodeListOTAUpdatesRequest :: Encode ListOTAUpdatesRequest where encode = genericEncode options

-- | Constructs ListOTAUpdatesRequest from required parameters
newListOTAUpdatesRequest :: ListOTAUpdatesRequest
newListOTAUpdatesRequest  = ListOTAUpdatesRequest { "maxResults": Nothing, "nextToken": Nothing, "otaUpdateStatus": Nothing }

-- | Constructs ListOTAUpdatesRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListOTAUpdatesRequest' :: ( { "maxResults" :: Maybe (MaxResults) , "nextToken" :: Maybe (NextToken) , "otaUpdateStatus" :: Maybe (OTAUpdateStatus) } -> {"maxResults" :: Maybe (MaxResults) , "nextToken" :: Maybe (NextToken) , "otaUpdateStatus" :: Maybe (OTAUpdateStatus) } ) -> ListOTAUpdatesRequest
newListOTAUpdatesRequest'  customize = (ListOTAUpdatesRequest <<< customize) { "maxResults": Nothing, "nextToken": Nothing, "otaUpdateStatus": Nothing }



newtype ListOTAUpdatesResponse = ListOTAUpdatesResponse 
  { "otaUpdates" :: Maybe (OTAUpdatesSummary)
  , "nextToken" :: Maybe (NextToken)
  }
derive instance newtypeListOTAUpdatesResponse :: Newtype ListOTAUpdatesResponse _
derive instance repGenericListOTAUpdatesResponse :: Generic ListOTAUpdatesResponse _
instance showListOTAUpdatesResponse :: Show ListOTAUpdatesResponse where show = genericShow
instance decodeListOTAUpdatesResponse :: Decode ListOTAUpdatesResponse where decode = genericDecode options
instance encodeListOTAUpdatesResponse :: Encode ListOTAUpdatesResponse where encode = genericEncode options

-- | Constructs ListOTAUpdatesResponse from required parameters
newListOTAUpdatesResponse :: ListOTAUpdatesResponse
newListOTAUpdatesResponse  = ListOTAUpdatesResponse { "nextToken": Nothing, "otaUpdates": Nothing }

-- | Constructs ListOTAUpdatesResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListOTAUpdatesResponse' :: ( { "otaUpdates" :: Maybe (OTAUpdatesSummary) , "nextToken" :: Maybe (NextToken) } -> {"otaUpdates" :: Maybe (OTAUpdatesSummary) , "nextToken" :: Maybe (NextToken) } ) -> ListOTAUpdatesResponse
newListOTAUpdatesResponse'  customize = (ListOTAUpdatesResponse <<< customize) { "nextToken": Nothing, "otaUpdates": Nothing }



-- | <p>The input to the ListOutgoingCertificates operation.</p>
newtype ListOutgoingCertificatesRequest = ListOutgoingCertificatesRequest 
  { "pageSize" :: Maybe (PageSize)
  , "marker" :: Maybe (Marker)
  , "ascendingOrder" :: Maybe (AscendingOrder)
  }
derive instance newtypeListOutgoingCertificatesRequest :: Newtype ListOutgoingCertificatesRequest _
derive instance repGenericListOutgoingCertificatesRequest :: Generic ListOutgoingCertificatesRequest _
instance showListOutgoingCertificatesRequest :: Show ListOutgoingCertificatesRequest where show = genericShow
instance decodeListOutgoingCertificatesRequest :: Decode ListOutgoingCertificatesRequest where decode = genericDecode options
instance encodeListOutgoingCertificatesRequest :: Encode ListOutgoingCertificatesRequest where encode = genericEncode options

-- | Constructs ListOutgoingCertificatesRequest from required parameters
newListOutgoingCertificatesRequest :: ListOutgoingCertificatesRequest
newListOutgoingCertificatesRequest  = ListOutgoingCertificatesRequest { "ascendingOrder": Nothing, "marker": Nothing, "pageSize": Nothing }

-- | Constructs ListOutgoingCertificatesRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListOutgoingCertificatesRequest' :: ( { "pageSize" :: Maybe (PageSize) , "marker" :: Maybe (Marker) , "ascendingOrder" :: Maybe (AscendingOrder) } -> {"pageSize" :: Maybe (PageSize) , "marker" :: Maybe (Marker) , "ascendingOrder" :: Maybe (AscendingOrder) } ) -> ListOutgoingCertificatesRequest
newListOutgoingCertificatesRequest'  customize = (ListOutgoingCertificatesRequest <<< customize) { "ascendingOrder": Nothing, "marker": Nothing, "pageSize": Nothing }



-- | <p>The output from the ListOutgoingCertificates operation.</p>
newtype ListOutgoingCertificatesResponse = ListOutgoingCertificatesResponse 
  { "outgoingCertificates" :: Maybe (OutgoingCertificates)
  , "nextMarker" :: Maybe (Marker)
  }
derive instance newtypeListOutgoingCertificatesResponse :: Newtype ListOutgoingCertificatesResponse _
derive instance repGenericListOutgoingCertificatesResponse :: Generic ListOutgoingCertificatesResponse _
instance showListOutgoingCertificatesResponse :: Show ListOutgoingCertificatesResponse where show = genericShow
instance decodeListOutgoingCertificatesResponse :: Decode ListOutgoingCertificatesResponse where decode = genericDecode options
instance encodeListOutgoingCertificatesResponse :: Encode ListOutgoingCertificatesResponse where encode = genericEncode options

-- | Constructs ListOutgoingCertificatesResponse from required parameters
newListOutgoingCertificatesResponse :: ListOutgoingCertificatesResponse
newListOutgoingCertificatesResponse  = ListOutgoingCertificatesResponse { "nextMarker": Nothing, "outgoingCertificates": Nothing }

-- | Constructs ListOutgoingCertificatesResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListOutgoingCertificatesResponse' :: ( { "outgoingCertificates" :: Maybe (OutgoingCertificates) , "nextMarker" :: Maybe (Marker) } -> {"outgoingCertificates" :: Maybe (OutgoingCertificates) , "nextMarker" :: Maybe (Marker) } ) -> ListOutgoingCertificatesResponse
newListOutgoingCertificatesResponse'  customize = (ListOutgoingCertificatesResponse <<< customize) { "nextMarker": Nothing, "outgoingCertificates": Nothing }



-- | <p>The input for the ListPolicies operation.</p>
newtype ListPoliciesRequest = ListPoliciesRequest 
  { "marker" :: Maybe (Marker)
  , "pageSize" :: Maybe (PageSize)
  , "ascendingOrder" :: Maybe (AscendingOrder)
  }
derive instance newtypeListPoliciesRequest :: Newtype ListPoliciesRequest _
derive instance repGenericListPoliciesRequest :: Generic ListPoliciesRequest _
instance showListPoliciesRequest :: Show ListPoliciesRequest where show = genericShow
instance decodeListPoliciesRequest :: Decode ListPoliciesRequest where decode = genericDecode options
instance encodeListPoliciesRequest :: Encode ListPoliciesRequest where encode = genericEncode options

-- | Constructs ListPoliciesRequest from required parameters
newListPoliciesRequest :: ListPoliciesRequest
newListPoliciesRequest  = ListPoliciesRequest { "ascendingOrder": Nothing, "marker": Nothing, "pageSize": Nothing }

-- | Constructs ListPoliciesRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListPoliciesRequest' :: ( { "marker" :: Maybe (Marker) , "pageSize" :: Maybe (PageSize) , "ascendingOrder" :: Maybe (AscendingOrder) } -> {"marker" :: Maybe (Marker) , "pageSize" :: Maybe (PageSize) , "ascendingOrder" :: Maybe (AscendingOrder) } ) -> ListPoliciesRequest
newListPoliciesRequest'  customize = (ListPoliciesRequest <<< customize) { "ascendingOrder": Nothing, "marker": Nothing, "pageSize": Nothing }



-- | <p>The output from the ListPolicies operation.</p>
newtype ListPoliciesResponse = ListPoliciesResponse 
  { "policies" :: Maybe (Policies)
  , "nextMarker" :: Maybe (Marker)
  }
derive instance newtypeListPoliciesResponse :: Newtype ListPoliciesResponse _
derive instance repGenericListPoliciesResponse :: Generic ListPoliciesResponse _
instance showListPoliciesResponse :: Show ListPoliciesResponse where show = genericShow
instance decodeListPoliciesResponse :: Decode ListPoliciesResponse where decode = genericDecode options
instance encodeListPoliciesResponse :: Encode ListPoliciesResponse where encode = genericEncode options

-- | Constructs ListPoliciesResponse from required parameters
newListPoliciesResponse :: ListPoliciesResponse
newListPoliciesResponse  = ListPoliciesResponse { "nextMarker": Nothing, "policies": Nothing }

-- | Constructs ListPoliciesResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListPoliciesResponse' :: ( { "policies" :: Maybe (Policies) , "nextMarker" :: Maybe (Marker) } -> {"policies" :: Maybe (Policies) , "nextMarker" :: Maybe (Marker) } ) -> ListPoliciesResponse
newListPoliciesResponse'  customize = (ListPoliciesResponse <<< customize) { "nextMarker": Nothing, "policies": Nothing }



-- | <p>The input for the ListPolicyPrincipals operation.</p>
newtype ListPolicyPrincipalsRequest = ListPolicyPrincipalsRequest 
  { "policyName" :: (PolicyName)
  , "marker" :: Maybe (Marker)
  , "pageSize" :: Maybe (PageSize)
  , "ascendingOrder" :: Maybe (AscendingOrder)
  }
derive instance newtypeListPolicyPrincipalsRequest :: Newtype ListPolicyPrincipalsRequest _
derive instance repGenericListPolicyPrincipalsRequest :: Generic ListPolicyPrincipalsRequest _
instance showListPolicyPrincipalsRequest :: Show ListPolicyPrincipalsRequest where show = genericShow
instance decodeListPolicyPrincipalsRequest :: Decode ListPolicyPrincipalsRequest where decode = genericDecode options
instance encodeListPolicyPrincipalsRequest :: Encode ListPolicyPrincipalsRequest where encode = genericEncode options

-- | Constructs ListPolicyPrincipalsRequest from required parameters
newListPolicyPrincipalsRequest :: PolicyName -> ListPolicyPrincipalsRequest
newListPolicyPrincipalsRequest _policyName = ListPolicyPrincipalsRequest { "policyName": _policyName, "ascendingOrder": Nothing, "marker": Nothing, "pageSize": Nothing }

-- | Constructs ListPolicyPrincipalsRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListPolicyPrincipalsRequest' :: PolicyName -> ( { "policyName" :: (PolicyName) , "marker" :: Maybe (Marker) , "pageSize" :: Maybe (PageSize) , "ascendingOrder" :: Maybe (AscendingOrder) } -> {"policyName" :: (PolicyName) , "marker" :: Maybe (Marker) , "pageSize" :: Maybe (PageSize) , "ascendingOrder" :: Maybe (AscendingOrder) } ) -> ListPolicyPrincipalsRequest
newListPolicyPrincipalsRequest' _policyName customize = (ListPolicyPrincipalsRequest <<< customize) { "policyName": _policyName, "ascendingOrder": Nothing, "marker": Nothing, "pageSize": Nothing }



-- | <p>The output from the ListPolicyPrincipals operation.</p>
newtype ListPolicyPrincipalsResponse = ListPolicyPrincipalsResponse 
  { "principals" :: Maybe (Principals)
  , "nextMarker" :: Maybe (Marker)
  }
derive instance newtypeListPolicyPrincipalsResponse :: Newtype ListPolicyPrincipalsResponse _
derive instance repGenericListPolicyPrincipalsResponse :: Generic ListPolicyPrincipalsResponse _
instance showListPolicyPrincipalsResponse :: Show ListPolicyPrincipalsResponse where show = genericShow
instance decodeListPolicyPrincipalsResponse :: Decode ListPolicyPrincipalsResponse where decode = genericDecode options
instance encodeListPolicyPrincipalsResponse :: Encode ListPolicyPrincipalsResponse where encode = genericEncode options

-- | Constructs ListPolicyPrincipalsResponse from required parameters
newListPolicyPrincipalsResponse :: ListPolicyPrincipalsResponse
newListPolicyPrincipalsResponse  = ListPolicyPrincipalsResponse { "nextMarker": Nothing, "principals": Nothing }

-- | Constructs ListPolicyPrincipalsResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListPolicyPrincipalsResponse' :: ( { "principals" :: Maybe (Principals) , "nextMarker" :: Maybe (Marker) } -> {"principals" :: Maybe (Principals) , "nextMarker" :: Maybe (Marker) } ) -> ListPolicyPrincipalsResponse
newListPolicyPrincipalsResponse'  customize = (ListPolicyPrincipalsResponse <<< customize) { "nextMarker": Nothing, "principals": Nothing }



-- | <p>The input for the ListPolicyVersions operation.</p>
newtype ListPolicyVersionsRequest = ListPolicyVersionsRequest 
  { "policyName" :: (PolicyName)
  }
derive instance newtypeListPolicyVersionsRequest :: Newtype ListPolicyVersionsRequest _
derive instance repGenericListPolicyVersionsRequest :: Generic ListPolicyVersionsRequest _
instance showListPolicyVersionsRequest :: Show ListPolicyVersionsRequest where show = genericShow
instance decodeListPolicyVersionsRequest :: Decode ListPolicyVersionsRequest where decode = genericDecode options
instance encodeListPolicyVersionsRequest :: Encode ListPolicyVersionsRequest where encode = genericEncode options

-- | Constructs ListPolicyVersionsRequest from required parameters
newListPolicyVersionsRequest :: PolicyName -> ListPolicyVersionsRequest
newListPolicyVersionsRequest _policyName = ListPolicyVersionsRequest { "policyName": _policyName }

-- | Constructs ListPolicyVersionsRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListPolicyVersionsRequest' :: PolicyName -> ( { "policyName" :: (PolicyName) } -> {"policyName" :: (PolicyName) } ) -> ListPolicyVersionsRequest
newListPolicyVersionsRequest' _policyName customize = (ListPolicyVersionsRequest <<< customize) { "policyName": _policyName }



-- | <p>The output from the ListPolicyVersions operation.</p>
newtype ListPolicyVersionsResponse = ListPolicyVersionsResponse 
  { "policyVersions" :: Maybe (PolicyVersions)
  }
derive instance newtypeListPolicyVersionsResponse :: Newtype ListPolicyVersionsResponse _
derive instance repGenericListPolicyVersionsResponse :: Generic ListPolicyVersionsResponse _
instance showListPolicyVersionsResponse :: Show ListPolicyVersionsResponse where show = genericShow
instance decodeListPolicyVersionsResponse :: Decode ListPolicyVersionsResponse where decode = genericDecode options
instance encodeListPolicyVersionsResponse :: Encode ListPolicyVersionsResponse where encode = genericEncode options

-- | Constructs ListPolicyVersionsResponse from required parameters
newListPolicyVersionsResponse :: ListPolicyVersionsResponse
newListPolicyVersionsResponse  = ListPolicyVersionsResponse { "policyVersions": Nothing }

-- | Constructs ListPolicyVersionsResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListPolicyVersionsResponse' :: ( { "policyVersions" :: Maybe (PolicyVersions) } -> {"policyVersions" :: Maybe (PolicyVersions) } ) -> ListPolicyVersionsResponse
newListPolicyVersionsResponse'  customize = (ListPolicyVersionsResponse <<< customize) { "policyVersions": Nothing }



-- | <p>The input for the ListPrincipalPolicies operation.</p>
newtype ListPrincipalPoliciesRequest = ListPrincipalPoliciesRequest 
  { "principal" :: (Principal)
  , "marker" :: Maybe (Marker)
  , "pageSize" :: Maybe (PageSize)
  , "ascendingOrder" :: Maybe (AscendingOrder)
  }
derive instance newtypeListPrincipalPoliciesRequest :: Newtype ListPrincipalPoliciesRequest _
derive instance repGenericListPrincipalPoliciesRequest :: Generic ListPrincipalPoliciesRequest _
instance showListPrincipalPoliciesRequest :: Show ListPrincipalPoliciesRequest where show = genericShow
instance decodeListPrincipalPoliciesRequest :: Decode ListPrincipalPoliciesRequest where decode = genericDecode options
instance encodeListPrincipalPoliciesRequest :: Encode ListPrincipalPoliciesRequest where encode = genericEncode options

-- | Constructs ListPrincipalPoliciesRequest from required parameters
newListPrincipalPoliciesRequest :: Principal -> ListPrincipalPoliciesRequest
newListPrincipalPoliciesRequest _principal = ListPrincipalPoliciesRequest { "principal": _principal, "ascendingOrder": Nothing, "marker": Nothing, "pageSize": Nothing }

-- | Constructs ListPrincipalPoliciesRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListPrincipalPoliciesRequest' :: Principal -> ( { "principal" :: (Principal) , "marker" :: Maybe (Marker) , "pageSize" :: Maybe (PageSize) , "ascendingOrder" :: Maybe (AscendingOrder) } -> {"principal" :: (Principal) , "marker" :: Maybe (Marker) , "pageSize" :: Maybe (PageSize) , "ascendingOrder" :: Maybe (AscendingOrder) } ) -> ListPrincipalPoliciesRequest
newListPrincipalPoliciesRequest' _principal customize = (ListPrincipalPoliciesRequest <<< customize) { "principal": _principal, "ascendingOrder": Nothing, "marker": Nothing, "pageSize": Nothing }



-- | <p>The output from the ListPrincipalPolicies operation.</p>
newtype ListPrincipalPoliciesResponse = ListPrincipalPoliciesResponse 
  { "policies" :: Maybe (Policies)
  , "nextMarker" :: Maybe (Marker)
  }
derive instance newtypeListPrincipalPoliciesResponse :: Newtype ListPrincipalPoliciesResponse _
derive instance repGenericListPrincipalPoliciesResponse :: Generic ListPrincipalPoliciesResponse _
instance showListPrincipalPoliciesResponse :: Show ListPrincipalPoliciesResponse where show = genericShow
instance decodeListPrincipalPoliciesResponse :: Decode ListPrincipalPoliciesResponse where decode = genericDecode options
instance encodeListPrincipalPoliciesResponse :: Encode ListPrincipalPoliciesResponse where encode = genericEncode options

-- | Constructs ListPrincipalPoliciesResponse from required parameters
newListPrincipalPoliciesResponse :: ListPrincipalPoliciesResponse
newListPrincipalPoliciesResponse  = ListPrincipalPoliciesResponse { "nextMarker": Nothing, "policies": Nothing }

-- | Constructs ListPrincipalPoliciesResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListPrincipalPoliciesResponse' :: ( { "policies" :: Maybe (Policies) , "nextMarker" :: Maybe (Marker) } -> {"policies" :: Maybe (Policies) , "nextMarker" :: Maybe (Marker) } ) -> ListPrincipalPoliciesResponse
newListPrincipalPoliciesResponse'  customize = (ListPrincipalPoliciesResponse <<< customize) { "nextMarker": Nothing, "policies": Nothing }



-- | <p>The input for the ListPrincipalThings operation.</p>
newtype ListPrincipalThingsRequest = ListPrincipalThingsRequest 
  { "nextToken" :: Maybe (NextToken)
  , "maxResults" :: Maybe (RegistryMaxResults)
  , "principal" :: (Principal)
  }
derive instance newtypeListPrincipalThingsRequest :: Newtype ListPrincipalThingsRequest _
derive instance repGenericListPrincipalThingsRequest :: Generic ListPrincipalThingsRequest _
instance showListPrincipalThingsRequest :: Show ListPrincipalThingsRequest where show = genericShow
instance decodeListPrincipalThingsRequest :: Decode ListPrincipalThingsRequest where decode = genericDecode options
instance encodeListPrincipalThingsRequest :: Encode ListPrincipalThingsRequest where encode = genericEncode options

-- | Constructs ListPrincipalThingsRequest from required parameters
newListPrincipalThingsRequest :: Principal -> ListPrincipalThingsRequest
newListPrincipalThingsRequest _principal = ListPrincipalThingsRequest { "principal": _principal, "maxResults": Nothing, "nextToken": Nothing }

-- | Constructs ListPrincipalThingsRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListPrincipalThingsRequest' :: Principal -> ( { "nextToken" :: Maybe (NextToken) , "maxResults" :: Maybe (RegistryMaxResults) , "principal" :: (Principal) } -> {"nextToken" :: Maybe (NextToken) , "maxResults" :: Maybe (RegistryMaxResults) , "principal" :: (Principal) } ) -> ListPrincipalThingsRequest
newListPrincipalThingsRequest' _principal customize = (ListPrincipalThingsRequest <<< customize) { "principal": _principal, "maxResults": Nothing, "nextToken": Nothing }



-- | <p>The output from the ListPrincipalThings operation.</p>
newtype ListPrincipalThingsResponse = ListPrincipalThingsResponse 
  { "things" :: Maybe (ThingNameList)
  , "nextToken" :: Maybe (NextToken)
  }
derive instance newtypeListPrincipalThingsResponse :: Newtype ListPrincipalThingsResponse _
derive instance repGenericListPrincipalThingsResponse :: Generic ListPrincipalThingsResponse _
instance showListPrincipalThingsResponse :: Show ListPrincipalThingsResponse where show = genericShow
instance decodeListPrincipalThingsResponse :: Decode ListPrincipalThingsResponse where decode = genericDecode options
instance encodeListPrincipalThingsResponse :: Encode ListPrincipalThingsResponse where encode = genericEncode options

-- | Constructs ListPrincipalThingsResponse from required parameters
newListPrincipalThingsResponse :: ListPrincipalThingsResponse
newListPrincipalThingsResponse  = ListPrincipalThingsResponse { "nextToken": Nothing, "things": Nothing }

-- | Constructs ListPrincipalThingsResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListPrincipalThingsResponse' :: ( { "things" :: Maybe (ThingNameList) , "nextToken" :: Maybe (NextToken) } -> {"things" :: Maybe (ThingNameList) , "nextToken" :: Maybe (NextToken) } ) -> ListPrincipalThingsResponse
newListPrincipalThingsResponse'  customize = (ListPrincipalThingsResponse <<< customize) { "nextToken": Nothing, "things": Nothing }



newtype ListRoleAliasesRequest = ListRoleAliasesRequest 
  { "pageSize" :: Maybe (PageSize)
  , "marker" :: Maybe (Marker)
  , "ascendingOrder" :: Maybe (AscendingOrder)
  }
derive instance newtypeListRoleAliasesRequest :: Newtype ListRoleAliasesRequest _
derive instance repGenericListRoleAliasesRequest :: Generic ListRoleAliasesRequest _
instance showListRoleAliasesRequest :: Show ListRoleAliasesRequest where show = genericShow
instance decodeListRoleAliasesRequest :: Decode ListRoleAliasesRequest where decode = genericDecode options
instance encodeListRoleAliasesRequest :: Encode ListRoleAliasesRequest where encode = genericEncode options

-- | Constructs ListRoleAliasesRequest from required parameters
newListRoleAliasesRequest :: ListRoleAliasesRequest
newListRoleAliasesRequest  = ListRoleAliasesRequest { "ascendingOrder": Nothing, "marker": Nothing, "pageSize": Nothing }

-- | Constructs ListRoleAliasesRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListRoleAliasesRequest' :: ( { "pageSize" :: Maybe (PageSize) , "marker" :: Maybe (Marker) , "ascendingOrder" :: Maybe (AscendingOrder) } -> {"pageSize" :: Maybe (PageSize) , "marker" :: Maybe (Marker) , "ascendingOrder" :: Maybe (AscendingOrder) } ) -> ListRoleAliasesRequest
newListRoleAliasesRequest'  customize = (ListRoleAliasesRequest <<< customize) { "ascendingOrder": Nothing, "marker": Nothing, "pageSize": Nothing }



newtype ListRoleAliasesResponse = ListRoleAliasesResponse 
  { "roleAliases" :: Maybe (RoleAliases)
  , "nextMarker" :: Maybe (Marker)
  }
derive instance newtypeListRoleAliasesResponse :: Newtype ListRoleAliasesResponse _
derive instance repGenericListRoleAliasesResponse :: Generic ListRoleAliasesResponse _
instance showListRoleAliasesResponse :: Show ListRoleAliasesResponse where show = genericShow
instance decodeListRoleAliasesResponse :: Decode ListRoleAliasesResponse where decode = genericDecode options
instance encodeListRoleAliasesResponse :: Encode ListRoleAliasesResponse where encode = genericEncode options

-- | Constructs ListRoleAliasesResponse from required parameters
newListRoleAliasesResponse :: ListRoleAliasesResponse
newListRoleAliasesResponse  = ListRoleAliasesResponse { "nextMarker": Nothing, "roleAliases": Nothing }

-- | Constructs ListRoleAliasesResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListRoleAliasesResponse' :: ( { "roleAliases" :: Maybe (RoleAliases) , "nextMarker" :: Maybe (Marker) } -> {"roleAliases" :: Maybe (RoleAliases) , "nextMarker" :: Maybe (Marker) } ) -> ListRoleAliasesResponse
newListRoleAliasesResponse'  customize = (ListRoleAliasesResponse <<< customize) { "nextMarker": Nothing, "roleAliases": Nothing }



newtype ListStreamsRequest = ListStreamsRequest 
  { "maxResults" :: Maybe (MaxResults)
  , "nextToken" :: Maybe (NextToken)
  , "ascendingOrder" :: Maybe (AscendingOrder)
  }
derive instance newtypeListStreamsRequest :: Newtype ListStreamsRequest _
derive instance repGenericListStreamsRequest :: Generic ListStreamsRequest _
instance showListStreamsRequest :: Show ListStreamsRequest where show = genericShow
instance decodeListStreamsRequest :: Decode ListStreamsRequest where decode = genericDecode options
instance encodeListStreamsRequest :: Encode ListStreamsRequest where encode = genericEncode options

-- | Constructs ListStreamsRequest from required parameters
newListStreamsRequest :: ListStreamsRequest
newListStreamsRequest  = ListStreamsRequest { "ascendingOrder": Nothing, "maxResults": Nothing, "nextToken": Nothing }

-- | Constructs ListStreamsRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListStreamsRequest' :: ( { "maxResults" :: Maybe (MaxResults) , "nextToken" :: Maybe (NextToken) , "ascendingOrder" :: Maybe (AscendingOrder) } -> {"maxResults" :: Maybe (MaxResults) , "nextToken" :: Maybe (NextToken) , "ascendingOrder" :: Maybe (AscendingOrder) } ) -> ListStreamsRequest
newListStreamsRequest'  customize = (ListStreamsRequest <<< customize) { "ascendingOrder": Nothing, "maxResults": Nothing, "nextToken": Nothing }



newtype ListStreamsResponse = ListStreamsResponse 
  { "streams" :: Maybe (StreamsSummary)
  , "nextToken" :: Maybe (NextToken)
  }
derive instance newtypeListStreamsResponse :: Newtype ListStreamsResponse _
derive instance repGenericListStreamsResponse :: Generic ListStreamsResponse _
instance showListStreamsResponse :: Show ListStreamsResponse where show = genericShow
instance decodeListStreamsResponse :: Decode ListStreamsResponse where decode = genericDecode options
instance encodeListStreamsResponse :: Encode ListStreamsResponse where encode = genericEncode options

-- | Constructs ListStreamsResponse from required parameters
newListStreamsResponse :: ListStreamsResponse
newListStreamsResponse  = ListStreamsResponse { "nextToken": Nothing, "streams": Nothing }

-- | Constructs ListStreamsResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListStreamsResponse' :: ( { "streams" :: Maybe (StreamsSummary) , "nextToken" :: Maybe (NextToken) } -> {"streams" :: Maybe (StreamsSummary) , "nextToken" :: Maybe (NextToken) } ) -> ListStreamsResponse
newListStreamsResponse'  customize = (ListStreamsResponse <<< customize) { "nextToken": Nothing, "streams": Nothing }



newtype ListTargetsForPolicyRequest = ListTargetsForPolicyRequest 
  { "policyName" :: (PolicyName)
  , "marker" :: Maybe (Marker)
  , "pageSize" :: Maybe (PageSize)
  }
derive instance newtypeListTargetsForPolicyRequest :: Newtype ListTargetsForPolicyRequest _
derive instance repGenericListTargetsForPolicyRequest :: Generic ListTargetsForPolicyRequest _
instance showListTargetsForPolicyRequest :: Show ListTargetsForPolicyRequest where show = genericShow
instance decodeListTargetsForPolicyRequest :: Decode ListTargetsForPolicyRequest where decode = genericDecode options
instance encodeListTargetsForPolicyRequest :: Encode ListTargetsForPolicyRequest where encode = genericEncode options

-- | Constructs ListTargetsForPolicyRequest from required parameters
newListTargetsForPolicyRequest :: PolicyName -> ListTargetsForPolicyRequest
newListTargetsForPolicyRequest _policyName = ListTargetsForPolicyRequest { "policyName": _policyName, "marker": Nothing, "pageSize": Nothing }

-- | Constructs ListTargetsForPolicyRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListTargetsForPolicyRequest' :: PolicyName -> ( { "policyName" :: (PolicyName) , "marker" :: Maybe (Marker) , "pageSize" :: Maybe (PageSize) } -> {"policyName" :: (PolicyName) , "marker" :: Maybe (Marker) , "pageSize" :: Maybe (PageSize) } ) -> ListTargetsForPolicyRequest
newListTargetsForPolicyRequest' _policyName customize = (ListTargetsForPolicyRequest <<< customize) { "policyName": _policyName, "marker": Nothing, "pageSize": Nothing }



newtype ListTargetsForPolicyResponse = ListTargetsForPolicyResponse 
  { "targets" :: Maybe (PolicyTargets)
  , "nextMarker" :: Maybe (Marker)
  }
derive instance newtypeListTargetsForPolicyResponse :: Newtype ListTargetsForPolicyResponse _
derive instance repGenericListTargetsForPolicyResponse :: Generic ListTargetsForPolicyResponse _
instance showListTargetsForPolicyResponse :: Show ListTargetsForPolicyResponse where show = genericShow
instance decodeListTargetsForPolicyResponse :: Decode ListTargetsForPolicyResponse where decode = genericDecode options
instance encodeListTargetsForPolicyResponse :: Encode ListTargetsForPolicyResponse where encode = genericEncode options

-- | Constructs ListTargetsForPolicyResponse from required parameters
newListTargetsForPolicyResponse :: ListTargetsForPolicyResponse
newListTargetsForPolicyResponse  = ListTargetsForPolicyResponse { "nextMarker": Nothing, "targets": Nothing }

-- | Constructs ListTargetsForPolicyResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListTargetsForPolicyResponse' :: ( { "targets" :: Maybe (PolicyTargets) , "nextMarker" :: Maybe (Marker) } -> {"targets" :: Maybe (PolicyTargets) , "nextMarker" :: Maybe (Marker) } ) -> ListTargetsForPolicyResponse
newListTargetsForPolicyResponse'  customize = (ListTargetsForPolicyResponse <<< customize) { "nextMarker": Nothing, "targets": Nothing }



newtype ListThingGroupsForThingRequest = ListThingGroupsForThingRequest 
  { "thingName" :: (ThingName)
  , "nextToken" :: Maybe (NextToken)
  , "maxResults" :: Maybe (RegistryMaxResults)
  }
derive instance newtypeListThingGroupsForThingRequest :: Newtype ListThingGroupsForThingRequest _
derive instance repGenericListThingGroupsForThingRequest :: Generic ListThingGroupsForThingRequest _
instance showListThingGroupsForThingRequest :: Show ListThingGroupsForThingRequest where show = genericShow
instance decodeListThingGroupsForThingRequest :: Decode ListThingGroupsForThingRequest where decode = genericDecode options
instance encodeListThingGroupsForThingRequest :: Encode ListThingGroupsForThingRequest where encode = genericEncode options

-- | Constructs ListThingGroupsForThingRequest from required parameters
newListThingGroupsForThingRequest :: ThingName -> ListThingGroupsForThingRequest
newListThingGroupsForThingRequest _thingName = ListThingGroupsForThingRequest { "thingName": _thingName, "maxResults": Nothing, "nextToken": Nothing }

-- | Constructs ListThingGroupsForThingRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListThingGroupsForThingRequest' :: ThingName -> ( { "thingName" :: (ThingName) , "nextToken" :: Maybe (NextToken) , "maxResults" :: Maybe (RegistryMaxResults) } -> {"thingName" :: (ThingName) , "nextToken" :: Maybe (NextToken) , "maxResults" :: Maybe (RegistryMaxResults) } ) -> ListThingGroupsForThingRequest
newListThingGroupsForThingRequest' _thingName customize = (ListThingGroupsForThingRequest <<< customize) { "thingName": _thingName, "maxResults": Nothing, "nextToken": Nothing }



newtype ListThingGroupsForThingResponse = ListThingGroupsForThingResponse 
  { "thingGroups" :: Maybe (ThingGroupNameAndArnList)
  , "nextToken" :: Maybe (NextToken)
  }
derive instance newtypeListThingGroupsForThingResponse :: Newtype ListThingGroupsForThingResponse _
derive instance repGenericListThingGroupsForThingResponse :: Generic ListThingGroupsForThingResponse _
instance showListThingGroupsForThingResponse :: Show ListThingGroupsForThingResponse where show = genericShow
instance decodeListThingGroupsForThingResponse :: Decode ListThingGroupsForThingResponse where decode = genericDecode options
instance encodeListThingGroupsForThingResponse :: Encode ListThingGroupsForThingResponse where encode = genericEncode options

-- | Constructs ListThingGroupsForThingResponse from required parameters
newListThingGroupsForThingResponse :: ListThingGroupsForThingResponse
newListThingGroupsForThingResponse  = ListThingGroupsForThingResponse { "nextToken": Nothing, "thingGroups": Nothing }

-- | Constructs ListThingGroupsForThingResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListThingGroupsForThingResponse' :: ( { "thingGroups" :: Maybe (ThingGroupNameAndArnList) , "nextToken" :: Maybe (NextToken) } -> {"thingGroups" :: Maybe (ThingGroupNameAndArnList) , "nextToken" :: Maybe (NextToken) } ) -> ListThingGroupsForThingResponse
newListThingGroupsForThingResponse'  customize = (ListThingGroupsForThingResponse <<< customize) { "nextToken": Nothing, "thingGroups": Nothing }



newtype ListThingGroupsRequest = ListThingGroupsRequest 
  { "nextToken" :: Maybe (NextToken)
  , "maxResults" :: Maybe (RegistryMaxResults)
  , "parentGroup" :: Maybe (ThingGroupName)
  , "namePrefixFilter" :: Maybe (ThingGroupName)
  , "recursive" :: Maybe (RecursiveWithoutDefault)
  }
derive instance newtypeListThingGroupsRequest :: Newtype ListThingGroupsRequest _
derive instance repGenericListThingGroupsRequest :: Generic ListThingGroupsRequest _
instance showListThingGroupsRequest :: Show ListThingGroupsRequest where show = genericShow
instance decodeListThingGroupsRequest :: Decode ListThingGroupsRequest where decode = genericDecode options
instance encodeListThingGroupsRequest :: Encode ListThingGroupsRequest where encode = genericEncode options

-- | Constructs ListThingGroupsRequest from required parameters
newListThingGroupsRequest :: ListThingGroupsRequest
newListThingGroupsRequest  = ListThingGroupsRequest { "maxResults": Nothing, "namePrefixFilter": Nothing, "nextToken": Nothing, "parentGroup": Nothing, "recursive": Nothing }

-- | Constructs ListThingGroupsRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListThingGroupsRequest' :: ( { "nextToken" :: Maybe (NextToken) , "maxResults" :: Maybe (RegistryMaxResults) , "parentGroup" :: Maybe (ThingGroupName) , "namePrefixFilter" :: Maybe (ThingGroupName) , "recursive" :: Maybe (RecursiveWithoutDefault) } -> {"nextToken" :: Maybe (NextToken) , "maxResults" :: Maybe (RegistryMaxResults) , "parentGroup" :: Maybe (ThingGroupName) , "namePrefixFilter" :: Maybe (ThingGroupName) , "recursive" :: Maybe (RecursiveWithoutDefault) } ) -> ListThingGroupsRequest
newListThingGroupsRequest'  customize = (ListThingGroupsRequest <<< customize) { "maxResults": Nothing, "namePrefixFilter": Nothing, "nextToken": Nothing, "parentGroup": Nothing, "recursive": Nothing }



newtype ListThingGroupsResponse = ListThingGroupsResponse 
  { "thingGroups" :: Maybe (ThingGroupNameAndArnList)
  , "nextToken" :: Maybe (NextToken)
  }
derive instance newtypeListThingGroupsResponse :: Newtype ListThingGroupsResponse _
derive instance repGenericListThingGroupsResponse :: Generic ListThingGroupsResponse _
instance showListThingGroupsResponse :: Show ListThingGroupsResponse where show = genericShow
instance decodeListThingGroupsResponse :: Decode ListThingGroupsResponse where decode = genericDecode options
instance encodeListThingGroupsResponse :: Encode ListThingGroupsResponse where encode = genericEncode options

-- | Constructs ListThingGroupsResponse from required parameters
newListThingGroupsResponse :: ListThingGroupsResponse
newListThingGroupsResponse  = ListThingGroupsResponse { "nextToken": Nothing, "thingGroups": Nothing }

-- | Constructs ListThingGroupsResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListThingGroupsResponse' :: ( { "thingGroups" :: Maybe (ThingGroupNameAndArnList) , "nextToken" :: Maybe (NextToken) } -> {"thingGroups" :: Maybe (ThingGroupNameAndArnList) , "nextToken" :: Maybe (NextToken) } ) -> ListThingGroupsResponse
newListThingGroupsResponse'  customize = (ListThingGroupsResponse <<< customize) { "nextToken": Nothing, "thingGroups": Nothing }



-- | <p>The input for the ListThingPrincipal operation.</p>
newtype ListThingPrincipalsRequest = ListThingPrincipalsRequest 
  { "thingName" :: (ThingName)
  }
derive instance newtypeListThingPrincipalsRequest :: Newtype ListThingPrincipalsRequest _
derive instance repGenericListThingPrincipalsRequest :: Generic ListThingPrincipalsRequest _
instance showListThingPrincipalsRequest :: Show ListThingPrincipalsRequest where show = genericShow
instance decodeListThingPrincipalsRequest :: Decode ListThingPrincipalsRequest where decode = genericDecode options
instance encodeListThingPrincipalsRequest :: Encode ListThingPrincipalsRequest where encode = genericEncode options

-- | Constructs ListThingPrincipalsRequest from required parameters
newListThingPrincipalsRequest :: ThingName -> ListThingPrincipalsRequest
newListThingPrincipalsRequest _thingName = ListThingPrincipalsRequest { "thingName": _thingName }

-- | Constructs ListThingPrincipalsRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListThingPrincipalsRequest' :: ThingName -> ( { "thingName" :: (ThingName) } -> {"thingName" :: (ThingName) } ) -> ListThingPrincipalsRequest
newListThingPrincipalsRequest' _thingName customize = (ListThingPrincipalsRequest <<< customize) { "thingName": _thingName }



-- | <p>The output from the ListThingPrincipals operation.</p>
newtype ListThingPrincipalsResponse = ListThingPrincipalsResponse 
  { "principals" :: Maybe (Principals)
  }
derive instance newtypeListThingPrincipalsResponse :: Newtype ListThingPrincipalsResponse _
derive instance repGenericListThingPrincipalsResponse :: Generic ListThingPrincipalsResponse _
instance showListThingPrincipalsResponse :: Show ListThingPrincipalsResponse where show = genericShow
instance decodeListThingPrincipalsResponse :: Decode ListThingPrincipalsResponse where decode = genericDecode options
instance encodeListThingPrincipalsResponse :: Encode ListThingPrincipalsResponse where encode = genericEncode options

-- | Constructs ListThingPrincipalsResponse from required parameters
newListThingPrincipalsResponse :: ListThingPrincipalsResponse
newListThingPrincipalsResponse  = ListThingPrincipalsResponse { "principals": Nothing }

-- | Constructs ListThingPrincipalsResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListThingPrincipalsResponse' :: ( { "principals" :: Maybe (Principals) } -> {"principals" :: Maybe (Principals) } ) -> ListThingPrincipalsResponse
newListThingPrincipalsResponse'  customize = (ListThingPrincipalsResponse <<< customize) { "principals": Nothing }



newtype ListThingRegistrationTaskReportsRequest = ListThingRegistrationTaskReportsRequest 
  { "taskId" :: (TaskId)
  , "reportType" :: (ReportType)
  , "nextToken" :: Maybe (NextToken)
  , "maxResults" :: Maybe (RegistryMaxResults)
  }
derive instance newtypeListThingRegistrationTaskReportsRequest :: Newtype ListThingRegistrationTaskReportsRequest _
derive instance repGenericListThingRegistrationTaskReportsRequest :: Generic ListThingRegistrationTaskReportsRequest _
instance showListThingRegistrationTaskReportsRequest :: Show ListThingRegistrationTaskReportsRequest where show = genericShow
instance decodeListThingRegistrationTaskReportsRequest :: Decode ListThingRegistrationTaskReportsRequest where decode = genericDecode options
instance encodeListThingRegistrationTaskReportsRequest :: Encode ListThingRegistrationTaskReportsRequest where encode = genericEncode options

-- | Constructs ListThingRegistrationTaskReportsRequest from required parameters
newListThingRegistrationTaskReportsRequest :: ReportType -> TaskId -> ListThingRegistrationTaskReportsRequest
newListThingRegistrationTaskReportsRequest _reportType _taskId = ListThingRegistrationTaskReportsRequest { "reportType": _reportType, "taskId": _taskId, "maxResults": Nothing, "nextToken": Nothing }

-- | Constructs ListThingRegistrationTaskReportsRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListThingRegistrationTaskReportsRequest' :: ReportType -> TaskId -> ( { "taskId" :: (TaskId) , "reportType" :: (ReportType) , "nextToken" :: Maybe (NextToken) , "maxResults" :: Maybe (RegistryMaxResults) } -> {"taskId" :: (TaskId) , "reportType" :: (ReportType) , "nextToken" :: Maybe (NextToken) , "maxResults" :: Maybe (RegistryMaxResults) } ) -> ListThingRegistrationTaskReportsRequest
newListThingRegistrationTaskReportsRequest' _reportType _taskId customize = (ListThingRegistrationTaskReportsRequest <<< customize) { "reportType": _reportType, "taskId": _taskId, "maxResults": Nothing, "nextToken": Nothing }



newtype ListThingRegistrationTaskReportsResponse = ListThingRegistrationTaskReportsResponse 
  { "resourceLinks" :: Maybe (S3FileUrlList)
  , "reportType" :: Maybe (ReportType)
  , "nextToken" :: Maybe (NextToken)
  }
derive instance newtypeListThingRegistrationTaskReportsResponse :: Newtype ListThingRegistrationTaskReportsResponse _
derive instance repGenericListThingRegistrationTaskReportsResponse :: Generic ListThingRegistrationTaskReportsResponse _
instance showListThingRegistrationTaskReportsResponse :: Show ListThingRegistrationTaskReportsResponse where show = genericShow
instance decodeListThingRegistrationTaskReportsResponse :: Decode ListThingRegistrationTaskReportsResponse where decode = genericDecode options
instance encodeListThingRegistrationTaskReportsResponse :: Encode ListThingRegistrationTaskReportsResponse where encode = genericEncode options

-- | Constructs ListThingRegistrationTaskReportsResponse from required parameters
newListThingRegistrationTaskReportsResponse :: ListThingRegistrationTaskReportsResponse
newListThingRegistrationTaskReportsResponse  = ListThingRegistrationTaskReportsResponse { "nextToken": Nothing, "reportType": Nothing, "resourceLinks": Nothing }

-- | Constructs ListThingRegistrationTaskReportsResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListThingRegistrationTaskReportsResponse' :: ( { "resourceLinks" :: Maybe (S3FileUrlList) , "reportType" :: Maybe (ReportType) , "nextToken" :: Maybe (NextToken) } -> {"resourceLinks" :: Maybe (S3FileUrlList) , "reportType" :: Maybe (ReportType) , "nextToken" :: Maybe (NextToken) } ) -> ListThingRegistrationTaskReportsResponse
newListThingRegistrationTaskReportsResponse'  customize = (ListThingRegistrationTaskReportsResponse <<< customize) { "nextToken": Nothing, "reportType": Nothing, "resourceLinks": Nothing }



newtype ListThingRegistrationTasksRequest = ListThingRegistrationTasksRequest 
  { "nextToken" :: Maybe (NextToken)
  , "maxResults" :: Maybe (RegistryMaxResults)
  , "status" :: Maybe (Status)
  }
derive instance newtypeListThingRegistrationTasksRequest :: Newtype ListThingRegistrationTasksRequest _
derive instance repGenericListThingRegistrationTasksRequest :: Generic ListThingRegistrationTasksRequest _
instance showListThingRegistrationTasksRequest :: Show ListThingRegistrationTasksRequest where show = genericShow
instance decodeListThingRegistrationTasksRequest :: Decode ListThingRegistrationTasksRequest where decode = genericDecode options
instance encodeListThingRegistrationTasksRequest :: Encode ListThingRegistrationTasksRequest where encode = genericEncode options

-- | Constructs ListThingRegistrationTasksRequest from required parameters
newListThingRegistrationTasksRequest :: ListThingRegistrationTasksRequest
newListThingRegistrationTasksRequest  = ListThingRegistrationTasksRequest { "maxResults": Nothing, "nextToken": Nothing, "status": Nothing }

-- | Constructs ListThingRegistrationTasksRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListThingRegistrationTasksRequest' :: ( { "nextToken" :: Maybe (NextToken) , "maxResults" :: Maybe (RegistryMaxResults) , "status" :: Maybe (Status) } -> {"nextToken" :: Maybe (NextToken) , "maxResults" :: Maybe (RegistryMaxResults) , "status" :: Maybe (Status) } ) -> ListThingRegistrationTasksRequest
newListThingRegistrationTasksRequest'  customize = (ListThingRegistrationTasksRequest <<< customize) { "maxResults": Nothing, "nextToken": Nothing, "status": Nothing }



newtype ListThingRegistrationTasksResponse = ListThingRegistrationTasksResponse 
  { "taskIds" :: Maybe (TaskIdList)
  , "nextToken" :: Maybe (NextToken)
  }
derive instance newtypeListThingRegistrationTasksResponse :: Newtype ListThingRegistrationTasksResponse _
derive instance repGenericListThingRegistrationTasksResponse :: Generic ListThingRegistrationTasksResponse _
instance showListThingRegistrationTasksResponse :: Show ListThingRegistrationTasksResponse where show = genericShow
instance decodeListThingRegistrationTasksResponse :: Decode ListThingRegistrationTasksResponse where decode = genericDecode options
instance encodeListThingRegistrationTasksResponse :: Encode ListThingRegistrationTasksResponse where encode = genericEncode options

-- | Constructs ListThingRegistrationTasksResponse from required parameters
newListThingRegistrationTasksResponse :: ListThingRegistrationTasksResponse
newListThingRegistrationTasksResponse  = ListThingRegistrationTasksResponse { "nextToken": Nothing, "taskIds": Nothing }

-- | Constructs ListThingRegistrationTasksResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListThingRegistrationTasksResponse' :: ( { "taskIds" :: Maybe (TaskIdList) , "nextToken" :: Maybe (NextToken) } -> {"taskIds" :: Maybe (TaskIdList) , "nextToken" :: Maybe (NextToken) } ) -> ListThingRegistrationTasksResponse
newListThingRegistrationTasksResponse'  customize = (ListThingRegistrationTasksResponse <<< customize) { "nextToken": Nothing, "taskIds": Nothing }



-- | <p>The input for the ListThingTypes operation.</p>
newtype ListThingTypesRequest = ListThingTypesRequest 
  { "nextToken" :: Maybe (NextToken)
  , "maxResults" :: Maybe (RegistryMaxResults)
  , "thingTypeName" :: Maybe (ThingTypeName)
  }
derive instance newtypeListThingTypesRequest :: Newtype ListThingTypesRequest _
derive instance repGenericListThingTypesRequest :: Generic ListThingTypesRequest _
instance showListThingTypesRequest :: Show ListThingTypesRequest where show = genericShow
instance decodeListThingTypesRequest :: Decode ListThingTypesRequest where decode = genericDecode options
instance encodeListThingTypesRequest :: Encode ListThingTypesRequest where encode = genericEncode options

-- | Constructs ListThingTypesRequest from required parameters
newListThingTypesRequest :: ListThingTypesRequest
newListThingTypesRequest  = ListThingTypesRequest { "maxResults": Nothing, "nextToken": Nothing, "thingTypeName": Nothing }

-- | Constructs ListThingTypesRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListThingTypesRequest' :: ( { "nextToken" :: Maybe (NextToken) , "maxResults" :: Maybe (RegistryMaxResults) , "thingTypeName" :: Maybe (ThingTypeName) } -> {"nextToken" :: Maybe (NextToken) , "maxResults" :: Maybe (RegistryMaxResults) , "thingTypeName" :: Maybe (ThingTypeName) } ) -> ListThingTypesRequest
newListThingTypesRequest'  customize = (ListThingTypesRequest <<< customize) { "maxResults": Nothing, "nextToken": Nothing, "thingTypeName": Nothing }



-- | <p>The output for the ListThingTypes operation.</p>
newtype ListThingTypesResponse = ListThingTypesResponse 
  { "thingTypes" :: Maybe (ThingTypeList)
  , "nextToken" :: Maybe (NextToken)
  }
derive instance newtypeListThingTypesResponse :: Newtype ListThingTypesResponse _
derive instance repGenericListThingTypesResponse :: Generic ListThingTypesResponse _
instance showListThingTypesResponse :: Show ListThingTypesResponse where show = genericShow
instance decodeListThingTypesResponse :: Decode ListThingTypesResponse where decode = genericDecode options
instance encodeListThingTypesResponse :: Encode ListThingTypesResponse where encode = genericEncode options

-- | Constructs ListThingTypesResponse from required parameters
newListThingTypesResponse :: ListThingTypesResponse
newListThingTypesResponse  = ListThingTypesResponse { "nextToken": Nothing, "thingTypes": Nothing }

-- | Constructs ListThingTypesResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListThingTypesResponse' :: ( { "thingTypes" :: Maybe (ThingTypeList) , "nextToken" :: Maybe (NextToken) } -> {"thingTypes" :: Maybe (ThingTypeList) , "nextToken" :: Maybe (NextToken) } ) -> ListThingTypesResponse
newListThingTypesResponse'  customize = (ListThingTypesResponse <<< customize) { "nextToken": Nothing, "thingTypes": Nothing }



newtype ListThingsInThingGroupRequest = ListThingsInThingGroupRequest 
  { "thingGroupName" :: (ThingGroupName)
  , "recursive" :: Maybe (Recursive)
  , "nextToken" :: Maybe (NextToken)
  , "maxResults" :: Maybe (RegistryMaxResults)
  }
derive instance newtypeListThingsInThingGroupRequest :: Newtype ListThingsInThingGroupRequest _
derive instance repGenericListThingsInThingGroupRequest :: Generic ListThingsInThingGroupRequest _
instance showListThingsInThingGroupRequest :: Show ListThingsInThingGroupRequest where show = genericShow
instance decodeListThingsInThingGroupRequest :: Decode ListThingsInThingGroupRequest where decode = genericDecode options
instance encodeListThingsInThingGroupRequest :: Encode ListThingsInThingGroupRequest where encode = genericEncode options

-- | Constructs ListThingsInThingGroupRequest from required parameters
newListThingsInThingGroupRequest :: ThingGroupName -> ListThingsInThingGroupRequest
newListThingsInThingGroupRequest _thingGroupName = ListThingsInThingGroupRequest { "thingGroupName": _thingGroupName, "maxResults": Nothing, "nextToken": Nothing, "recursive": Nothing }

-- | Constructs ListThingsInThingGroupRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListThingsInThingGroupRequest' :: ThingGroupName -> ( { "thingGroupName" :: (ThingGroupName) , "recursive" :: Maybe (Recursive) , "nextToken" :: Maybe (NextToken) , "maxResults" :: Maybe (RegistryMaxResults) } -> {"thingGroupName" :: (ThingGroupName) , "recursive" :: Maybe (Recursive) , "nextToken" :: Maybe (NextToken) , "maxResults" :: Maybe (RegistryMaxResults) } ) -> ListThingsInThingGroupRequest
newListThingsInThingGroupRequest' _thingGroupName customize = (ListThingsInThingGroupRequest <<< customize) { "thingGroupName": _thingGroupName, "maxResults": Nothing, "nextToken": Nothing, "recursive": Nothing }



newtype ListThingsInThingGroupResponse = ListThingsInThingGroupResponse 
  { "things" :: Maybe (ThingNameList)
  , "nextToken" :: Maybe (NextToken)
  }
derive instance newtypeListThingsInThingGroupResponse :: Newtype ListThingsInThingGroupResponse _
derive instance repGenericListThingsInThingGroupResponse :: Generic ListThingsInThingGroupResponse _
instance showListThingsInThingGroupResponse :: Show ListThingsInThingGroupResponse where show = genericShow
instance decodeListThingsInThingGroupResponse :: Decode ListThingsInThingGroupResponse where decode = genericDecode options
instance encodeListThingsInThingGroupResponse :: Encode ListThingsInThingGroupResponse where encode = genericEncode options

-- | Constructs ListThingsInThingGroupResponse from required parameters
newListThingsInThingGroupResponse :: ListThingsInThingGroupResponse
newListThingsInThingGroupResponse  = ListThingsInThingGroupResponse { "nextToken": Nothing, "things": Nothing }

-- | Constructs ListThingsInThingGroupResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListThingsInThingGroupResponse' :: ( { "things" :: Maybe (ThingNameList) , "nextToken" :: Maybe (NextToken) } -> {"things" :: Maybe (ThingNameList) , "nextToken" :: Maybe (NextToken) } ) -> ListThingsInThingGroupResponse
newListThingsInThingGroupResponse'  customize = (ListThingsInThingGroupResponse <<< customize) { "nextToken": Nothing, "things": Nothing }



-- | <p>The input for the ListThings operation.</p>
newtype ListThingsRequest = ListThingsRequest 
  { "nextToken" :: Maybe (NextToken)
  , "maxResults" :: Maybe (RegistryMaxResults)
  , "attributeName" :: Maybe (AttributeName)
  , "attributeValue" :: Maybe (AttributeValue)
  , "thingTypeName" :: Maybe (ThingTypeName)
  }
derive instance newtypeListThingsRequest :: Newtype ListThingsRequest _
derive instance repGenericListThingsRequest :: Generic ListThingsRequest _
instance showListThingsRequest :: Show ListThingsRequest where show = genericShow
instance decodeListThingsRequest :: Decode ListThingsRequest where decode = genericDecode options
instance encodeListThingsRequest :: Encode ListThingsRequest where encode = genericEncode options

-- | Constructs ListThingsRequest from required parameters
newListThingsRequest :: ListThingsRequest
newListThingsRequest  = ListThingsRequest { "attributeName": Nothing, "attributeValue": Nothing, "maxResults": Nothing, "nextToken": Nothing, "thingTypeName": Nothing }

-- | Constructs ListThingsRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListThingsRequest' :: ( { "nextToken" :: Maybe (NextToken) , "maxResults" :: Maybe (RegistryMaxResults) , "attributeName" :: Maybe (AttributeName) , "attributeValue" :: Maybe (AttributeValue) , "thingTypeName" :: Maybe (ThingTypeName) } -> {"nextToken" :: Maybe (NextToken) , "maxResults" :: Maybe (RegistryMaxResults) , "attributeName" :: Maybe (AttributeName) , "attributeValue" :: Maybe (AttributeValue) , "thingTypeName" :: Maybe (ThingTypeName) } ) -> ListThingsRequest
newListThingsRequest'  customize = (ListThingsRequest <<< customize) { "attributeName": Nothing, "attributeValue": Nothing, "maxResults": Nothing, "nextToken": Nothing, "thingTypeName": Nothing }



-- | <p>The output from the ListThings operation.</p>
newtype ListThingsResponse = ListThingsResponse 
  { "things" :: Maybe (ThingAttributeList)
  , "nextToken" :: Maybe (NextToken)
  }
derive instance newtypeListThingsResponse :: Newtype ListThingsResponse _
derive instance repGenericListThingsResponse :: Generic ListThingsResponse _
instance showListThingsResponse :: Show ListThingsResponse where show = genericShow
instance decodeListThingsResponse :: Decode ListThingsResponse where decode = genericDecode options
instance encodeListThingsResponse :: Encode ListThingsResponse where encode = genericEncode options

-- | Constructs ListThingsResponse from required parameters
newListThingsResponse :: ListThingsResponse
newListThingsResponse  = ListThingsResponse { "nextToken": Nothing, "things": Nothing }

-- | Constructs ListThingsResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListThingsResponse' :: ( { "things" :: Maybe (ThingAttributeList) , "nextToken" :: Maybe (NextToken) } -> {"things" :: Maybe (ThingAttributeList) , "nextToken" :: Maybe (NextToken) } ) -> ListThingsResponse
newListThingsResponse'  customize = (ListThingsResponse <<< customize) { "nextToken": Nothing, "things": Nothing }



-- | <p>The input for the ListTopicRules operation.</p>
newtype ListTopicRulesRequest = ListTopicRulesRequest 
  { "topic" :: Maybe (Topic)
  , "maxResults" :: Maybe (GEMaxResults)
  , "nextToken" :: Maybe (NextToken)
  , "ruleDisabled" :: Maybe (IsDisabled)
  }
derive instance newtypeListTopicRulesRequest :: Newtype ListTopicRulesRequest _
derive instance repGenericListTopicRulesRequest :: Generic ListTopicRulesRequest _
instance showListTopicRulesRequest :: Show ListTopicRulesRequest where show = genericShow
instance decodeListTopicRulesRequest :: Decode ListTopicRulesRequest where decode = genericDecode options
instance encodeListTopicRulesRequest :: Encode ListTopicRulesRequest where encode = genericEncode options

-- | Constructs ListTopicRulesRequest from required parameters
newListTopicRulesRequest :: ListTopicRulesRequest
newListTopicRulesRequest  = ListTopicRulesRequest { "maxResults": Nothing, "nextToken": Nothing, "ruleDisabled": Nothing, "topic": Nothing }

-- | Constructs ListTopicRulesRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListTopicRulesRequest' :: ( { "topic" :: Maybe (Topic) , "maxResults" :: Maybe (GEMaxResults) , "nextToken" :: Maybe (NextToken) , "ruleDisabled" :: Maybe (IsDisabled) } -> {"topic" :: Maybe (Topic) , "maxResults" :: Maybe (GEMaxResults) , "nextToken" :: Maybe (NextToken) , "ruleDisabled" :: Maybe (IsDisabled) } ) -> ListTopicRulesRequest
newListTopicRulesRequest'  customize = (ListTopicRulesRequest <<< customize) { "maxResults": Nothing, "nextToken": Nothing, "ruleDisabled": Nothing, "topic": Nothing }



-- | <p>The output from the ListTopicRules operation.</p>
newtype ListTopicRulesResponse = ListTopicRulesResponse 
  { "rules" :: Maybe (TopicRuleList)
  , "nextToken" :: Maybe (NextToken)
  }
derive instance newtypeListTopicRulesResponse :: Newtype ListTopicRulesResponse _
derive instance repGenericListTopicRulesResponse :: Generic ListTopicRulesResponse _
instance showListTopicRulesResponse :: Show ListTopicRulesResponse where show = genericShow
instance decodeListTopicRulesResponse :: Decode ListTopicRulesResponse where decode = genericDecode options
instance encodeListTopicRulesResponse :: Encode ListTopicRulesResponse where encode = genericEncode options

-- | Constructs ListTopicRulesResponse from required parameters
newListTopicRulesResponse :: ListTopicRulesResponse
newListTopicRulesResponse  = ListTopicRulesResponse { "nextToken": Nothing, "rules": Nothing }

-- | Constructs ListTopicRulesResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListTopicRulesResponse' :: ( { "rules" :: Maybe (TopicRuleList) , "nextToken" :: Maybe (NextToken) } -> {"rules" :: Maybe (TopicRuleList) , "nextToken" :: Maybe (NextToken) } ) -> ListTopicRulesResponse
newListTopicRulesResponse'  customize = (ListTopicRulesResponse <<< customize) { "nextToken": Nothing, "rules": Nothing }



newtype ListV2LoggingLevelsRequest = ListV2LoggingLevelsRequest 
  { "targetType" :: Maybe (LogTargetType)
  , "nextToken" :: Maybe (NextToken)
  , "maxResults" :: Maybe (SkyfallMaxResults)
  }
derive instance newtypeListV2LoggingLevelsRequest :: Newtype ListV2LoggingLevelsRequest _
derive instance repGenericListV2LoggingLevelsRequest :: Generic ListV2LoggingLevelsRequest _
instance showListV2LoggingLevelsRequest :: Show ListV2LoggingLevelsRequest where show = genericShow
instance decodeListV2LoggingLevelsRequest :: Decode ListV2LoggingLevelsRequest where decode = genericDecode options
instance encodeListV2LoggingLevelsRequest :: Encode ListV2LoggingLevelsRequest where encode = genericEncode options

-- | Constructs ListV2LoggingLevelsRequest from required parameters
newListV2LoggingLevelsRequest :: ListV2LoggingLevelsRequest
newListV2LoggingLevelsRequest  = ListV2LoggingLevelsRequest { "maxResults": Nothing, "nextToken": Nothing, "targetType": Nothing }

-- | Constructs ListV2LoggingLevelsRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListV2LoggingLevelsRequest' :: ( { "targetType" :: Maybe (LogTargetType) , "nextToken" :: Maybe (NextToken) , "maxResults" :: Maybe (SkyfallMaxResults) } -> {"targetType" :: Maybe (LogTargetType) , "nextToken" :: Maybe (NextToken) , "maxResults" :: Maybe (SkyfallMaxResults) } ) -> ListV2LoggingLevelsRequest
newListV2LoggingLevelsRequest'  customize = (ListV2LoggingLevelsRequest <<< customize) { "maxResults": Nothing, "nextToken": Nothing, "targetType": Nothing }



newtype ListV2LoggingLevelsResponse = ListV2LoggingLevelsResponse 
  { "logTargetConfigurations" :: Maybe (LogTargetConfigurations)
  , "nextToken" :: Maybe (NextToken)
  }
derive instance newtypeListV2LoggingLevelsResponse :: Newtype ListV2LoggingLevelsResponse _
derive instance repGenericListV2LoggingLevelsResponse :: Generic ListV2LoggingLevelsResponse _
instance showListV2LoggingLevelsResponse :: Show ListV2LoggingLevelsResponse where show = genericShow
instance decodeListV2LoggingLevelsResponse :: Decode ListV2LoggingLevelsResponse where decode = genericDecode options
instance encodeListV2LoggingLevelsResponse :: Encode ListV2LoggingLevelsResponse where encode = genericEncode options

-- | Constructs ListV2LoggingLevelsResponse from required parameters
newListV2LoggingLevelsResponse :: ListV2LoggingLevelsResponse
newListV2LoggingLevelsResponse  = ListV2LoggingLevelsResponse { "logTargetConfigurations": Nothing, "nextToken": Nothing }

-- | Constructs ListV2LoggingLevelsResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListV2LoggingLevelsResponse' :: ( { "logTargetConfigurations" :: Maybe (LogTargetConfigurations) , "nextToken" :: Maybe (NextToken) } -> {"logTargetConfigurations" :: Maybe (LogTargetConfigurations) , "nextToken" :: Maybe (NextToken) } ) -> ListV2LoggingLevelsResponse
newListV2LoggingLevelsResponse'  customize = (ListV2LoggingLevelsResponse <<< customize) { "logTargetConfigurations": Nothing, "nextToken": Nothing }



newtype LogLevel = LogLevel String
derive instance newtypeLogLevel :: Newtype LogLevel _
derive instance repGenericLogLevel :: Generic LogLevel _
instance showLogLevel :: Show LogLevel where show = genericShow
instance decodeLogLevel :: Decode LogLevel where decode = genericDecode options
instance encodeLogLevel :: Encode LogLevel where encode = genericEncode options



-- | <p>A log target.</p>
newtype LogTarget = LogTarget 
  { "targetType" :: (LogTargetType)
  , "targetName" :: Maybe (LogTargetName)
  }
derive instance newtypeLogTarget :: Newtype LogTarget _
derive instance repGenericLogTarget :: Generic LogTarget _
instance showLogTarget :: Show LogTarget where show = genericShow
instance decodeLogTarget :: Decode LogTarget where decode = genericDecode options
instance encodeLogTarget :: Encode LogTarget where encode = genericEncode options

-- | Constructs LogTarget from required parameters
newLogTarget :: LogTargetType -> LogTarget
newLogTarget _targetType = LogTarget { "targetType": _targetType, "targetName": Nothing }

-- | Constructs LogTarget's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newLogTarget' :: LogTargetType -> ( { "targetType" :: (LogTargetType) , "targetName" :: Maybe (LogTargetName) } -> {"targetType" :: (LogTargetType) , "targetName" :: Maybe (LogTargetName) } ) -> LogTarget
newLogTarget' _targetType customize = (LogTarget <<< customize) { "targetType": _targetType, "targetName": Nothing }



-- | <p>The target configuration.</p>
newtype LogTargetConfiguration = LogTargetConfiguration 
  { "logTarget" :: Maybe (LogTarget)
  , "logLevel" :: Maybe (LogLevel)
  }
derive instance newtypeLogTargetConfiguration :: Newtype LogTargetConfiguration _
derive instance repGenericLogTargetConfiguration :: Generic LogTargetConfiguration _
instance showLogTargetConfiguration :: Show LogTargetConfiguration where show = genericShow
instance decodeLogTargetConfiguration :: Decode LogTargetConfiguration where decode = genericDecode options
instance encodeLogTargetConfiguration :: Encode LogTargetConfiguration where encode = genericEncode options

-- | Constructs LogTargetConfiguration from required parameters
newLogTargetConfiguration :: LogTargetConfiguration
newLogTargetConfiguration  = LogTargetConfiguration { "logLevel": Nothing, "logTarget": Nothing }

-- | Constructs LogTargetConfiguration's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newLogTargetConfiguration' :: ( { "logTarget" :: Maybe (LogTarget) , "logLevel" :: Maybe (LogLevel) } -> {"logTarget" :: Maybe (LogTarget) , "logLevel" :: Maybe (LogLevel) } ) -> LogTargetConfiguration
newLogTargetConfiguration'  customize = (LogTargetConfiguration <<< customize) { "logLevel": Nothing, "logTarget": Nothing }



newtype LogTargetConfigurations = LogTargetConfigurations (Array LogTargetConfiguration)
derive instance newtypeLogTargetConfigurations :: Newtype LogTargetConfigurations _
derive instance repGenericLogTargetConfigurations :: Generic LogTargetConfigurations _
instance showLogTargetConfigurations :: Show LogTargetConfigurations where show = genericShow
instance decodeLogTargetConfigurations :: Decode LogTargetConfigurations where decode = genericDecode options
instance encodeLogTargetConfigurations :: Encode LogTargetConfigurations where encode = genericEncode options



newtype LogTargetName = LogTargetName String
derive instance newtypeLogTargetName :: Newtype LogTargetName _
derive instance repGenericLogTargetName :: Generic LogTargetName _
instance showLogTargetName :: Show LogTargetName where show = genericShow
instance decodeLogTargetName :: Decode LogTargetName where decode = genericDecode options
instance encodeLogTargetName :: Encode LogTargetName where encode = genericEncode options



newtype LogTargetType = LogTargetType String
derive instance newtypeLogTargetType :: Newtype LogTargetType _
derive instance repGenericLogTargetType :: Generic LogTargetType _
instance showLogTargetType :: Show LogTargetType where show = genericShow
instance decodeLogTargetType :: Decode LogTargetType where decode = genericDecode options
instance encodeLogTargetType :: Encode LogTargetType where encode = genericEncode options



-- | <p>Describes the logging options payload.</p>
newtype LoggingOptionsPayload = LoggingOptionsPayload 
  { "roleArn" :: (AwsArn)
  , "logLevel" :: Maybe (LogLevel)
  }
derive instance newtypeLoggingOptionsPayload :: Newtype LoggingOptionsPayload _
derive instance repGenericLoggingOptionsPayload :: Generic LoggingOptionsPayload _
instance showLoggingOptionsPayload :: Show LoggingOptionsPayload where show = genericShow
instance decodeLoggingOptionsPayload :: Decode LoggingOptionsPayload where decode = genericDecode options
instance encodeLoggingOptionsPayload :: Encode LoggingOptionsPayload where encode = genericEncode options

-- | Constructs LoggingOptionsPayload from required parameters
newLoggingOptionsPayload :: AwsArn -> LoggingOptionsPayload
newLoggingOptionsPayload _roleArn = LoggingOptionsPayload { "roleArn": _roleArn, "logLevel": Nothing }

-- | Constructs LoggingOptionsPayload's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newLoggingOptionsPayload' :: AwsArn -> ( { "roleArn" :: (AwsArn) , "logLevel" :: Maybe (LogLevel) } -> {"roleArn" :: (AwsArn) , "logLevel" :: Maybe (LogLevel) } ) -> LoggingOptionsPayload
newLoggingOptionsPayload' _roleArn customize = (LoggingOptionsPayload <<< customize) { "roleArn": _roleArn, "logLevel": Nothing }



-- | <p>The policy documentation is not valid.</p>
newtype MalformedPolicyException = MalformedPolicyException 
  { "message" :: Maybe (ErrorMessage')
  }
derive instance newtypeMalformedPolicyException :: Newtype MalformedPolicyException _
derive instance repGenericMalformedPolicyException :: Generic MalformedPolicyException _
instance showMalformedPolicyException :: Show MalformedPolicyException where show = genericShow
instance decodeMalformedPolicyException :: Decode MalformedPolicyException where decode = genericDecode options
instance encodeMalformedPolicyException :: Encode MalformedPolicyException where encode = genericEncode options

-- | Constructs MalformedPolicyException from required parameters
newMalformedPolicyException :: MalformedPolicyException
newMalformedPolicyException  = MalformedPolicyException { "message": Nothing }

-- | Constructs MalformedPolicyException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newMalformedPolicyException' :: ( { "message" :: Maybe (ErrorMessage') } -> {"message" :: Maybe (ErrorMessage') } ) -> MalformedPolicyException
newMalformedPolicyException'  customize = (MalformedPolicyException <<< customize) { "message": Nothing }



newtype Marker = Marker String
derive instance newtypeMarker :: Newtype Marker _
derive instance repGenericMarker :: Generic Marker _
instance showMarker :: Show Marker where show = genericShow
instance decodeMarker :: Decode Marker where decode = genericDecode options
instance encodeMarker :: Encode Marker where encode = genericEncode options



newtype MaxJobExecutionsPerMin = MaxJobExecutionsPerMin Int
derive instance newtypeMaxJobExecutionsPerMin :: Newtype MaxJobExecutionsPerMin _
derive instance repGenericMaxJobExecutionsPerMin :: Generic MaxJobExecutionsPerMin _
instance showMaxJobExecutionsPerMin :: Show MaxJobExecutionsPerMin where show = genericShow
instance decodeMaxJobExecutionsPerMin :: Decode MaxJobExecutionsPerMin where decode = genericDecode options
instance encodeMaxJobExecutionsPerMin :: Encode MaxJobExecutionsPerMin where encode = genericEncode options



newtype MaxResults = MaxResults Int
derive instance newtypeMaxResults :: Newtype MaxResults _
derive instance repGenericMaxResults :: Generic MaxResults _
instance showMaxResults :: Show MaxResults where show = genericShow
instance decodeMaxResults :: Decode MaxResults where decode = genericDecode options
instance encodeMaxResults :: Encode MaxResults where encode = genericEncode options



newtype Message = Message String
derive instance newtypeMessage :: Newtype Message _
derive instance repGenericMessage :: Generic Message _
instance showMessage :: Show Message where show = genericShow
instance decodeMessage :: Decode Message where decode = genericDecode options
instance encodeMessage :: Encode Message where encode = genericEncode options



newtype MessageFormat = MessageFormat String
derive instance newtypeMessageFormat :: Newtype MessageFormat _
derive instance repGenericMessageFormat :: Generic MessageFormat _
instance showMessageFormat :: Show MessageFormat where show = genericShow
instance decodeMessageFormat :: Decode MessageFormat where decode = genericDecode options
instance encodeMessageFormat :: Encode MessageFormat where encode = genericEncode options



newtype MetricName = MetricName String
derive instance newtypeMetricName :: Newtype MetricName _
derive instance repGenericMetricName :: Generic MetricName _
instance showMetricName :: Show MetricName where show = genericShow
instance decodeMetricName :: Decode MetricName where decode = genericDecode options
instance encodeMetricName :: Encode MetricName where encode = genericEncode options



newtype MetricNamespace = MetricNamespace String
derive instance newtypeMetricNamespace :: Newtype MetricNamespace _
derive instance repGenericMetricNamespace :: Generic MetricNamespace _
instance showMetricNamespace :: Show MetricNamespace where show = genericShow
instance decodeMetricNamespace :: Decode MetricNamespace where decode = genericDecode options
instance encodeMetricNamespace :: Encode MetricNamespace where encode = genericEncode options



newtype MetricTimestamp = MetricTimestamp String
derive instance newtypeMetricTimestamp :: Newtype MetricTimestamp _
derive instance repGenericMetricTimestamp :: Generic MetricTimestamp _
instance showMetricTimestamp :: Show MetricTimestamp where show = genericShow
instance decodeMetricTimestamp :: Decode MetricTimestamp where decode = genericDecode options
instance encodeMetricTimestamp :: Encode MetricTimestamp where encode = genericEncode options



newtype MetricUnit = MetricUnit String
derive instance newtypeMetricUnit :: Newtype MetricUnit _
derive instance repGenericMetricUnit :: Generic MetricUnit _
instance showMetricUnit :: Show MetricUnit where show = genericShow
instance decodeMetricUnit :: Decode MetricUnit where decode = genericDecode options
instance encodeMetricUnit :: Encode MetricUnit where encode = genericEncode options



newtype MetricValue = MetricValue String
derive instance newtypeMetricValue :: Newtype MetricValue _
derive instance repGenericMetricValue :: Generic MetricValue _
instance showMetricValue :: Show MetricValue where show = genericShow
instance decodeMetricValue :: Decode MetricValue where decode = genericDecode options
instance encodeMetricValue :: Encode MetricValue where encode = genericEncode options



newtype MissingContextValue = MissingContextValue String
derive instance newtypeMissingContextValue :: Newtype MissingContextValue _
derive instance repGenericMissingContextValue :: Generic MissingContextValue _
instance showMissingContextValue :: Show MissingContextValue where show = genericShow
instance decodeMissingContextValue :: Decode MissingContextValue where decode = genericDecode options
instance encodeMissingContextValue :: Encode MissingContextValue where encode = genericEncode options



newtype MissingContextValues = MissingContextValues (Array MissingContextValue)
derive instance newtypeMissingContextValues :: Newtype MissingContextValues _
derive instance repGenericMissingContextValues :: Generic MissingContextValues _
instance showMissingContextValues :: Show MissingContextValues where show = genericShow
instance decodeMissingContextValues :: Decode MissingContextValues where decode = genericDecode options
instance encodeMissingContextValues :: Encode MissingContextValues where encode = genericEncode options



newtype NextToken = NextToken String
derive instance newtypeNextToken :: Newtype NextToken _
derive instance repGenericNextToken :: Generic NextToken _
instance showNextToken :: Show NextToken where show = genericShow
instance decodeNextToken :: Decode NextToken where decode = genericDecode options
instance encodeNextToken :: Encode NextToken where encode = genericEncode options



-- | <p>The resource is not configured.</p>
newtype NotConfiguredException = NotConfiguredException 
  { "message" :: Maybe (ErrorMessage')
  }
derive instance newtypeNotConfiguredException :: Newtype NotConfiguredException _
derive instance repGenericNotConfiguredException :: Generic NotConfiguredException _
instance showNotConfiguredException :: Show NotConfiguredException where show = genericShow
instance decodeNotConfiguredException :: Decode NotConfiguredException where decode = genericDecode options
instance encodeNotConfiguredException :: Encode NotConfiguredException where encode = genericEncode options

-- | Constructs NotConfiguredException from required parameters
newNotConfiguredException :: NotConfiguredException
newNotConfiguredException  = NotConfiguredException { "message": Nothing }

-- | Constructs NotConfiguredException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newNotConfiguredException' :: ( { "message" :: Maybe (ErrorMessage') } -> {"message" :: Maybe (ErrorMessage') } ) -> NotConfiguredException
newNotConfiguredException'  customize = (NotConfiguredException <<< customize) { "message": Nothing }



newtype OTAUpdateArn = OTAUpdateArn String
derive instance newtypeOTAUpdateArn :: Newtype OTAUpdateArn _
derive instance repGenericOTAUpdateArn :: Generic OTAUpdateArn _
instance showOTAUpdateArn :: Show OTAUpdateArn where show = genericShow
instance decodeOTAUpdateArn :: Decode OTAUpdateArn where decode = genericDecode options
instance encodeOTAUpdateArn :: Encode OTAUpdateArn where encode = genericEncode options



newtype OTAUpdateDescription = OTAUpdateDescription String
derive instance newtypeOTAUpdateDescription :: Newtype OTAUpdateDescription _
derive instance repGenericOTAUpdateDescription :: Generic OTAUpdateDescription _
instance showOTAUpdateDescription :: Show OTAUpdateDescription where show = genericShow
instance decodeOTAUpdateDescription :: Decode OTAUpdateDescription where decode = genericDecode options
instance encodeOTAUpdateDescription :: Encode OTAUpdateDescription where encode = genericEncode options



newtype OTAUpdateErrorMessage = OTAUpdateErrorMessage String
derive instance newtypeOTAUpdateErrorMessage :: Newtype OTAUpdateErrorMessage _
derive instance repGenericOTAUpdateErrorMessage :: Generic OTAUpdateErrorMessage _
instance showOTAUpdateErrorMessage :: Show OTAUpdateErrorMessage where show = genericShow
instance decodeOTAUpdateErrorMessage :: Decode OTAUpdateErrorMessage where decode = genericDecode options
instance encodeOTAUpdateErrorMessage :: Encode OTAUpdateErrorMessage where encode = genericEncode options



-- | <p>Describes a file to be associated with an OTA update.</p>
newtype OTAUpdateFile = OTAUpdateFile 
  { "fileName" :: Maybe (FileName)
  , "fileVersion" :: Maybe (OTAUpdateFileVersion)
  , "fileSource" :: Maybe (Stream)
  , "codeSigning" :: Maybe (CodeSigning)
  , "attributes" :: Maybe (AttributesMap)
  }
derive instance newtypeOTAUpdateFile :: Newtype OTAUpdateFile _
derive instance repGenericOTAUpdateFile :: Generic OTAUpdateFile _
instance showOTAUpdateFile :: Show OTAUpdateFile where show = genericShow
instance decodeOTAUpdateFile :: Decode OTAUpdateFile where decode = genericDecode options
instance encodeOTAUpdateFile :: Encode OTAUpdateFile where encode = genericEncode options

-- | Constructs OTAUpdateFile from required parameters
newOTAUpdateFile :: OTAUpdateFile
newOTAUpdateFile  = OTAUpdateFile { "attributes": Nothing, "codeSigning": Nothing, "fileName": Nothing, "fileSource": Nothing, "fileVersion": Nothing }

-- | Constructs OTAUpdateFile's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newOTAUpdateFile' :: ( { "fileName" :: Maybe (FileName) , "fileVersion" :: Maybe (OTAUpdateFileVersion) , "fileSource" :: Maybe (Stream) , "codeSigning" :: Maybe (CodeSigning) , "attributes" :: Maybe (AttributesMap) } -> {"fileName" :: Maybe (FileName) , "fileVersion" :: Maybe (OTAUpdateFileVersion) , "fileSource" :: Maybe (Stream) , "codeSigning" :: Maybe (CodeSigning) , "attributes" :: Maybe (AttributesMap) } ) -> OTAUpdateFile
newOTAUpdateFile'  customize = (OTAUpdateFile <<< customize) { "attributes": Nothing, "codeSigning": Nothing, "fileName": Nothing, "fileSource": Nothing, "fileVersion": Nothing }



newtype OTAUpdateFileVersion = OTAUpdateFileVersion String
derive instance newtypeOTAUpdateFileVersion :: Newtype OTAUpdateFileVersion _
derive instance repGenericOTAUpdateFileVersion :: Generic OTAUpdateFileVersion _
instance showOTAUpdateFileVersion :: Show OTAUpdateFileVersion where show = genericShow
instance decodeOTAUpdateFileVersion :: Decode OTAUpdateFileVersion where decode = genericDecode options
instance encodeOTAUpdateFileVersion :: Encode OTAUpdateFileVersion where encode = genericEncode options



newtype OTAUpdateFiles = OTAUpdateFiles (Array OTAUpdateFile)
derive instance newtypeOTAUpdateFiles :: Newtype OTAUpdateFiles _
derive instance repGenericOTAUpdateFiles :: Generic OTAUpdateFiles _
instance showOTAUpdateFiles :: Show OTAUpdateFiles where show = genericShow
instance decodeOTAUpdateFiles :: Decode OTAUpdateFiles where decode = genericDecode options
instance encodeOTAUpdateFiles :: Encode OTAUpdateFiles where encode = genericEncode options



newtype OTAUpdateId = OTAUpdateId String
derive instance newtypeOTAUpdateId :: Newtype OTAUpdateId _
derive instance repGenericOTAUpdateId :: Generic OTAUpdateId _
instance showOTAUpdateId :: Show OTAUpdateId where show = genericShow
instance decodeOTAUpdateId :: Decode OTAUpdateId where decode = genericDecode options
instance encodeOTAUpdateId :: Encode OTAUpdateId where encode = genericEncode options



-- | <p>Information about an OTA update.</p>
newtype OTAUpdateInfo = OTAUpdateInfo 
  { "otaUpdateId" :: Maybe (OTAUpdateId)
  , "otaUpdateArn" :: Maybe (OTAUpdateArn)
  , "creationDate" :: Maybe (DateType)
  , "lastModifiedDate" :: Maybe (DateType)
  , "description" :: Maybe (OTAUpdateDescription)
  , "targets" :: Maybe (Targets)
  , "targetSelection" :: Maybe (TargetSelection)
  , "otaUpdateFiles" :: Maybe (OTAUpdateFiles)
  , "otaUpdateStatus" :: Maybe (OTAUpdateStatus)
  , "awsIotJobId" :: Maybe (AwsIotJobId)
  , "awsIotJobArn" :: Maybe (AwsIotJobArn)
  , "errorInfo" :: Maybe (ErrorInfo)
  , "additionalParameters" :: Maybe (AdditionalParameterMap)
  }
derive instance newtypeOTAUpdateInfo :: Newtype OTAUpdateInfo _
derive instance repGenericOTAUpdateInfo :: Generic OTAUpdateInfo _
instance showOTAUpdateInfo :: Show OTAUpdateInfo where show = genericShow
instance decodeOTAUpdateInfo :: Decode OTAUpdateInfo where decode = genericDecode options
instance encodeOTAUpdateInfo :: Encode OTAUpdateInfo where encode = genericEncode options

-- | Constructs OTAUpdateInfo from required parameters
newOTAUpdateInfo :: OTAUpdateInfo
newOTAUpdateInfo  = OTAUpdateInfo { "additionalParameters": Nothing, "awsIotJobArn": Nothing, "awsIotJobId": Nothing, "creationDate": Nothing, "description": Nothing, "errorInfo": Nothing, "lastModifiedDate": Nothing, "otaUpdateArn": Nothing, "otaUpdateFiles": Nothing, "otaUpdateId": Nothing, "otaUpdateStatus": Nothing, "targetSelection": Nothing, "targets": Nothing }

-- | Constructs OTAUpdateInfo's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newOTAUpdateInfo' :: ( { "otaUpdateId" :: Maybe (OTAUpdateId) , "otaUpdateArn" :: Maybe (OTAUpdateArn) , "creationDate" :: Maybe (DateType) , "lastModifiedDate" :: Maybe (DateType) , "description" :: Maybe (OTAUpdateDescription) , "targets" :: Maybe (Targets) , "targetSelection" :: Maybe (TargetSelection) , "otaUpdateFiles" :: Maybe (OTAUpdateFiles) , "otaUpdateStatus" :: Maybe (OTAUpdateStatus) , "awsIotJobId" :: Maybe (AwsIotJobId) , "awsIotJobArn" :: Maybe (AwsIotJobArn) , "errorInfo" :: Maybe (ErrorInfo) , "additionalParameters" :: Maybe (AdditionalParameterMap) } -> {"otaUpdateId" :: Maybe (OTAUpdateId) , "otaUpdateArn" :: Maybe (OTAUpdateArn) , "creationDate" :: Maybe (DateType) , "lastModifiedDate" :: Maybe (DateType) , "description" :: Maybe (OTAUpdateDescription) , "targets" :: Maybe (Targets) , "targetSelection" :: Maybe (TargetSelection) , "otaUpdateFiles" :: Maybe (OTAUpdateFiles) , "otaUpdateStatus" :: Maybe (OTAUpdateStatus) , "awsIotJobId" :: Maybe (AwsIotJobId) , "awsIotJobArn" :: Maybe (AwsIotJobArn) , "errorInfo" :: Maybe (ErrorInfo) , "additionalParameters" :: Maybe (AdditionalParameterMap) } ) -> OTAUpdateInfo
newOTAUpdateInfo'  customize = (OTAUpdateInfo <<< customize) { "additionalParameters": Nothing, "awsIotJobArn": Nothing, "awsIotJobId": Nothing, "creationDate": Nothing, "description": Nothing, "errorInfo": Nothing, "lastModifiedDate": Nothing, "otaUpdateArn": Nothing, "otaUpdateFiles": Nothing, "otaUpdateId": Nothing, "otaUpdateStatus": Nothing, "targetSelection": Nothing, "targets": Nothing }



newtype OTAUpdateStatus = OTAUpdateStatus String
derive instance newtypeOTAUpdateStatus :: Newtype OTAUpdateStatus _
derive instance repGenericOTAUpdateStatus :: Generic OTAUpdateStatus _
instance showOTAUpdateStatus :: Show OTAUpdateStatus where show = genericShow
instance decodeOTAUpdateStatus :: Decode OTAUpdateStatus where decode = genericDecode options
instance encodeOTAUpdateStatus :: Encode OTAUpdateStatus where encode = genericEncode options



-- | <p>An OTA update summary.</p>
newtype OTAUpdateSummary = OTAUpdateSummary 
  { "otaUpdateId" :: Maybe (OTAUpdateId)
  , "otaUpdateArn" :: Maybe (OTAUpdateArn)
  , "creationDate" :: Maybe (DateType)
  }
derive instance newtypeOTAUpdateSummary :: Newtype OTAUpdateSummary _
derive instance repGenericOTAUpdateSummary :: Generic OTAUpdateSummary _
instance showOTAUpdateSummary :: Show OTAUpdateSummary where show = genericShow
instance decodeOTAUpdateSummary :: Decode OTAUpdateSummary where decode = genericDecode options
instance encodeOTAUpdateSummary :: Encode OTAUpdateSummary where encode = genericEncode options

-- | Constructs OTAUpdateSummary from required parameters
newOTAUpdateSummary :: OTAUpdateSummary
newOTAUpdateSummary  = OTAUpdateSummary { "creationDate": Nothing, "otaUpdateArn": Nothing, "otaUpdateId": Nothing }

-- | Constructs OTAUpdateSummary's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newOTAUpdateSummary' :: ( { "otaUpdateId" :: Maybe (OTAUpdateId) , "otaUpdateArn" :: Maybe (OTAUpdateArn) , "creationDate" :: Maybe (DateType) } -> {"otaUpdateId" :: Maybe (OTAUpdateId) , "otaUpdateArn" :: Maybe (OTAUpdateArn) , "creationDate" :: Maybe (DateType) } ) -> OTAUpdateSummary
newOTAUpdateSummary'  customize = (OTAUpdateSummary <<< customize) { "creationDate": Nothing, "otaUpdateArn": Nothing, "otaUpdateId": Nothing }



newtype OTAUpdatesSummary = OTAUpdatesSummary (Array OTAUpdateSummary)
derive instance newtypeOTAUpdatesSummary :: Newtype OTAUpdatesSummary _
derive instance repGenericOTAUpdatesSummary :: Generic OTAUpdatesSummary _
instance showOTAUpdatesSummary :: Show OTAUpdatesSummary where show = genericShow
instance decodeOTAUpdatesSummary :: Decode OTAUpdatesSummary where decode = genericDecode options
instance encodeOTAUpdatesSummary :: Encode OTAUpdatesSummary where encode = genericEncode options



newtype OptionalVersion = OptionalVersion Number
derive instance newtypeOptionalVersion :: Newtype OptionalVersion _
derive instance repGenericOptionalVersion :: Generic OptionalVersion _
instance showOptionalVersion :: Show OptionalVersion where show = genericShow
instance decodeOptionalVersion :: Decode OptionalVersion where decode = genericDecode options
instance encodeOptionalVersion :: Encode OptionalVersion where encode = genericEncode options



-- | <p>A certificate that has been transferred but not yet accepted.</p>
newtype OutgoingCertificate = OutgoingCertificate 
  { "certificateArn" :: Maybe (CertificateArn)
  , "certificateId" :: Maybe (CertificateId)
  , "transferredTo" :: Maybe (AwsAccountId)
  , "transferDate" :: Maybe (DateType)
  , "transferMessage" :: Maybe (Message)
  , "creationDate" :: Maybe (DateType)
  }
derive instance newtypeOutgoingCertificate :: Newtype OutgoingCertificate _
derive instance repGenericOutgoingCertificate :: Generic OutgoingCertificate _
instance showOutgoingCertificate :: Show OutgoingCertificate where show = genericShow
instance decodeOutgoingCertificate :: Decode OutgoingCertificate where decode = genericDecode options
instance encodeOutgoingCertificate :: Encode OutgoingCertificate where encode = genericEncode options

-- | Constructs OutgoingCertificate from required parameters
newOutgoingCertificate :: OutgoingCertificate
newOutgoingCertificate  = OutgoingCertificate { "certificateArn": Nothing, "certificateId": Nothing, "creationDate": Nothing, "transferDate": Nothing, "transferMessage": Nothing, "transferredTo": Nothing }

-- | Constructs OutgoingCertificate's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newOutgoingCertificate' :: ( { "certificateArn" :: Maybe (CertificateArn) , "certificateId" :: Maybe (CertificateId) , "transferredTo" :: Maybe (AwsAccountId) , "transferDate" :: Maybe (DateType) , "transferMessage" :: Maybe (Message) , "creationDate" :: Maybe (DateType) } -> {"certificateArn" :: Maybe (CertificateArn) , "certificateId" :: Maybe (CertificateId) , "transferredTo" :: Maybe (AwsAccountId) , "transferDate" :: Maybe (DateType) , "transferMessage" :: Maybe (Message) , "creationDate" :: Maybe (DateType) } ) -> OutgoingCertificate
newOutgoingCertificate'  customize = (OutgoingCertificate <<< customize) { "certificateArn": Nothing, "certificateId": Nothing, "creationDate": Nothing, "transferDate": Nothing, "transferMessage": Nothing, "transferredTo": Nothing }



newtype OutgoingCertificates = OutgoingCertificates (Array OutgoingCertificate)
derive instance newtypeOutgoingCertificates :: Newtype OutgoingCertificates _
derive instance repGenericOutgoingCertificates :: Generic OutgoingCertificates _
instance showOutgoingCertificates :: Show OutgoingCertificates where show = genericShow
instance decodeOutgoingCertificates :: Decode OutgoingCertificates where decode = genericDecode options
instance encodeOutgoingCertificates :: Encode OutgoingCertificates where encode = genericEncode options



newtype PageSize = PageSize Int
derive instance newtypePageSize :: Newtype PageSize _
derive instance repGenericPageSize :: Generic PageSize _
instance showPageSize :: Show PageSize where show = genericShow
instance decodePageSize :: Decode PageSize where decode = genericDecode options
instance encodePageSize :: Encode PageSize where encode = genericEncode options



newtype Parameter = Parameter String
derive instance newtypeParameter :: Newtype Parameter _
derive instance repGenericParameter :: Generic Parameter _
instance showParameter :: Show Parameter where show = genericShow
instance decodeParameter :: Decode Parameter where decode = genericDecode options
instance encodeParameter :: Encode Parameter where encode = genericEncode options



newtype ParameterKey = ParameterKey String
derive instance newtypeParameterKey :: Newtype ParameterKey _
derive instance repGenericParameterKey :: Generic ParameterKey _
instance showParameterKey :: Show ParameterKey where show = genericShow
instance decodeParameterKey :: Decode ParameterKey where decode = genericDecode options
instance encodeParameterKey :: Encode ParameterKey where encode = genericEncode options



newtype ParameterValue = ParameterValue String
derive instance newtypeParameterValue :: Newtype ParameterValue _
derive instance repGenericParameterValue :: Generic ParameterValue _
instance showParameterValue :: Show ParameterValue where show = genericShow
instance decodeParameterValue :: Decode ParameterValue where decode = genericDecode options
instance encodeParameterValue :: Encode ParameterValue where encode = genericEncode options



newtype Parameters = Parameters (StrMap.StrMap Value)
derive instance newtypeParameters :: Newtype Parameters _
derive instance repGenericParameters :: Generic Parameters _
instance showParameters :: Show Parameters where show = genericShow
instance decodeParameters :: Decode Parameters where decode = genericDecode options
instance encodeParameters :: Encode Parameters where encode = genericEncode options



newtype PartitionKey = PartitionKey String
derive instance newtypePartitionKey :: Newtype PartitionKey _
derive instance repGenericPartitionKey :: Generic PartitionKey _
instance showPartitionKey :: Show PartitionKey where show = genericShow
instance decodePartitionKey :: Decode PartitionKey where decode = genericDecode options
instance encodePartitionKey :: Encode PartitionKey where encode = genericEncode options



newtype PayloadField = PayloadField String
derive instance newtypePayloadField :: Newtype PayloadField _
derive instance repGenericPayloadField :: Generic PayloadField _
instance showPayloadField :: Show PayloadField where show = genericShow
instance decodePayloadField :: Decode PayloadField where decode = genericDecode options
instance encodePayloadField :: Encode PayloadField where encode = genericEncode options



newtype Percentage = Percentage Int
derive instance newtypePercentage :: Newtype Percentage _
derive instance repGenericPercentage :: Generic Percentage _
instance showPercentage :: Show Percentage where show = genericShow
instance decodePercentage :: Decode Percentage where decode = genericDecode options
instance encodePercentage :: Encode Percentage where encode = genericEncode options



newtype Policies = Policies (Array Policy)
derive instance newtypePolicies :: Newtype Policies _
derive instance repGenericPolicies :: Generic Policies _
instance showPolicies :: Show Policies where show = genericShow
instance decodePolicies :: Decode Policies where decode = genericDecode options
instance encodePolicies :: Encode Policies where encode = genericEncode options



-- | <p>Describes an AWS IoT policy.</p>
newtype Policy = Policy 
  { "policyName" :: Maybe (PolicyName)
  , "policyArn" :: Maybe (PolicyArn)
  }
derive instance newtypePolicy :: Newtype Policy _
derive instance repGenericPolicy :: Generic Policy _
instance showPolicy :: Show Policy where show = genericShow
instance decodePolicy :: Decode Policy where decode = genericDecode options
instance encodePolicy :: Encode Policy where encode = genericEncode options

-- | Constructs Policy from required parameters
newPolicy :: Policy
newPolicy  = Policy { "policyArn": Nothing, "policyName": Nothing }

-- | Constructs Policy's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newPolicy' :: ( { "policyName" :: Maybe (PolicyName) , "policyArn" :: Maybe (PolicyArn) } -> {"policyName" :: Maybe (PolicyName) , "policyArn" :: Maybe (PolicyArn) } ) -> Policy
newPolicy'  customize = (Policy <<< customize) { "policyArn": Nothing, "policyName": Nothing }



newtype PolicyArn = PolicyArn String
derive instance newtypePolicyArn :: Newtype PolicyArn _
derive instance repGenericPolicyArn :: Generic PolicyArn _
instance showPolicyArn :: Show PolicyArn where show = genericShow
instance decodePolicyArn :: Decode PolicyArn where decode = genericDecode options
instance encodePolicyArn :: Encode PolicyArn where encode = genericEncode options



newtype PolicyDocument = PolicyDocument String
derive instance newtypePolicyDocument :: Newtype PolicyDocument _
derive instance repGenericPolicyDocument :: Generic PolicyDocument _
instance showPolicyDocument :: Show PolicyDocument where show = genericShow
instance decodePolicyDocument :: Decode PolicyDocument where decode = genericDecode options
instance encodePolicyDocument :: Encode PolicyDocument where encode = genericEncode options



newtype PolicyDocuments = PolicyDocuments (Array PolicyDocument)
derive instance newtypePolicyDocuments :: Newtype PolicyDocuments _
derive instance repGenericPolicyDocuments :: Generic PolicyDocuments _
instance showPolicyDocuments :: Show PolicyDocuments where show = genericShow
instance decodePolicyDocuments :: Decode PolicyDocuments where decode = genericDecode options
instance encodePolicyDocuments :: Encode PolicyDocuments where encode = genericEncode options



newtype PolicyName = PolicyName String
derive instance newtypePolicyName :: Newtype PolicyName _
derive instance repGenericPolicyName :: Generic PolicyName _
instance showPolicyName :: Show PolicyName where show = genericShow
instance decodePolicyName :: Decode PolicyName where decode = genericDecode options
instance encodePolicyName :: Encode PolicyName where encode = genericEncode options



newtype PolicyNames = PolicyNames (Array PolicyName)
derive instance newtypePolicyNames :: Newtype PolicyNames _
derive instance repGenericPolicyNames :: Generic PolicyNames _
instance showPolicyNames :: Show PolicyNames where show = genericShow
instance decodePolicyNames :: Decode PolicyNames where decode = genericDecode options
instance encodePolicyNames :: Encode PolicyNames where encode = genericEncode options



newtype PolicyTarget = PolicyTarget String
derive instance newtypePolicyTarget :: Newtype PolicyTarget _
derive instance repGenericPolicyTarget :: Generic PolicyTarget _
instance showPolicyTarget :: Show PolicyTarget where show = genericShow
instance decodePolicyTarget :: Decode PolicyTarget where decode = genericDecode options
instance encodePolicyTarget :: Encode PolicyTarget where encode = genericEncode options



newtype PolicyTargets = PolicyTargets (Array PolicyTarget)
derive instance newtypePolicyTargets :: Newtype PolicyTargets _
derive instance repGenericPolicyTargets :: Generic PolicyTargets _
instance showPolicyTargets :: Show PolicyTargets where show = genericShow
instance decodePolicyTargets :: Decode PolicyTargets where decode = genericDecode options
instance encodePolicyTargets :: Encode PolicyTargets where encode = genericEncode options



-- | <p>Describes a policy version.</p>
newtype PolicyVersion = PolicyVersion 
  { "versionId" :: Maybe (PolicyVersionId)
  , "isDefaultVersion" :: Maybe (IsDefaultVersion)
  , "createDate" :: Maybe (DateType)
  }
derive instance newtypePolicyVersion :: Newtype PolicyVersion _
derive instance repGenericPolicyVersion :: Generic PolicyVersion _
instance showPolicyVersion :: Show PolicyVersion where show = genericShow
instance decodePolicyVersion :: Decode PolicyVersion where decode = genericDecode options
instance encodePolicyVersion :: Encode PolicyVersion where encode = genericEncode options

-- | Constructs PolicyVersion from required parameters
newPolicyVersion :: PolicyVersion
newPolicyVersion  = PolicyVersion { "createDate": Nothing, "isDefaultVersion": Nothing, "versionId": Nothing }

-- | Constructs PolicyVersion's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newPolicyVersion' :: ( { "versionId" :: Maybe (PolicyVersionId) , "isDefaultVersion" :: Maybe (IsDefaultVersion) , "createDate" :: Maybe (DateType) } -> {"versionId" :: Maybe (PolicyVersionId) , "isDefaultVersion" :: Maybe (IsDefaultVersion) , "createDate" :: Maybe (DateType) } ) -> PolicyVersion
newPolicyVersion'  customize = (PolicyVersion <<< customize) { "createDate": Nothing, "isDefaultVersion": Nothing, "versionId": Nothing }



newtype PolicyVersionId = PolicyVersionId String
derive instance newtypePolicyVersionId :: Newtype PolicyVersionId _
derive instance repGenericPolicyVersionId :: Generic PolicyVersionId _
instance showPolicyVersionId :: Show PolicyVersionId where show = genericShow
instance decodePolicyVersionId :: Decode PolicyVersionId where decode = genericDecode options
instance encodePolicyVersionId :: Encode PolicyVersionId where encode = genericEncode options



newtype PolicyVersions = PolicyVersions (Array PolicyVersion)
derive instance newtypePolicyVersions :: Newtype PolicyVersions _
derive instance repGenericPolicyVersions :: Generic PolicyVersions _
instance showPolicyVersions :: Show PolicyVersions where show = genericShow
instance decodePolicyVersions :: Decode PolicyVersions where decode = genericDecode options
instance encodePolicyVersions :: Encode PolicyVersions where encode = genericEncode options



-- | <p>Configuration for pre-signed S3 URLs.</p>
newtype PresignedUrlConfig = PresignedUrlConfig 
  { "roleArn" :: Maybe (RoleArn)
  , "expiresInSec" :: Maybe (ExpiresInSec)
  }
derive instance newtypePresignedUrlConfig :: Newtype PresignedUrlConfig _
derive instance repGenericPresignedUrlConfig :: Generic PresignedUrlConfig _
instance showPresignedUrlConfig :: Show PresignedUrlConfig where show = genericShow
instance decodePresignedUrlConfig :: Decode PresignedUrlConfig where decode = genericDecode options
instance encodePresignedUrlConfig :: Encode PresignedUrlConfig where encode = genericEncode options

-- | Constructs PresignedUrlConfig from required parameters
newPresignedUrlConfig :: PresignedUrlConfig
newPresignedUrlConfig  = PresignedUrlConfig { "expiresInSec": Nothing, "roleArn": Nothing }

-- | Constructs PresignedUrlConfig's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newPresignedUrlConfig' :: ( { "roleArn" :: Maybe (RoleArn) , "expiresInSec" :: Maybe (ExpiresInSec) } -> {"roleArn" :: Maybe (RoleArn) , "expiresInSec" :: Maybe (ExpiresInSec) } ) -> PresignedUrlConfig
newPresignedUrlConfig'  customize = (PresignedUrlConfig <<< customize) { "expiresInSec": Nothing, "roleArn": Nothing }



newtype Principal = Principal String
derive instance newtypePrincipal :: Newtype Principal _
derive instance repGenericPrincipal :: Generic Principal _
instance showPrincipal :: Show Principal where show = genericShow
instance decodePrincipal :: Decode Principal where decode = genericDecode options
instance encodePrincipal :: Encode Principal where encode = genericEncode options



newtype PrincipalArn = PrincipalArn String
derive instance newtypePrincipalArn :: Newtype PrincipalArn _
derive instance repGenericPrincipalArn :: Generic PrincipalArn _
instance showPrincipalArn :: Show PrincipalArn where show = genericShow
instance decodePrincipalArn :: Decode PrincipalArn where decode = genericDecode options
instance encodePrincipalArn :: Encode PrincipalArn where encode = genericEncode options



newtype PrincipalId = PrincipalId String
derive instance newtypePrincipalId :: Newtype PrincipalId _
derive instance repGenericPrincipalId :: Generic PrincipalId _
instance showPrincipalId :: Show PrincipalId where show = genericShow
instance decodePrincipalId :: Decode PrincipalId where decode = genericDecode options
instance encodePrincipalId :: Encode PrincipalId where encode = genericEncode options



newtype Principals = Principals (Array PrincipalArn)
derive instance newtypePrincipals :: Newtype Principals _
derive instance repGenericPrincipals :: Generic Principals _
instance showPrincipals :: Show Principals where show = genericShow
instance decodePrincipals :: Decode Principals where decode = genericDecode options
instance encodePrincipals :: Encode Principals where encode = genericEncode options



newtype PrivateKey = PrivateKey String
derive instance newtypePrivateKey :: Newtype PrivateKey _
derive instance repGenericPrivateKey :: Generic PrivateKey _
instance showPrivateKey :: Show PrivateKey where show = genericShow
instance decodePrivateKey :: Decode PrivateKey where decode = genericDecode options
instance encodePrivateKey :: Encode PrivateKey where encode = genericEncode options



newtype ProcessingTargetName = ProcessingTargetName String
derive instance newtypeProcessingTargetName :: Newtype ProcessingTargetName _
derive instance repGenericProcessingTargetName :: Generic ProcessingTargetName _
instance showProcessingTargetName :: Show ProcessingTargetName where show = genericShow
instance decodeProcessingTargetName :: Decode ProcessingTargetName where decode = genericDecode options
instance encodeProcessingTargetName :: Encode ProcessingTargetName where encode = genericEncode options



newtype ProcessingTargetNameList = ProcessingTargetNameList (Array ProcessingTargetName)
derive instance newtypeProcessingTargetNameList :: Newtype ProcessingTargetNameList _
derive instance repGenericProcessingTargetNameList :: Generic ProcessingTargetNameList _
instance showProcessingTargetNameList :: Show ProcessingTargetNameList where show = genericShow
instance decodeProcessingTargetNameList :: Decode ProcessingTargetNameList where decode = genericDecode options
instance encodeProcessingTargetNameList :: Encode ProcessingTargetNameList where encode = genericEncode options



newtype PublicKey = PublicKey String
derive instance newtypePublicKey :: Newtype PublicKey _
derive instance repGenericPublicKey :: Generic PublicKey _
instance showPublicKey :: Show PublicKey where show = genericShow
instance decodePublicKey :: Decode PublicKey where decode = genericDecode options
instance encodePublicKey :: Encode PublicKey where encode = genericEncode options



newtype PublicKeyMap = PublicKeyMap (StrMap.StrMap KeyValue)
derive instance newtypePublicKeyMap :: Newtype PublicKeyMap _
derive instance repGenericPublicKeyMap :: Generic PublicKeyMap _
instance showPublicKeyMap :: Show PublicKeyMap where show = genericShow
instance decodePublicKeyMap :: Decode PublicKeyMap where decode = genericDecode options
instance encodePublicKeyMap :: Encode PublicKeyMap where encode = genericEncode options



-- | <p>The input for the DynamoActionVS action that specifies the DynamoDB table to which the message data will be written.</p>
newtype PutItemInput = PutItemInput 
  { "tableName" :: (TableName)
  }
derive instance newtypePutItemInput :: Newtype PutItemInput _
derive instance repGenericPutItemInput :: Generic PutItemInput _
instance showPutItemInput :: Show PutItemInput where show = genericShow
instance decodePutItemInput :: Decode PutItemInput where decode = genericDecode options
instance encodePutItemInput :: Encode PutItemInput where encode = genericEncode options

-- | Constructs PutItemInput from required parameters
newPutItemInput :: TableName -> PutItemInput
newPutItemInput _tableName = PutItemInput { "tableName": _tableName }

-- | Constructs PutItemInput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newPutItemInput' :: TableName -> ( { "tableName" :: (TableName) } -> {"tableName" :: (TableName) } ) -> PutItemInput
newPutItemInput' _tableName customize = (PutItemInput <<< customize) { "tableName": _tableName }



newtype QueryMaxResults = QueryMaxResults Int
derive instance newtypeQueryMaxResults :: Newtype QueryMaxResults _
derive instance repGenericQueryMaxResults :: Generic QueryMaxResults _
instance showQueryMaxResults :: Show QueryMaxResults where show = genericShow
instance decodeQueryMaxResults :: Decode QueryMaxResults where decode = genericDecode options
instance encodeQueryMaxResults :: Encode QueryMaxResults where encode = genericEncode options



newtype QueryString = QueryString String
derive instance newtypeQueryString :: Newtype QueryString _
derive instance repGenericQueryString :: Generic QueryString _
instance showQueryString :: Show QueryString where show = genericShow
instance decodeQueryString :: Decode QueryString where decode = genericDecode options
instance encodeQueryString :: Encode QueryString where encode = genericEncode options



newtype QueryVersion = QueryVersion String
derive instance newtypeQueryVersion :: Newtype QueryVersion _
derive instance repGenericQueryVersion :: Generic QueryVersion _
instance showQueryVersion :: Show QueryVersion where show = genericShow
instance decodeQueryVersion :: Decode QueryVersion where decode = genericDecode options
instance encodeQueryVersion :: Encode QueryVersion where encode = genericEncode options



newtype QueueUrl = QueueUrl String
derive instance newtypeQueueUrl :: Newtype QueueUrl _
derive instance repGenericQueueUrl :: Generic QueueUrl _
instance showQueueUrl :: Show QueueUrl where show = genericShow
instance decodeQueueUrl :: Decode QueueUrl where decode = genericDecode options
instance encodeQueueUrl :: Encode QueueUrl where encode = genericEncode options



newtype QueuedThings = QueuedThings Int
derive instance newtypeQueuedThings :: Newtype QueuedThings _
derive instance repGenericQueuedThings :: Generic QueuedThings _
instance showQueuedThings :: Show QueuedThings where show = genericShow
instance decodeQueuedThings :: Decode QueuedThings where decode = genericDecode options
instance encodeQueuedThings :: Encode QueuedThings where encode = genericEncode options



newtype RangeKeyField = RangeKeyField String
derive instance newtypeRangeKeyField :: Newtype RangeKeyField _
derive instance repGenericRangeKeyField :: Generic RangeKeyField _
instance showRangeKeyField :: Show RangeKeyField where show = genericShow
instance decodeRangeKeyField :: Decode RangeKeyField where decode = genericDecode options
instance encodeRangeKeyField :: Encode RangeKeyField where encode = genericEncode options



newtype RangeKeyValue = RangeKeyValue String
derive instance newtypeRangeKeyValue :: Newtype RangeKeyValue _
derive instance repGenericRangeKeyValue :: Generic RangeKeyValue _
instance showRangeKeyValue :: Show RangeKeyValue where show = genericShow
instance decodeRangeKeyValue :: Decode RangeKeyValue where decode = genericDecode options
instance encodeRangeKeyValue :: Encode RangeKeyValue where encode = genericEncode options



newtype Recursive = Recursive Boolean
derive instance newtypeRecursive :: Newtype Recursive _
derive instance repGenericRecursive :: Generic Recursive _
instance showRecursive :: Show Recursive where show = genericShow
instance decodeRecursive :: Decode Recursive where decode = genericDecode options
instance encodeRecursive :: Encode Recursive where encode = genericEncode options



newtype RecursiveWithoutDefault = RecursiveWithoutDefault Boolean
derive instance newtypeRecursiveWithoutDefault :: Newtype RecursiveWithoutDefault _
derive instance repGenericRecursiveWithoutDefault :: Generic RecursiveWithoutDefault _
instance showRecursiveWithoutDefault :: Show RecursiveWithoutDefault where show = genericShow
instance decodeRecursiveWithoutDefault :: Decode RecursiveWithoutDefault where decode = genericDecode options
instance encodeRecursiveWithoutDefault :: Encode RecursiveWithoutDefault where encode = genericEncode options



-- | <p>The input to the RegisterCACertificate operation.</p>
newtype RegisterCACertificateRequest = RegisterCACertificateRequest 
  { "caCertificate" :: (CertificatePem)
  , "verificationCertificate" :: (CertificatePem)
  , "setAsActive" :: Maybe (SetAsActive)
  , "allowAutoRegistration" :: Maybe (AllowAutoRegistration)
  , "registrationConfig" :: Maybe (RegistrationConfig)
  }
derive instance newtypeRegisterCACertificateRequest :: Newtype RegisterCACertificateRequest _
derive instance repGenericRegisterCACertificateRequest :: Generic RegisterCACertificateRequest _
instance showRegisterCACertificateRequest :: Show RegisterCACertificateRequest where show = genericShow
instance decodeRegisterCACertificateRequest :: Decode RegisterCACertificateRequest where decode = genericDecode options
instance encodeRegisterCACertificateRequest :: Encode RegisterCACertificateRequest where encode = genericEncode options

-- | Constructs RegisterCACertificateRequest from required parameters
newRegisterCACertificateRequest :: CertificatePem -> CertificatePem -> RegisterCACertificateRequest
newRegisterCACertificateRequest _caCertificate _verificationCertificate = RegisterCACertificateRequest { "caCertificate": _caCertificate, "verificationCertificate": _verificationCertificate, "allowAutoRegistration": Nothing, "registrationConfig": Nothing, "setAsActive": Nothing }

-- | Constructs RegisterCACertificateRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newRegisterCACertificateRequest' :: CertificatePem -> CertificatePem -> ( { "caCertificate" :: (CertificatePem) , "verificationCertificate" :: (CertificatePem) , "setAsActive" :: Maybe (SetAsActive) , "allowAutoRegistration" :: Maybe (AllowAutoRegistration) , "registrationConfig" :: Maybe (RegistrationConfig) } -> {"caCertificate" :: (CertificatePem) , "verificationCertificate" :: (CertificatePem) , "setAsActive" :: Maybe (SetAsActive) , "allowAutoRegistration" :: Maybe (AllowAutoRegistration) , "registrationConfig" :: Maybe (RegistrationConfig) } ) -> RegisterCACertificateRequest
newRegisterCACertificateRequest' _caCertificate _verificationCertificate customize = (RegisterCACertificateRequest <<< customize) { "caCertificate": _caCertificate, "verificationCertificate": _verificationCertificate, "allowAutoRegistration": Nothing, "registrationConfig": Nothing, "setAsActive": Nothing }



-- | <p>The output from the RegisterCACertificateResponse operation.</p>
newtype RegisterCACertificateResponse = RegisterCACertificateResponse 
  { "certificateArn" :: Maybe (CertificateArn)
  , "certificateId" :: Maybe (CertificateId)
  }
derive instance newtypeRegisterCACertificateResponse :: Newtype RegisterCACertificateResponse _
derive instance repGenericRegisterCACertificateResponse :: Generic RegisterCACertificateResponse _
instance showRegisterCACertificateResponse :: Show RegisterCACertificateResponse where show = genericShow
instance decodeRegisterCACertificateResponse :: Decode RegisterCACertificateResponse where decode = genericDecode options
instance encodeRegisterCACertificateResponse :: Encode RegisterCACertificateResponse where encode = genericEncode options

-- | Constructs RegisterCACertificateResponse from required parameters
newRegisterCACertificateResponse :: RegisterCACertificateResponse
newRegisterCACertificateResponse  = RegisterCACertificateResponse { "certificateArn": Nothing, "certificateId": Nothing }

-- | Constructs RegisterCACertificateResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newRegisterCACertificateResponse' :: ( { "certificateArn" :: Maybe (CertificateArn) , "certificateId" :: Maybe (CertificateId) } -> {"certificateArn" :: Maybe (CertificateArn) , "certificateId" :: Maybe (CertificateId) } ) -> RegisterCACertificateResponse
newRegisterCACertificateResponse'  customize = (RegisterCACertificateResponse <<< customize) { "certificateArn": Nothing, "certificateId": Nothing }



-- | <p>The input to the RegisterCertificate operation.</p>
newtype RegisterCertificateRequest = RegisterCertificateRequest 
  { "certificatePem" :: (CertificatePem)
  , "caCertificatePem" :: Maybe (CertificatePem)
  , "setAsActive" :: Maybe (SetAsActiveFlag)
  , "status" :: Maybe (CertificateStatus)
  }
derive instance newtypeRegisterCertificateRequest :: Newtype RegisterCertificateRequest _
derive instance repGenericRegisterCertificateRequest :: Generic RegisterCertificateRequest _
instance showRegisterCertificateRequest :: Show RegisterCertificateRequest where show = genericShow
instance decodeRegisterCertificateRequest :: Decode RegisterCertificateRequest where decode = genericDecode options
instance encodeRegisterCertificateRequest :: Encode RegisterCertificateRequest where encode = genericEncode options

-- | Constructs RegisterCertificateRequest from required parameters
newRegisterCertificateRequest :: CertificatePem -> RegisterCertificateRequest
newRegisterCertificateRequest _certificatePem = RegisterCertificateRequest { "certificatePem": _certificatePem, "caCertificatePem": Nothing, "setAsActive": Nothing, "status": Nothing }

-- | Constructs RegisterCertificateRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newRegisterCertificateRequest' :: CertificatePem -> ( { "certificatePem" :: (CertificatePem) , "caCertificatePem" :: Maybe (CertificatePem) , "setAsActive" :: Maybe (SetAsActiveFlag) , "status" :: Maybe (CertificateStatus) } -> {"certificatePem" :: (CertificatePem) , "caCertificatePem" :: Maybe (CertificatePem) , "setAsActive" :: Maybe (SetAsActiveFlag) , "status" :: Maybe (CertificateStatus) } ) -> RegisterCertificateRequest
newRegisterCertificateRequest' _certificatePem customize = (RegisterCertificateRequest <<< customize) { "certificatePem": _certificatePem, "caCertificatePem": Nothing, "setAsActive": Nothing, "status": Nothing }



-- | <p>The output from the RegisterCertificate operation.</p>
newtype RegisterCertificateResponse = RegisterCertificateResponse 
  { "certificateArn" :: Maybe (CertificateArn)
  , "certificateId" :: Maybe (CertificateId)
  }
derive instance newtypeRegisterCertificateResponse :: Newtype RegisterCertificateResponse _
derive instance repGenericRegisterCertificateResponse :: Generic RegisterCertificateResponse _
instance showRegisterCertificateResponse :: Show RegisterCertificateResponse where show = genericShow
instance decodeRegisterCertificateResponse :: Decode RegisterCertificateResponse where decode = genericDecode options
instance encodeRegisterCertificateResponse :: Encode RegisterCertificateResponse where encode = genericEncode options

-- | Constructs RegisterCertificateResponse from required parameters
newRegisterCertificateResponse :: RegisterCertificateResponse
newRegisterCertificateResponse  = RegisterCertificateResponse { "certificateArn": Nothing, "certificateId": Nothing }

-- | Constructs RegisterCertificateResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newRegisterCertificateResponse' :: ( { "certificateArn" :: Maybe (CertificateArn) , "certificateId" :: Maybe (CertificateId) } -> {"certificateArn" :: Maybe (CertificateArn) , "certificateId" :: Maybe (CertificateId) } ) -> RegisterCertificateResponse
newRegisterCertificateResponse'  customize = (RegisterCertificateResponse <<< customize) { "certificateArn": Nothing, "certificateId": Nothing }



newtype RegisterThingRequest = RegisterThingRequest 
  { "templateBody" :: (TemplateBody)
  , "parameters" :: Maybe (Parameters)
  }
derive instance newtypeRegisterThingRequest :: Newtype RegisterThingRequest _
derive instance repGenericRegisterThingRequest :: Generic RegisterThingRequest _
instance showRegisterThingRequest :: Show RegisterThingRequest where show = genericShow
instance decodeRegisterThingRequest :: Decode RegisterThingRequest where decode = genericDecode options
instance encodeRegisterThingRequest :: Encode RegisterThingRequest where encode = genericEncode options

-- | Constructs RegisterThingRequest from required parameters
newRegisterThingRequest :: TemplateBody -> RegisterThingRequest
newRegisterThingRequest _templateBody = RegisterThingRequest { "templateBody": _templateBody, "parameters": Nothing }

-- | Constructs RegisterThingRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newRegisterThingRequest' :: TemplateBody -> ( { "templateBody" :: (TemplateBody) , "parameters" :: Maybe (Parameters) } -> {"templateBody" :: (TemplateBody) , "parameters" :: Maybe (Parameters) } ) -> RegisterThingRequest
newRegisterThingRequest' _templateBody customize = (RegisterThingRequest <<< customize) { "templateBody": _templateBody, "parameters": Nothing }



newtype RegisterThingResponse = RegisterThingResponse 
  { "certificatePem" :: Maybe (CertificatePem)
  , "resourceArns" :: Maybe (ResourceArns)
  }
derive instance newtypeRegisterThingResponse :: Newtype RegisterThingResponse _
derive instance repGenericRegisterThingResponse :: Generic RegisterThingResponse _
instance showRegisterThingResponse :: Show RegisterThingResponse where show = genericShow
instance decodeRegisterThingResponse :: Decode RegisterThingResponse where decode = genericDecode options
instance encodeRegisterThingResponse :: Encode RegisterThingResponse where encode = genericEncode options

-- | Constructs RegisterThingResponse from required parameters
newRegisterThingResponse :: RegisterThingResponse
newRegisterThingResponse  = RegisterThingResponse { "certificatePem": Nothing, "resourceArns": Nothing }

-- | Constructs RegisterThingResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newRegisterThingResponse' :: ( { "certificatePem" :: Maybe (CertificatePem) , "resourceArns" :: Maybe (ResourceArns) } -> {"certificatePem" :: Maybe (CertificatePem) , "resourceArns" :: Maybe (ResourceArns) } ) -> RegisterThingResponse
newRegisterThingResponse'  customize = (RegisterThingResponse <<< customize) { "certificatePem": Nothing, "resourceArns": Nothing }



newtype RegistrationCode = RegistrationCode String
derive instance newtypeRegistrationCode :: Newtype RegistrationCode _
derive instance repGenericRegistrationCode :: Generic RegistrationCode _
instance showRegistrationCode :: Show RegistrationCode where show = genericShow
instance decodeRegistrationCode :: Decode RegistrationCode where decode = genericDecode options
instance encodeRegistrationCode :: Encode RegistrationCode where encode = genericEncode options



-- | <p>The registration code is invalid.</p>
newtype RegistrationCodeValidationException = RegistrationCodeValidationException 
  { "message" :: Maybe (ErrorMessage')
  }
derive instance newtypeRegistrationCodeValidationException :: Newtype RegistrationCodeValidationException _
derive instance repGenericRegistrationCodeValidationException :: Generic RegistrationCodeValidationException _
instance showRegistrationCodeValidationException :: Show RegistrationCodeValidationException where show = genericShow
instance decodeRegistrationCodeValidationException :: Decode RegistrationCodeValidationException where decode = genericDecode options
instance encodeRegistrationCodeValidationException :: Encode RegistrationCodeValidationException where encode = genericEncode options

-- | Constructs RegistrationCodeValidationException from required parameters
newRegistrationCodeValidationException :: RegistrationCodeValidationException
newRegistrationCodeValidationException  = RegistrationCodeValidationException { "message": Nothing }

-- | Constructs RegistrationCodeValidationException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newRegistrationCodeValidationException' :: ( { "message" :: Maybe (ErrorMessage') } -> {"message" :: Maybe (ErrorMessage') } ) -> RegistrationCodeValidationException
newRegistrationCodeValidationException'  customize = (RegistrationCodeValidationException <<< customize) { "message": Nothing }



-- | <p>The registration configuration.</p>
newtype RegistrationConfig = RegistrationConfig 
  { "templateBody" :: Maybe (TemplateBody)
  , "roleArn" :: Maybe (RoleArn)
  }
derive instance newtypeRegistrationConfig :: Newtype RegistrationConfig _
derive instance repGenericRegistrationConfig :: Generic RegistrationConfig _
instance showRegistrationConfig :: Show RegistrationConfig where show = genericShow
instance decodeRegistrationConfig :: Decode RegistrationConfig where decode = genericDecode options
instance encodeRegistrationConfig :: Encode RegistrationConfig where encode = genericEncode options

-- | Constructs RegistrationConfig from required parameters
newRegistrationConfig :: RegistrationConfig
newRegistrationConfig  = RegistrationConfig { "roleArn": Nothing, "templateBody": Nothing }

-- | Constructs RegistrationConfig's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newRegistrationConfig' :: ( { "templateBody" :: Maybe (TemplateBody) , "roleArn" :: Maybe (RoleArn) } -> {"templateBody" :: Maybe (TemplateBody) , "roleArn" :: Maybe (RoleArn) } ) -> RegistrationConfig
newRegistrationConfig'  customize = (RegistrationConfig <<< customize) { "roleArn": Nothing, "templateBody": Nothing }



newtype RegistryMaxResults = RegistryMaxResults Int
derive instance newtypeRegistryMaxResults :: Newtype RegistryMaxResults _
derive instance repGenericRegistryMaxResults :: Generic RegistryMaxResults _
instance showRegistryMaxResults :: Show RegistryMaxResults where show = genericShow
instance decodeRegistryMaxResults :: Decode RegistryMaxResults where decode = genericDecode options
instance encodeRegistryMaxResults :: Encode RegistryMaxResults where encode = genericEncode options



newtype RegistryS3BucketName = RegistryS3BucketName String
derive instance newtypeRegistryS3BucketName :: Newtype RegistryS3BucketName _
derive instance repGenericRegistryS3BucketName :: Generic RegistryS3BucketName _
instance showRegistryS3BucketName :: Show RegistryS3BucketName where show = genericShow
instance decodeRegistryS3BucketName :: Decode RegistryS3BucketName where decode = genericDecode options
instance encodeRegistryS3BucketName :: Encode RegistryS3BucketName where encode = genericEncode options



newtype RegistryS3KeyName = RegistryS3KeyName String
derive instance newtypeRegistryS3KeyName :: Newtype RegistryS3KeyName _
derive instance repGenericRegistryS3KeyName :: Generic RegistryS3KeyName _
instance showRegistryS3KeyName :: Show RegistryS3KeyName where show = genericShow
instance decodeRegistryS3KeyName :: Decode RegistryS3KeyName where decode = genericDecode options
instance encodeRegistryS3KeyName :: Encode RegistryS3KeyName where encode = genericEncode options



-- | <p>The input for the RejectCertificateTransfer operation.</p>
newtype RejectCertificateTransferRequest = RejectCertificateTransferRequest 
  { "certificateId" :: (CertificateId)
  , "rejectReason" :: Maybe (Message)
  }
derive instance newtypeRejectCertificateTransferRequest :: Newtype RejectCertificateTransferRequest _
derive instance repGenericRejectCertificateTransferRequest :: Generic RejectCertificateTransferRequest _
instance showRejectCertificateTransferRequest :: Show RejectCertificateTransferRequest where show = genericShow
instance decodeRejectCertificateTransferRequest :: Decode RejectCertificateTransferRequest where decode = genericDecode options
instance encodeRejectCertificateTransferRequest :: Encode RejectCertificateTransferRequest where encode = genericEncode options

-- | Constructs RejectCertificateTransferRequest from required parameters
newRejectCertificateTransferRequest :: CertificateId -> RejectCertificateTransferRequest
newRejectCertificateTransferRequest _certificateId = RejectCertificateTransferRequest { "certificateId": _certificateId, "rejectReason": Nothing }

-- | Constructs RejectCertificateTransferRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newRejectCertificateTransferRequest' :: CertificateId -> ( { "certificateId" :: (CertificateId) , "rejectReason" :: Maybe (Message) } -> {"certificateId" :: (CertificateId) , "rejectReason" :: Maybe (Message) } ) -> RejectCertificateTransferRequest
newRejectCertificateTransferRequest' _certificateId customize = (RejectCertificateTransferRequest <<< customize) { "certificateId": _certificateId, "rejectReason": Nothing }



newtype RejectedThings = RejectedThings Int
derive instance newtypeRejectedThings :: Newtype RejectedThings _
derive instance repGenericRejectedThings :: Generic RejectedThings _
instance showRejectedThings :: Show RejectedThings where show = genericShow
instance decodeRejectedThings :: Decode RejectedThings where decode = genericDecode options
instance encodeRejectedThings :: Encode RejectedThings where encode = genericEncode options



newtype RemoveAutoRegistration = RemoveAutoRegistration Boolean
derive instance newtypeRemoveAutoRegistration :: Newtype RemoveAutoRegistration _
derive instance repGenericRemoveAutoRegistration :: Generic RemoveAutoRegistration _
instance showRemoveAutoRegistration :: Show RemoveAutoRegistration where show = genericShow
instance decodeRemoveAutoRegistration :: Decode RemoveAutoRegistration where decode = genericDecode options
instance encodeRemoveAutoRegistration :: Encode RemoveAutoRegistration where encode = genericEncode options



newtype RemoveThingFromThingGroupRequest = RemoveThingFromThingGroupRequest 
  { "thingGroupName" :: Maybe (ThingGroupName)
  , "thingGroupArn" :: Maybe (ThingGroupArn)
  , "thingName" :: Maybe (ThingName)
  , "thingArn" :: Maybe (ThingArn)
  }
derive instance newtypeRemoveThingFromThingGroupRequest :: Newtype RemoveThingFromThingGroupRequest _
derive instance repGenericRemoveThingFromThingGroupRequest :: Generic RemoveThingFromThingGroupRequest _
instance showRemoveThingFromThingGroupRequest :: Show RemoveThingFromThingGroupRequest where show = genericShow
instance decodeRemoveThingFromThingGroupRequest :: Decode RemoveThingFromThingGroupRequest where decode = genericDecode options
instance encodeRemoveThingFromThingGroupRequest :: Encode RemoveThingFromThingGroupRequest where encode = genericEncode options

-- | Constructs RemoveThingFromThingGroupRequest from required parameters
newRemoveThingFromThingGroupRequest :: RemoveThingFromThingGroupRequest
newRemoveThingFromThingGroupRequest  = RemoveThingFromThingGroupRequest { "thingArn": Nothing, "thingGroupArn": Nothing, "thingGroupName": Nothing, "thingName": Nothing }

-- | Constructs RemoveThingFromThingGroupRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newRemoveThingFromThingGroupRequest' :: ( { "thingGroupName" :: Maybe (ThingGroupName) , "thingGroupArn" :: Maybe (ThingGroupArn) , "thingName" :: Maybe (ThingName) , "thingArn" :: Maybe (ThingArn) } -> {"thingGroupName" :: Maybe (ThingGroupName) , "thingGroupArn" :: Maybe (ThingGroupArn) , "thingName" :: Maybe (ThingName) , "thingArn" :: Maybe (ThingArn) } ) -> RemoveThingFromThingGroupRequest
newRemoveThingFromThingGroupRequest'  customize = (RemoveThingFromThingGroupRequest <<< customize) { "thingArn": Nothing, "thingGroupArn": Nothing, "thingGroupName": Nothing, "thingName": Nothing }



newtype RemoveThingFromThingGroupResponse = RemoveThingFromThingGroupResponse Types.NoArguments
derive instance newtypeRemoveThingFromThingGroupResponse :: Newtype RemoveThingFromThingGroupResponse _
derive instance repGenericRemoveThingFromThingGroupResponse :: Generic RemoveThingFromThingGroupResponse _
instance showRemoveThingFromThingGroupResponse :: Show RemoveThingFromThingGroupResponse where show = genericShow
instance decodeRemoveThingFromThingGroupResponse :: Decode RemoveThingFromThingGroupResponse where decode = genericDecode options
instance encodeRemoveThingFromThingGroupResponse :: Encode RemoveThingFromThingGroupResponse where encode = genericEncode options



newtype RemoveThingType = RemoveThingType Boolean
derive instance newtypeRemoveThingType :: Newtype RemoveThingType _
derive instance repGenericRemoveThingType :: Generic RemoveThingType _
instance showRemoveThingType :: Show RemoveThingType where show = genericShow
instance decodeRemoveThingType :: Decode RemoveThingType where decode = genericDecode options
instance encodeRemoveThingType :: Encode RemoveThingType where encode = genericEncode options



newtype RemovedThings = RemovedThings Int
derive instance newtypeRemovedThings :: Newtype RemovedThings _
derive instance repGenericRemovedThings :: Generic RemovedThings _
instance showRemovedThings :: Show RemovedThings where show = genericShow
instance decodeRemovedThings :: Decode RemovedThings where decode = genericDecode options
instance encodeRemovedThings :: Encode RemovedThings where encode = genericEncode options



-- | <p>The input for the ReplaceTopicRule operation.</p>
newtype ReplaceTopicRuleRequest = ReplaceTopicRuleRequest 
  { "ruleName" :: (RuleName)
  , "topicRulePayload" :: (TopicRulePayload)
  }
derive instance newtypeReplaceTopicRuleRequest :: Newtype ReplaceTopicRuleRequest _
derive instance repGenericReplaceTopicRuleRequest :: Generic ReplaceTopicRuleRequest _
instance showReplaceTopicRuleRequest :: Show ReplaceTopicRuleRequest where show = genericShow
instance decodeReplaceTopicRuleRequest :: Decode ReplaceTopicRuleRequest where decode = genericDecode options
instance encodeReplaceTopicRuleRequest :: Encode ReplaceTopicRuleRequest where encode = genericEncode options

-- | Constructs ReplaceTopicRuleRequest from required parameters
newReplaceTopicRuleRequest :: RuleName -> TopicRulePayload -> ReplaceTopicRuleRequest
newReplaceTopicRuleRequest _ruleName _topicRulePayload = ReplaceTopicRuleRequest { "ruleName": _ruleName, "topicRulePayload": _topicRulePayload }

-- | Constructs ReplaceTopicRuleRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newReplaceTopicRuleRequest' :: RuleName -> TopicRulePayload -> ( { "ruleName" :: (RuleName) , "topicRulePayload" :: (TopicRulePayload) } -> {"ruleName" :: (RuleName) , "topicRulePayload" :: (TopicRulePayload) } ) -> ReplaceTopicRuleRequest
newReplaceTopicRuleRequest' _ruleName _topicRulePayload customize = (ReplaceTopicRuleRequest <<< customize) { "ruleName": _ruleName, "topicRulePayload": _topicRulePayload }



newtype ReportType = ReportType String
derive instance newtypeReportType :: Newtype ReportType _
derive instance repGenericReportType :: Generic ReportType _
instance showReportType :: Show ReportType where show = genericShow
instance decodeReportType :: Decode ReportType where decode = genericDecode options
instance encodeReportType :: Encode ReportType where encode = genericEncode options



-- | <p>Describes an action to republish to another topic.</p>
newtype RepublishAction = RepublishAction 
  { "roleArn" :: (AwsArn)
  , "topic" :: (TopicPattern)
  }
derive instance newtypeRepublishAction :: Newtype RepublishAction _
derive instance repGenericRepublishAction :: Generic RepublishAction _
instance showRepublishAction :: Show RepublishAction where show = genericShow
instance decodeRepublishAction :: Decode RepublishAction where decode = genericDecode options
instance encodeRepublishAction :: Encode RepublishAction where encode = genericEncode options

-- | Constructs RepublishAction from required parameters
newRepublishAction :: AwsArn -> TopicPattern -> RepublishAction
newRepublishAction _roleArn _topic = RepublishAction { "roleArn": _roleArn, "topic": _topic }

-- | Constructs RepublishAction's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newRepublishAction' :: AwsArn -> TopicPattern -> ( { "roleArn" :: (AwsArn) , "topic" :: (TopicPattern) } -> {"roleArn" :: (AwsArn) , "topic" :: (TopicPattern) } ) -> RepublishAction
newRepublishAction' _roleArn _topic customize = (RepublishAction <<< customize) { "roleArn": _roleArn, "topic": _topic }



newtype Resource = Resource String
derive instance newtypeResource :: Newtype Resource _
derive instance repGenericResource :: Generic Resource _
instance showResource :: Show Resource where show = genericShow
instance decodeResource :: Decode Resource where decode = genericDecode options
instance encodeResource :: Encode Resource where encode = genericEncode options



-- | <p>The resource already exists.</p>
newtype ResourceAlreadyExistsException = ResourceAlreadyExistsException 
  { "message" :: Maybe (ErrorMessage')
  , "resourceId" :: Maybe (ResourceId')
  , "resourceArn" :: Maybe (ResourceArn')
  }
derive instance newtypeResourceAlreadyExistsException :: Newtype ResourceAlreadyExistsException _
derive instance repGenericResourceAlreadyExistsException :: Generic ResourceAlreadyExistsException _
instance showResourceAlreadyExistsException :: Show ResourceAlreadyExistsException where show = genericShow
instance decodeResourceAlreadyExistsException :: Decode ResourceAlreadyExistsException where decode = genericDecode options
instance encodeResourceAlreadyExistsException :: Encode ResourceAlreadyExistsException where encode = genericEncode options

-- | Constructs ResourceAlreadyExistsException from required parameters
newResourceAlreadyExistsException :: ResourceAlreadyExistsException
newResourceAlreadyExistsException  = ResourceAlreadyExistsException { "message": Nothing, "resourceArn": Nothing, "resourceId": Nothing }

-- | Constructs ResourceAlreadyExistsException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newResourceAlreadyExistsException' :: ( { "message" :: Maybe (ErrorMessage') , "resourceId" :: Maybe (ResourceId') , "resourceArn" :: Maybe (ResourceArn') } -> {"message" :: Maybe (ErrorMessage') , "resourceId" :: Maybe (ResourceId') , "resourceArn" :: Maybe (ResourceArn') } ) -> ResourceAlreadyExistsException
newResourceAlreadyExistsException'  customize = (ResourceAlreadyExistsException <<< customize) { "message": Nothing, "resourceArn": Nothing, "resourceId": Nothing }



newtype ResourceArn = ResourceArn String
derive instance newtypeResourceArn :: Newtype ResourceArn _
derive instance repGenericResourceArn :: Generic ResourceArn _
instance showResourceArn :: Show ResourceArn where show = genericShow
instance decodeResourceArn :: Decode ResourceArn where decode = genericDecode options
instance encodeResourceArn :: Encode ResourceArn where encode = genericEncode options



newtype ResourceArns = ResourceArns (StrMap.StrMap ResourceArn)
derive instance newtypeResourceArns :: Newtype ResourceArns _
derive instance repGenericResourceArns :: Generic ResourceArns _
instance showResourceArns :: Show ResourceArns where show = genericShow
instance decodeResourceArns :: Decode ResourceArns where decode = genericDecode options
instance encodeResourceArns :: Encode ResourceArns where encode = genericEncode options



newtype ResourceLogicalId = ResourceLogicalId String
derive instance newtypeResourceLogicalId :: Newtype ResourceLogicalId _
derive instance repGenericResourceLogicalId :: Generic ResourceLogicalId _
instance showResourceLogicalId :: Show ResourceLogicalId where show = genericShow
instance decodeResourceLogicalId :: Decode ResourceLogicalId where decode = genericDecode options
instance encodeResourceLogicalId :: Encode ResourceLogicalId where encode = genericEncode options



-- | <p>The specified resource does not exist.</p>
newtype ResourceNotFoundException = ResourceNotFoundException 
  { "message" :: Maybe (ErrorMessage')
  }
derive instance newtypeResourceNotFoundException :: Newtype ResourceNotFoundException _
derive instance repGenericResourceNotFoundException :: Generic ResourceNotFoundException _
instance showResourceNotFoundException :: Show ResourceNotFoundException where show = genericShow
instance decodeResourceNotFoundException :: Decode ResourceNotFoundException where decode = genericDecode options
instance encodeResourceNotFoundException :: Encode ResourceNotFoundException where encode = genericEncode options

-- | Constructs ResourceNotFoundException from required parameters
newResourceNotFoundException :: ResourceNotFoundException
newResourceNotFoundException  = ResourceNotFoundException { "message": Nothing }

-- | Constructs ResourceNotFoundException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newResourceNotFoundException' :: ( { "message" :: Maybe (ErrorMessage') } -> {"message" :: Maybe (ErrorMessage') } ) -> ResourceNotFoundException
newResourceNotFoundException'  customize = (ResourceNotFoundException <<< customize) { "message": Nothing }



-- | <p>The resource registration failed.</p>
newtype ResourceRegistrationFailureException = ResourceRegistrationFailureException 
  { "message" :: Maybe (ErrorMessage')
  }
derive instance newtypeResourceRegistrationFailureException :: Newtype ResourceRegistrationFailureException _
derive instance repGenericResourceRegistrationFailureException :: Generic ResourceRegistrationFailureException _
instance showResourceRegistrationFailureException :: Show ResourceRegistrationFailureException where show = genericShow
instance decodeResourceRegistrationFailureException :: Decode ResourceRegistrationFailureException where decode = genericDecode options
instance encodeResourceRegistrationFailureException :: Encode ResourceRegistrationFailureException where encode = genericEncode options

-- | Constructs ResourceRegistrationFailureException from required parameters
newResourceRegistrationFailureException :: ResourceRegistrationFailureException
newResourceRegistrationFailureException  = ResourceRegistrationFailureException { "message": Nothing }

-- | Constructs ResourceRegistrationFailureException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newResourceRegistrationFailureException' :: ( { "message" :: Maybe (ErrorMessage') } -> {"message" :: Maybe (ErrorMessage') } ) -> ResourceRegistrationFailureException
newResourceRegistrationFailureException'  customize = (ResourceRegistrationFailureException <<< customize) { "message": Nothing }



newtype Resources = Resources (Array Resource)
derive instance newtypeResources :: Newtype Resources _
derive instance repGenericResources :: Generic Resources _
instance showResources :: Show Resources where show = genericShow
instance decodeResources :: Decode Resources where decode = genericDecode options
instance encodeResources :: Encode Resources where encode = genericEncode options



newtype RoleAlias = RoleAlias String
derive instance newtypeRoleAlias :: Newtype RoleAlias _
derive instance repGenericRoleAlias :: Generic RoleAlias _
instance showRoleAlias :: Show RoleAlias where show = genericShow
instance decodeRoleAlias :: Decode RoleAlias where decode = genericDecode options
instance encodeRoleAlias :: Encode RoleAlias where encode = genericEncode options



newtype RoleAliasArn = RoleAliasArn String
derive instance newtypeRoleAliasArn :: Newtype RoleAliasArn _
derive instance repGenericRoleAliasArn :: Generic RoleAliasArn _
instance showRoleAliasArn :: Show RoleAliasArn where show = genericShow
instance decodeRoleAliasArn :: Decode RoleAliasArn where decode = genericDecode options
instance encodeRoleAliasArn :: Encode RoleAliasArn where encode = genericEncode options



-- | <p>Role alias description.</p>
newtype RoleAliasDescription = RoleAliasDescription 
  { "roleAlias" :: Maybe (RoleAlias)
  , "roleArn" :: Maybe (RoleArn)
  , "owner" :: Maybe (AwsAccountId)
  , "credentialDurationSeconds" :: Maybe (CredentialDurationSeconds)
  , "creationDate" :: Maybe (DateType)
  , "lastModifiedDate" :: Maybe (DateType)
  }
derive instance newtypeRoleAliasDescription :: Newtype RoleAliasDescription _
derive instance repGenericRoleAliasDescription :: Generic RoleAliasDescription _
instance showRoleAliasDescription :: Show RoleAliasDescription where show = genericShow
instance decodeRoleAliasDescription :: Decode RoleAliasDescription where decode = genericDecode options
instance encodeRoleAliasDescription :: Encode RoleAliasDescription where encode = genericEncode options

-- | Constructs RoleAliasDescription from required parameters
newRoleAliasDescription :: RoleAliasDescription
newRoleAliasDescription  = RoleAliasDescription { "creationDate": Nothing, "credentialDurationSeconds": Nothing, "lastModifiedDate": Nothing, "owner": Nothing, "roleAlias": Nothing, "roleArn": Nothing }

-- | Constructs RoleAliasDescription's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newRoleAliasDescription' :: ( { "roleAlias" :: Maybe (RoleAlias) , "roleArn" :: Maybe (RoleArn) , "owner" :: Maybe (AwsAccountId) , "credentialDurationSeconds" :: Maybe (CredentialDurationSeconds) , "creationDate" :: Maybe (DateType) , "lastModifiedDate" :: Maybe (DateType) } -> {"roleAlias" :: Maybe (RoleAlias) , "roleArn" :: Maybe (RoleArn) , "owner" :: Maybe (AwsAccountId) , "credentialDurationSeconds" :: Maybe (CredentialDurationSeconds) , "creationDate" :: Maybe (DateType) , "lastModifiedDate" :: Maybe (DateType) } ) -> RoleAliasDescription
newRoleAliasDescription'  customize = (RoleAliasDescription <<< customize) { "creationDate": Nothing, "credentialDurationSeconds": Nothing, "lastModifiedDate": Nothing, "owner": Nothing, "roleAlias": Nothing, "roleArn": Nothing }



newtype RoleAliases = RoleAliases (Array RoleAlias)
derive instance newtypeRoleAliases :: Newtype RoleAliases _
derive instance repGenericRoleAliases :: Generic RoleAliases _
instance showRoleAliases :: Show RoleAliases where show = genericShow
instance decodeRoleAliases :: Decode RoleAliases where decode = genericDecode options
instance encodeRoleAliases :: Encode RoleAliases where encode = genericEncode options



newtype RoleArn = RoleArn String
derive instance newtypeRoleArn :: Newtype RoleArn _
derive instance repGenericRoleArn :: Generic RoleArn _
instance showRoleArn :: Show RoleArn where show = genericShow
instance decodeRoleArn :: Decode RoleArn where decode = genericDecode options
instance encodeRoleArn :: Encode RoleArn where encode = genericEncode options



newtype RuleArn = RuleArn String
derive instance newtypeRuleArn :: Newtype RuleArn _
derive instance repGenericRuleArn :: Generic RuleArn _
instance showRuleArn :: Show RuleArn where show = genericShow
instance decodeRuleArn :: Decode RuleArn where decode = genericDecode options
instance encodeRuleArn :: Encode RuleArn where encode = genericEncode options



newtype RuleName = RuleName String
derive instance newtypeRuleName :: Newtype RuleName _
derive instance repGenericRuleName :: Generic RuleName _
instance showRuleName :: Show RuleName where show = genericShow
instance decodeRuleName :: Decode RuleName where decode = genericDecode options
instance encodeRuleName :: Encode RuleName where encode = genericEncode options



-- | <p>Describes an action to write data to an Amazon S3 bucket.</p>
newtype S3Action = S3Action 
  { "roleArn" :: (AwsArn)
  , "bucketName" :: (BucketName)
  , "key" :: (Key)
  , "cannedAcl" :: Maybe (CannedAccessControlList)
  }
derive instance newtypeS3Action :: Newtype S3Action _
derive instance repGenericS3Action :: Generic S3Action _
instance showS3Action :: Show S3Action where show = genericShow
instance decodeS3Action :: Decode S3Action where decode = genericDecode options
instance encodeS3Action :: Encode S3Action where encode = genericEncode options

-- | Constructs S3Action from required parameters
newS3Action :: BucketName -> Key -> AwsArn -> S3Action
newS3Action _bucketName _key _roleArn = S3Action { "bucketName": _bucketName, "key": _key, "roleArn": _roleArn, "cannedAcl": Nothing }

-- | Constructs S3Action's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newS3Action' :: BucketName -> Key -> AwsArn -> ( { "roleArn" :: (AwsArn) , "bucketName" :: (BucketName) , "key" :: (Key) , "cannedAcl" :: Maybe (CannedAccessControlList) } -> {"roleArn" :: (AwsArn) , "bucketName" :: (BucketName) , "key" :: (Key) , "cannedAcl" :: Maybe (CannedAccessControlList) } ) -> S3Action
newS3Action' _bucketName _key _roleArn customize = (S3Action <<< customize) { "bucketName": _bucketName, "key": _key, "roleArn": _roleArn, "cannedAcl": Nothing }



newtype S3Bucket = S3Bucket String
derive instance newtypeS3Bucket :: Newtype S3Bucket _
derive instance repGenericS3Bucket :: Generic S3Bucket _
instance showS3Bucket :: Show S3Bucket where show = genericShow
instance decodeS3Bucket :: Decode S3Bucket where decode = genericDecode options
instance encodeS3Bucket :: Encode S3Bucket where encode = genericEncode options



newtype S3FileUrl = S3FileUrl String
derive instance newtypeS3FileUrl :: Newtype S3FileUrl _
derive instance repGenericS3FileUrl :: Generic S3FileUrl _
instance showS3FileUrl :: Show S3FileUrl where show = genericShow
instance decodeS3FileUrl :: Decode S3FileUrl where decode = genericDecode options
instance encodeS3FileUrl :: Encode S3FileUrl where encode = genericEncode options



newtype S3FileUrlList = S3FileUrlList (Array S3FileUrl)
derive instance newtypeS3FileUrlList :: Newtype S3FileUrlList _
derive instance repGenericS3FileUrlList :: Generic S3FileUrlList _
instance showS3FileUrlList :: Show S3FileUrlList where show = genericShow
instance decodeS3FileUrlList :: Decode S3FileUrlList where decode = genericDecode options
instance encodeS3FileUrlList :: Encode S3FileUrlList where encode = genericEncode options



newtype S3Key = S3Key String
derive instance newtypeS3Key :: Newtype S3Key _
derive instance repGenericS3Key :: Generic S3Key _
instance showS3Key :: Show S3Key where show = genericShow
instance decodeS3Key :: Decode S3Key where decode = genericDecode options
instance encodeS3Key :: Encode S3Key where encode = genericEncode options



-- | <p>The location in S3 the contains the files to stream.</p>
newtype S3Location = S3Location 
  { "bucket" :: (S3Bucket)
  , "key" :: (S3Key)
  , "version" :: Maybe (S3Version)
  }
derive instance newtypeS3Location :: Newtype S3Location _
derive instance repGenericS3Location :: Generic S3Location _
instance showS3Location :: Show S3Location where show = genericShow
instance decodeS3Location :: Decode S3Location where decode = genericDecode options
instance encodeS3Location :: Encode S3Location where encode = genericEncode options

-- | Constructs S3Location from required parameters
newS3Location :: S3Bucket -> S3Key -> S3Location
newS3Location _bucket _key = S3Location { "bucket": _bucket, "key": _key, "version": Nothing }

-- | Constructs S3Location's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newS3Location' :: S3Bucket -> S3Key -> ( { "bucket" :: (S3Bucket) , "key" :: (S3Key) , "version" :: Maybe (S3Version) } -> {"bucket" :: (S3Bucket) , "key" :: (S3Key) , "version" :: Maybe (S3Version) } ) -> S3Location
newS3Location' _bucket _key customize = (S3Location <<< customize) { "bucket": _bucket, "key": _key, "version": Nothing }



newtype S3Version = S3Version String
derive instance newtypeS3Version :: Newtype S3Version _
derive instance repGenericS3Version :: Generic S3Version _
instance showS3Version :: Show S3Version where show = genericShow
instance decodeS3Version :: Decode S3Version where decode = genericDecode options
instance encodeS3Version :: Encode S3Version where encode = genericEncode options



newtype SQL = SQL String
derive instance newtypeSQL :: Newtype SQL _
derive instance repGenericSQL :: Generic SQL _
instance showSQL :: Show SQL where show = genericShow
instance decodeSQL :: Decode SQL where decode = genericDecode options
instance encodeSQL :: Encode SQL where encode = genericEncode options



-- | <p>Describes an action to write a message to a Salesforce IoT Cloud Input Stream.</p>
newtype SalesforceAction = SalesforceAction 
  { "token" :: (SalesforceToken)
  , "url" :: (SalesforceEndpoint)
  }
derive instance newtypeSalesforceAction :: Newtype SalesforceAction _
derive instance repGenericSalesforceAction :: Generic SalesforceAction _
instance showSalesforceAction :: Show SalesforceAction where show = genericShow
instance decodeSalesforceAction :: Decode SalesforceAction where decode = genericDecode options
instance encodeSalesforceAction :: Encode SalesforceAction where encode = genericEncode options

-- | Constructs SalesforceAction from required parameters
newSalesforceAction :: SalesforceToken -> SalesforceEndpoint -> SalesforceAction
newSalesforceAction _token _url = SalesforceAction { "token": _token, "url": _url }

-- | Constructs SalesforceAction's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newSalesforceAction' :: SalesforceToken -> SalesforceEndpoint -> ( { "token" :: (SalesforceToken) , "url" :: (SalesforceEndpoint) } -> {"token" :: (SalesforceToken) , "url" :: (SalesforceEndpoint) } ) -> SalesforceAction
newSalesforceAction' _token _url customize = (SalesforceAction <<< customize) { "token": _token, "url": _url }



newtype SalesforceEndpoint = SalesforceEndpoint String
derive instance newtypeSalesforceEndpoint :: Newtype SalesforceEndpoint _
derive instance repGenericSalesforceEndpoint :: Generic SalesforceEndpoint _
instance showSalesforceEndpoint :: Show SalesforceEndpoint where show = genericShow
instance decodeSalesforceEndpoint :: Decode SalesforceEndpoint where decode = genericDecode options
instance encodeSalesforceEndpoint :: Encode SalesforceEndpoint where encode = genericEncode options



newtype SalesforceToken = SalesforceToken String
derive instance newtypeSalesforceToken :: Newtype SalesforceToken _
derive instance repGenericSalesforceToken :: Generic SalesforceToken _
instance showSalesforceToken :: Show SalesforceToken where show = genericShow
instance decodeSalesforceToken :: Decode SalesforceToken where decode = genericDecode options
instance encodeSalesforceToken :: Encode SalesforceToken where encode = genericEncode options



newtype SearchIndexRequest = SearchIndexRequest 
  { "indexName" :: Maybe (IndexName)
  , "queryString" :: (QueryString)
  , "nextToken" :: Maybe (NextToken)
  , "maxResults" :: Maybe (QueryMaxResults)
  , "queryVersion" :: Maybe (QueryVersion)
  }
derive instance newtypeSearchIndexRequest :: Newtype SearchIndexRequest _
derive instance repGenericSearchIndexRequest :: Generic SearchIndexRequest _
instance showSearchIndexRequest :: Show SearchIndexRequest where show = genericShow
instance decodeSearchIndexRequest :: Decode SearchIndexRequest where decode = genericDecode options
instance encodeSearchIndexRequest :: Encode SearchIndexRequest where encode = genericEncode options

-- | Constructs SearchIndexRequest from required parameters
newSearchIndexRequest :: QueryString -> SearchIndexRequest
newSearchIndexRequest _queryString = SearchIndexRequest { "queryString": _queryString, "indexName": Nothing, "maxResults": Nothing, "nextToken": Nothing, "queryVersion": Nothing }

-- | Constructs SearchIndexRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newSearchIndexRequest' :: QueryString -> ( { "indexName" :: Maybe (IndexName) , "queryString" :: (QueryString) , "nextToken" :: Maybe (NextToken) , "maxResults" :: Maybe (QueryMaxResults) , "queryVersion" :: Maybe (QueryVersion) } -> {"indexName" :: Maybe (IndexName) , "queryString" :: (QueryString) , "nextToken" :: Maybe (NextToken) , "maxResults" :: Maybe (QueryMaxResults) , "queryVersion" :: Maybe (QueryVersion) } ) -> SearchIndexRequest
newSearchIndexRequest' _queryString customize = (SearchIndexRequest <<< customize) { "queryString": _queryString, "indexName": Nothing, "maxResults": Nothing, "nextToken": Nothing, "queryVersion": Nothing }



newtype SearchIndexResponse = SearchIndexResponse 
  { "nextToken" :: Maybe (NextToken)
  , "things" :: Maybe (ThingDocumentList)
  }
derive instance newtypeSearchIndexResponse :: Newtype SearchIndexResponse _
derive instance repGenericSearchIndexResponse :: Generic SearchIndexResponse _
instance showSearchIndexResponse :: Show SearchIndexResponse where show = genericShow
instance decodeSearchIndexResponse :: Decode SearchIndexResponse where decode = genericDecode options
instance encodeSearchIndexResponse :: Encode SearchIndexResponse where encode = genericEncode options

-- | Constructs SearchIndexResponse from required parameters
newSearchIndexResponse :: SearchIndexResponse
newSearchIndexResponse  = SearchIndexResponse { "nextToken": Nothing, "things": Nothing }

-- | Constructs SearchIndexResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newSearchIndexResponse' :: ( { "nextToken" :: Maybe (NextToken) , "things" :: Maybe (ThingDocumentList) } -> {"nextToken" :: Maybe (NextToken) , "things" :: Maybe (ThingDocumentList) } ) -> SearchIndexResponse
newSearchIndexResponse'  customize = (SearchIndexResponse <<< customize) { "nextToken": Nothing, "things": Nothing }



newtype SearchableAttributes = SearchableAttributes (Array AttributeName)
derive instance newtypeSearchableAttributes :: Newtype SearchableAttributes _
derive instance repGenericSearchableAttributes :: Generic SearchableAttributes _
instance showSearchableAttributes :: Show SearchableAttributes where show = genericShow
instance decodeSearchableAttributes :: Decode SearchableAttributes where decode = genericDecode options
instance encodeSearchableAttributes :: Encode SearchableAttributes where encode = genericEncode options



newtype Seconds = Seconds Int
derive instance newtypeSeconds :: Newtype Seconds _
derive instance repGenericSeconds :: Generic Seconds _
instance showSeconds :: Show Seconds where show = genericShow
instance decodeSeconds :: Decode Seconds where decode = genericDecode options
instance encodeSeconds :: Encode Seconds where encode = genericEncode options



-- | <p>The service is temporarily unavailable.</p>
newtype ServiceUnavailableException = ServiceUnavailableException 
  { "message" :: Maybe (ErrorMessage')
  }
derive instance newtypeServiceUnavailableException :: Newtype ServiceUnavailableException _
derive instance repGenericServiceUnavailableException :: Generic ServiceUnavailableException _
instance showServiceUnavailableException :: Show ServiceUnavailableException where show = genericShow
instance decodeServiceUnavailableException :: Decode ServiceUnavailableException where decode = genericDecode options
instance encodeServiceUnavailableException :: Encode ServiceUnavailableException where encode = genericEncode options

-- | Constructs ServiceUnavailableException from required parameters
newServiceUnavailableException :: ServiceUnavailableException
newServiceUnavailableException  = ServiceUnavailableException { "message": Nothing }

-- | Constructs ServiceUnavailableException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newServiceUnavailableException' :: ( { "message" :: Maybe (ErrorMessage') } -> {"message" :: Maybe (ErrorMessage') } ) -> ServiceUnavailableException
newServiceUnavailableException'  customize = (ServiceUnavailableException <<< customize) { "message": Nothing }



newtype SetAsActive = SetAsActive Boolean
derive instance newtypeSetAsActive :: Newtype SetAsActive _
derive instance repGenericSetAsActive :: Generic SetAsActive _
instance showSetAsActive :: Show SetAsActive where show = genericShow
instance decodeSetAsActive :: Decode SetAsActive where decode = genericDecode options
instance encodeSetAsActive :: Encode SetAsActive where encode = genericEncode options



newtype SetAsActiveFlag = SetAsActiveFlag Boolean
derive instance newtypeSetAsActiveFlag :: Newtype SetAsActiveFlag _
derive instance repGenericSetAsActiveFlag :: Generic SetAsActiveFlag _
instance showSetAsActiveFlag :: Show SetAsActiveFlag where show = genericShow
instance decodeSetAsActiveFlag :: Decode SetAsActiveFlag where decode = genericDecode options
instance encodeSetAsActiveFlag :: Encode SetAsActiveFlag where encode = genericEncode options



newtype SetAsDefault = SetAsDefault Boolean
derive instance newtypeSetAsDefault :: Newtype SetAsDefault _
derive instance repGenericSetAsDefault :: Generic SetAsDefault _
instance showSetAsDefault :: Show SetAsDefault where show = genericShow
instance decodeSetAsDefault :: Decode SetAsDefault where decode = genericDecode options
instance encodeSetAsDefault :: Encode SetAsDefault where encode = genericEncode options



newtype SetDefaultAuthorizerRequest = SetDefaultAuthorizerRequest 
  { "authorizerName" :: (AuthorizerName)
  }
derive instance newtypeSetDefaultAuthorizerRequest :: Newtype SetDefaultAuthorizerRequest _
derive instance repGenericSetDefaultAuthorizerRequest :: Generic SetDefaultAuthorizerRequest _
instance showSetDefaultAuthorizerRequest :: Show SetDefaultAuthorizerRequest where show = genericShow
instance decodeSetDefaultAuthorizerRequest :: Decode SetDefaultAuthorizerRequest where decode = genericDecode options
instance encodeSetDefaultAuthorizerRequest :: Encode SetDefaultAuthorizerRequest where encode = genericEncode options

-- | Constructs SetDefaultAuthorizerRequest from required parameters
newSetDefaultAuthorizerRequest :: AuthorizerName -> SetDefaultAuthorizerRequest
newSetDefaultAuthorizerRequest _authorizerName = SetDefaultAuthorizerRequest { "authorizerName": _authorizerName }

-- | Constructs SetDefaultAuthorizerRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newSetDefaultAuthorizerRequest' :: AuthorizerName -> ( { "authorizerName" :: (AuthorizerName) } -> {"authorizerName" :: (AuthorizerName) } ) -> SetDefaultAuthorizerRequest
newSetDefaultAuthorizerRequest' _authorizerName customize = (SetDefaultAuthorizerRequest <<< customize) { "authorizerName": _authorizerName }



newtype SetDefaultAuthorizerResponse = SetDefaultAuthorizerResponse 
  { "authorizerName" :: Maybe (AuthorizerName)
  , "authorizerArn" :: Maybe (AuthorizerArn)
  }
derive instance newtypeSetDefaultAuthorizerResponse :: Newtype SetDefaultAuthorizerResponse _
derive instance repGenericSetDefaultAuthorizerResponse :: Generic SetDefaultAuthorizerResponse _
instance showSetDefaultAuthorizerResponse :: Show SetDefaultAuthorizerResponse where show = genericShow
instance decodeSetDefaultAuthorizerResponse :: Decode SetDefaultAuthorizerResponse where decode = genericDecode options
instance encodeSetDefaultAuthorizerResponse :: Encode SetDefaultAuthorizerResponse where encode = genericEncode options

-- | Constructs SetDefaultAuthorizerResponse from required parameters
newSetDefaultAuthorizerResponse :: SetDefaultAuthorizerResponse
newSetDefaultAuthorizerResponse  = SetDefaultAuthorizerResponse { "authorizerArn": Nothing, "authorizerName": Nothing }

-- | Constructs SetDefaultAuthorizerResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newSetDefaultAuthorizerResponse' :: ( { "authorizerName" :: Maybe (AuthorizerName) , "authorizerArn" :: Maybe (AuthorizerArn) } -> {"authorizerName" :: Maybe (AuthorizerName) , "authorizerArn" :: Maybe (AuthorizerArn) } ) -> SetDefaultAuthorizerResponse
newSetDefaultAuthorizerResponse'  customize = (SetDefaultAuthorizerResponse <<< customize) { "authorizerArn": Nothing, "authorizerName": Nothing }



-- | <p>The input for the SetDefaultPolicyVersion operation.</p>
newtype SetDefaultPolicyVersionRequest = SetDefaultPolicyVersionRequest 
  { "policyName" :: (PolicyName)
  , "policyVersionId" :: (PolicyVersionId)
  }
derive instance newtypeSetDefaultPolicyVersionRequest :: Newtype SetDefaultPolicyVersionRequest _
derive instance repGenericSetDefaultPolicyVersionRequest :: Generic SetDefaultPolicyVersionRequest _
instance showSetDefaultPolicyVersionRequest :: Show SetDefaultPolicyVersionRequest where show = genericShow
instance decodeSetDefaultPolicyVersionRequest :: Decode SetDefaultPolicyVersionRequest where decode = genericDecode options
instance encodeSetDefaultPolicyVersionRequest :: Encode SetDefaultPolicyVersionRequest where encode = genericEncode options

-- | Constructs SetDefaultPolicyVersionRequest from required parameters
newSetDefaultPolicyVersionRequest :: PolicyName -> PolicyVersionId -> SetDefaultPolicyVersionRequest
newSetDefaultPolicyVersionRequest _policyName _policyVersionId = SetDefaultPolicyVersionRequest { "policyName": _policyName, "policyVersionId": _policyVersionId }

-- | Constructs SetDefaultPolicyVersionRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newSetDefaultPolicyVersionRequest' :: PolicyName -> PolicyVersionId -> ( { "policyName" :: (PolicyName) , "policyVersionId" :: (PolicyVersionId) } -> {"policyName" :: (PolicyName) , "policyVersionId" :: (PolicyVersionId) } ) -> SetDefaultPolicyVersionRequest
newSetDefaultPolicyVersionRequest' _policyName _policyVersionId customize = (SetDefaultPolicyVersionRequest <<< customize) { "policyName": _policyName, "policyVersionId": _policyVersionId }



-- | <p>The input for the SetLoggingOptions operation.</p>
newtype SetLoggingOptionsRequest = SetLoggingOptionsRequest 
  { "loggingOptionsPayload" :: (LoggingOptionsPayload)
  }
derive instance newtypeSetLoggingOptionsRequest :: Newtype SetLoggingOptionsRequest _
derive instance repGenericSetLoggingOptionsRequest :: Generic SetLoggingOptionsRequest _
instance showSetLoggingOptionsRequest :: Show SetLoggingOptionsRequest where show = genericShow
instance decodeSetLoggingOptionsRequest :: Decode SetLoggingOptionsRequest where decode = genericDecode options
instance encodeSetLoggingOptionsRequest :: Encode SetLoggingOptionsRequest where encode = genericEncode options

-- | Constructs SetLoggingOptionsRequest from required parameters
newSetLoggingOptionsRequest :: LoggingOptionsPayload -> SetLoggingOptionsRequest
newSetLoggingOptionsRequest _loggingOptionsPayload = SetLoggingOptionsRequest { "loggingOptionsPayload": _loggingOptionsPayload }

-- | Constructs SetLoggingOptionsRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newSetLoggingOptionsRequest' :: LoggingOptionsPayload -> ( { "loggingOptionsPayload" :: (LoggingOptionsPayload) } -> {"loggingOptionsPayload" :: (LoggingOptionsPayload) } ) -> SetLoggingOptionsRequest
newSetLoggingOptionsRequest' _loggingOptionsPayload customize = (SetLoggingOptionsRequest <<< customize) { "loggingOptionsPayload": _loggingOptionsPayload }



newtype SetV2LoggingLevelRequest = SetV2LoggingLevelRequest 
  { "logTarget" :: (LogTarget)
  , "logLevel" :: (LogLevel)
  }
derive instance newtypeSetV2LoggingLevelRequest :: Newtype SetV2LoggingLevelRequest _
derive instance repGenericSetV2LoggingLevelRequest :: Generic SetV2LoggingLevelRequest _
instance showSetV2LoggingLevelRequest :: Show SetV2LoggingLevelRequest where show = genericShow
instance decodeSetV2LoggingLevelRequest :: Decode SetV2LoggingLevelRequest where decode = genericDecode options
instance encodeSetV2LoggingLevelRequest :: Encode SetV2LoggingLevelRequest where encode = genericEncode options

-- | Constructs SetV2LoggingLevelRequest from required parameters
newSetV2LoggingLevelRequest :: LogLevel -> LogTarget -> SetV2LoggingLevelRequest
newSetV2LoggingLevelRequest _logLevel _logTarget = SetV2LoggingLevelRequest { "logLevel": _logLevel, "logTarget": _logTarget }

-- | Constructs SetV2LoggingLevelRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newSetV2LoggingLevelRequest' :: LogLevel -> LogTarget -> ( { "logTarget" :: (LogTarget) , "logLevel" :: (LogLevel) } -> {"logTarget" :: (LogTarget) , "logLevel" :: (LogLevel) } ) -> SetV2LoggingLevelRequest
newSetV2LoggingLevelRequest' _logLevel _logTarget customize = (SetV2LoggingLevelRequest <<< customize) { "logLevel": _logLevel, "logTarget": _logTarget }



newtype SetV2LoggingOptionsRequest = SetV2LoggingOptionsRequest 
  { "roleArn" :: Maybe (AwsArn)
  , "defaultLogLevel" :: Maybe (LogLevel)
  , "disableAllLogs" :: Maybe (DisableAllLogs)
  }
derive instance newtypeSetV2LoggingOptionsRequest :: Newtype SetV2LoggingOptionsRequest _
derive instance repGenericSetV2LoggingOptionsRequest :: Generic SetV2LoggingOptionsRequest _
instance showSetV2LoggingOptionsRequest :: Show SetV2LoggingOptionsRequest where show = genericShow
instance decodeSetV2LoggingOptionsRequest :: Decode SetV2LoggingOptionsRequest where decode = genericDecode options
instance encodeSetV2LoggingOptionsRequest :: Encode SetV2LoggingOptionsRequest where encode = genericEncode options

-- | Constructs SetV2LoggingOptionsRequest from required parameters
newSetV2LoggingOptionsRequest :: SetV2LoggingOptionsRequest
newSetV2LoggingOptionsRequest  = SetV2LoggingOptionsRequest { "defaultLogLevel": Nothing, "disableAllLogs": Nothing, "roleArn": Nothing }

-- | Constructs SetV2LoggingOptionsRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newSetV2LoggingOptionsRequest' :: ( { "roleArn" :: Maybe (AwsArn) , "defaultLogLevel" :: Maybe (LogLevel) , "disableAllLogs" :: Maybe (DisableAllLogs) } -> {"roleArn" :: Maybe (AwsArn) , "defaultLogLevel" :: Maybe (LogLevel) , "disableAllLogs" :: Maybe (DisableAllLogs) } ) -> SetV2LoggingOptionsRequest
newSetV2LoggingOptionsRequest'  customize = (SetV2LoggingOptionsRequest <<< customize) { "defaultLogLevel": Nothing, "disableAllLogs": Nothing, "roleArn": Nothing }



newtype Signature = Signature String
derive instance newtypeSignature :: Newtype Signature _
derive instance repGenericSignature :: Generic Signature _
instance showSignature :: Show Signature where show = genericShow
instance decodeSignature :: Decode Signature where decode = genericDecode options
instance encodeSignature :: Encode Signature where encode = genericEncode options



newtype SignatureAlgorithm = SignatureAlgorithm String
derive instance newtypeSignatureAlgorithm :: Newtype SignatureAlgorithm _
derive instance repGenericSignatureAlgorithm :: Generic SignatureAlgorithm _
instance showSignatureAlgorithm :: Show SignatureAlgorithm where show = genericShow
instance decodeSignatureAlgorithm :: Decode SignatureAlgorithm where decode = genericDecode options
instance encodeSignatureAlgorithm :: Encode SignatureAlgorithm where encode = genericEncode options



newtype SigningJobId = SigningJobId String
derive instance newtypeSigningJobId :: Newtype SigningJobId _
derive instance repGenericSigningJobId :: Generic SigningJobId _
instance showSigningJobId :: Show SigningJobId where show = genericShow
instance decodeSigningJobId :: Decode SigningJobId where decode = genericDecode options
instance encodeSigningJobId :: Encode SigningJobId where encode = genericEncode options



newtype SkyfallMaxResults = SkyfallMaxResults Int
derive instance newtypeSkyfallMaxResults :: Newtype SkyfallMaxResults _
derive instance repGenericSkyfallMaxResults :: Generic SkyfallMaxResults _
instance showSkyfallMaxResults :: Show SkyfallMaxResults where show = genericShow
instance decodeSkyfallMaxResults :: Decode SkyfallMaxResults where decode = genericDecode options
instance encodeSkyfallMaxResults :: Encode SkyfallMaxResults where encode = genericEncode options



-- | <p>Describes an action to publish to an Amazon SNS topic.</p>
newtype SnsAction = SnsAction 
  { "targetArn" :: (AwsArn)
  , "roleArn" :: (AwsArn)
  , "messageFormat" :: Maybe (MessageFormat)
  }
derive instance newtypeSnsAction :: Newtype SnsAction _
derive instance repGenericSnsAction :: Generic SnsAction _
instance showSnsAction :: Show SnsAction where show = genericShow
instance decodeSnsAction :: Decode SnsAction where decode = genericDecode options
instance encodeSnsAction :: Encode SnsAction where encode = genericEncode options

-- | Constructs SnsAction from required parameters
newSnsAction :: AwsArn -> AwsArn -> SnsAction
newSnsAction _roleArn _targetArn = SnsAction { "roleArn": _roleArn, "targetArn": _targetArn, "messageFormat": Nothing }

-- | Constructs SnsAction's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newSnsAction' :: AwsArn -> AwsArn -> ( { "targetArn" :: (AwsArn) , "roleArn" :: (AwsArn) , "messageFormat" :: Maybe (MessageFormat) } -> {"targetArn" :: (AwsArn) , "roleArn" :: (AwsArn) , "messageFormat" :: Maybe (MessageFormat) } ) -> SnsAction
newSnsAction' _roleArn _targetArn customize = (SnsAction <<< customize) { "roleArn": _roleArn, "targetArn": _targetArn, "messageFormat": Nothing }



-- | <p>The Rule-SQL expression can't be parsed correctly.</p>
newtype SqlParseException = SqlParseException 
  { "message" :: Maybe (ErrorMessage')
  }
derive instance newtypeSqlParseException :: Newtype SqlParseException _
derive instance repGenericSqlParseException :: Generic SqlParseException _
instance showSqlParseException :: Show SqlParseException where show = genericShow
instance decodeSqlParseException :: Decode SqlParseException where decode = genericDecode options
instance encodeSqlParseException :: Encode SqlParseException where encode = genericEncode options

-- | Constructs SqlParseException from required parameters
newSqlParseException :: SqlParseException
newSqlParseException  = SqlParseException { "message": Nothing }

-- | Constructs SqlParseException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newSqlParseException' :: ( { "message" :: Maybe (ErrorMessage') } -> {"message" :: Maybe (ErrorMessage') } ) -> SqlParseException
newSqlParseException'  customize = (SqlParseException <<< customize) { "message": Nothing }



-- | <p>Describes an action to publish data to an Amazon SQS queue.</p>
newtype SqsAction = SqsAction 
  { "roleArn" :: (AwsArn)
  , "queueUrl" :: (QueueUrl)
  , "useBase64" :: Maybe (UseBase64)
  }
derive instance newtypeSqsAction :: Newtype SqsAction _
derive instance repGenericSqsAction :: Generic SqsAction _
instance showSqsAction :: Show SqsAction where show = genericShow
instance decodeSqsAction :: Decode SqsAction where decode = genericDecode options
instance encodeSqsAction :: Encode SqsAction where encode = genericEncode options

-- | Constructs SqsAction from required parameters
newSqsAction :: QueueUrl -> AwsArn -> SqsAction
newSqsAction _queueUrl _roleArn = SqsAction { "queueUrl": _queueUrl, "roleArn": _roleArn, "useBase64": Nothing }

-- | Constructs SqsAction's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newSqsAction' :: QueueUrl -> AwsArn -> ( { "roleArn" :: (AwsArn) , "queueUrl" :: (QueueUrl) , "useBase64" :: Maybe (UseBase64) } -> {"roleArn" :: (AwsArn) , "queueUrl" :: (QueueUrl) , "useBase64" :: Maybe (UseBase64) } ) -> SqsAction
newSqsAction' _queueUrl _roleArn customize = (SqsAction <<< customize) { "queueUrl": _queueUrl, "roleArn": _roleArn, "useBase64": Nothing }



newtype StartThingRegistrationTaskRequest = StartThingRegistrationTaskRequest 
  { "templateBody" :: (TemplateBody)
  , "inputFileBucket" :: (RegistryS3BucketName)
  , "inputFileKey" :: (RegistryS3KeyName)
  , "roleArn" :: (RoleArn)
  }
derive instance newtypeStartThingRegistrationTaskRequest :: Newtype StartThingRegistrationTaskRequest _
derive instance repGenericStartThingRegistrationTaskRequest :: Generic StartThingRegistrationTaskRequest _
instance showStartThingRegistrationTaskRequest :: Show StartThingRegistrationTaskRequest where show = genericShow
instance decodeStartThingRegistrationTaskRequest :: Decode StartThingRegistrationTaskRequest where decode = genericDecode options
instance encodeStartThingRegistrationTaskRequest :: Encode StartThingRegistrationTaskRequest where encode = genericEncode options

-- | Constructs StartThingRegistrationTaskRequest from required parameters
newStartThingRegistrationTaskRequest :: RegistryS3BucketName -> RegistryS3KeyName -> RoleArn -> TemplateBody -> StartThingRegistrationTaskRequest
newStartThingRegistrationTaskRequest _inputFileBucket _inputFileKey _roleArn _templateBody = StartThingRegistrationTaskRequest { "inputFileBucket": _inputFileBucket, "inputFileKey": _inputFileKey, "roleArn": _roleArn, "templateBody": _templateBody }

-- | Constructs StartThingRegistrationTaskRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newStartThingRegistrationTaskRequest' :: RegistryS3BucketName -> RegistryS3KeyName -> RoleArn -> TemplateBody -> ( { "templateBody" :: (TemplateBody) , "inputFileBucket" :: (RegistryS3BucketName) , "inputFileKey" :: (RegistryS3KeyName) , "roleArn" :: (RoleArn) } -> {"templateBody" :: (TemplateBody) , "inputFileBucket" :: (RegistryS3BucketName) , "inputFileKey" :: (RegistryS3KeyName) , "roleArn" :: (RoleArn) } ) -> StartThingRegistrationTaskRequest
newStartThingRegistrationTaskRequest' _inputFileBucket _inputFileKey _roleArn _templateBody customize = (StartThingRegistrationTaskRequest <<< customize) { "inputFileBucket": _inputFileBucket, "inputFileKey": _inputFileKey, "roleArn": _roleArn, "templateBody": _templateBody }



newtype StartThingRegistrationTaskResponse = StartThingRegistrationTaskResponse 
  { "taskId" :: Maybe (TaskId)
  }
derive instance newtypeStartThingRegistrationTaskResponse :: Newtype StartThingRegistrationTaskResponse _
derive instance repGenericStartThingRegistrationTaskResponse :: Generic StartThingRegistrationTaskResponse _
instance showStartThingRegistrationTaskResponse :: Show StartThingRegistrationTaskResponse where show = genericShow
instance decodeStartThingRegistrationTaskResponse :: Decode StartThingRegistrationTaskResponse where decode = genericDecode options
instance encodeStartThingRegistrationTaskResponse :: Encode StartThingRegistrationTaskResponse where encode = genericEncode options

-- | Constructs StartThingRegistrationTaskResponse from required parameters
newStartThingRegistrationTaskResponse :: StartThingRegistrationTaskResponse
newStartThingRegistrationTaskResponse  = StartThingRegistrationTaskResponse { "taskId": Nothing }

-- | Constructs StartThingRegistrationTaskResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newStartThingRegistrationTaskResponse' :: ( { "taskId" :: Maybe (TaskId) } -> {"taskId" :: Maybe (TaskId) } ) -> StartThingRegistrationTaskResponse
newStartThingRegistrationTaskResponse'  customize = (StartThingRegistrationTaskResponse <<< customize) { "taskId": Nothing }



newtype StateReason = StateReason String
derive instance newtypeStateReason :: Newtype StateReason _
derive instance repGenericStateReason :: Generic StateReason _
instance showStateReason :: Show StateReason where show = genericShow
instance decodeStateReason :: Decode StateReason where decode = genericDecode options
instance encodeStateReason :: Encode StateReason where encode = genericEncode options



newtype StateValue = StateValue String
derive instance newtypeStateValue :: Newtype StateValue _
derive instance repGenericStateValue :: Generic StateValue _
instance showStateValue :: Show StateValue where show = genericShow
instance decodeStateValue :: Decode StateValue where decode = genericDecode options
instance encodeStateValue :: Encode StateValue where encode = genericEncode options



newtype Status = Status String
derive instance newtypeStatus :: Newtype Status _
derive instance repGenericStatus :: Generic Status _
instance showStatus :: Show Status where show = genericShow
instance decodeStatus :: Decode Status where decode = genericDecode options
instance encodeStatus :: Encode Status where encode = genericEncode options



newtype StopThingRegistrationTaskRequest = StopThingRegistrationTaskRequest 
  { "taskId" :: (TaskId)
  }
derive instance newtypeStopThingRegistrationTaskRequest :: Newtype StopThingRegistrationTaskRequest _
derive instance repGenericStopThingRegistrationTaskRequest :: Generic StopThingRegistrationTaskRequest _
instance showStopThingRegistrationTaskRequest :: Show StopThingRegistrationTaskRequest where show = genericShow
instance decodeStopThingRegistrationTaskRequest :: Decode StopThingRegistrationTaskRequest where decode = genericDecode options
instance encodeStopThingRegistrationTaskRequest :: Encode StopThingRegistrationTaskRequest where encode = genericEncode options

-- | Constructs StopThingRegistrationTaskRequest from required parameters
newStopThingRegistrationTaskRequest :: TaskId -> StopThingRegistrationTaskRequest
newStopThingRegistrationTaskRequest _taskId = StopThingRegistrationTaskRequest { "taskId": _taskId }

-- | Constructs StopThingRegistrationTaskRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newStopThingRegistrationTaskRequest' :: TaskId -> ( { "taskId" :: (TaskId) } -> {"taskId" :: (TaskId) } ) -> StopThingRegistrationTaskRequest
newStopThingRegistrationTaskRequest' _taskId customize = (StopThingRegistrationTaskRequest <<< customize) { "taskId": _taskId }



newtype StopThingRegistrationTaskResponse = StopThingRegistrationTaskResponse Types.NoArguments
derive instance newtypeStopThingRegistrationTaskResponse :: Newtype StopThingRegistrationTaskResponse _
derive instance repGenericStopThingRegistrationTaskResponse :: Generic StopThingRegistrationTaskResponse _
instance showStopThingRegistrationTaskResponse :: Show StopThingRegistrationTaskResponse where show = genericShow
instance decodeStopThingRegistrationTaskResponse :: Decode StopThingRegistrationTaskResponse where decode = genericDecode options
instance encodeStopThingRegistrationTaskResponse :: Encode StopThingRegistrationTaskResponse where encode = genericEncode options



-- | <p>Describes a group of files that can be streamed.</p>
newtype Stream = Stream 
  { "streamId" :: Maybe (StreamId)
  , "fileId" :: Maybe (FileId)
  }
derive instance newtypeStream :: Newtype Stream _
derive instance repGenericStream :: Generic Stream _
instance showStream :: Show Stream where show = genericShow
instance decodeStream :: Decode Stream where decode = genericDecode options
instance encodeStream :: Encode Stream where encode = genericEncode options

-- | Constructs Stream from required parameters
newStream :: Stream
newStream  = Stream { "fileId": Nothing, "streamId": Nothing }

-- | Constructs Stream's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newStream' :: ( { "streamId" :: Maybe (StreamId) , "fileId" :: Maybe (FileId) } -> {"streamId" :: Maybe (StreamId) , "fileId" :: Maybe (FileId) } ) -> Stream
newStream'  customize = (Stream <<< customize) { "fileId": Nothing, "streamId": Nothing }



newtype StreamArn = StreamArn String
derive instance newtypeStreamArn :: Newtype StreamArn _
derive instance repGenericStreamArn :: Generic StreamArn _
instance showStreamArn :: Show StreamArn where show = genericShow
instance decodeStreamArn :: Decode StreamArn where decode = genericDecode options
instance encodeStreamArn :: Encode StreamArn where encode = genericEncode options



newtype StreamDescription = StreamDescription String
derive instance newtypeStreamDescription :: Newtype StreamDescription _
derive instance repGenericStreamDescription :: Generic StreamDescription _
instance showStreamDescription :: Show StreamDescription where show = genericShow
instance decodeStreamDescription :: Decode StreamDescription where decode = genericDecode options
instance encodeStreamDescription :: Encode StreamDescription where encode = genericEncode options



-- | <p>Represents a file to stream.</p>
newtype StreamFile = StreamFile 
  { "fileId" :: Maybe (FileId)
  , "s3Location" :: Maybe (S3Location)
  }
derive instance newtypeStreamFile :: Newtype StreamFile _
derive instance repGenericStreamFile :: Generic StreamFile _
instance showStreamFile :: Show StreamFile where show = genericShow
instance decodeStreamFile :: Decode StreamFile where decode = genericDecode options
instance encodeStreamFile :: Encode StreamFile where encode = genericEncode options

-- | Constructs StreamFile from required parameters
newStreamFile :: StreamFile
newStreamFile  = StreamFile { "fileId": Nothing, "s3Location": Nothing }

-- | Constructs StreamFile's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newStreamFile' :: ( { "fileId" :: Maybe (FileId) , "s3Location" :: Maybe (S3Location) } -> {"fileId" :: Maybe (FileId) , "s3Location" :: Maybe (S3Location) } ) -> StreamFile
newStreamFile'  customize = (StreamFile <<< customize) { "fileId": Nothing, "s3Location": Nothing }



newtype StreamFiles = StreamFiles (Array StreamFile)
derive instance newtypeStreamFiles :: Newtype StreamFiles _
derive instance repGenericStreamFiles :: Generic StreamFiles _
instance showStreamFiles :: Show StreamFiles where show = genericShow
instance decodeStreamFiles :: Decode StreamFiles where decode = genericDecode options
instance encodeStreamFiles :: Encode StreamFiles where encode = genericEncode options



newtype StreamId = StreamId String
derive instance newtypeStreamId :: Newtype StreamId _
derive instance repGenericStreamId :: Generic StreamId _
instance showStreamId :: Show StreamId where show = genericShow
instance decodeStreamId :: Decode StreamId where decode = genericDecode options
instance encodeStreamId :: Encode StreamId where encode = genericEncode options



-- | <p>Information about a stream.</p>
newtype StreamInfo = StreamInfo 
  { "streamId" :: Maybe (StreamId)
  , "streamArn" :: Maybe (StreamArn)
  , "streamVersion" :: Maybe (StreamVersion)
  , "description" :: Maybe (StreamDescription)
  , "files" :: Maybe (StreamFiles)
  , "createdAt" :: Maybe (DateType)
  , "lastUpdatedAt" :: Maybe (DateType)
  , "roleArn" :: Maybe (RoleArn)
  }
derive instance newtypeStreamInfo :: Newtype StreamInfo _
derive instance repGenericStreamInfo :: Generic StreamInfo _
instance showStreamInfo :: Show StreamInfo where show = genericShow
instance decodeStreamInfo :: Decode StreamInfo where decode = genericDecode options
instance encodeStreamInfo :: Encode StreamInfo where encode = genericEncode options

-- | Constructs StreamInfo from required parameters
newStreamInfo :: StreamInfo
newStreamInfo  = StreamInfo { "createdAt": Nothing, "description": Nothing, "files": Nothing, "lastUpdatedAt": Nothing, "roleArn": Nothing, "streamArn": Nothing, "streamId": Nothing, "streamVersion": Nothing }

-- | Constructs StreamInfo's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newStreamInfo' :: ( { "streamId" :: Maybe (StreamId) , "streamArn" :: Maybe (StreamArn) , "streamVersion" :: Maybe (StreamVersion) , "description" :: Maybe (StreamDescription) , "files" :: Maybe (StreamFiles) , "createdAt" :: Maybe (DateType) , "lastUpdatedAt" :: Maybe (DateType) , "roleArn" :: Maybe (RoleArn) } -> {"streamId" :: Maybe (StreamId) , "streamArn" :: Maybe (StreamArn) , "streamVersion" :: Maybe (StreamVersion) , "description" :: Maybe (StreamDescription) , "files" :: Maybe (StreamFiles) , "createdAt" :: Maybe (DateType) , "lastUpdatedAt" :: Maybe (DateType) , "roleArn" :: Maybe (RoleArn) } ) -> StreamInfo
newStreamInfo'  customize = (StreamInfo <<< customize) { "createdAt": Nothing, "description": Nothing, "files": Nothing, "lastUpdatedAt": Nothing, "roleArn": Nothing, "streamArn": Nothing, "streamId": Nothing, "streamVersion": Nothing }



newtype StreamName = StreamName String
derive instance newtypeStreamName :: Newtype StreamName _
derive instance repGenericStreamName :: Generic StreamName _
instance showStreamName :: Show StreamName where show = genericShow
instance decodeStreamName :: Decode StreamName where decode = genericDecode options
instance encodeStreamName :: Encode StreamName where encode = genericEncode options



-- | <p>A summary of a stream.</p>
newtype StreamSummary = StreamSummary 
  { "streamId" :: Maybe (StreamId)
  , "streamArn" :: Maybe (StreamArn)
  , "streamVersion" :: Maybe (StreamVersion)
  , "description" :: Maybe (StreamDescription)
  }
derive instance newtypeStreamSummary :: Newtype StreamSummary _
derive instance repGenericStreamSummary :: Generic StreamSummary _
instance showStreamSummary :: Show StreamSummary where show = genericShow
instance decodeStreamSummary :: Decode StreamSummary where decode = genericDecode options
instance encodeStreamSummary :: Encode StreamSummary where encode = genericEncode options

-- | Constructs StreamSummary from required parameters
newStreamSummary :: StreamSummary
newStreamSummary  = StreamSummary { "description": Nothing, "streamArn": Nothing, "streamId": Nothing, "streamVersion": Nothing }

-- | Constructs StreamSummary's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newStreamSummary' :: ( { "streamId" :: Maybe (StreamId) , "streamArn" :: Maybe (StreamArn) , "streamVersion" :: Maybe (StreamVersion) , "description" :: Maybe (StreamDescription) } -> {"streamId" :: Maybe (StreamId) , "streamArn" :: Maybe (StreamArn) , "streamVersion" :: Maybe (StreamVersion) , "description" :: Maybe (StreamDescription) } ) -> StreamSummary
newStreamSummary'  customize = (StreamSummary <<< customize) { "description": Nothing, "streamArn": Nothing, "streamId": Nothing, "streamVersion": Nothing }



newtype StreamVersion = StreamVersion Int
derive instance newtypeStreamVersion :: Newtype StreamVersion _
derive instance repGenericStreamVersion :: Generic StreamVersion _
instance showStreamVersion :: Show StreamVersion where show = genericShow
instance decodeStreamVersion :: Decode StreamVersion where decode = genericDecode options
instance encodeStreamVersion :: Encode StreamVersion where encode = genericEncode options



newtype StreamsSummary = StreamsSummary (Array StreamSummary)
derive instance newtypeStreamsSummary :: Newtype StreamsSummary _
derive instance repGenericStreamsSummary :: Generic StreamsSummary _
instance showStreamsSummary :: Show StreamsSummary where show = genericShow
instance decodeStreamsSummary :: Decode StreamsSummary where decode = genericDecode options
instance encodeStreamsSummary :: Encode StreamsSummary where encode = genericEncode options



newtype SucceededThings = SucceededThings Int
derive instance newtypeSucceededThings :: Newtype SucceededThings _
derive instance repGenericSucceededThings :: Generic SucceededThings _
instance showSucceededThings :: Show SucceededThings where show = genericShow
instance decodeSucceededThings :: Decode SucceededThings where decode = genericDecode options
instance encodeSucceededThings :: Encode SucceededThings where encode = genericEncode options



newtype TableName = TableName String
derive instance newtypeTableName :: Newtype TableName _
derive instance repGenericTableName :: Generic TableName _
instance showTableName :: Show TableName where show = genericShow
instance decodeTableName :: Decode TableName where decode = genericDecode options
instance encodeTableName :: Encode TableName where encode = genericEncode options



newtype Target = Target String
derive instance newtypeTarget :: Newtype Target _
derive instance repGenericTarget :: Generic Target _
instance showTarget :: Show Target where show = genericShow
instance decodeTarget :: Decode Target where decode = genericDecode options
instance encodeTarget :: Encode Target where encode = genericEncode options



newtype TargetArn = TargetArn String
derive instance newtypeTargetArn :: Newtype TargetArn _
derive instance repGenericTargetArn :: Generic TargetArn _
instance showTargetArn :: Show TargetArn where show = genericShow
instance decodeTargetArn :: Decode TargetArn where decode = genericDecode options
instance encodeTargetArn :: Encode TargetArn where encode = genericEncode options



newtype TargetSelection = TargetSelection String
derive instance newtypeTargetSelection :: Newtype TargetSelection _
derive instance repGenericTargetSelection :: Generic TargetSelection _
instance showTargetSelection :: Show TargetSelection where show = genericShow
instance decodeTargetSelection :: Decode TargetSelection where decode = genericDecode options
instance encodeTargetSelection :: Encode TargetSelection where encode = genericEncode options



newtype Targets = Targets (Array Target)
derive instance newtypeTargets :: Newtype Targets _
derive instance repGenericTargets :: Generic Targets _
instance showTargets :: Show Targets where show = genericShow
instance decodeTargets :: Decode Targets where decode = genericDecode options
instance encodeTargets :: Encode Targets where encode = genericEncode options



newtype TaskId = TaskId String
derive instance newtypeTaskId :: Newtype TaskId _
derive instance repGenericTaskId :: Generic TaskId _
instance showTaskId :: Show TaskId where show = genericShow
instance decodeTaskId :: Decode TaskId where decode = genericDecode options
instance encodeTaskId :: Encode TaskId where encode = genericEncode options



newtype TaskIdList = TaskIdList (Array TaskId)
derive instance newtypeTaskIdList :: Newtype TaskIdList _
derive instance repGenericTaskIdList :: Generic TaskIdList _
instance showTaskIdList :: Show TaskIdList where show = genericShow
instance decodeTaskIdList :: Decode TaskIdList where decode = genericDecode options
instance encodeTaskIdList :: Encode TaskIdList where encode = genericEncode options



newtype TemplateBody = TemplateBody String
derive instance newtypeTemplateBody :: Newtype TemplateBody _
derive instance repGenericTemplateBody :: Generic TemplateBody _
instance showTemplateBody :: Show TemplateBody where show = genericShow
instance decodeTemplateBody :: Decode TemplateBody where decode = genericDecode options
instance encodeTemplateBody :: Encode TemplateBody where encode = genericEncode options



newtype TestAuthorizationRequest = TestAuthorizationRequest 
  { "principal" :: Maybe (Principal)
  , "cognitoIdentityPoolId" :: Maybe (CognitoIdentityPoolId)
  , "authInfos" :: (AuthInfos)
  , "clientId" :: Maybe (ClientId)
  , "policyNamesToAdd" :: Maybe (PolicyNames)
  , "policyNamesToSkip" :: Maybe (PolicyNames)
  }
derive instance newtypeTestAuthorizationRequest :: Newtype TestAuthorizationRequest _
derive instance repGenericTestAuthorizationRequest :: Generic TestAuthorizationRequest _
instance showTestAuthorizationRequest :: Show TestAuthorizationRequest where show = genericShow
instance decodeTestAuthorizationRequest :: Decode TestAuthorizationRequest where decode = genericDecode options
instance encodeTestAuthorizationRequest :: Encode TestAuthorizationRequest where encode = genericEncode options

-- | Constructs TestAuthorizationRequest from required parameters
newTestAuthorizationRequest :: AuthInfos -> TestAuthorizationRequest
newTestAuthorizationRequest _authInfos = TestAuthorizationRequest { "authInfos": _authInfos, "clientId": Nothing, "cognitoIdentityPoolId": Nothing, "policyNamesToAdd": Nothing, "policyNamesToSkip": Nothing, "principal": Nothing }

-- | Constructs TestAuthorizationRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newTestAuthorizationRequest' :: AuthInfos -> ( { "principal" :: Maybe (Principal) , "cognitoIdentityPoolId" :: Maybe (CognitoIdentityPoolId) , "authInfos" :: (AuthInfos) , "clientId" :: Maybe (ClientId) , "policyNamesToAdd" :: Maybe (PolicyNames) , "policyNamesToSkip" :: Maybe (PolicyNames) } -> {"principal" :: Maybe (Principal) , "cognitoIdentityPoolId" :: Maybe (CognitoIdentityPoolId) , "authInfos" :: (AuthInfos) , "clientId" :: Maybe (ClientId) , "policyNamesToAdd" :: Maybe (PolicyNames) , "policyNamesToSkip" :: Maybe (PolicyNames) } ) -> TestAuthorizationRequest
newTestAuthorizationRequest' _authInfos customize = (TestAuthorizationRequest <<< customize) { "authInfos": _authInfos, "clientId": Nothing, "cognitoIdentityPoolId": Nothing, "policyNamesToAdd": Nothing, "policyNamesToSkip": Nothing, "principal": Nothing }



newtype TestAuthorizationResponse = TestAuthorizationResponse 
  { "authResults" :: Maybe (AuthResults)
  }
derive instance newtypeTestAuthorizationResponse :: Newtype TestAuthorizationResponse _
derive instance repGenericTestAuthorizationResponse :: Generic TestAuthorizationResponse _
instance showTestAuthorizationResponse :: Show TestAuthorizationResponse where show = genericShow
instance decodeTestAuthorizationResponse :: Decode TestAuthorizationResponse where decode = genericDecode options
instance encodeTestAuthorizationResponse :: Encode TestAuthorizationResponse where encode = genericEncode options

-- | Constructs TestAuthorizationResponse from required parameters
newTestAuthorizationResponse :: TestAuthorizationResponse
newTestAuthorizationResponse  = TestAuthorizationResponse { "authResults": Nothing }

-- | Constructs TestAuthorizationResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newTestAuthorizationResponse' :: ( { "authResults" :: Maybe (AuthResults) } -> {"authResults" :: Maybe (AuthResults) } ) -> TestAuthorizationResponse
newTestAuthorizationResponse'  customize = (TestAuthorizationResponse <<< customize) { "authResults": Nothing }



newtype TestInvokeAuthorizerRequest = TestInvokeAuthorizerRequest 
  { "authorizerName" :: (AuthorizerName)
  , "token" :: (Token)
  , "tokenSignature" :: (TokenSignature)
  }
derive instance newtypeTestInvokeAuthorizerRequest :: Newtype TestInvokeAuthorizerRequest _
derive instance repGenericTestInvokeAuthorizerRequest :: Generic TestInvokeAuthorizerRequest _
instance showTestInvokeAuthorizerRequest :: Show TestInvokeAuthorizerRequest where show = genericShow
instance decodeTestInvokeAuthorizerRequest :: Decode TestInvokeAuthorizerRequest where decode = genericDecode options
instance encodeTestInvokeAuthorizerRequest :: Encode TestInvokeAuthorizerRequest where encode = genericEncode options

-- | Constructs TestInvokeAuthorizerRequest from required parameters
newTestInvokeAuthorizerRequest :: AuthorizerName -> Token -> TokenSignature -> TestInvokeAuthorizerRequest
newTestInvokeAuthorizerRequest _authorizerName _token _tokenSignature = TestInvokeAuthorizerRequest { "authorizerName": _authorizerName, "token": _token, "tokenSignature": _tokenSignature }

-- | Constructs TestInvokeAuthorizerRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newTestInvokeAuthorizerRequest' :: AuthorizerName -> Token -> TokenSignature -> ( { "authorizerName" :: (AuthorizerName) , "token" :: (Token) , "tokenSignature" :: (TokenSignature) } -> {"authorizerName" :: (AuthorizerName) , "token" :: (Token) , "tokenSignature" :: (TokenSignature) } ) -> TestInvokeAuthorizerRequest
newTestInvokeAuthorizerRequest' _authorizerName _token _tokenSignature customize = (TestInvokeAuthorizerRequest <<< customize) { "authorizerName": _authorizerName, "token": _token, "tokenSignature": _tokenSignature }



newtype TestInvokeAuthorizerResponse = TestInvokeAuthorizerResponse 
  { "isAuthenticated" :: Maybe (IsAuthenticated)
  , "principalId" :: Maybe (PrincipalId)
  , "policyDocuments" :: Maybe (PolicyDocuments)
  , "refreshAfterInSeconds" :: Maybe (Seconds)
  , "disconnectAfterInSeconds" :: Maybe (Seconds)
  }
derive instance newtypeTestInvokeAuthorizerResponse :: Newtype TestInvokeAuthorizerResponse _
derive instance repGenericTestInvokeAuthorizerResponse :: Generic TestInvokeAuthorizerResponse _
instance showTestInvokeAuthorizerResponse :: Show TestInvokeAuthorizerResponse where show = genericShow
instance decodeTestInvokeAuthorizerResponse :: Decode TestInvokeAuthorizerResponse where decode = genericDecode options
instance encodeTestInvokeAuthorizerResponse :: Encode TestInvokeAuthorizerResponse where encode = genericEncode options

-- | Constructs TestInvokeAuthorizerResponse from required parameters
newTestInvokeAuthorizerResponse :: TestInvokeAuthorizerResponse
newTestInvokeAuthorizerResponse  = TestInvokeAuthorizerResponse { "disconnectAfterInSeconds": Nothing, "isAuthenticated": Nothing, "policyDocuments": Nothing, "principalId": Nothing, "refreshAfterInSeconds": Nothing }

-- | Constructs TestInvokeAuthorizerResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newTestInvokeAuthorizerResponse' :: ( { "isAuthenticated" :: Maybe (IsAuthenticated) , "principalId" :: Maybe (PrincipalId) , "policyDocuments" :: Maybe (PolicyDocuments) , "refreshAfterInSeconds" :: Maybe (Seconds) , "disconnectAfterInSeconds" :: Maybe (Seconds) } -> {"isAuthenticated" :: Maybe (IsAuthenticated) , "principalId" :: Maybe (PrincipalId) , "policyDocuments" :: Maybe (PolicyDocuments) , "refreshAfterInSeconds" :: Maybe (Seconds) , "disconnectAfterInSeconds" :: Maybe (Seconds) } ) -> TestInvokeAuthorizerResponse
newTestInvokeAuthorizerResponse'  customize = (TestInvokeAuthorizerResponse <<< customize) { "disconnectAfterInSeconds": Nothing, "isAuthenticated": Nothing, "policyDocuments": Nothing, "principalId": Nothing, "refreshAfterInSeconds": Nothing }



newtype ThingArn = ThingArn String
derive instance newtypeThingArn :: Newtype ThingArn _
derive instance repGenericThingArn :: Generic ThingArn _
instance showThingArn :: Show ThingArn where show = genericShow
instance decodeThingArn :: Decode ThingArn where decode = genericDecode options
instance encodeThingArn :: Encode ThingArn where encode = genericEncode options



-- | <p>The properties of the thing, including thing name, thing type name, and a list of thing attributes.</p>
newtype ThingAttribute = ThingAttribute 
  { "thingName" :: Maybe (ThingName)
  , "thingTypeName" :: Maybe (ThingTypeName)
  , "thingArn" :: Maybe (ThingArn)
  , "attributes" :: Maybe (Attributes)
  , "version" :: Maybe (Version)
  }
derive instance newtypeThingAttribute :: Newtype ThingAttribute _
derive instance repGenericThingAttribute :: Generic ThingAttribute _
instance showThingAttribute :: Show ThingAttribute where show = genericShow
instance decodeThingAttribute :: Decode ThingAttribute where decode = genericDecode options
instance encodeThingAttribute :: Encode ThingAttribute where encode = genericEncode options

-- | Constructs ThingAttribute from required parameters
newThingAttribute :: ThingAttribute
newThingAttribute  = ThingAttribute { "attributes": Nothing, "thingArn": Nothing, "thingName": Nothing, "thingTypeName": Nothing, "version": Nothing }

-- | Constructs ThingAttribute's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newThingAttribute' :: ( { "thingName" :: Maybe (ThingName) , "thingTypeName" :: Maybe (ThingTypeName) , "thingArn" :: Maybe (ThingArn) , "attributes" :: Maybe (Attributes) , "version" :: Maybe (Version) } -> {"thingName" :: Maybe (ThingName) , "thingTypeName" :: Maybe (ThingTypeName) , "thingArn" :: Maybe (ThingArn) , "attributes" :: Maybe (Attributes) , "version" :: Maybe (Version) } ) -> ThingAttribute
newThingAttribute'  customize = (ThingAttribute <<< customize) { "attributes": Nothing, "thingArn": Nothing, "thingName": Nothing, "thingTypeName": Nothing, "version": Nothing }



newtype ThingAttributeList = ThingAttributeList (Array ThingAttribute)
derive instance newtypeThingAttributeList :: Newtype ThingAttributeList _
derive instance repGenericThingAttributeList :: Generic ThingAttributeList _
instance showThingAttributeList :: Show ThingAttributeList where show = genericShow
instance decodeThingAttributeList :: Decode ThingAttributeList where decode = genericDecode options
instance encodeThingAttributeList :: Encode ThingAttributeList where encode = genericEncode options



-- | <p>The thing search index document.</p>
newtype ThingDocument = ThingDocument 
  { "thingName" :: Maybe (ThingName)
  , "thingId" :: Maybe (ThingId)
  , "thingTypeName" :: Maybe (ThingTypeName)
  , "thingGroupNames" :: Maybe (ThingGroupNameList)
  , "attributes" :: Maybe (Attributes)
  , "shadow" :: Maybe (JsonDocument)
  }
derive instance newtypeThingDocument :: Newtype ThingDocument _
derive instance repGenericThingDocument :: Generic ThingDocument _
instance showThingDocument :: Show ThingDocument where show = genericShow
instance decodeThingDocument :: Decode ThingDocument where decode = genericDecode options
instance encodeThingDocument :: Encode ThingDocument where encode = genericEncode options

-- | Constructs ThingDocument from required parameters
newThingDocument :: ThingDocument
newThingDocument  = ThingDocument { "attributes": Nothing, "shadow": Nothing, "thingGroupNames": Nothing, "thingId": Nothing, "thingName": Nothing, "thingTypeName": Nothing }

-- | Constructs ThingDocument's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newThingDocument' :: ( { "thingName" :: Maybe (ThingName) , "thingId" :: Maybe (ThingId) , "thingTypeName" :: Maybe (ThingTypeName) , "thingGroupNames" :: Maybe (ThingGroupNameList) , "attributes" :: Maybe (Attributes) , "shadow" :: Maybe (JsonDocument) } -> {"thingName" :: Maybe (ThingName) , "thingId" :: Maybe (ThingId) , "thingTypeName" :: Maybe (ThingTypeName) , "thingGroupNames" :: Maybe (ThingGroupNameList) , "attributes" :: Maybe (Attributes) , "shadow" :: Maybe (JsonDocument) } ) -> ThingDocument
newThingDocument'  customize = (ThingDocument <<< customize) { "attributes": Nothing, "shadow": Nothing, "thingGroupNames": Nothing, "thingId": Nothing, "thingName": Nothing, "thingTypeName": Nothing }



newtype ThingDocumentList = ThingDocumentList (Array ThingDocument)
derive instance newtypeThingDocumentList :: Newtype ThingDocumentList _
derive instance repGenericThingDocumentList :: Generic ThingDocumentList _
instance showThingDocumentList :: Show ThingDocumentList where show = genericShow
instance decodeThingDocumentList :: Decode ThingDocumentList where decode = genericDecode options
instance encodeThingDocumentList :: Encode ThingDocumentList where encode = genericEncode options



newtype ThingGroupArn = ThingGroupArn String
derive instance newtypeThingGroupArn :: Newtype ThingGroupArn _
derive instance repGenericThingGroupArn :: Generic ThingGroupArn _
instance showThingGroupArn :: Show ThingGroupArn where show = genericShow
instance decodeThingGroupArn :: Decode ThingGroupArn where decode = genericDecode options
instance encodeThingGroupArn :: Encode ThingGroupArn where encode = genericEncode options



newtype ThingGroupDescription = ThingGroupDescription String
derive instance newtypeThingGroupDescription :: Newtype ThingGroupDescription _
derive instance repGenericThingGroupDescription :: Generic ThingGroupDescription _
instance showThingGroupDescription :: Show ThingGroupDescription where show = genericShow
instance decodeThingGroupDescription :: Decode ThingGroupDescription where decode = genericDecode options
instance encodeThingGroupDescription :: Encode ThingGroupDescription where encode = genericEncode options



newtype ThingGroupId = ThingGroupId String
derive instance newtypeThingGroupId :: Newtype ThingGroupId _
derive instance repGenericThingGroupId :: Generic ThingGroupId _
instance showThingGroupId :: Show ThingGroupId where show = genericShow
instance decodeThingGroupId :: Decode ThingGroupId where decode = genericDecode options
instance encodeThingGroupId :: Encode ThingGroupId where encode = genericEncode options



newtype ThingGroupList = ThingGroupList (Array ThingGroupName)
derive instance newtypeThingGroupList :: Newtype ThingGroupList _
derive instance repGenericThingGroupList :: Generic ThingGroupList _
instance showThingGroupList :: Show ThingGroupList where show = genericShow
instance decodeThingGroupList :: Decode ThingGroupList where decode = genericDecode options
instance encodeThingGroupList :: Encode ThingGroupList where encode = genericEncode options



-- | <p>Thing group metadata.</p>
newtype ThingGroupMetadata = ThingGroupMetadata 
  { "parentGroupName" :: Maybe (ThingGroupName)
  , "rootToParentThingGroups" :: Maybe (ThingGroupNameAndArnList)
  , "creationDate" :: Maybe (CreationDate)
  }
derive instance newtypeThingGroupMetadata :: Newtype ThingGroupMetadata _
derive instance repGenericThingGroupMetadata :: Generic ThingGroupMetadata _
instance showThingGroupMetadata :: Show ThingGroupMetadata where show = genericShow
instance decodeThingGroupMetadata :: Decode ThingGroupMetadata where decode = genericDecode options
instance encodeThingGroupMetadata :: Encode ThingGroupMetadata where encode = genericEncode options

-- | Constructs ThingGroupMetadata from required parameters
newThingGroupMetadata :: ThingGroupMetadata
newThingGroupMetadata  = ThingGroupMetadata { "creationDate": Nothing, "parentGroupName": Nothing, "rootToParentThingGroups": Nothing }

-- | Constructs ThingGroupMetadata's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newThingGroupMetadata' :: ( { "parentGroupName" :: Maybe (ThingGroupName) , "rootToParentThingGroups" :: Maybe (ThingGroupNameAndArnList) , "creationDate" :: Maybe (CreationDate) } -> {"parentGroupName" :: Maybe (ThingGroupName) , "rootToParentThingGroups" :: Maybe (ThingGroupNameAndArnList) , "creationDate" :: Maybe (CreationDate) } ) -> ThingGroupMetadata
newThingGroupMetadata'  customize = (ThingGroupMetadata <<< customize) { "creationDate": Nothing, "parentGroupName": Nothing, "rootToParentThingGroups": Nothing }



newtype ThingGroupName = ThingGroupName String
derive instance newtypeThingGroupName :: Newtype ThingGroupName _
derive instance repGenericThingGroupName :: Generic ThingGroupName _
instance showThingGroupName :: Show ThingGroupName where show = genericShow
instance decodeThingGroupName :: Decode ThingGroupName where decode = genericDecode options
instance encodeThingGroupName :: Encode ThingGroupName where encode = genericEncode options



newtype ThingGroupNameAndArnList = ThingGroupNameAndArnList (Array GroupNameAndArn)
derive instance newtypeThingGroupNameAndArnList :: Newtype ThingGroupNameAndArnList _
derive instance repGenericThingGroupNameAndArnList :: Generic ThingGroupNameAndArnList _
instance showThingGroupNameAndArnList :: Show ThingGroupNameAndArnList where show = genericShow
instance decodeThingGroupNameAndArnList :: Decode ThingGroupNameAndArnList where decode = genericDecode options
instance encodeThingGroupNameAndArnList :: Encode ThingGroupNameAndArnList where encode = genericEncode options



newtype ThingGroupNameList = ThingGroupNameList (Array ThingGroupName)
derive instance newtypeThingGroupNameList :: Newtype ThingGroupNameList _
derive instance repGenericThingGroupNameList :: Generic ThingGroupNameList _
instance showThingGroupNameList :: Show ThingGroupNameList where show = genericShow
instance decodeThingGroupNameList :: Decode ThingGroupNameList where decode = genericDecode options
instance encodeThingGroupNameList :: Encode ThingGroupNameList where encode = genericEncode options



-- | <p>Thing group properties.</p>
newtype ThingGroupProperties = ThingGroupProperties 
  { "thingGroupDescription" :: Maybe (ThingGroupDescription)
  , "attributePayload" :: Maybe (AttributePayload)
  }
derive instance newtypeThingGroupProperties :: Newtype ThingGroupProperties _
derive instance repGenericThingGroupProperties :: Generic ThingGroupProperties _
instance showThingGroupProperties :: Show ThingGroupProperties where show = genericShow
instance decodeThingGroupProperties :: Decode ThingGroupProperties where decode = genericDecode options
instance encodeThingGroupProperties :: Encode ThingGroupProperties where encode = genericEncode options

-- | Constructs ThingGroupProperties from required parameters
newThingGroupProperties :: ThingGroupProperties
newThingGroupProperties  = ThingGroupProperties { "attributePayload": Nothing, "thingGroupDescription": Nothing }

-- | Constructs ThingGroupProperties's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newThingGroupProperties' :: ( { "thingGroupDescription" :: Maybe (ThingGroupDescription) , "attributePayload" :: Maybe (AttributePayload) } -> {"thingGroupDescription" :: Maybe (ThingGroupDescription) , "attributePayload" :: Maybe (AttributePayload) } ) -> ThingGroupProperties
newThingGroupProperties'  customize = (ThingGroupProperties <<< customize) { "attributePayload": Nothing, "thingGroupDescription": Nothing }



newtype ThingId = ThingId String
derive instance newtypeThingId :: Newtype ThingId _
derive instance repGenericThingId :: Generic ThingId _
instance showThingId :: Show ThingId where show = genericShow
instance decodeThingId :: Decode ThingId where decode = genericDecode options
instance encodeThingId :: Encode ThingId where encode = genericEncode options



-- | <p>Thing indexing configuration.</p>
newtype ThingIndexingConfiguration = ThingIndexingConfiguration 
  { "thingIndexingMode" :: Maybe (ThingIndexingMode)
  }
derive instance newtypeThingIndexingConfiguration :: Newtype ThingIndexingConfiguration _
derive instance repGenericThingIndexingConfiguration :: Generic ThingIndexingConfiguration _
instance showThingIndexingConfiguration :: Show ThingIndexingConfiguration where show = genericShow
instance decodeThingIndexingConfiguration :: Decode ThingIndexingConfiguration where decode = genericDecode options
instance encodeThingIndexingConfiguration :: Encode ThingIndexingConfiguration where encode = genericEncode options

-- | Constructs ThingIndexingConfiguration from required parameters
newThingIndexingConfiguration :: ThingIndexingConfiguration
newThingIndexingConfiguration  = ThingIndexingConfiguration { "thingIndexingMode": Nothing }

-- | Constructs ThingIndexingConfiguration's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newThingIndexingConfiguration' :: ( { "thingIndexingMode" :: Maybe (ThingIndexingMode) } -> {"thingIndexingMode" :: Maybe (ThingIndexingMode) } ) -> ThingIndexingConfiguration
newThingIndexingConfiguration'  customize = (ThingIndexingConfiguration <<< customize) { "thingIndexingMode": Nothing }



newtype ThingIndexingMode = ThingIndexingMode String
derive instance newtypeThingIndexingMode :: Newtype ThingIndexingMode _
derive instance repGenericThingIndexingMode :: Generic ThingIndexingMode _
instance showThingIndexingMode :: Show ThingIndexingMode where show = genericShow
instance decodeThingIndexingMode :: Decode ThingIndexingMode where decode = genericDecode options
instance encodeThingIndexingMode :: Encode ThingIndexingMode where encode = genericEncode options



newtype ThingName = ThingName String
derive instance newtypeThingName :: Newtype ThingName _
derive instance repGenericThingName :: Generic ThingName _
instance showThingName :: Show ThingName where show = genericShow
instance decodeThingName :: Decode ThingName where decode = genericDecode options
instance encodeThingName :: Encode ThingName where encode = genericEncode options



newtype ThingNameList = ThingNameList (Array ThingName)
derive instance newtypeThingNameList :: Newtype ThingNameList _
derive instance repGenericThingNameList :: Generic ThingNameList _
instance showThingNameList :: Show ThingNameList where show = genericShow
instance decodeThingNameList :: Decode ThingNameList where decode = genericDecode options
instance encodeThingNameList :: Encode ThingNameList where encode = genericEncode options



newtype ThingTypeArn = ThingTypeArn String
derive instance newtypeThingTypeArn :: Newtype ThingTypeArn _
derive instance repGenericThingTypeArn :: Generic ThingTypeArn _
instance showThingTypeArn :: Show ThingTypeArn where show = genericShow
instance decodeThingTypeArn :: Decode ThingTypeArn where decode = genericDecode options
instance encodeThingTypeArn :: Encode ThingTypeArn where encode = genericEncode options



-- | <p>The definition of the thing type, including thing type name and description.</p>
newtype ThingTypeDefinition = ThingTypeDefinition 
  { "thingTypeName" :: Maybe (ThingTypeName)
  , "thingTypeArn" :: Maybe (ThingTypeArn)
  , "thingTypeProperties" :: Maybe (ThingTypeProperties)
  , "thingTypeMetadata" :: Maybe (ThingTypeMetadata)
  }
derive instance newtypeThingTypeDefinition :: Newtype ThingTypeDefinition _
derive instance repGenericThingTypeDefinition :: Generic ThingTypeDefinition _
instance showThingTypeDefinition :: Show ThingTypeDefinition where show = genericShow
instance decodeThingTypeDefinition :: Decode ThingTypeDefinition where decode = genericDecode options
instance encodeThingTypeDefinition :: Encode ThingTypeDefinition where encode = genericEncode options

-- | Constructs ThingTypeDefinition from required parameters
newThingTypeDefinition :: ThingTypeDefinition
newThingTypeDefinition  = ThingTypeDefinition { "thingTypeArn": Nothing, "thingTypeMetadata": Nothing, "thingTypeName": Nothing, "thingTypeProperties": Nothing }

-- | Constructs ThingTypeDefinition's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newThingTypeDefinition' :: ( { "thingTypeName" :: Maybe (ThingTypeName) , "thingTypeArn" :: Maybe (ThingTypeArn) , "thingTypeProperties" :: Maybe (ThingTypeProperties) , "thingTypeMetadata" :: Maybe (ThingTypeMetadata) } -> {"thingTypeName" :: Maybe (ThingTypeName) , "thingTypeArn" :: Maybe (ThingTypeArn) , "thingTypeProperties" :: Maybe (ThingTypeProperties) , "thingTypeMetadata" :: Maybe (ThingTypeMetadata) } ) -> ThingTypeDefinition
newThingTypeDefinition'  customize = (ThingTypeDefinition <<< customize) { "thingTypeArn": Nothing, "thingTypeMetadata": Nothing, "thingTypeName": Nothing, "thingTypeProperties": Nothing }



newtype ThingTypeDescription = ThingTypeDescription String
derive instance newtypeThingTypeDescription :: Newtype ThingTypeDescription _
derive instance repGenericThingTypeDescription :: Generic ThingTypeDescription _
instance showThingTypeDescription :: Show ThingTypeDescription where show = genericShow
instance decodeThingTypeDescription :: Decode ThingTypeDescription where decode = genericDecode options
instance encodeThingTypeDescription :: Encode ThingTypeDescription where encode = genericEncode options



newtype ThingTypeId = ThingTypeId String
derive instance newtypeThingTypeId :: Newtype ThingTypeId _
derive instance repGenericThingTypeId :: Generic ThingTypeId _
instance showThingTypeId :: Show ThingTypeId where show = genericShow
instance decodeThingTypeId :: Decode ThingTypeId where decode = genericDecode options
instance encodeThingTypeId :: Encode ThingTypeId where encode = genericEncode options



newtype ThingTypeList = ThingTypeList (Array ThingTypeDefinition)
derive instance newtypeThingTypeList :: Newtype ThingTypeList _
derive instance repGenericThingTypeList :: Generic ThingTypeList _
instance showThingTypeList :: Show ThingTypeList where show = genericShow
instance decodeThingTypeList :: Decode ThingTypeList where decode = genericDecode options
instance encodeThingTypeList :: Encode ThingTypeList where encode = genericEncode options



-- | <p>The ThingTypeMetadata contains additional information about the thing type including: creation date and time, a value indicating whether the thing type is deprecated, and a date and time when time was deprecated.</p>
newtype ThingTypeMetadata = ThingTypeMetadata 
  { "deprecated" :: Maybe (Boolean)
  , "deprecationDate" :: Maybe (DeprecationDate)
  , "creationDate" :: Maybe (CreationDate)
  }
derive instance newtypeThingTypeMetadata :: Newtype ThingTypeMetadata _
derive instance repGenericThingTypeMetadata :: Generic ThingTypeMetadata _
instance showThingTypeMetadata :: Show ThingTypeMetadata where show = genericShow
instance decodeThingTypeMetadata :: Decode ThingTypeMetadata where decode = genericDecode options
instance encodeThingTypeMetadata :: Encode ThingTypeMetadata where encode = genericEncode options

-- | Constructs ThingTypeMetadata from required parameters
newThingTypeMetadata :: ThingTypeMetadata
newThingTypeMetadata  = ThingTypeMetadata { "creationDate": Nothing, "deprecated": Nothing, "deprecationDate": Nothing }

-- | Constructs ThingTypeMetadata's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newThingTypeMetadata' :: ( { "deprecated" :: Maybe (Boolean) , "deprecationDate" :: Maybe (DeprecationDate) , "creationDate" :: Maybe (CreationDate) } -> {"deprecated" :: Maybe (Boolean) , "deprecationDate" :: Maybe (DeprecationDate) , "creationDate" :: Maybe (CreationDate) } ) -> ThingTypeMetadata
newThingTypeMetadata'  customize = (ThingTypeMetadata <<< customize) { "creationDate": Nothing, "deprecated": Nothing, "deprecationDate": Nothing }



newtype ThingTypeName = ThingTypeName String
derive instance newtypeThingTypeName :: Newtype ThingTypeName _
derive instance repGenericThingTypeName :: Generic ThingTypeName _
instance showThingTypeName :: Show ThingTypeName where show = genericShow
instance decodeThingTypeName :: Decode ThingTypeName where decode = genericDecode options
instance encodeThingTypeName :: Encode ThingTypeName where encode = genericEncode options



-- | <p>The ThingTypeProperties contains information about the thing type including: a thing type description, and a list of searchable thing attribute names.</p>
newtype ThingTypeProperties = ThingTypeProperties 
  { "thingTypeDescription" :: Maybe (ThingTypeDescription)
  , "searchableAttributes" :: Maybe (SearchableAttributes)
  }
derive instance newtypeThingTypeProperties :: Newtype ThingTypeProperties _
derive instance repGenericThingTypeProperties :: Generic ThingTypeProperties _
instance showThingTypeProperties :: Show ThingTypeProperties where show = genericShow
instance decodeThingTypeProperties :: Decode ThingTypeProperties where decode = genericDecode options
instance encodeThingTypeProperties :: Encode ThingTypeProperties where encode = genericEncode options

-- | Constructs ThingTypeProperties from required parameters
newThingTypeProperties :: ThingTypeProperties
newThingTypeProperties  = ThingTypeProperties { "searchableAttributes": Nothing, "thingTypeDescription": Nothing }

-- | Constructs ThingTypeProperties's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newThingTypeProperties' :: ( { "thingTypeDescription" :: Maybe (ThingTypeDescription) , "searchableAttributes" :: Maybe (SearchableAttributes) } -> {"thingTypeDescription" :: Maybe (ThingTypeDescription) , "searchableAttributes" :: Maybe (SearchableAttributes) } ) -> ThingTypeProperties
newThingTypeProperties'  customize = (ThingTypeProperties <<< customize) { "searchableAttributes": Nothing, "thingTypeDescription": Nothing }



-- | <p>The rate exceeds the limit.</p>
newtype ThrottlingException = ThrottlingException 
  { "message" :: Maybe (ErrorMessage')
  }
derive instance newtypeThrottlingException :: Newtype ThrottlingException _
derive instance repGenericThrottlingException :: Generic ThrottlingException _
instance showThrottlingException :: Show ThrottlingException where show = genericShow
instance decodeThrottlingException :: Decode ThrottlingException where decode = genericDecode options
instance encodeThrottlingException :: Encode ThrottlingException where encode = genericEncode options

-- | Constructs ThrottlingException from required parameters
newThrottlingException :: ThrottlingException
newThrottlingException  = ThrottlingException { "message": Nothing }

-- | Constructs ThrottlingException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newThrottlingException' :: ( { "message" :: Maybe (ErrorMessage') } -> {"message" :: Maybe (ErrorMessage') } ) -> ThrottlingException
newThrottlingException'  customize = (ThrottlingException <<< customize) { "message": Nothing }



newtype Token = Token String
derive instance newtypeToken :: Newtype Token _
derive instance repGenericToken :: Generic Token _
instance showToken :: Show Token where show = genericShow
instance decodeToken :: Decode Token where decode = genericDecode options
instance encodeToken :: Encode Token where encode = genericEncode options



newtype TokenKeyName = TokenKeyName String
derive instance newtypeTokenKeyName :: Newtype TokenKeyName _
derive instance repGenericTokenKeyName :: Generic TokenKeyName _
instance showTokenKeyName :: Show TokenKeyName where show = genericShow
instance decodeTokenKeyName :: Decode TokenKeyName where decode = genericDecode options
instance encodeTokenKeyName :: Encode TokenKeyName where encode = genericEncode options



newtype TokenSignature = TokenSignature String
derive instance newtypeTokenSignature :: Newtype TokenSignature _
derive instance repGenericTokenSignature :: Generic TokenSignature _
instance showTokenSignature :: Show TokenSignature where show = genericShow
instance decodeTokenSignature :: Decode TokenSignature where decode = genericDecode options
instance encodeTokenSignature :: Encode TokenSignature where encode = genericEncode options



newtype Topic = Topic String
derive instance newtypeTopic :: Newtype Topic _
derive instance repGenericTopic :: Generic Topic _
instance showTopic :: Show Topic where show = genericShow
instance decodeTopic :: Decode Topic where decode = genericDecode options
instance encodeTopic :: Encode Topic where encode = genericEncode options



newtype TopicPattern = TopicPattern String
derive instance newtypeTopicPattern :: Newtype TopicPattern _
derive instance repGenericTopicPattern :: Generic TopicPattern _
instance showTopicPattern :: Show TopicPattern where show = genericShow
instance decodeTopicPattern :: Decode TopicPattern where decode = genericDecode options
instance encodeTopicPattern :: Encode TopicPattern where encode = genericEncode options



-- | <p>Describes a rule.</p>
newtype TopicRule = TopicRule 
  { "ruleName" :: Maybe (RuleName)
  , "sql" :: Maybe (SQL)
  , "description" :: Maybe (Description)
  , "createdAt" :: Maybe (CreatedAtDate)
  , "actions" :: Maybe (ActionList)
  , "ruleDisabled" :: Maybe (IsDisabled)
  , "awsIotSqlVersion" :: Maybe (AwsIotSqlVersion)
  , "errorAction" :: Maybe (Action)
  }
derive instance newtypeTopicRule :: Newtype TopicRule _
derive instance repGenericTopicRule :: Generic TopicRule _
instance showTopicRule :: Show TopicRule where show = genericShow
instance decodeTopicRule :: Decode TopicRule where decode = genericDecode options
instance encodeTopicRule :: Encode TopicRule where encode = genericEncode options

-- | Constructs TopicRule from required parameters
newTopicRule :: TopicRule
newTopicRule  = TopicRule { "actions": Nothing, "awsIotSqlVersion": Nothing, "createdAt": Nothing, "description": Nothing, "errorAction": Nothing, "ruleDisabled": Nothing, "ruleName": Nothing, "sql": Nothing }

-- | Constructs TopicRule's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newTopicRule' :: ( { "ruleName" :: Maybe (RuleName) , "sql" :: Maybe (SQL) , "description" :: Maybe (Description) , "createdAt" :: Maybe (CreatedAtDate) , "actions" :: Maybe (ActionList) , "ruleDisabled" :: Maybe (IsDisabled) , "awsIotSqlVersion" :: Maybe (AwsIotSqlVersion) , "errorAction" :: Maybe (Action) } -> {"ruleName" :: Maybe (RuleName) , "sql" :: Maybe (SQL) , "description" :: Maybe (Description) , "createdAt" :: Maybe (CreatedAtDate) , "actions" :: Maybe (ActionList) , "ruleDisabled" :: Maybe (IsDisabled) , "awsIotSqlVersion" :: Maybe (AwsIotSqlVersion) , "errorAction" :: Maybe (Action) } ) -> TopicRule
newTopicRule'  customize = (TopicRule <<< customize) { "actions": Nothing, "awsIotSqlVersion": Nothing, "createdAt": Nothing, "description": Nothing, "errorAction": Nothing, "ruleDisabled": Nothing, "ruleName": Nothing, "sql": Nothing }



newtype TopicRuleList = TopicRuleList (Array TopicRuleListItem)
derive instance newtypeTopicRuleList :: Newtype TopicRuleList _
derive instance repGenericTopicRuleList :: Generic TopicRuleList _
instance showTopicRuleList :: Show TopicRuleList where show = genericShow
instance decodeTopicRuleList :: Decode TopicRuleList where decode = genericDecode options
instance encodeTopicRuleList :: Encode TopicRuleList where encode = genericEncode options



-- | <p>Describes a rule.</p>
newtype TopicRuleListItem = TopicRuleListItem 
  { "ruleArn" :: Maybe (RuleArn)
  , "ruleName" :: Maybe (RuleName)
  , "topicPattern" :: Maybe (TopicPattern)
  , "createdAt" :: Maybe (CreatedAtDate)
  , "ruleDisabled" :: Maybe (IsDisabled)
  }
derive instance newtypeTopicRuleListItem :: Newtype TopicRuleListItem _
derive instance repGenericTopicRuleListItem :: Generic TopicRuleListItem _
instance showTopicRuleListItem :: Show TopicRuleListItem where show = genericShow
instance decodeTopicRuleListItem :: Decode TopicRuleListItem where decode = genericDecode options
instance encodeTopicRuleListItem :: Encode TopicRuleListItem where encode = genericEncode options

-- | Constructs TopicRuleListItem from required parameters
newTopicRuleListItem :: TopicRuleListItem
newTopicRuleListItem  = TopicRuleListItem { "createdAt": Nothing, "ruleArn": Nothing, "ruleDisabled": Nothing, "ruleName": Nothing, "topicPattern": Nothing }

-- | Constructs TopicRuleListItem's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newTopicRuleListItem' :: ( { "ruleArn" :: Maybe (RuleArn) , "ruleName" :: Maybe (RuleName) , "topicPattern" :: Maybe (TopicPattern) , "createdAt" :: Maybe (CreatedAtDate) , "ruleDisabled" :: Maybe (IsDisabled) } -> {"ruleArn" :: Maybe (RuleArn) , "ruleName" :: Maybe (RuleName) , "topicPattern" :: Maybe (TopicPattern) , "createdAt" :: Maybe (CreatedAtDate) , "ruleDisabled" :: Maybe (IsDisabled) } ) -> TopicRuleListItem
newTopicRuleListItem'  customize = (TopicRuleListItem <<< customize) { "createdAt": Nothing, "ruleArn": Nothing, "ruleDisabled": Nothing, "ruleName": Nothing, "topicPattern": Nothing }



-- | <p>Describes a rule.</p>
newtype TopicRulePayload = TopicRulePayload 
  { "sql" :: (SQL)
  , "description" :: Maybe (Description)
  , "actions" :: (ActionList)
  , "ruleDisabled" :: Maybe (IsDisabled)
  , "awsIotSqlVersion" :: Maybe (AwsIotSqlVersion)
  , "errorAction" :: Maybe (Action)
  }
derive instance newtypeTopicRulePayload :: Newtype TopicRulePayload _
derive instance repGenericTopicRulePayload :: Generic TopicRulePayload _
instance showTopicRulePayload :: Show TopicRulePayload where show = genericShow
instance decodeTopicRulePayload :: Decode TopicRulePayload where decode = genericDecode options
instance encodeTopicRulePayload :: Encode TopicRulePayload where encode = genericEncode options

-- | Constructs TopicRulePayload from required parameters
newTopicRulePayload :: ActionList -> SQL -> TopicRulePayload
newTopicRulePayload _actions _sql = TopicRulePayload { "actions": _actions, "sql": _sql, "awsIotSqlVersion": Nothing, "description": Nothing, "errorAction": Nothing, "ruleDisabled": Nothing }

-- | Constructs TopicRulePayload's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newTopicRulePayload' :: ActionList -> SQL -> ( { "sql" :: (SQL) , "description" :: Maybe (Description) , "actions" :: (ActionList) , "ruleDisabled" :: Maybe (IsDisabled) , "awsIotSqlVersion" :: Maybe (AwsIotSqlVersion) , "errorAction" :: Maybe (Action) } -> {"sql" :: (SQL) , "description" :: Maybe (Description) , "actions" :: (ActionList) , "ruleDisabled" :: Maybe (IsDisabled) , "awsIotSqlVersion" :: Maybe (AwsIotSqlVersion) , "errorAction" :: Maybe (Action) } ) -> TopicRulePayload
newTopicRulePayload' _actions _sql customize = (TopicRulePayload <<< customize) { "actions": _actions, "sql": _sql, "awsIotSqlVersion": Nothing, "description": Nothing, "errorAction": Nothing, "ruleDisabled": Nothing }



-- | <p>You can't revert the certificate transfer because the transfer is already complete.</p>
newtype TransferAlreadyCompletedException = TransferAlreadyCompletedException 
  { "message" :: Maybe (ErrorMessage')
  }
derive instance newtypeTransferAlreadyCompletedException :: Newtype TransferAlreadyCompletedException _
derive instance repGenericTransferAlreadyCompletedException :: Generic TransferAlreadyCompletedException _
instance showTransferAlreadyCompletedException :: Show TransferAlreadyCompletedException where show = genericShow
instance decodeTransferAlreadyCompletedException :: Decode TransferAlreadyCompletedException where decode = genericDecode options
instance encodeTransferAlreadyCompletedException :: Encode TransferAlreadyCompletedException where encode = genericEncode options

-- | Constructs TransferAlreadyCompletedException from required parameters
newTransferAlreadyCompletedException :: TransferAlreadyCompletedException
newTransferAlreadyCompletedException  = TransferAlreadyCompletedException { "message": Nothing }

-- | Constructs TransferAlreadyCompletedException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newTransferAlreadyCompletedException' :: ( { "message" :: Maybe (ErrorMessage') } -> {"message" :: Maybe (ErrorMessage') } ) -> TransferAlreadyCompletedException
newTransferAlreadyCompletedException'  customize = (TransferAlreadyCompletedException <<< customize) { "message": Nothing }



-- | <p>The input for the TransferCertificate operation.</p>
newtype TransferCertificateRequest = TransferCertificateRequest 
  { "certificateId" :: (CertificateId)
  , "targetAwsAccount" :: (AwsAccountId)
  , "transferMessage" :: Maybe (Message)
  }
derive instance newtypeTransferCertificateRequest :: Newtype TransferCertificateRequest _
derive instance repGenericTransferCertificateRequest :: Generic TransferCertificateRequest _
instance showTransferCertificateRequest :: Show TransferCertificateRequest where show = genericShow
instance decodeTransferCertificateRequest :: Decode TransferCertificateRequest where decode = genericDecode options
instance encodeTransferCertificateRequest :: Encode TransferCertificateRequest where encode = genericEncode options

-- | Constructs TransferCertificateRequest from required parameters
newTransferCertificateRequest :: CertificateId -> AwsAccountId -> TransferCertificateRequest
newTransferCertificateRequest _certificateId _targetAwsAccount = TransferCertificateRequest { "certificateId": _certificateId, "targetAwsAccount": _targetAwsAccount, "transferMessage": Nothing }

-- | Constructs TransferCertificateRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newTransferCertificateRequest' :: CertificateId -> AwsAccountId -> ( { "certificateId" :: (CertificateId) , "targetAwsAccount" :: (AwsAccountId) , "transferMessage" :: Maybe (Message) } -> {"certificateId" :: (CertificateId) , "targetAwsAccount" :: (AwsAccountId) , "transferMessage" :: Maybe (Message) } ) -> TransferCertificateRequest
newTransferCertificateRequest' _certificateId _targetAwsAccount customize = (TransferCertificateRequest <<< customize) { "certificateId": _certificateId, "targetAwsAccount": _targetAwsAccount, "transferMessage": Nothing }



-- | <p>The output from the TransferCertificate operation.</p>
newtype TransferCertificateResponse = TransferCertificateResponse 
  { "transferredCertificateArn" :: Maybe (CertificateArn)
  }
derive instance newtypeTransferCertificateResponse :: Newtype TransferCertificateResponse _
derive instance repGenericTransferCertificateResponse :: Generic TransferCertificateResponse _
instance showTransferCertificateResponse :: Show TransferCertificateResponse where show = genericShow
instance decodeTransferCertificateResponse :: Decode TransferCertificateResponse where decode = genericDecode options
instance encodeTransferCertificateResponse :: Encode TransferCertificateResponse where encode = genericEncode options

-- | Constructs TransferCertificateResponse from required parameters
newTransferCertificateResponse :: TransferCertificateResponse
newTransferCertificateResponse  = TransferCertificateResponse { "transferredCertificateArn": Nothing }

-- | Constructs TransferCertificateResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newTransferCertificateResponse' :: ( { "transferredCertificateArn" :: Maybe (CertificateArn) } -> {"transferredCertificateArn" :: Maybe (CertificateArn) } ) -> TransferCertificateResponse
newTransferCertificateResponse'  customize = (TransferCertificateResponse <<< customize) { "transferredCertificateArn": Nothing }



-- | <p>You can't transfer the certificate because authorization policies are still attached.</p>
newtype TransferConflictException = TransferConflictException 
  { "message" :: Maybe (ErrorMessage')
  }
derive instance newtypeTransferConflictException :: Newtype TransferConflictException _
derive instance repGenericTransferConflictException :: Generic TransferConflictException _
instance showTransferConflictException :: Show TransferConflictException where show = genericShow
instance decodeTransferConflictException :: Decode TransferConflictException where decode = genericDecode options
instance encodeTransferConflictException :: Encode TransferConflictException where encode = genericEncode options

-- | Constructs TransferConflictException from required parameters
newTransferConflictException :: TransferConflictException
newTransferConflictException  = TransferConflictException { "message": Nothing }

-- | Constructs TransferConflictException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newTransferConflictException' :: ( { "message" :: Maybe (ErrorMessage') } -> {"message" :: Maybe (ErrorMessage') } ) -> TransferConflictException
newTransferConflictException'  customize = (TransferConflictException <<< customize) { "message": Nothing }



-- | <p>Data used to transfer a certificate to an AWS account.</p>
newtype TransferData = TransferData 
  { "transferMessage" :: Maybe (Message)
  , "rejectReason" :: Maybe (Message)
  , "transferDate" :: Maybe (DateType)
  , "acceptDate" :: Maybe (DateType)
  , "rejectDate" :: Maybe (DateType)
  }
derive instance newtypeTransferData :: Newtype TransferData _
derive instance repGenericTransferData :: Generic TransferData _
instance showTransferData :: Show TransferData where show = genericShow
instance decodeTransferData :: Decode TransferData where decode = genericDecode options
instance encodeTransferData :: Encode TransferData where encode = genericEncode options

-- | Constructs TransferData from required parameters
newTransferData :: TransferData
newTransferData  = TransferData { "acceptDate": Nothing, "rejectDate": Nothing, "rejectReason": Nothing, "transferDate": Nothing, "transferMessage": Nothing }

-- | Constructs TransferData's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newTransferData' :: ( { "transferMessage" :: Maybe (Message) , "rejectReason" :: Maybe (Message) , "transferDate" :: Maybe (DateType) , "acceptDate" :: Maybe (DateType) , "rejectDate" :: Maybe (DateType) } -> {"transferMessage" :: Maybe (Message) , "rejectReason" :: Maybe (Message) , "transferDate" :: Maybe (DateType) , "acceptDate" :: Maybe (DateType) , "rejectDate" :: Maybe (DateType) } ) -> TransferData
newTransferData'  customize = (TransferData <<< customize) { "acceptDate": Nothing, "rejectDate": Nothing, "rejectReason": Nothing, "transferDate": Nothing, "transferMessage": Nothing }



-- | <p>You are not authorized to perform this operation.</p>
newtype UnauthorizedException = UnauthorizedException 
  { "message" :: Maybe (ErrorMessage')
  }
derive instance newtypeUnauthorizedException :: Newtype UnauthorizedException _
derive instance repGenericUnauthorizedException :: Generic UnauthorizedException _
instance showUnauthorizedException :: Show UnauthorizedException where show = genericShow
instance decodeUnauthorizedException :: Decode UnauthorizedException where decode = genericDecode options
instance encodeUnauthorizedException :: Encode UnauthorizedException where encode = genericEncode options

-- | Constructs UnauthorizedException from required parameters
newUnauthorizedException :: UnauthorizedException
newUnauthorizedException  = UnauthorizedException { "message": Nothing }

-- | Constructs UnauthorizedException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newUnauthorizedException' :: ( { "message" :: Maybe (ErrorMessage') } -> {"message" :: Maybe (ErrorMessage') } ) -> UnauthorizedException
newUnauthorizedException'  customize = (UnauthorizedException <<< customize) { "message": Nothing }



newtype UndoDeprecate = UndoDeprecate Boolean
derive instance newtypeUndoDeprecate :: Newtype UndoDeprecate _
derive instance repGenericUndoDeprecate :: Generic UndoDeprecate _
instance showUndoDeprecate :: Show UndoDeprecate where show = genericShow
instance decodeUndoDeprecate :: Decode UndoDeprecate where decode = genericDecode options
instance encodeUndoDeprecate :: Encode UndoDeprecate where encode = genericEncode options



newtype UpdateAuthorizerRequest = UpdateAuthorizerRequest 
  { "authorizerName" :: (AuthorizerName)
  , "authorizerFunctionArn" :: Maybe (AuthorizerFunctionArn)
  , "tokenKeyName" :: Maybe (TokenKeyName)
  , "tokenSigningPublicKeys" :: Maybe (PublicKeyMap)
  , "status" :: Maybe (AuthorizerStatus)
  }
derive instance newtypeUpdateAuthorizerRequest :: Newtype UpdateAuthorizerRequest _
derive instance repGenericUpdateAuthorizerRequest :: Generic UpdateAuthorizerRequest _
instance showUpdateAuthorizerRequest :: Show UpdateAuthorizerRequest where show = genericShow
instance decodeUpdateAuthorizerRequest :: Decode UpdateAuthorizerRequest where decode = genericDecode options
instance encodeUpdateAuthorizerRequest :: Encode UpdateAuthorizerRequest where encode = genericEncode options

-- | Constructs UpdateAuthorizerRequest from required parameters
newUpdateAuthorizerRequest :: AuthorizerName -> UpdateAuthorizerRequest
newUpdateAuthorizerRequest _authorizerName = UpdateAuthorizerRequest { "authorizerName": _authorizerName, "authorizerFunctionArn": Nothing, "status": Nothing, "tokenKeyName": Nothing, "tokenSigningPublicKeys": Nothing }

-- | Constructs UpdateAuthorizerRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newUpdateAuthorizerRequest' :: AuthorizerName -> ( { "authorizerName" :: (AuthorizerName) , "authorizerFunctionArn" :: Maybe (AuthorizerFunctionArn) , "tokenKeyName" :: Maybe (TokenKeyName) , "tokenSigningPublicKeys" :: Maybe (PublicKeyMap) , "status" :: Maybe (AuthorizerStatus) } -> {"authorizerName" :: (AuthorizerName) , "authorizerFunctionArn" :: Maybe (AuthorizerFunctionArn) , "tokenKeyName" :: Maybe (TokenKeyName) , "tokenSigningPublicKeys" :: Maybe (PublicKeyMap) , "status" :: Maybe (AuthorizerStatus) } ) -> UpdateAuthorizerRequest
newUpdateAuthorizerRequest' _authorizerName customize = (UpdateAuthorizerRequest <<< customize) { "authorizerName": _authorizerName, "authorizerFunctionArn": Nothing, "status": Nothing, "tokenKeyName": Nothing, "tokenSigningPublicKeys": Nothing }



newtype UpdateAuthorizerResponse = UpdateAuthorizerResponse 
  { "authorizerName" :: Maybe (AuthorizerName)
  , "authorizerArn" :: Maybe (AuthorizerArn)
  }
derive instance newtypeUpdateAuthorizerResponse :: Newtype UpdateAuthorizerResponse _
derive instance repGenericUpdateAuthorizerResponse :: Generic UpdateAuthorizerResponse _
instance showUpdateAuthorizerResponse :: Show UpdateAuthorizerResponse where show = genericShow
instance decodeUpdateAuthorizerResponse :: Decode UpdateAuthorizerResponse where decode = genericDecode options
instance encodeUpdateAuthorizerResponse :: Encode UpdateAuthorizerResponse where encode = genericEncode options

-- | Constructs UpdateAuthorizerResponse from required parameters
newUpdateAuthorizerResponse :: UpdateAuthorizerResponse
newUpdateAuthorizerResponse  = UpdateAuthorizerResponse { "authorizerArn": Nothing, "authorizerName": Nothing }

-- | Constructs UpdateAuthorizerResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newUpdateAuthorizerResponse' :: ( { "authorizerName" :: Maybe (AuthorizerName) , "authorizerArn" :: Maybe (AuthorizerArn) } -> {"authorizerName" :: Maybe (AuthorizerName) , "authorizerArn" :: Maybe (AuthorizerArn) } ) -> UpdateAuthorizerResponse
newUpdateAuthorizerResponse'  customize = (UpdateAuthorizerResponse <<< customize) { "authorizerArn": Nothing, "authorizerName": Nothing }



-- | <p>The input to the UpdateCACertificate operation.</p>
newtype UpdateCACertificateRequest = UpdateCACertificateRequest 
  { "certificateId" :: (CertificateId)
  , "newStatus" :: Maybe (CACertificateStatus)
  , "newAutoRegistrationStatus" :: Maybe (AutoRegistrationStatus)
  , "registrationConfig" :: Maybe (RegistrationConfig)
  , "removeAutoRegistration" :: Maybe (RemoveAutoRegistration)
  }
derive instance newtypeUpdateCACertificateRequest :: Newtype UpdateCACertificateRequest _
derive instance repGenericUpdateCACertificateRequest :: Generic UpdateCACertificateRequest _
instance showUpdateCACertificateRequest :: Show UpdateCACertificateRequest where show = genericShow
instance decodeUpdateCACertificateRequest :: Decode UpdateCACertificateRequest where decode = genericDecode options
instance encodeUpdateCACertificateRequest :: Encode UpdateCACertificateRequest where encode = genericEncode options

-- | Constructs UpdateCACertificateRequest from required parameters
newUpdateCACertificateRequest :: CertificateId -> UpdateCACertificateRequest
newUpdateCACertificateRequest _certificateId = UpdateCACertificateRequest { "certificateId": _certificateId, "newAutoRegistrationStatus": Nothing, "newStatus": Nothing, "registrationConfig": Nothing, "removeAutoRegistration": Nothing }

-- | Constructs UpdateCACertificateRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newUpdateCACertificateRequest' :: CertificateId -> ( { "certificateId" :: (CertificateId) , "newStatus" :: Maybe (CACertificateStatus) , "newAutoRegistrationStatus" :: Maybe (AutoRegistrationStatus) , "registrationConfig" :: Maybe (RegistrationConfig) , "removeAutoRegistration" :: Maybe (RemoveAutoRegistration) } -> {"certificateId" :: (CertificateId) , "newStatus" :: Maybe (CACertificateStatus) , "newAutoRegistrationStatus" :: Maybe (AutoRegistrationStatus) , "registrationConfig" :: Maybe (RegistrationConfig) , "removeAutoRegistration" :: Maybe (RemoveAutoRegistration) } ) -> UpdateCACertificateRequest
newUpdateCACertificateRequest' _certificateId customize = (UpdateCACertificateRequest <<< customize) { "certificateId": _certificateId, "newAutoRegistrationStatus": Nothing, "newStatus": Nothing, "registrationConfig": Nothing, "removeAutoRegistration": Nothing }



-- | <p>The input for the UpdateCertificate operation.</p>
newtype UpdateCertificateRequest = UpdateCertificateRequest 
  { "certificateId" :: (CertificateId)
  , "newStatus" :: (CertificateStatus)
  }
derive instance newtypeUpdateCertificateRequest :: Newtype UpdateCertificateRequest _
derive instance repGenericUpdateCertificateRequest :: Generic UpdateCertificateRequest _
instance showUpdateCertificateRequest :: Show UpdateCertificateRequest where show = genericShow
instance decodeUpdateCertificateRequest :: Decode UpdateCertificateRequest where decode = genericDecode options
instance encodeUpdateCertificateRequest :: Encode UpdateCertificateRequest where encode = genericEncode options

-- | Constructs UpdateCertificateRequest from required parameters
newUpdateCertificateRequest :: CertificateId -> CertificateStatus -> UpdateCertificateRequest
newUpdateCertificateRequest _certificateId _newStatus = UpdateCertificateRequest { "certificateId": _certificateId, "newStatus": _newStatus }

-- | Constructs UpdateCertificateRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newUpdateCertificateRequest' :: CertificateId -> CertificateStatus -> ( { "certificateId" :: (CertificateId) , "newStatus" :: (CertificateStatus) } -> {"certificateId" :: (CertificateId) , "newStatus" :: (CertificateStatus) } ) -> UpdateCertificateRequest
newUpdateCertificateRequest' _certificateId _newStatus customize = (UpdateCertificateRequest <<< customize) { "certificateId": _certificateId, "newStatus": _newStatus }



newtype UpdateEventConfigurationsRequest = UpdateEventConfigurationsRequest 
  { "eventConfigurations" :: Maybe (EventConfigurations)
  }
derive instance newtypeUpdateEventConfigurationsRequest :: Newtype UpdateEventConfigurationsRequest _
derive instance repGenericUpdateEventConfigurationsRequest :: Generic UpdateEventConfigurationsRequest _
instance showUpdateEventConfigurationsRequest :: Show UpdateEventConfigurationsRequest where show = genericShow
instance decodeUpdateEventConfigurationsRequest :: Decode UpdateEventConfigurationsRequest where decode = genericDecode options
instance encodeUpdateEventConfigurationsRequest :: Encode UpdateEventConfigurationsRequest where encode = genericEncode options

-- | Constructs UpdateEventConfigurationsRequest from required parameters
newUpdateEventConfigurationsRequest :: UpdateEventConfigurationsRequest
newUpdateEventConfigurationsRequest  = UpdateEventConfigurationsRequest { "eventConfigurations": Nothing }

-- | Constructs UpdateEventConfigurationsRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newUpdateEventConfigurationsRequest' :: ( { "eventConfigurations" :: Maybe (EventConfigurations) } -> {"eventConfigurations" :: Maybe (EventConfigurations) } ) -> UpdateEventConfigurationsRequest
newUpdateEventConfigurationsRequest'  customize = (UpdateEventConfigurationsRequest <<< customize) { "eventConfigurations": Nothing }



newtype UpdateEventConfigurationsResponse = UpdateEventConfigurationsResponse Types.NoArguments
derive instance newtypeUpdateEventConfigurationsResponse :: Newtype UpdateEventConfigurationsResponse _
derive instance repGenericUpdateEventConfigurationsResponse :: Generic UpdateEventConfigurationsResponse _
instance showUpdateEventConfigurationsResponse :: Show UpdateEventConfigurationsResponse where show = genericShow
instance decodeUpdateEventConfigurationsResponse :: Decode UpdateEventConfigurationsResponse where decode = genericDecode options
instance encodeUpdateEventConfigurationsResponse :: Encode UpdateEventConfigurationsResponse where encode = genericEncode options



newtype UpdateIndexingConfigurationRequest = UpdateIndexingConfigurationRequest 
  { "thingIndexingConfiguration" :: Maybe (ThingIndexingConfiguration)
  }
derive instance newtypeUpdateIndexingConfigurationRequest :: Newtype UpdateIndexingConfigurationRequest _
derive instance repGenericUpdateIndexingConfigurationRequest :: Generic UpdateIndexingConfigurationRequest _
instance showUpdateIndexingConfigurationRequest :: Show UpdateIndexingConfigurationRequest where show = genericShow
instance decodeUpdateIndexingConfigurationRequest :: Decode UpdateIndexingConfigurationRequest where decode = genericDecode options
instance encodeUpdateIndexingConfigurationRequest :: Encode UpdateIndexingConfigurationRequest where encode = genericEncode options

-- | Constructs UpdateIndexingConfigurationRequest from required parameters
newUpdateIndexingConfigurationRequest :: UpdateIndexingConfigurationRequest
newUpdateIndexingConfigurationRequest  = UpdateIndexingConfigurationRequest { "thingIndexingConfiguration": Nothing }

-- | Constructs UpdateIndexingConfigurationRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newUpdateIndexingConfigurationRequest' :: ( { "thingIndexingConfiguration" :: Maybe (ThingIndexingConfiguration) } -> {"thingIndexingConfiguration" :: Maybe (ThingIndexingConfiguration) } ) -> UpdateIndexingConfigurationRequest
newUpdateIndexingConfigurationRequest'  customize = (UpdateIndexingConfigurationRequest <<< customize) { "thingIndexingConfiguration": Nothing }



newtype UpdateIndexingConfigurationResponse = UpdateIndexingConfigurationResponse Types.NoArguments
derive instance newtypeUpdateIndexingConfigurationResponse :: Newtype UpdateIndexingConfigurationResponse _
derive instance repGenericUpdateIndexingConfigurationResponse :: Generic UpdateIndexingConfigurationResponse _
instance showUpdateIndexingConfigurationResponse :: Show UpdateIndexingConfigurationResponse where show = genericShow
instance decodeUpdateIndexingConfigurationResponse :: Decode UpdateIndexingConfigurationResponse where decode = genericDecode options
instance encodeUpdateIndexingConfigurationResponse :: Encode UpdateIndexingConfigurationResponse where encode = genericEncode options



newtype UpdateRoleAliasRequest = UpdateRoleAliasRequest 
  { "roleAlias" :: (RoleAlias)
  , "roleArn" :: Maybe (RoleArn)
  , "credentialDurationSeconds" :: Maybe (CredentialDurationSeconds)
  }
derive instance newtypeUpdateRoleAliasRequest :: Newtype UpdateRoleAliasRequest _
derive instance repGenericUpdateRoleAliasRequest :: Generic UpdateRoleAliasRequest _
instance showUpdateRoleAliasRequest :: Show UpdateRoleAliasRequest where show = genericShow
instance decodeUpdateRoleAliasRequest :: Decode UpdateRoleAliasRequest where decode = genericDecode options
instance encodeUpdateRoleAliasRequest :: Encode UpdateRoleAliasRequest where encode = genericEncode options

-- | Constructs UpdateRoleAliasRequest from required parameters
newUpdateRoleAliasRequest :: RoleAlias -> UpdateRoleAliasRequest
newUpdateRoleAliasRequest _roleAlias = UpdateRoleAliasRequest { "roleAlias": _roleAlias, "credentialDurationSeconds": Nothing, "roleArn": Nothing }

-- | Constructs UpdateRoleAliasRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newUpdateRoleAliasRequest' :: RoleAlias -> ( { "roleAlias" :: (RoleAlias) , "roleArn" :: Maybe (RoleArn) , "credentialDurationSeconds" :: Maybe (CredentialDurationSeconds) } -> {"roleAlias" :: (RoleAlias) , "roleArn" :: Maybe (RoleArn) , "credentialDurationSeconds" :: Maybe (CredentialDurationSeconds) } ) -> UpdateRoleAliasRequest
newUpdateRoleAliasRequest' _roleAlias customize = (UpdateRoleAliasRequest <<< customize) { "roleAlias": _roleAlias, "credentialDurationSeconds": Nothing, "roleArn": Nothing }



newtype UpdateRoleAliasResponse = UpdateRoleAliasResponse 
  { "roleAlias" :: Maybe (RoleAlias)
  , "roleAliasArn" :: Maybe (RoleAliasArn)
  }
derive instance newtypeUpdateRoleAliasResponse :: Newtype UpdateRoleAliasResponse _
derive instance repGenericUpdateRoleAliasResponse :: Generic UpdateRoleAliasResponse _
instance showUpdateRoleAliasResponse :: Show UpdateRoleAliasResponse where show = genericShow
instance decodeUpdateRoleAliasResponse :: Decode UpdateRoleAliasResponse where decode = genericDecode options
instance encodeUpdateRoleAliasResponse :: Encode UpdateRoleAliasResponse where encode = genericEncode options

-- | Constructs UpdateRoleAliasResponse from required parameters
newUpdateRoleAliasResponse :: UpdateRoleAliasResponse
newUpdateRoleAliasResponse  = UpdateRoleAliasResponse { "roleAlias": Nothing, "roleAliasArn": Nothing }

-- | Constructs UpdateRoleAliasResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newUpdateRoleAliasResponse' :: ( { "roleAlias" :: Maybe (RoleAlias) , "roleAliasArn" :: Maybe (RoleAliasArn) } -> {"roleAlias" :: Maybe (RoleAlias) , "roleAliasArn" :: Maybe (RoleAliasArn) } ) -> UpdateRoleAliasResponse
newUpdateRoleAliasResponse'  customize = (UpdateRoleAliasResponse <<< customize) { "roleAlias": Nothing, "roleAliasArn": Nothing }



newtype UpdateStreamRequest = UpdateStreamRequest 
  { "streamId" :: (StreamId)
  , "description" :: Maybe (StreamDescription)
  , "files" :: Maybe (StreamFiles)
  , "roleArn" :: Maybe (RoleArn)
  }
derive instance newtypeUpdateStreamRequest :: Newtype UpdateStreamRequest _
derive instance repGenericUpdateStreamRequest :: Generic UpdateStreamRequest _
instance showUpdateStreamRequest :: Show UpdateStreamRequest where show = genericShow
instance decodeUpdateStreamRequest :: Decode UpdateStreamRequest where decode = genericDecode options
instance encodeUpdateStreamRequest :: Encode UpdateStreamRequest where encode = genericEncode options

-- | Constructs UpdateStreamRequest from required parameters
newUpdateStreamRequest :: StreamId -> UpdateStreamRequest
newUpdateStreamRequest _streamId = UpdateStreamRequest { "streamId": _streamId, "description": Nothing, "files": Nothing, "roleArn": Nothing }

-- | Constructs UpdateStreamRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newUpdateStreamRequest' :: StreamId -> ( { "streamId" :: (StreamId) , "description" :: Maybe (StreamDescription) , "files" :: Maybe (StreamFiles) , "roleArn" :: Maybe (RoleArn) } -> {"streamId" :: (StreamId) , "description" :: Maybe (StreamDescription) , "files" :: Maybe (StreamFiles) , "roleArn" :: Maybe (RoleArn) } ) -> UpdateStreamRequest
newUpdateStreamRequest' _streamId customize = (UpdateStreamRequest <<< customize) { "streamId": _streamId, "description": Nothing, "files": Nothing, "roleArn": Nothing }



newtype UpdateStreamResponse = UpdateStreamResponse 
  { "streamId" :: Maybe (StreamId)
  , "streamArn" :: Maybe (StreamArn)
  , "description" :: Maybe (StreamDescription)
  , "streamVersion" :: Maybe (StreamVersion)
  }
derive instance newtypeUpdateStreamResponse :: Newtype UpdateStreamResponse _
derive instance repGenericUpdateStreamResponse :: Generic UpdateStreamResponse _
instance showUpdateStreamResponse :: Show UpdateStreamResponse where show = genericShow
instance decodeUpdateStreamResponse :: Decode UpdateStreamResponse where decode = genericDecode options
instance encodeUpdateStreamResponse :: Encode UpdateStreamResponse where encode = genericEncode options

-- | Constructs UpdateStreamResponse from required parameters
newUpdateStreamResponse :: UpdateStreamResponse
newUpdateStreamResponse  = UpdateStreamResponse { "description": Nothing, "streamArn": Nothing, "streamId": Nothing, "streamVersion": Nothing }

-- | Constructs UpdateStreamResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newUpdateStreamResponse' :: ( { "streamId" :: Maybe (StreamId) , "streamArn" :: Maybe (StreamArn) , "description" :: Maybe (StreamDescription) , "streamVersion" :: Maybe (StreamVersion) } -> {"streamId" :: Maybe (StreamId) , "streamArn" :: Maybe (StreamArn) , "description" :: Maybe (StreamDescription) , "streamVersion" :: Maybe (StreamVersion) } ) -> UpdateStreamResponse
newUpdateStreamResponse'  customize = (UpdateStreamResponse <<< customize) { "description": Nothing, "streamArn": Nothing, "streamId": Nothing, "streamVersion": Nothing }



newtype UpdateThingGroupRequest = UpdateThingGroupRequest 
  { "thingGroupName" :: (ThingGroupName)
  , "thingGroupProperties" :: (ThingGroupProperties)
  , "expectedVersion" :: Maybe (OptionalVersion)
  }
derive instance newtypeUpdateThingGroupRequest :: Newtype UpdateThingGroupRequest _
derive instance repGenericUpdateThingGroupRequest :: Generic UpdateThingGroupRequest _
instance showUpdateThingGroupRequest :: Show UpdateThingGroupRequest where show = genericShow
instance decodeUpdateThingGroupRequest :: Decode UpdateThingGroupRequest where decode = genericDecode options
instance encodeUpdateThingGroupRequest :: Encode UpdateThingGroupRequest where encode = genericEncode options

-- | Constructs UpdateThingGroupRequest from required parameters
newUpdateThingGroupRequest :: ThingGroupName -> ThingGroupProperties -> UpdateThingGroupRequest
newUpdateThingGroupRequest _thingGroupName _thingGroupProperties = UpdateThingGroupRequest { "thingGroupName": _thingGroupName, "thingGroupProperties": _thingGroupProperties, "expectedVersion": Nothing }

-- | Constructs UpdateThingGroupRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newUpdateThingGroupRequest' :: ThingGroupName -> ThingGroupProperties -> ( { "thingGroupName" :: (ThingGroupName) , "thingGroupProperties" :: (ThingGroupProperties) , "expectedVersion" :: Maybe (OptionalVersion) } -> {"thingGroupName" :: (ThingGroupName) , "thingGroupProperties" :: (ThingGroupProperties) , "expectedVersion" :: Maybe (OptionalVersion) } ) -> UpdateThingGroupRequest
newUpdateThingGroupRequest' _thingGroupName _thingGroupProperties customize = (UpdateThingGroupRequest <<< customize) { "thingGroupName": _thingGroupName, "thingGroupProperties": _thingGroupProperties, "expectedVersion": Nothing }



newtype UpdateThingGroupResponse = UpdateThingGroupResponse 
  { "version" :: Maybe (Version)
  }
derive instance newtypeUpdateThingGroupResponse :: Newtype UpdateThingGroupResponse _
derive instance repGenericUpdateThingGroupResponse :: Generic UpdateThingGroupResponse _
instance showUpdateThingGroupResponse :: Show UpdateThingGroupResponse where show = genericShow
instance decodeUpdateThingGroupResponse :: Decode UpdateThingGroupResponse where decode = genericDecode options
instance encodeUpdateThingGroupResponse :: Encode UpdateThingGroupResponse where encode = genericEncode options

-- | Constructs UpdateThingGroupResponse from required parameters
newUpdateThingGroupResponse :: UpdateThingGroupResponse
newUpdateThingGroupResponse  = UpdateThingGroupResponse { "version": Nothing }

-- | Constructs UpdateThingGroupResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newUpdateThingGroupResponse' :: ( { "version" :: Maybe (Version) } -> {"version" :: Maybe (Version) } ) -> UpdateThingGroupResponse
newUpdateThingGroupResponse'  customize = (UpdateThingGroupResponse <<< customize) { "version": Nothing }



newtype UpdateThingGroupsForThingRequest = UpdateThingGroupsForThingRequest 
  { "thingName" :: Maybe (ThingName)
  , "thingGroupsToAdd" :: Maybe (ThingGroupList)
  , "thingGroupsToRemove" :: Maybe (ThingGroupList)
  }
derive instance newtypeUpdateThingGroupsForThingRequest :: Newtype UpdateThingGroupsForThingRequest _
derive instance repGenericUpdateThingGroupsForThingRequest :: Generic UpdateThingGroupsForThingRequest _
instance showUpdateThingGroupsForThingRequest :: Show UpdateThingGroupsForThingRequest where show = genericShow
instance decodeUpdateThingGroupsForThingRequest :: Decode UpdateThingGroupsForThingRequest where decode = genericDecode options
instance encodeUpdateThingGroupsForThingRequest :: Encode UpdateThingGroupsForThingRequest where encode = genericEncode options

-- | Constructs UpdateThingGroupsForThingRequest from required parameters
newUpdateThingGroupsForThingRequest :: UpdateThingGroupsForThingRequest
newUpdateThingGroupsForThingRequest  = UpdateThingGroupsForThingRequest { "thingGroupsToAdd": Nothing, "thingGroupsToRemove": Nothing, "thingName": Nothing }

-- | Constructs UpdateThingGroupsForThingRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newUpdateThingGroupsForThingRequest' :: ( { "thingName" :: Maybe (ThingName) , "thingGroupsToAdd" :: Maybe (ThingGroupList) , "thingGroupsToRemove" :: Maybe (ThingGroupList) } -> {"thingName" :: Maybe (ThingName) , "thingGroupsToAdd" :: Maybe (ThingGroupList) , "thingGroupsToRemove" :: Maybe (ThingGroupList) } ) -> UpdateThingGroupsForThingRequest
newUpdateThingGroupsForThingRequest'  customize = (UpdateThingGroupsForThingRequest <<< customize) { "thingGroupsToAdd": Nothing, "thingGroupsToRemove": Nothing, "thingName": Nothing }



newtype UpdateThingGroupsForThingResponse = UpdateThingGroupsForThingResponse Types.NoArguments
derive instance newtypeUpdateThingGroupsForThingResponse :: Newtype UpdateThingGroupsForThingResponse _
derive instance repGenericUpdateThingGroupsForThingResponse :: Generic UpdateThingGroupsForThingResponse _
instance showUpdateThingGroupsForThingResponse :: Show UpdateThingGroupsForThingResponse where show = genericShow
instance decodeUpdateThingGroupsForThingResponse :: Decode UpdateThingGroupsForThingResponse where decode = genericDecode options
instance encodeUpdateThingGroupsForThingResponse :: Encode UpdateThingGroupsForThingResponse where encode = genericEncode options



-- | <p>The input for the UpdateThing operation.</p>
newtype UpdateThingRequest = UpdateThingRequest 
  { "thingName" :: (ThingName)
  , "thingTypeName" :: Maybe (ThingTypeName)
  , "attributePayload" :: Maybe (AttributePayload)
  , "expectedVersion" :: Maybe (OptionalVersion)
  , "removeThingType" :: Maybe (RemoveThingType)
  }
derive instance newtypeUpdateThingRequest :: Newtype UpdateThingRequest _
derive instance repGenericUpdateThingRequest :: Generic UpdateThingRequest _
instance showUpdateThingRequest :: Show UpdateThingRequest where show = genericShow
instance decodeUpdateThingRequest :: Decode UpdateThingRequest where decode = genericDecode options
instance encodeUpdateThingRequest :: Encode UpdateThingRequest where encode = genericEncode options

-- | Constructs UpdateThingRequest from required parameters
newUpdateThingRequest :: ThingName -> UpdateThingRequest
newUpdateThingRequest _thingName = UpdateThingRequest { "thingName": _thingName, "attributePayload": Nothing, "expectedVersion": Nothing, "removeThingType": Nothing, "thingTypeName": Nothing }

-- | Constructs UpdateThingRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newUpdateThingRequest' :: ThingName -> ( { "thingName" :: (ThingName) , "thingTypeName" :: Maybe (ThingTypeName) , "attributePayload" :: Maybe (AttributePayload) , "expectedVersion" :: Maybe (OptionalVersion) , "removeThingType" :: Maybe (RemoveThingType) } -> {"thingName" :: (ThingName) , "thingTypeName" :: Maybe (ThingTypeName) , "attributePayload" :: Maybe (AttributePayload) , "expectedVersion" :: Maybe (OptionalVersion) , "removeThingType" :: Maybe (RemoveThingType) } ) -> UpdateThingRequest
newUpdateThingRequest' _thingName customize = (UpdateThingRequest <<< customize) { "thingName": _thingName, "attributePayload": Nothing, "expectedVersion": Nothing, "removeThingType": Nothing, "thingTypeName": Nothing }



-- | <p>The output from the UpdateThing operation.</p>
newtype UpdateThingResponse = UpdateThingResponse Types.NoArguments
derive instance newtypeUpdateThingResponse :: Newtype UpdateThingResponse _
derive instance repGenericUpdateThingResponse :: Generic UpdateThingResponse _
instance showUpdateThingResponse :: Show UpdateThingResponse where show = genericShow
instance decodeUpdateThingResponse :: Decode UpdateThingResponse where decode = genericDecode options
instance encodeUpdateThingResponse :: Encode UpdateThingResponse where encode = genericEncode options



newtype UseBase64 = UseBase64 Boolean
derive instance newtypeUseBase64 :: Newtype UseBase64 _
derive instance repGenericUseBase64 :: Generic UseBase64 _
instance showUseBase64 :: Show UseBase64 where show = genericShow
instance decodeUseBase64 :: Decode UseBase64 where decode = genericDecode options
instance encodeUseBase64 :: Encode UseBase64 where encode = genericEncode options



newtype Value = Value String
derive instance newtypeValue :: Newtype Value _
derive instance repGenericValue :: Generic Value _
instance showValue :: Show Value where show = genericShow
instance decodeValue :: Decode Value where decode = genericDecode options
instance encodeValue :: Encode Value where encode = genericEncode options



newtype Version = Version Number
derive instance newtypeVersion :: Newtype Version _
derive instance repGenericVersion :: Generic Version _
instance showVersion :: Show Version where show = genericShow
instance decodeVersion :: Decode Version where decode = genericDecode options
instance encodeVersion :: Encode Version where encode = genericEncode options



-- | <p>An exception thrown when the version of a thing passed to a command is different than the version specified with the --version parameter.</p>
newtype VersionConflictException = VersionConflictException 
  { "message" :: Maybe (ErrorMessage')
  }
derive instance newtypeVersionConflictException :: Newtype VersionConflictException _
derive instance repGenericVersionConflictException :: Generic VersionConflictException _
instance showVersionConflictException :: Show VersionConflictException where show = genericShow
instance decodeVersionConflictException :: Decode VersionConflictException where decode = genericDecode options
instance encodeVersionConflictException :: Encode VersionConflictException where encode = genericEncode options

-- | Constructs VersionConflictException from required parameters
newVersionConflictException :: VersionConflictException
newVersionConflictException  = VersionConflictException { "message": Nothing }

-- | Constructs VersionConflictException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newVersionConflictException' :: ( { "message" :: Maybe (ErrorMessage') } -> {"message" :: Maybe (ErrorMessage') } ) -> VersionConflictException
newVersionConflictException'  customize = (VersionConflictException <<< customize) { "message": Nothing }



-- | <p>The number of policy versions exceeds the limit.</p>
newtype VersionsLimitExceededException = VersionsLimitExceededException 
  { "message" :: Maybe (ErrorMessage')
  }
derive instance newtypeVersionsLimitExceededException :: Newtype VersionsLimitExceededException _
derive instance repGenericVersionsLimitExceededException :: Generic VersionsLimitExceededException _
instance showVersionsLimitExceededException :: Show VersionsLimitExceededException where show = genericShow
instance decodeVersionsLimitExceededException :: Decode VersionsLimitExceededException where decode = genericDecode options
instance encodeVersionsLimitExceededException :: Encode VersionsLimitExceededException where encode = genericEncode options

-- | Constructs VersionsLimitExceededException from required parameters
newVersionsLimitExceededException :: VersionsLimitExceededException
newVersionsLimitExceededException  = VersionsLimitExceededException { "message": Nothing }

-- | Constructs VersionsLimitExceededException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newVersionsLimitExceededException' :: ( { "message" :: Maybe (ErrorMessage') } -> {"message" :: Maybe (ErrorMessage') } ) -> VersionsLimitExceededException
newVersionsLimitExceededException'  customize = (VersionsLimitExceededException <<< customize) { "message": Nothing }



newtype ErrorMessage' = ErrorMessage' String
derive instance newtypeErrorMessage' :: Newtype ErrorMessage' _
derive instance repGenericErrorMessage' :: Generic ErrorMessage' _
instance showErrorMessage' :: Show ErrorMessage' where show = genericShow
instance decodeErrorMessage' :: Decode ErrorMessage' where decode = genericDecode options
instance encodeErrorMessage' :: Encode ErrorMessage' where encode = genericEncode options



newtype ResourceArn' = ResourceArn' String
derive instance newtypeResourceArn' :: Newtype ResourceArn' _
derive instance repGenericResourceArn' :: Generic ResourceArn' _
instance showResourceArn' :: Show ResourceArn' where show = genericShow
instance decodeResourceArn' :: Decode ResourceArn' where decode = genericDecode options
instance encodeResourceArn' :: Encode ResourceArn' where encode = genericEncode options



newtype ResourceId' = ResourceId' String
derive instance newtypeResourceId' :: Newtype ResourceId' _
derive instance repGenericResourceId' :: Generic ResourceId' _
instance showResourceId' :: Show ResourceId' where show = genericShow
instance decodeResourceId' :: Decode ResourceId' where decode = genericDecode options
instance encodeResourceId' :: Encode ResourceId' where encode = genericEncode options

