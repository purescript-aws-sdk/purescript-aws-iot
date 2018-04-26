
module AWS.Iot.Requests where

import Prelude
import Control.Monad.Aff (Aff)
import Control.Monad.Eff.Exception (EXCEPTION)

import AWS.Request (MethodName(..), request) as AWS
import AWS.Request.Types as Types

import AWS.Iot as Iot
import AWS.Iot.Types as IotTypes


-- | <p>Accepts a pending certificate transfer. The default state of the certificate is INACTIVE.</p> <p>To check for pending certificate transfers, call <a>ListCertificates</a> to enumerate your certificates.</p>
acceptCertificateTransfer :: forall eff. Iot.Service -> IotTypes.AcceptCertificateTransferRequest -> Aff (exception :: EXCEPTION | eff) Unit
acceptCertificateTransfer (Iot.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "acceptCertificateTransfer"


-- | <p>Adds a thing to a thing group.</p>
addThingToThingGroup :: forall eff. Iot.Service -> IotTypes.AddThingToThingGroupRequest -> Aff (exception :: EXCEPTION | eff) IotTypes.AddThingToThingGroupResponse
addThingToThingGroup (Iot.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "addThingToThingGroup"


-- | <p>Associates a group with a continuous job. The following criteria must be met: </p> <ul> <li> <p>The job must have been created with the <code>targetSelection</code> field set to "CONTINUOUS".</p> </li> <li> <p>The job status must currently be "IN_PROGRESS".</p> </li> <li> <p>The total number of targets associated with a job must not exceed 100.</p> </li> </ul>
associateTargetsWithJob :: forall eff. Iot.Service -> IotTypes.AssociateTargetsWithJobRequest -> Aff (exception :: EXCEPTION | eff) IotTypes.AssociateTargetsWithJobResponse
associateTargetsWithJob (Iot.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "associateTargetsWithJob"


-- | <p>Attaches a policy to the specified target.</p>
attachPolicy :: forall eff. Iot.Service -> IotTypes.AttachPolicyRequest -> Aff (exception :: EXCEPTION | eff) Unit
attachPolicy (Iot.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "attachPolicy"


-- | <p>Attaches the specified policy to the specified principal (certificate or other credential).</p> <p> <b>Note:</b> This API is deprecated. Please use <a>AttachPolicy</a> instead.</p>
attachPrincipalPolicy :: forall eff. Iot.Service -> IotTypes.AttachPrincipalPolicyRequest -> Aff (exception :: EXCEPTION | eff) Unit
attachPrincipalPolicy (Iot.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "attachPrincipalPolicy"


-- | <p>Attaches the specified principal to the specified thing.</p>
attachThingPrincipal :: forall eff. Iot.Service -> IotTypes.AttachThingPrincipalRequest -> Aff (exception :: EXCEPTION | eff) IotTypes.AttachThingPrincipalResponse
attachThingPrincipal (Iot.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "attachThingPrincipal"


-- | <p>Cancels a pending transfer for the specified certificate.</p> <p> <b>Note</b> Only the transfer source account can use this operation to cancel a transfer. (Transfer destinations can use <a>RejectCertificateTransfer</a> instead.) After transfer, AWS IoT returns the certificate to the source account in the INACTIVE state. After the destination account has accepted the transfer, the transfer cannot be cancelled.</p> <p>After a certificate transfer is cancelled, the status of the certificate changes from PENDING_TRANSFER to INACTIVE.</p>
cancelCertificateTransfer :: forall eff. Iot.Service -> IotTypes.CancelCertificateTransferRequest -> Aff (exception :: EXCEPTION | eff) Unit
cancelCertificateTransfer (Iot.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "cancelCertificateTransfer"


-- | <p>Cancels a job.</p>
cancelJob :: forall eff. Iot.Service -> IotTypes.CancelJobRequest -> Aff (exception :: EXCEPTION | eff) IotTypes.CancelJobResponse
cancelJob (Iot.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "cancelJob"


-- | <p>Clears the default authorizer.</p>
clearDefaultAuthorizer :: forall eff. Iot.Service -> IotTypes.ClearDefaultAuthorizerRequest -> Aff (exception :: EXCEPTION | eff) IotTypes.ClearDefaultAuthorizerResponse
clearDefaultAuthorizer (Iot.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "clearDefaultAuthorizer"


-- | <p>Creates an authorizer.</p>
createAuthorizer :: forall eff. Iot.Service -> IotTypes.CreateAuthorizerRequest -> Aff (exception :: EXCEPTION | eff) IotTypes.CreateAuthorizerResponse
createAuthorizer (Iot.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "createAuthorizer"


-- | <p>Creates an X.509 certificate using the specified certificate signing request.</p> <p> <b>Note:</b> The CSR must include a public key that is either an RSA key with a length of at least 2048 bits or an ECC key from NIST P-256 or NIST P-384 curves. </p> <p> <b>Note:</b> Reusing the same certificate signing request (CSR) results in a distinct certificate.</p> <p>You can create multiple certificates in a batch by creating a directory, copying multiple .csr files into that directory, and then specifying that directory on the command line. The following commands show how to create a batch of certificates given a batch of CSRs.</p> <p>Assuming a set of CSRs are located inside of the directory my-csr-directory:</p> <p>On Linux and OS X, the command is:</p> <p>$ ls my-csr-directory/ | xargs -I {} aws iot create-certificate-from-csr --certificate-signing-request file://my-csr-directory/{}</p> <p>This command lists all of the CSRs in my-csr-directory and pipes each CSR file name to the aws iot create-certificate-from-csr AWS CLI command to create a certificate for the corresponding CSR.</p> <p>The aws iot create-certificate-from-csr part of the command can also be run in parallel to speed up the certificate creation process:</p> <p>$ ls my-csr-directory/ | xargs -P 10 -I {} aws iot create-certificate-from-csr --certificate-signing-request file://my-csr-directory/{}</p> <p>On Windows PowerShell, the command to create certificates for all CSRs in my-csr-directory is:</p> <p>&gt; ls -Name my-csr-directory | %{aws iot create-certificate-from-csr --certificate-signing-request file://my-csr-directory/$_}</p> <p>On a Windows command prompt, the command to create certificates for all CSRs in my-csr-directory is:</p> <p>&gt; forfiles /p my-csr-directory /c "cmd /c aws iot create-certificate-from-csr --certificate-signing-request file://@path"</p>
createCertificateFromCsr :: forall eff. Iot.Service -> IotTypes.CreateCertificateFromCsrRequest -> Aff (exception :: EXCEPTION | eff) IotTypes.CreateCertificateFromCsrResponse
createCertificateFromCsr (Iot.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "createCertificateFromCsr"


-- | <p>Creates a job.</p>
createJob :: forall eff. Iot.Service -> IotTypes.CreateJobRequest -> Aff (exception :: EXCEPTION | eff) IotTypes.CreateJobResponse
createJob (Iot.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "createJob"


-- | <p>Creates a 2048-bit RSA key pair and issues an X.509 certificate using the issued public key.</p> <p> <b>Note</b> This is the only time AWS IoT issues the private key for this certificate, so it is important to keep it in a secure location.</p>
createKeysAndCertificate :: forall eff. Iot.Service -> IotTypes.CreateKeysAndCertificateRequest -> Aff (exception :: EXCEPTION | eff) IotTypes.CreateKeysAndCertificateResponse
createKeysAndCertificate (Iot.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "createKeysAndCertificate"


-- | <p>Creates an AWS IoT OTAUpdate on a target group of things or groups.</p>
createOTAUpdate :: forall eff. Iot.Service -> IotTypes.CreateOTAUpdateRequest -> Aff (exception :: EXCEPTION | eff) IotTypes.CreateOTAUpdateResponse
createOTAUpdate (Iot.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "createOTAUpdate"


-- | <p>Creates an AWS IoT policy.</p> <p>The created policy is the default version for the policy. This operation creates a policy version with a version identifier of <b>1</b> and sets <b>1</b> as the policy's default version.</p>
createPolicy :: forall eff. Iot.Service -> IotTypes.CreatePolicyRequest -> Aff (exception :: EXCEPTION | eff) IotTypes.CreatePolicyResponse
createPolicy (Iot.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "createPolicy"


-- | <p>Creates a new version of the specified AWS IoT policy. To update a policy, create a new policy version. A managed policy can have up to five versions. If the policy has five versions, you must use <a>DeletePolicyVersion</a> to delete an existing version before you create a new one.</p> <p>Optionally, you can set the new version as the policy's default version. The default version is the operative version (that is, the version that is in effect for the certificates to which the policy is attached).</p>
createPolicyVersion :: forall eff. Iot.Service -> IotTypes.CreatePolicyVersionRequest -> Aff (exception :: EXCEPTION | eff) IotTypes.CreatePolicyVersionResponse
createPolicyVersion (Iot.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "createPolicyVersion"


-- | <p>Creates a role alias.</p>
createRoleAlias :: forall eff. Iot.Service -> IotTypes.CreateRoleAliasRequest -> Aff (exception :: EXCEPTION | eff) IotTypes.CreateRoleAliasResponse
createRoleAlias (Iot.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "createRoleAlias"


-- | <p>Creates a stream for delivering one or more large files in chunks over MQTT. A stream transports data bytes in chunks or blocks packaged as MQTT messages from a source like S3. You can have one or more files associated with a stream. The total size of a file associated with the stream cannot exceed more than 2 MB. The stream will be created with version 0. If a stream is created with the same streamID as a stream that existed and was deleted within last 90 days, we will resurrect that old stream by incrementing the version by 1.</p>
createStream :: forall eff. Iot.Service -> IotTypes.CreateStreamRequest -> Aff (exception :: EXCEPTION | eff) IotTypes.CreateStreamResponse
createStream (Iot.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "createStream"


-- | <p>Creates a thing record in the thing registry.</p>
createThing :: forall eff. Iot.Service -> IotTypes.CreateThingRequest -> Aff (exception :: EXCEPTION | eff) IotTypes.CreateThingResponse
createThing (Iot.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "createThing"


-- | <p>Create a thing group.</p>
createThingGroup :: forall eff. Iot.Service -> IotTypes.CreateThingGroupRequest -> Aff (exception :: EXCEPTION | eff) IotTypes.CreateThingGroupResponse
createThingGroup (Iot.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "createThingGroup"


-- | <p>Creates a new thing type.</p>
createThingType :: forall eff. Iot.Service -> IotTypes.CreateThingTypeRequest -> Aff (exception :: EXCEPTION | eff) IotTypes.CreateThingTypeResponse
createThingType (Iot.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "createThingType"


-- | <p>Creates a rule. Creating rules is an administrator-level action. Any user who has permission to create rules will be able to access data processed by the rule.</p>
createTopicRule :: forall eff. Iot.Service -> IotTypes.CreateTopicRuleRequest -> Aff (exception :: EXCEPTION | eff) Unit
createTopicRule (Iot.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "createTopicRule"


-- | <p>Deletes an authorizer.</p>
deleteAuthorizer :: forall eff. Iot.Service -> IotTypes.DeleteAuthorizerRequest -> Aff (exception :: EXCEPTION | eff) IotTypes.DeleteAuthorizerResponse
deleteAuthorizer (Iot.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "deleteAuthorizer"


-- | <p>Deletes a registered CA certificate.</p>
deleteCACertificate :: forall eff. Iot.Service -> IotTypes.DeleteCACertificateRequest -> Aff (exception :: EXCEPTION | eff) IotTypes.DeleteCACertificateResponse
deleteCACertificate (Iot.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "deleteCACertificate"


-- | <p>Deletes the specified certificate.</p> <p>A certificate cannot be deleted if it has a policy attached to it or if its status is set to ACTIVE. To delete a certificate, first use the <a>DetachPrincipalPolicy</a> API to detach all policies. Next, use the <a>UpdateCertificate</a> API to set the certificate to the INACTIVE status.</p>
deleteCertificate :: forall eff. Iot.Service -> IotTypes.DeleteCertificateRequest -> Aff (exception :: EXCEPTION | eff) Unit
deleteCertificate (Iot.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "deleteCertificate"


-- | <p>Delete an OTA update.</p>
deleteOTAUpdate :: forall eff. Iot.Service -> IotTypes.DeleteOTAUpdateRequest -> Aff (exception :: EXCEPTION | eff) IotTypes.DeleteOTAUpdateResponse
deleteOTAUpdate (Iot.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "deleteOTAUpdate"


-- | <p>Deletes the specified policy.</p> <p>A policy cannot be deleted if it has non-default versions or it is attached to any certificate.</p> <p>To delete a policy, use the DeletePolicyVersion API to delete all non-default versions of the policy; use the DetachPrincipalPolicy API to detach the policy from any certificate; and then use the DeletePolicy API to delete the policy.</p> <p>When a policy is deleted using DeletePolicy, its default version is deleted with it.</p>
deletePolicy :: forall eff. Iot.Service -> IotTypes.DeletePolicyRequest -> Aff (exception :: EXCEPTION | eff) Unit
deletePolicy (Iot.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "deletePolicy"


-- | <p>Deletes the specified version of the specified policy. You cannot delete the default version of a policy using this API. To delete the default version of a policy, use <a>DeletePolicy</a>. To find out which version of a policy is marked as the default version, use ListPolicyVersions.</p>
deletePolicyVersion :: forall eff. Iot.Service -> IotTypes.DeletePolicyVersionRequest -> Aff (exception :: EXCEPTION | eff) Unit
deletePolicyVersion (Iot.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "deletePolicyVersion"


-- | <p>Deletes a CA certificate registration code.</p>
deleteRegistrationCode :: forall eff. Iot.Service -> IotTypes.DeleteRegistrationCodeRequest -> Aff (exception :: EXCEPTION | eff) IotTypes.DeleteRegistrationCodeResponse
deleteRegistrationCode (Iot.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "deleteRegistrationCode"


-- | <p>Deletes a role alias</p>
deleteRoleAlias :: forall eff. Iot.Service -> IotTypes.DeleteRoleAliasRequest -> Aff (exception :: EXCEPTION | eff) IotTypes.DeleteRoleAliasResponse
deleteRoleAlias (Iot.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "deleteRoleAlias"


-- | <p>Deletes a stream.</p>
deleteStream :: forall eff. Iot.Service -> IotTypes.DeleteStreamRequest -> Aff (exception :: EXCEPTION | eff) IotTypes.DeleteStreamResponse
deleteStream (Iot.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "deleteStream"


-- | <p>Deletes the specified thing.</p>
deleteThing :: forall eff. Iot.Service -> IotTypes.DeleteThingRequest -> Aff (exception :: EXCEPTION | eff) IotTypes.DeleteThingResponse
deleteThing (Iot.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "deleteThing"


-- | <p>Deletes a thing group.</p>
deleteThingGroup :: forall eff. Iot.Service -> IotTypes.DeleteThingGroupRequest -> Aff (exception :: EXCEPTION | eff) IotTypes.DeleteThingGroupResponse
deleteThingGroup (Iot.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "deleteThingGroup"


-- | <p>Deletes the specified thing type . You cannot delete a thing type if it has things associated with it. To delete a thing type, first mark it as deprecated by calling <a>DeprecateThingType</a>, then remove any associated things by calling <a>UpdateThing</a> to change the thing type on any associated thing, and finally use <a>DeleteThingType</a> to delete the thing type.</p>
deleteThingType :: forall eff. Iot.Service -> IotTypes.DeleteThingTypeRequest -> Aff (exception :: EXCEPTION | eff) IotTypes.DeleteThingTypeResponse
deleteThingType (Iot.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "deleteThingType"


-- | <p>Deletes the rule.</p>
deleteTopicRule :: forall eff. Iot.Service -> IotTypes.DeleteTopicRuleRequest -> Aff (exception :: EXCEPTION | eff) Unit
deleteTopicRule (Iot.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "deleteTopicRule"


-- | <p>Deletes a logging level.</p>
deleteV2LoggingLevel :: forall eff. Iot.Service -> IotTypes.DeleteV2LoggingLevelRequest -> Aff (exception :: EXCEPTION | eff) Unit
deleteV2LoggingLevel (Iot.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "deleteV2LoggingLevel"


-- | <p>Deprecates a thing type. You can not associate new things with deprecated thing type.</p>
deprecateThingType :: forall eff. Iot.Service -> IotTypes.DeprecateThingTypeRequest -> Aff (exception :: EXCEPTION | eff) IotTypes.DeprecateThingTypeResponse
deprecateThingType (Iot.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "deprecateThingType"


-- | <p>Describes an authorizer.</p>
describeAuthorizer :: forall eff. Iot.Service -> IotTypes.DescribeAuthorizerRequest -> Aff (exception :: EXCEPTION | eff) IotTypes.DescribeAuthorizerResponse
describeAuthorizer (Iot.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "describeAuthorizer"


-- | <p>Describes a registered CA certificate.</p>
describeCACertificate :: forall eff. Iot.Service -> IotTypes.DescribeCACertificateRequest -> Aff (exception :: EXCEPTION | eff) IotTypes.DescribeCACertificateResponse
describeCACertificate (Iot.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "describeCACertificate"


-- | <p>Gets information about the specified certificate.</p>
describeCertificate :: forall eff. Iot.Service -> IotTypes.DescribeCertificateRequest -> Aff (exception :: EXCEPTION | eff) IotTypes.DescribeCertificateResponse
describeCertificate (Iot.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "describeCertificate"


-- | <p>Describes the default authorizer.</p>
describeDefaultAuthorizer :: forall eff. Iot.Service -> IotTypes.DescribeDefaultAuthorizerRequest -> Aff (exception :: EXCEPTION | eff) IotTypes.DescribeDefaultAuthorizerResponse
describeDefaultAuthorizer (Iot.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "describeDefaultAuthorizer"


-- | <p>Returns a unique endpoint specific to the AWS account making the call.</p>
describeEndpoint :: forall eff. Iot.Service -> IotTypes.DescribeEndpointRequest -> Aff (exception :: EXCEPTION | eff) IotTypes.DescribeEndpointResponse
describeEndpoint (Iot.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "describeEndpoint"


-- | <p>Describes event configurations.</p>
describeEventConfigurations :: forall eff. Iot.Service -> IotTypes.DescribeEventConfigurationsRequest -> Aff (exception :: EXCEPTION | eff) IotTypes.DescribeEventConfigurationsResponse
describeEventConfigurations (Iot.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "describeEventConfigurations"


-- | <p>Describes a search index.</p>
describeIndex :: forall eff. Iot.Service -> IotTypes.DescribeIndexRequest -> Aff (exception :: EXCEPTION | eff) IotTypes.DescribeIndexResponse
describeIndex (Iot.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "describeIndex"


-- | <p>Describes a job.</p>
describeJob :: forall eff. Iot.Service -> IotTypes.DescribeJobRequest -> Aff (exception :: EXCEPTION | eff) IotTypes.DescribeJobResponse
describeJob (Iot.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "describeJob"


-- | <p>Describes a job execution.</p>
describeJobExecution :: forall eff. Iot.Service -> IotTypes.DescribeJobExecutionRequest -> Aff (exception :: EXCEPTION | eff) IotTypes.DescribeJobExecutionResponse
describeJobExecution (Iot.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "describeJobExecution"


-- | <p>Describes a role alias.</p>
describeRoleAlias :: forall eff. Iot.Service -> IotTypes.DescribeRoleAliasRequest -> Aff (exception :: EXCEPTION | eff) IotTypes.DescribeRoleAliasResponse
describeRoleAlias (Iot.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "describeRoleAlias"


-- | <p>Gets information about a stream.</p>
describeStream :: forall eff. Iot.Service -> IotTypes.DescribeStreamRequest -> Aff (exception :: EXCEPTION | eff) IotTypes.DescribeStreamResponse
describeStream (Iot.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "describeStream"


-- | <p>Gets information about the specified thing.</p>
describeThing :: forall eff. Iot.Service -> IotTypes.DescribeThingRequest -> Aff (exception :: EXCEPTION | eff) IotTypes.DescribeThingResponse
describeThing (Iot.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "describeThing"


-- | <p>Describe a thing group.</p>
describeThingGroup :: forall eff. Iot.Service -> IotTypes.DescribeThingGroupRequest -> Aff (exception :: EXCEPTION | eff) IotTypes.DescribeThingGroupResponse
describeThingGroup (Iot.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "describeThingGroup"


-- | <p>Describes a bulk thing provisioning task.</p>
describeThingRegistrationTask :: forall eff. Iot.Service -> IotTypes.DescribeThingRegistrationTaskRequest -> Aff (exception :: EXCEPTION | eff) IotTypes.DescribeThingRegistrationTaskResponse
describeThingRegistrationTask (Iot.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "describeThingRegistrationTask"


-- | <p>Gets information about the specified thing type.</p>
describeThingType :: forall eff. Iot.Service -> IotTypes.DescribeThingTypeRequest -> Aff (exception :: EXCEPTION | eff) IotTypes.DescribeThingTypeResponse
describeThingType (Iot.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "describeThingType"


-- | <p>Detaches a policy from the specified target.</p>
detachPolicy :: forall eff. Iot.Service -> IotTypes.DetachPolicyRequest -> Aff (exception :: EXCEPTION | eff) Unit
detachPolicy (Iot.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "detachPolicy"


-- | <p>Removes the specified policy from the specified certificate.</p> <p> <b>Note:</b> This API is deprecated. Please use <a>DetachPolicy</a> instead.</p>
detachPrincipalPolicy :: forall eff. Iot.Service -> IotTypes.DetachPrincipalPolicyRequest -> Aff (exception :: EXCEPTION | eff) Unit
detachPrincipalPolicy (Iot.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "detachPrincipalPolicy"


-- | <p>Detaches the specified principal from the specified thing.</p>
detachThingPrincipal :: forall eff. Iot.Service -> IotTypes.DetachThingPrincipalRequest -> Aff (exception :: EXCEPTION | eff) IotTypes.DetachThingPrincipalResponse
detachThingPrincipal (Iot.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "detachThingPrincipal"


-- | <p>Disables the rule.</p>
disableTopicRule :: forall eff. Iot.Service -> IotTypes.DisableTopicRuleRequest -> Aff (exception :: EXCEPTION | eff) Unit
disableTopicRule (Iot.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "disableTopicRule"


-- | <p>Enables the rule.</p>
enableTopicRule :: forall eff. Iot.Service -> IotTypes.EnableTopicRuleRequest -> Aff (exception :: EXCEPTION | eff) Unit
enableTopicRule (Iot.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "enableTopicRule"


-- | <p>Gets effective policies.</p>
getEffectivePolicies :: forall eff. Iot.Service -> IotTypes.GetEffectivePoliciesRequest -> Aff (exception :: EXCEPTION | eff) IotTypes.GetEffectivePoliciesResponse
getEffectivePolicies (Iot.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "getEffectivePolicies"


-- | <p>Gets the search configuration.</p>
getIndexingConfiguration :: forall eff. Iot.Service -> IotTypes.GetIndexingConfigurationRequest -> Aff (exception :: EXCEPTION | eff) IotTypes.GetIndexingConfigurationResponse
getIndexingConfiguration (Iot.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "getIndexingConfiguration"


-- | <p>Gets a job document.</p>
getJobDocument :: forall eff. Iot.Service -> IotTypes.GetJobDocumentRequest -> Aff (exception :: EXCEPTION | eff) IotTypes.GetJobDocumentResponse
getJobDocument (Iot.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "getJobDocument"


-- | <p>Gets the logging options.</p>
getLoggingOptions :: forall eff. Iot.Service -> IotTypes.GetLoggingOptionsRequest -> Aff (exception :: EXCEPTION | eff) IotTypes.GetLoggingOptionsResponse
getLoggingOptions (Iot.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "getLoggingOptions"


-- | <p>Gets an OTA update.</p>
getOTAUpdate :: forall eff. Iot.Service -> IotTypes.GetOTAUpdateRequest -> Aff (exception :: EXCEPTION | eff) IotTypes.GetOTAUpdateResponse
getOTAUpdate (Iot.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "getOTAUpdate"


-- | <p>Gets information about the specified policy with the policy document of the default version.</p>
getPolicy :: forall eff. Iot.Service -> IotTypes.GetPolicyRequest -> Aff (exception :: EXCEPTION | eff) IotTypes.GetPolicyResponse
getPolicy (Iot.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "getPolicy"


-- | <p>Gets information about the specified policy version.</p>
getPolicyVersion :: forall eff. Iot.Service -> IotTypes.GetPolicyVersionRequest -> Aff (exception :: EXCEPTION | eff) IotTypes.GetPolicyVersionResponse
getPolicyVersion (Iot.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "getPolicyVersion"


-- | <p>Gets a registration code used to register a CA certificate with AWS IoT.</p>
getRegistrationCode :: forall eff. Iot.Service -> IotTypes.GetRegistrationCodeRequest -> Aff (exception :: EXCEPTION | eff) IotTypes.GetRegistrationCodeResponse
getRegistrationCode (Iot.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "getRegistrationCode"


-- | <p>Gets information about the rule.</p>
getTopicRule :: forall eff. Iot.Service -> IotTypes.GetTopicRuleRequest -> Aff (exception :: EXCEPTION | eff) IotTypes.GetTopicRuleResponse
getTopicRule (Iot.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "getTopicRule"


-- | <p>Gets the fine grained logging options.</p>
getV2LoggingOptions :: forall eff. Iot.Service -> IotTypes.GetV2LoggingOptionsRequest -> Aff (exception :: EXCEPTION | eff) IotTypes.GetV2LoggingOptionsResponse
getV2LoggingOptions (Iot.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "getV2LoggingOptions"


-- | <p>Lists the policies attached to the specified thing group.</p>
listAttachedPolicies :: forall eff. Iot.Service -> IotTypes.ListAttachedPoliciesRequest -> Aff (exception :: EXCEPTION | eff) IotTypes.ListAttachedPoliciesResponse
listAttachedPolicies (Iot.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "listAttachedPolicies"


-- | <p>Lists the authorizers registered in your account.</p>
listAuthorizers :: forall eff. Iot.Service -> IotTypes.ListAuthorizersRequest -> Aff (exception :: EXCEPTION | eff) IotTypes.ListAuthorizersResponse
listAuthorizers (Iot.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "listAuthorizers"


-- | <p>Lists the CA certificates registered for your AWS account.</p> <p>The results are paginated with a default page size of 25. You can use the returned marker to retrieve additional results.</p>
listCACertificates :: forall eff. Iot.Service -> IotTypes.ListCACertificatesRequest -> Aff (exception :: EXCEPTION | eff) IotTypes.ListCACertificatesResponse
listCACertificates (Iot.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "listCACertificates"


-- | <p>Lists the certificates registered in your AWS account.</p> <p>The results are paginated with a default page size of 25. You can use the returned marker to retrieve additional results.</p>
listCertificates :: forall eff. Iot.Service -> IotTypes.ListCertificatesRequest -> Aff (exception :: EXCEPTION | eff) IotTypes.ListCertificatesResponse
listCertificates (Iot.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "listCertificates"


-- | <p>List the device certificates signed by the specified CA certificate.</p>
listCertificatesByCA :: forall eff. Iot.Service -> IotTypes.ListCertificatesByCARequest -> Aff (exception :: EXCEPTION | eff) IotTypes.ListCertificatesByCAResponse
listCertificatesByCA (Iot.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "listCertificatesByCA"


-- | <p>Lists the search indices.</p>
listIndices :: forall eff. Iot.Service -> IotTypes.ListIndicesRequest -> Aff (exception :: EXCEPTION | eff) IotTypes.ListIndicesResponse
listIndices (Iot.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "listIndices"


-- | <p>Lists the job executions for a job.</p>
listJobExecutionsForJob :: forall eff. Iot.Service -> IotTypes.ListJobExecutionsForJobRequest -> Aff (exception :: EXCEPTION | eff) IotTypes.ListJobExecutionsForJobResponse
listJobExecutionsForJob (Iot.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "listJobExecutionsForJob"


-- | <p>Lists the job executions for the specified thing.</p>
listJobExecutionsForThing :: forall eff. Iot.Service -> IotTypes.ListJobExecutionsForThingRequest -> Aff (exception :: EXCEPTION | eff) IotTypes.ListJobExecutionsForThingResponse
listJobExecutionsForThing (Iot.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "listJobExecutionsForThing"


-- | <p>Lists jobs.</p>
listJobs :: forall eff. Iot.Service -> IotTypes.ListJobsRequest -> Aff (exception :: EXCEPTION | eff) IotTypes.ListJobsResponse
listJobs (Iot.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "listJobs"


-- | <p>Lists OTA updates.</p>
listOTAUpdates :: forall eff. Iot.Service -> IotTypes.ListOTAUpdatesRequest -> Aff (exception :: EXCEPTION | eff) IotTypes.ListOTAUpdatesResponse
listOTAUpdates (Iot.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "listOTAUpdates"


-- | <p>Lists certificates that are being transferred but not yet accepted.</p>
listOutgoingCertificates :: forall eff. Iot.Service -> IotTypes.ListOutgoingCertificatesRequest -> Aff (exception :: EXCEPTION | eff) IotTypes.ListOutgoingCertificatesResponse
listOutgoingCertificates (Iot.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "listOutgoingCertificates"


-- | <p>Lists your policies.</p>
listPolicies :: forall eff. Iot.Service -> IotTypes.ListPoliciesRequest -> Aff (exception :: EXCEPTION | eff) IotTypes.ListPoliciesResponse
listPolicies (Iot.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "listPolicies"


-- | <p>Lists the principals associated with the specified policy.</p> <p> <b>Note:</b> This API is deprecated. Please use <a>ListTargetsForPolicy</a> instead.</p>
listPolicyPrincipals :: forall eff. Iot.Service -> IotTypes.ListPolicyPrincipalsRequest -> Aff (exception :: EXCEPTION | eff) IotTypes.ListPolicyPrincipalsResponse
listPolicyPrincipals (Iot.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "listPolicyPrincipals"


-- | <p>Lists the versions of the specified policy and identifies the default version.</p>
listPolicyVersions :: forall eff. Iot.Service -> IotTypes.ListPolicyVersionsRequest -> Aff (exception :: EXCEPTION | eff) IotTypes.ListPolicyVersionsResponse
listPolicyVersions (Iot.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "listPolicyVersions"


-- | <p>Lists the policies attached to the specified principal. If you use an Cognito identity, the ID must be in <a href="http://docs.aws.amazon.com/cognitoidentity/latest/APIReference/API_GetCredentialsForIdentity.html#API_GetCredentialsForIdentity_RequestSyntax">AmazonCognito Identity format</a>.</p> <p> <b>Note:</b> This API is deprecated. Please use <a>ListAttachedPolicies</a> instead.</p>
listPrincipalPolicies :: forall eff. Iot.Service -> IotTypes.ListPrincipalPoliciesRequest -> Aff (exception :: EXCEPTION | eff) IotTypes.ListPrincipalPoliciesResponse
listPrincipalPolicies (Iot.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "listPrincipalPolicies"


-- | <p>Lists the things associated with the specified principal.</p>
listPrincipalThings :: forall eff. Iot.Service -> IotTypes.ListPrincipalThingsRequest -> Aff (exception :: EXCEPTION | eff) IotTypes.ListPrincipalThingsResponse
listPrincipalThings (Iot.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "listPrincipalThings"


-- | <p>Lists the role aliases registered in your account.</p>
listRoleAliases :: forall eff. Iot.Service -> IotTypes.ListRoleAliasesRequest -> Aff (exception :: EXCEPTION | eff) IotTypes.ListRoleAliasesResponse
listRoleAliases (Iot.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "listRoleAliases"


-- | <p>Lists all of the streams in your AWS account.</p>
listStreams :: forall eff. Iot.Service -> IotTypes.ListStreamsRequest -> Aff (exception :: EXCEPTION | eff) IotTypes.ListStreamsResponse
listStreams (Iot.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "listStreams"


-- | <p>List targets for the specified policy.</p>
listTargetsForPolicy :: forall eff. Iot.Service -> IotTypes.ListTargetsForPolicyRequest -> Aff (exception :: EXCEPTION | eff) IotTypes.ListTargetsForPolicyResponse
listTargetsForPolicy (Iot.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "listTargetsForPolicy"


-- | <p>List the thing groups in your account.</p>
listThingGroups :: forall eff. Iot.Service -> IotTypes.ListThingGroupsRequest -> Aff (exception :: EXCEPTION | eff) IotTypes.ListThingGroupsResponse
listThingGroups (Iot.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "listThingGroups"


-- | <p>List the thing groups to which the specified thing belongs.</p>
listThingGroupsForThing :: forall eff. Iot.Service -> IotTypes.ListThingGroupsForThingRequest -> Aff (exception :: EXCEPTION | eff) IotTypes.ListThingGroupsForThingResponse
listThingGroupsForThing (Iot.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "listThingGroupsForThing"


-- | <p>Lists the principals associated with the specified thing.</p>
listThingPrincipals :: forall eff. Iot.Service -> IotTypes.ListThingPrincipalsRequest -> Aff (exception :: EXCEPTION | eff) IotTypes.ListThingPrincipalsResponse
listThingPrincipals (Iot.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "listThingPrincipals"


-- | <p>Information about the thing registration tasks.</p>
listThingRegistrationTaskReports :: forall eff. Iot.Service -> IotTypes.ListThingRegistrationTaskReportsRequest -> Aff (exception :: EXCEPTION | eff) IotTypes.ListThingRegistrationTaskReportsResponse
listThingRegistrationTaskReports (Iot.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "listThingRegistrationTaskReports"


-- | <p>List bulk thing provisioning tasks.</p>
listThingRegistrationTasks :: forall eff. Iot.Service -> IotTypes.ListThingRegistrationTasksRequest -> Aff (exception :: EXCEPTION | eff) IotTypes.ListThingRegistrationTasksResponse
listThingRegistrationTasks (Iot.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "listThingRegistrationTasks"


-- | <p>Lists the existing thing types.</p>
listThingTypes :: forall eff. Iot.Service -> IotTypes.ListThingTypesRequest -> Aff (exception :: EXCEPTION | eff) IotTypes.ListThingTypesResponse
listThingTypes (Iot.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "listThingTypes"


-- | <p>Lists your things. Use the <b>attributeName</b> and <b>attributeValue</b> parameters to filter your things. For example, calling <code>ListThings</code> with attributeName=Color and attributeValue=Red retrieves all things in the registry that contain an attribute <b>Color</b> with the value <b>Red</b>. </p>
listThings :: forall eff. Iot.Service -> IotTypes.ListThingsRequest -> Aff (exception :: EXCEPTION | eff) IotTypes.ListThingsResponse
listThings (Iot.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "listThings"


-- | <p>Lists the things in the specified group.</p>
listThingsInThingGroup :: forall eff. Iot.Service -> IotTypes.ListThingsInThingGroupRequest -> Aff (exception :: EXCEPTION | eff) IotTypes.ListThingsInThingGroupResponse
listThingsInThingGroup (Iot.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "listThingsInThingGroup"


-- | <p>Lists the rules for the specific topic.</p>
listTopicRules :: forall eff. Iot.Service -> IotTypes.ListTopicRulesRequest -> Aff (exception :: EXCEPTION | eff) IotTypes.ListTopicRulesResponse
listTopicRules (Iot.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "listTopicRules"


-- | <p>Lists logging levels.</p>
listV2LoggingLevels :: forall eff. Iot.Service -> IotTypes.ListV2LoggingLevelsRequest -> Aff (exception :: EXCEPTION | eff) IotTypes.ListV2LoggingLevelsResponse
listV2LoggingLevels (Iot.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "listV2LoggingLevels"


-- | <p>Registers a CA certificate with AWS IoT. This CA certificate can then be used to sign device certificates, which can be then registered with AWS IoT. You can register up to 10 CA certificates per AWS account that have the same subject field. This enables you to have up to 10 certificate authorities sign your device certificates. If you have more than one CA certificate registered, make sure you pass the CA certificate when you register your device certificates with the RegisterCertificate API.</p>
registerCACertificate :: forall eff. Iot.Service -> IotTypes.RegisterCACertificateRequest -> Aff (exception :: EXCEPTION | eff) IotTypes.RegisterCACertificateResponse
registerCACertificate (Iot.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "registerCACertificate"


-- | <p>Registers a device certificate with AWS IoT. If you have more than one CA certificate that has the same subject field, you must specify the CA certificate that was used to sign the device certificate being registered.</p>
registerCertificate :: forall eff. Iot.Service -> IotTypes.RegisterCertificateRequest -> Aff (exception :: EXCEPTION | eff) IotTypes.RegisterCertificateResponse
registerCertificate (Iot.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "registerCertificate"


-- | <p>Provisions a thing.</p>
registerThing :: forall eff. Iot.Service -> IotTypes.RegisterThingRequest -> Aff (exception :: EXCEPTION | eff) IotTypes.RegisterThingResponse
registerThing (Iot.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "registerThing"


-- | <p>Rejects a pending certificate transfer. After AWS IoT rejects a certificate transfer, the certificate status changes from <b>PENDING_TRANSFER</b> to <b>INACTIVE</b>.</p> <p>To check for pending certificate transfers, call <a>ListCertificates</a> to enumerate your certificates.</p> <p>This operation can only be called by the transfer destination. After it is called, the certificate will be returned to the source's account in the INACTIVE state.</p>
rejectCertificateTransfer :: forall eff. Iot.Service -> IotTypes.RejectCertificateTransferRequest -> Aff (exception :: EXCEPTION | eff) Unit
rejectCertificateTransfer (Iot.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "rejectCertificateTransfer"


-- | <p>Remove the specified thing from the specified group.</p>
removeThingFromThingGroup :: forall eff. Iot.Service -> IotTypes.RemoveThingFromThingGroupRequest -> Aff (exception :: EXCEPTION | eff) IotTypes.RemoveThingFromThingGroupResponse
removeThingFromThingGroup (Iot.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "removeThingFromThingGroup"


-- | <p>Replaces the rule. You must specify all parameters for the new rule. Creating rules is an administrator-level action. Any user who has permission to create rules will be able to access data processed by the rule.</p>
replaceTopicRule :: forall eff. Iot.Service -> IotTypes.ReplaceTopicRuleRequest -> Aff (exception :: EXCEPTION | eff) Unit
replaceTopicRule (Iot.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "replaceTopicRule"


-- | <p>The query search index.</p>
searchIndex :: forall eff. Iot.Service -> IotTypes.SearchIndexRequest -> Aff (exception :: EXCEPTION | eff) IotTypes.SearchIndexResponse
searchIndex (Iot.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "searchIndex"


-- | <p>Sets the default authorizer. This will be used if a websocket connection is made without specifying an authorizer.</p>
setDefaultAuthorizer :: forall eff. Iot.Service -> IotTypes.SetDefaultAuthorizerRequest -> Aff (exception :: EXCEPTION | eff) IotTypes.SetDefaultAuthorizerResponse
setDefaultAuthorizer (Iot.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "setDefaultAuthorizer"


-- | <p>Sets the specified version of the specified policy as the policy's default (operative) version. This action affects all certificates to which the policy is attached. To list the principals the policy is attached to, use the ListPrincipalPolicy API.</p>
setDefaultPolicyVersion :: forall eff. Iot.Service -> IotTypes.SetDefaultPolicyVersionRequest -> Aff (exception :: EXCEPTION | eff) Unit
setDefaultPolicyVersion (Iot.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "setDefaultPolicyVersion"


-- | <p>Sets the logging options.</p>
setLoggingOptions :: forall eff. Iot.Service -> IotTypes.SetLoggingOptionsRequest -> Aff (exception :: EXCEPTION | eff) Unit
setLoggingOptions (Iot.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "setLoggingOptions"


-- | <p>Sets the logging level.</p>
setV2LoggingLevel :: forall eff. Iot.Service -> IotTypes.SetV2LoggingLevelRequest -> Aff (exception :: EXCEPTION | eff) Unit
setV2LoggingLevel (Iot.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "setV2LoggingLevel"


-- | <p>Sets the logging options for the V2 logging service.</p>
setV2LoggingOptions :: forall eff. Iot.Service -> IotTypes.SetV2LoggingOptionsRequest -> Aff (exception :: EXCEPTION | eff) Unit
setV2LoggingOptions (Iot.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "setV2LoggingOptions"


-- | <p>Creates a bulk thing provisioning task.</p>
startThingRegistrationTask :: forall eff. Iot.Service -> IotTypes.StartThingRegistrationTaskRequest -> Aff (exception :: EXCEPTION | eff) IotTypes.StartThingRegistrationTaskResponse
startThingRegistrationTask (Iot.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "startThingRegistrationTask"


-- | <p>Cancels a bulk thing provisioning task.</p>
stopThingRegistrationTask :: forall eff. Iot.Service -> IotTypes.StopThingRegistrationTaskRequest -> Aff (exception :: EXCEPTION | eff) IotTypes.StopThingRegistrationTaskResponse
stopThingRegistrationTask (Iot.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "stopThingRegistrationTask"


-- | <p>Test custom authorization.</p>
testAuthorization :: forall eff. Iot.Service -> IotTypes.TestAuthorizationRequest -> Aff (exception :: EXCEPTION | eff) IotTypes.TestAuthorizationResponse
testAuthorization (Iot.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "testAuthorization"


-- | <p>Invoke the specified custom authorizer for testing purposes.</p>
testInvokeAuthorizer :: forall eff. Iot.Service -> IotTypes.TestInvokeAuthorizerRequest -> Aff (exception :: EXCEPTION | eff) IotTypes.TestInvokeAuthorizerResponse
testInvokeAuthorizer (Iot.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "testInvokeAuthorizer"


-- | <p>Transfers the specified certificate to the specified AWS account.</p> <p>You can cancel the transfer until it is acknowledged by the recipient.</p> <p>No notification is sent to the transfer destination's account. It is up to the caller to notify the transfer target.</p> <p>The certificate being transferred must not be in the ACTIVE state. You can use the UpdateCertificate API to deactivate it.</p> <p>The certificate must not have any policies attached to it. You can use the DetachPrincipalPolicy API to detach them.</p>
transferCertificate :: forall eff. Iot.Service -> IotTypes.TransferCertificateRequest -> Aff (exception :: EXCEPTION | eff) IotTypes.TransferCertificateResponse
transferCertificate (Iot.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "transferCertificate"


-- | <p>Updates an authorizer.</p>
updateAuthorizer :: forall eff. Iot.Service -> IotTypes.UpdateAuthorizerRequest -> Aff (exception :: EXCEPTION | eff) IotTypes.UpdateAuthorizerResponse
updateAuthorizer (Iot.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "updateAuthorizer"


-- | <p>Updates a registered CA certificate.</p>
updateCACertificate :: forall eff. Iot.Service -> IotTypes.UpdateCACertificateRequest -> Aff (exception :: EXCEPTION | eff) Unit
updateCACertificate (Iot.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "updateCACertificate"


-- | <p>Updates the status of the specified certificate. This operation is idempotent.</p> <p>Moving a certificate from the ACTIVE state (including REVOKED) will not disconnect currently connected devices, but these devices will be unable to reconnect.</p> <p>The ACTIVE state is required to authenticate devices connecting to AWS IoT using a certificate.</p>
updateCertificate :: forall eff. Iot.Service -> IotTypes.UpdateCertificateRequest -> Aff (exception :: EXCEPTION | eff) Unit
updateCertificate (Iot.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "updateCertificate"


-- | <p>Updates the event configurations.</p>
updateEventConfigurations :: forall eff. Iot.Service -> IotTypes.UpdateEventConfigurationsRequest -> Aff (exception :: EXCEPTION | eff) IotTypes.UpdateEventConfigurationsResponse
updateEventConfigurations (Iot.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "updateEventConfigurations"


-- | <p>Updates the search configuration.</p>
updateIndexingConfiguration :: forall eff. Iot.Service -> IotTypes.UpdateIndexingConfigurationRequest -> Aff (exception :: EXCEPTION | eff) IotTypes.UpdateIndexingConfigurationResponse
updateIndexingConfiguration (Iot.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "updateIndexingConfiguration"


-- | <p>Updates a role alias.</p>
updateRoleAlias :: forall eff. Iot.Service -> IotTypes.UpdateRoleAliasRequest -> Aff (exception :: EXCEPTION | eff) IotTypes.UpdateRoleAliasResponse
updateRoleAlias (Iot.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "updateRoleAlias"


-- | <p>Updates an existing stream. The stream version will be incremented by one.</p>
updateStream :: forall eff. Iot.Service -> IotTypes.UpdateStreamRequest -> Aff (exception :: EXCEPTION | eff) IotTypes.UpdateStreamResponse
updateStream (Iot.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "updateStream"


-- | <p>Updates the data for a thing.</p>
updateThing :: forall eff. Iot.Service -> IotTypes.UpdateThingRequest -> Aff (exception :: EXCEPTION | eff) IotTypes.UpdateThingResponse
updateThing (Iot.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "updateThing"


-- | <p>Update a thing group.</p>
updateThingGroup :: forall eff. Iot.Service -> IotTypes.UpdateThingGroupRequest -> Aff (exception :: EXCEPTION | eff) IotTypes.UpdateThingGroupResponse
updateThingGroup (Iot.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "updateThingGroup"


-- | <p>Updates the groups to which the thing belongs.</p>
updateThingGroupsForThing :: forall eff. Iot.Service -> IotTypes.UpdateThingGroupsForThingRequest -> Aff (exception :: EXCEPTION | eff) IotTypes.UpdateThingGroupsForThingResponse
updateThingGroupsForThing (Iot.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "updateThingGroupsForThing"
