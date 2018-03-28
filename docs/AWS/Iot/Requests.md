## Module AWS.Iot.Requests

#### `acceptCertificateTransfer`

``` purescript
acceptCertificateTransfer :: forall eff. Service -> AcceptCertificateTransferRequest -> Aff (exception :: EXCEPTION | eff) NoOutput
```

<p>Accepts a pending certificate transfer. The default state of the certificate is INACTIVE.</p> <p>To check for pending certificate transfers, call <a>ListCertificates</a> to enumerate your certificates.</p>

#### `addThingToThingGroup`

``` purescript
addThingToThingGroup :: forall eff. Service -> AddThingToThingGroupRequest -> Aff (exception :: EXCEPTION | eff) AddThingToThingGroupResponse
```

<p>Adds a thing to a thing group.</p>

#### `associateTargetsWithJob`

``` purescript
associateTargetsWithJob :: forall eff. Service -> AssociateTargetsWithJobRequest -> Aff (exception :: EXCEPTION | eff) AssociateTargetsWithJobResponse
```

<p>Associates a group with a continuous job. The following criteria must be met: </p> <ul> <li> <p>The job must have been created with the <code>targetSelection</code> field set to "CONTINUOUS".</p> </li> <li> <p>The job status must currently be "IN_PROGRESS".</p> </li> <li> <p>The total number of targets associated with a job must not exceed 100.</p> </li> </ul>

#### `attachPolicy`

``` purescript
attachPolicy :: forall eff. Service -> AttachPolicyRequest -> Aff (exception :: EXCEPTION | eff) NoOutput
```

<p>Attaches a policy to the specified target.</p>

#### `attachPrincipalPolicy`

``` purescript
attachPrincipalPolicy :: forall eff. Service -> AttachPrincipalPolicyRequest -> Aff (exception :: EXCEPTION | eff) NoOutput
```

<p>Attaches the specified policy to the specified principal (certificate or other credential).</p> <p> <b>Note:</b> This API is deprecated. Please use <a>AttachPolicy</a> instead.</p>

#### `attachThingPrincipal`

``` purescript
attachThingPrincipal :: forall eff. Service -> AttachThingPrincipalRequest -> Aff (exception :: EXCEPTION | eff) AttachThingPrincipalResponse
```

<p>Attaches the specified principal to the specified thing.</p>

#### `cancelCertificateTransfer`

``` purescript
cancelCertificateTransfer :: forall eff. Service -> CancelCertificateTransferRequest -> Aff (exception :: EXCEPTION | eff) NoOutput
```

<p>Cancels a pending transfer for the specified certificate.</p> <p> <b>Note</b> Only the transfer source account can use this operation to cancel a transfer. (Transfer destinations can use <a>RejectCertificateTransfer</a> instead.) After transfer, AWS IoT returns the certificate to the source account in the INACTIVE state. After the destination account has accepted the transfer, the transfer cannot be cancelled.</p> <p>After a certificate transfer is cancelled, the status of the certificate changes from PENDING_TRANSFER to INACTIVE.</p>

#### `cancelJob`

``` purescript
cancelJob :: forall eff. Service -> CancelJobRequest -> Aff (exception :: EXCEPTION | eff) CancelJobResponse
```

<p>Cancels a job.</p>

#### `clearDefaultAuthorizer`

``` purescript
clearDefaultAuthorizer :: forall eff. Service -> ClearDefaultAuthorizerRequest -> Aff (exception :: EXCEPTION | eff) ClearDefaultAuthorizerResponse
```

<p>Clears the default authorizer.</p>

#### `createAuthorizer`

``` purescript
createAuthorizer :: forall eff. Service -> CreateAuthorizerRequest -> Aff (exception :: EXCEPTION | eff) CreateAuthorizerResponse
```

<p>Creates an authorizer.</p>

#### `createCertificateFromCsr`

``` purescript
createCertificateFromCsr :: forall eff. Service -> CreateCertificateFromCsrRequest -> Aff (exception :: EXCEPTION | eff) CreateCertificateFromCsrResponse
```

<p>Creates an X.509 certificate using the specified certificate signing request.</p> <p> <b>Note:</b> The CSR must include a public key that is either an RSA key with a length of at least 2048 bits or an ECC key from NIST P-256 or NIST P-384 curves. </p> <p> <b>Note:</b> Reusing the same certificate signing request (CSR) results in a distinct certificate.</p> <p>You can create multiple certificates in a batch by creating a directory, copying multiple .csr files into that directory, and then specifying that directory on the command line. The following commands show how to create a batch of certificates given a batch of CSRs.</p> <p>Assuming a set of CSRs are located inside of the directory my-csr-directory:</p> <p>On Linux and OS X, the command is:</p> <p>$ ls my-csr-directory/ | xargs -I {} aws iot create-certificate-from-csr --certificate-signing-request file://my-csr-directory/{}</p> <p>This command lists all of the CSRs in my-csr-directory and pipes each CSR file name to the aws iot create-certificate-from-csr AWS CLI command to create a certificate for the corresponding CSR.</p> <p>The aws iot create-certificate-from-csr part of the command can also be run in parallel to speed up the certificate creation process:</p> <p>$ ls my-csr-directory/ | xargs -P 10 -I {} aws iot create-certificate-from-csr --certificate-signing-request file://my-csr-directory/{}</p> <p>On Windows PowerShell, the command to create certificates for all CSRs in my-csr-directory is:</p> <p>&gt; ls -Name my-csr-directory | %{aws iot create-certificate-from-csr --certificate-signing-request file://my-csr-directory/$_}</p> <p>On a Windows command prompt, the command to create certificates for all CSRs in my-csr-directory is:</p> <p>&gt; forfiles /p my-csr-directory /c "cmd /c aws iot create-certificate-from-csr --certificate-signing-request file://@path"</p>

#### `createJob`

``` purescript
createJob :: forall eff. Service -> CreateJobRequest -> Aff (exception :: EXCEPTION | eff) CreateJobResponse
```

<p>Creates a job.</p>

#### `createKeysAndCertificate`

``` purescript
createKeysAndCertificate :: forall eff. Service -> CreateKeysAndCertificateRequest -> Aff (exception :: EXCEPTION | eff) CreateKeysAndCertificateResponse
```

<p>Creates a 2048-bit RSA key pair and issues an X.509 certificate using the issued public key.</p> <p> <b>Note</b> This is the only time AWS IoT issues the private key for this certificate, so it is important to keep it in a secure location.</p>

#### `createOTAUpdate`

``` purescript
createOTAUpdate :: forall eff. Service -> CreateOTAUpdateRequest -> Aff (exception :: EXCEPTION | eff) CreateOTAUpdateResponse
```

<p>Creates an AWS IoT OTAUpdate on a target group of things or groups.</p>

#### `createPolicy`

``` purescript
createPolicy :: forall eff. Service -> CreatePolicyRequest -> Aff (exception :: EXCEPTION | eff) CreatePolicyResponse
```

<p>Creates an AWS IoT policy.</p> <p>The created policy is the default version for the policy. This operation creates a policy version with a version identifier of <b>1</b> and sets <b>1</b> as the policy's default version.</p>

#### `createPolicyVersion`

``` purescript
createPolicyVersion :: forall eff. Service -> CreatePolicyVersionRequest -> Aff (exception :: EXCEPTION | eff) CreatePolicyVersionResponse
```

<p>Creates a new version of the specified AWS IoT policy. To update a policy, create a new policy version. A managed policy can have up to five versions. If the policy has five versions, you must use <a>DeletePolicyVersion</a> to delete an existing version before you create a new one.</p> <p>Optionally, you can set the new version as the policy's default version. The default version is the operative version (that is, the version that is in effect for the certificates to which the policy is attached).</p>

#### `createRoleAlias`

``` purescript
createRoleAlias :: forall eff. Service -> CreateRoleAliasRequest -> Aff (exception :: EXCEPTION | eff) CreateRoleAliasResponse
```

<p>Creates a role alias.</p>

#### `createStream`

``` purescript
createStream :: forall eff. Service -> CreateStreamRequest -> Aff (exception :: EXCEPTION | eff) CreateStreamResponse
```

<p>Creates a stream for delivering one or more large files in chunks over MQTT. A stream transports data bytes in chunks or blocks packaged as MQTT messages from a source like S3. You can have one or more files associated with a stream. The total size of a file associated with the stream cannot exceed more than 2 MB. The stream will be created with version 0. If a stream is created with the same streamID as a stream that existed and was deleted within last 90 days, we will resurrect that old stream by incrementing the version by 1.</p>

#### `createThing`

``` purescript
createThing :: forall eff. Service -> CreateThingRequest -> Aff (exception :: EXCEPTION | eff) CreateThingResponse
```

<p>Creates a thing record in the thing registry.</p>

#### `createThingGroup`

``` purescript
createThingGroup :: forall eff. Service -> CreateThingGroupRequest -> Aff (exception :: EXCEPTION | eff) CreateThingGroupResponse
```

<p>Create a thing group.</p>

#### `createThingType`

``` purescript
createThingType :: forall eff. Service -> CreateThingTypeRequest -> Aff (exception :: EXCEPTION | eff) CreateThingTypeResponse
```

<p>Creates a new thing type.</p>

#### `createTopicRule`

``` purescript
createTopicRule :: forall eff. Service -> CreateTopicRuleRequest -> Aff (exception :: EXCEPTION | eff) NoOutput
```

<p>Creates a rule. Creating rules is an administrator-level action. Any user who has permission to create rules will be able to access data processed by the rule.</p>

#### `deleteAuthorizer`

``` purescript
deleteAuthorizer :: forall eff. Service -> DeleteAuthorizerRequest -> Aff (exception :: EXCEPTION | eff) DeleteAuthorizerResponse
```

<p>Deletes an authorizer.</p>

#### `deleteCACertificate`

``` purescript
deleteCACertificate :: forall eff. Service -> DeleteCACertificateRequest -> Aff (exception :: EXCEPTION | eff) DeleteCACertificateResponse
```

<p>Deletes a registered CA certificate.</p>

#### `deleteCertificate`

``` purescript
deleteCertificate :: forall eff. Service -> DeleteCertificateRequest -> Aff (exception :: EXCEPTION | eff) NoOutput
```

<p>Deletes the specified certificate.</p> <p>A certificate cannot be deleted if it has a policy attached to it or if its status is set to ACTIVE. To delete a certificate, first use the <a>DetachPrincipalPolicy</a> API to detach all policies. Next, use the <a>UpdateCertificate</a> API to set the certificate to the INACTIVE status.</p>

#### `deleteOTAUpdate`

``` purescript
deleteOTAUpdate :: forall eff. Service -> DeleteOTAUpdateRequest -> Aff (exception :: EXCEPTION | eff) DeleteOTAUpdateResponse
```

<p>Delete an OTA update.</p>

#### `deletePolicy`

``` purescript
deletePolicy :: forall eff. Service -> DeletePolicyRequest -> Aff (exception :: EXCEPTION | eff) NoOutput
```

<p>Deletes the specified policy.</p> <p>A policy cannot be deleted if it has non-default versions or it is attached to any certificate.</p> <p>To delete a policy, use the DeletePolicyVersion API to delete all non-default versions of the policy; use the DetachPrincipalPolicy API to detach the policy from any certificate; and then use the DeletePolicy API to delete the policy.</p> <p>When a policy is deleted using DeletePolicy, its default version is deleted with it.</p>

#### `deletePolicyVersion`

``` purescript
deletePolicyVersion :: forall eff. Service -> DeletePolicyVersionRequest -> Aff (exception :: EXCEPTION | eff) NoOutput
```

<p>Deletes the specified version of the specified policy. You cannot delete the default version of a policy using this API. To delete the default version of a policy, use <a>DeletePolicy</a>. To find out which version of a policy is marked as the default version, use ListPolicyVersions.</p>

#### `deleteRegistrationCode`

``` purescript
deleteRegistrationCode :: forall eff. Service -> DeleteRegistrationCodeRequest -> Aff (exception :: EXCEPTION | eff) DeleteRegistrationCodeResponse
```

<p>Deletes a CA certificate registration code.</p>

#### `deleteRoleAlias`

``` purescript
deleteRoleAlias :: forall eff. Service -> DeleteRoleAliasRequest -> Aff (exception :: EXCEPTION | eff) DeleteRoleAliasResponse
```

<p>Deletes a role alias</p>

#### `deleteStream`

``` purescript
deleteStream :: forall eff. Service -> DeleteStreamRequest -> Aff (exception :: EXCEPTION | eff) DeleteStreamResponse
```

<p>Deletes a stream.</p>

#### `deleteThing`

``` purescript
deleteThing :: forall eff. Service -> DeleteThingRequest -> Aff (exception :: EXCEPTION | eff) DeleteThingResponse
```

<p>Deletes the specified thing.</p>

#### `deleteThingGroup`

``` purescript
deleteThingGroup :: forall eff. Service -> DeleteThingGroupRequest -> Aff (exception :: EXCEPTION | eff) DeleteThingGroupResponse
```

<p>Deletes a thing group.</p>

#### `deleteThingType`

``` purescript
deleteThingType :: forall eff. Service -> DeleteThingTypeRequest -> Aff (exception :: EXCEPTION | eff) DeleteThingTypeResponse
```

<p>Deletes the specified thing type . You cannot delete a thing type if it has things associated with it. To delete a thing type, first mark it as deprecated by calling <a>DeprecateThingType</a>, then remove any associated things by calling <a>UpdateThing</a> to change the thing type on any associated thing, and finally use <a>DeleteThingType</a> to delete the thing type.</p>

#### `deleteTopicRule`

``` purescript
deleteTopicRule :: forall eff. Service -> DeleteTopicRuleRequest -> Aff (exception :: EXCEPTION | eff) NoOutput
```

<p>Deletes the rule.</p>

#### `deleteV2LoggingLevel`

``` purescript
deleteV2LoggingLevel :: forall eff. Service -> DeleteV2LoggingLevelRequest -> Aff (exception :: EXCEPTION | eff) NoOutput
```

<p>Deletes a logging level.</p>

#### `deprecateThingType`

``` purescript
deprecateThingType :: forall eff. Service -> DeprecateThingTypeRequest -> Aff (exception :: EXCEPTION | eff) DeprecateThingTypeResponse
```

<p>Deprecates a thing type. You can not associate new things with deprecated thing type.</p>

#### `describeAuthorizer`

``` purescript
describeAuthorizer :: forall eff. Service -> DescribeAuthorizerRequest -> Aff (exception :: EXCEPTION | eff) DescribeAuthorizerResponse
```

<p>Describes an authorizer.</p>

#### `describeCACertificate`

``` purescript
describeCACertificate :: forall eff. Service -> DescribeCACertificateRequest -> Aff (exception :: EXCEPTION | eff) DescribeCACertificateResponse
```

<p>Describes a registered CA certificate.</p>

#### `describeCertificate`

``` purescript
describeCertificate :: forall eff. Service -> DescribeCertificateRequest -> Aff (exception :: EXCEPTION | eff) DescribeCertificateResponse
```

<p>Gets information about the specified certificate.</p>

#### `describeDefaultAuthorizer`

``` purescript
describeDefaultAuthorizer :: forall eff. Service -> DescribeDefaultAuthorizerRequest -> Aff (exception :: EXCEPTION | eff) DescribeDefaultAuthorizerResponse
```

<p>Describes the default authorizer.</p>

#### `describeEndpoint`

``` purescript
describeEndpoint :: forall eff. Service -> DescribeEndpointRequest -> Aff (exception :: EXCEPTION | eff) DescribeEndpointResponse
```

<p>Returns a unique endpoint specific to the AWS account making the call.</p>

#### `describeEventConfigurations`

``` purescript
describeEventConfigurations :: forall eff. Service -> DescribeEventConfigurationsRequest -> Aff (exception :: EXCEPTION | eff) DescribeEventConfigurationsResponse
```

<p>Describes event configurations.</p>

#### `describeIndex`

``` purescript
describeIndex :: forall eff. Service -> DescribeIndexRequest -> Aff (exception :: EXCEPTION | eff) DescribeIndexResponse
```

<p>Describes a search index.</p>

#### `describeJob`

``` purescript
describeJob :: forall eff. Service -> DescribeJobRequest -> Aff (exception :: EXCEPTION | eff) DescribeJobResponse
```

<p>Describes a job.</p>

#### `describeJobExecution`

``` purescript
describeJobExecution :: forall eff. Service -> DescribeJobExecutionRequest -> Aff (exception :: EXCEPTION | eff) DescribeJobExecutionResponse
```

<p>Describes a job execution.</p>

#### `describeRoleAlias`

``` purescript
describeRoleAlias :: forall eff. Service -> DescribeRoleAliasRequest -> Aff (exception :: EXCEPTION | eff) DescribeRoleAliasResponse
```

<p>Describes a role alias.</p>

#### `describeStream`

``` purescript
describeStream :: forall eff. Service -> DescribeStreamRequest -> Aff (exception :: EXCEPTION | eff) DescribeStreamResponse
```

<p>Gets information about a stream.</p>

#### `describeThing`

``` purescript
describeThing :: forall eff. Service -> DescribeThingRequest -> Aff (exception :: EXCEPTION | eff) DescribeThingResponse
```

<p>Gets information about the specified thing.</p>

#### `describeThingGroup`

``` purescript
describeThingGroup :: forall eff. Service -> DescribeThingGroupRequest -> Aff (exception :: EXCEPTION | eff) DescribeThingGroupResponse
```

<p>Describe a thing group.</p>

#### `describeThingRegistrationTask`

``` purescript
describeThingRegistrationTask :: forall eff. Service -> DescribeThingRegistrationTaskRequest -> Aff (exception :: EXCEPTION | eff) DescribeThingRegistrationTaskResponse
```

<p>Describes a bulk thing provisioning task.</p>

#### `describeThingType`

``` purescript
describeThingType :: forall eff. Service -> DescribeThingTypeRequest -> Aff (exception :: EXCEPTION | eff) DescribeThingTypeResponse
```

<p>Gets information about the specified thing type.</p>

#### `detachPolicy`

``` purescript
detachPolicy :: forall eff. Service -> DetachPolicyRequest -> Aff (exception :: EXCEPTION | eff) NoOutput
```

<p>Detaches a policy from the specified target.</p>

#### `detachPrincipalPolicy`

``` purescript
detachPrincipalPolicy :: forall eff. Service -> DetachPrincipalPolicyRequest -> Aff (exception :: EXCEPTION | eff) NoOutput
```

<p>Removes the specified policy from the specified certificate.</p> <p> <b>Note:</b> This API is deprecated. Please use <a>DetachPolicy</a> instead.</p>

#### `detachThingPrincipal`

``` purescript
detachThingPrincipal :: forall eff. Service -> DetachThingPrincipalRequest -> Aff (exception :: EXCEPTION | eff) DetachThingPrincipalResponse
```

<p>Detaches the specified principal from the specified thing.</p>

#### `disableTopicRule`

``` purescript
disableTopicRule :: forall eff. Service -> DisableTopicRuleRequest -> Aff (exception :: EXCEPTION | eff) NoOutput
```

<p>Disables the rule.</p>

#### `enableTopicRule`

``` purescript
enableTopicRule :: forall eff. Service -> EnableTopicRuleRequest -> Aff (exception :: EXCEPTION | eff) NoOutput
```

<p>Enables the rule.</p>

#### `getEffectivePolicies`

``` purescript
getEffectivePolicies :: forall eff. Service -> GetEffectivePoliciesRequest -> Aff (exception :: EXCEPTION | eff) GetEffectivePoliciesResponse
```

<p>Gets effective policies.</p>

#### `getIndexingConfiguration`

``` purescript
getIndexingConfiguration :: forall eff. Service -> GetIndexingConfigurationRequest -> Aff (exception :: EXCEPTION | eff) GetIndexingConfigurationResponse
```

<p>Gets the search configuration.</p>

#### `getJobDocument`

``` purescript
getJobDocument :: forall eff. Service -> GetJobDocumentRequest -> Aff (exception :: EXCEPTION | eff) GetJobDocumentResponse
```

<p>Gets a job document.</p>

#### `getLoggingOptions`

``` purescript
getLoggingOptions :: forall eff. Service -> GetLoggingOptionsRequest -> Aff (exception :: EXCEPTION | eff) GetLoggingOptionsResponse
```

<p>Gets the logging options.</p>

#### `getOTAUpdate`

``` purescript
getOTAUpdate :: forall eff. Service -> GetOTAUpdateRequest -> Aff (exception :: EXCEPTION | eff) GetOTAUpdateResponse
```

<p>Gets an OTA update.</p>

#### `getPolicy`

``` purescript
getPolicy :: forall eff. Service -> GetPolicyRequest -> Aff (exception :: EXCEPTION | eff) GetPolicyResponse
```

<p>Gets information about the specified policy with the policy document of the default version.</p>

#### `getPolicyVersion`

``` purescript
getPolicyVersion :: forall eff. Service -> GetPolicyVersionRequest -> Aff (exception :: EXCEPTION | eff) GetPolicyVersionResponse
```

<p>Gets information about the specified policy version.</p>

#### `getRegistrationCode`

``` purescript
getRegistrationCode :: forall eff. Service -> GetRegistrationCodeRequest -> Aff (exception :: EXCEPTION | eff) GetRegistrationCodeResponse
```

<p>Gets a registration code used to register a CA certificate with AWS IoT.</p>

#### `getTopicRule`

``` purescript
getTopicRule :: forall eff. Service -> GetTopicRuleRequest -> Aff (exception :: EXCEPTION | eff) GetTopicRuleResponse
```

<p>Gets information about the rule.</p>

#### `getV2LoggingOptions`

``` purescript
getV2LoggingOptions :: forall eff. Service -> GetV2LoggingOptionsRequest -> Aff (exception :: EXCEPTION | eff) GetV2LoggingOptionsResponse
```

<p>Gets the fine grained logging options.</p>

#### `listAttachedPolicies`

``` purescript
listAttachedPolicies :: forall eff. Service -> ListAttachedPoliciesRequest -> Aff (exception :: EXCEPTION | eff) ListAttachedPoliciesResponse
```

<p>Lists the policies attached to the specified thing group.</p>

#### `listAuthorizers`

``` purescript
listAuthorizers :: forall eff. Service -> ListAuthorizersRequest -> Aff (exception :: EXCEPTION | eff) ListAuthorizersResponse
```

<p>Lists the authorizers registered in your account.</p>

#### `listCACertificates`

``` purescript
listCACertificates :: forall eff. Service -> ListCACertificatesRequest -> Aff (exception :: EXCEPTION | eff) ListCACertificatesResponse
```

<p>Lists the CA certificates registered for your AWS account.</p> <p>The results are paginated with a default page size of 25. You can use the returned marker to retrieve additional results.</p>

#### `listCertificates`

``` purescript
listCertificates :: forall eff. Service -> ListCertificatesRequest -> Aff (exception :: EXCEPTION | eff) ListCertificatesResponse
```

<p>Lists the certificates registered in your AWS account.</p> <p>The results are paginated with a default page size of 25. You can use the returned marker to retrieve additional results.</p>

#### `listCertificatesByCA`

``` purescript
listCertificatesByCA :: forall eff. Service -> ListCertificatesByCARequest -> Aff (exception :: EXCEPTION | eff) ListCertificatesByCAResponse
```

<p>List the device certificates signed by the specified CA certificate.</p>

#### `listIndices`

``` purescript
listIndices :: forall eff. Service -> ListIndicesRequest -> Aff (exception :: EXCEPTION | eff) ListIndicesResponse
```

<p>Lists the search indices.</p>

#### `listJobExecutionsForJob`

``` purescript
listJobExecutionsForJob :: forall eff. Service -> ListJobExecutionsForJobRequest -> Aff (exception :: EXCEPTION | eff) ListJobExecutionsForJobResponse
```

<p>Lists the job executions for a job.</p>

#### `listJobExecutionsForThing`

``` purescript
listJobExecutionsForThing :: forall eff. Service -> ListJobExecutionsForThingRequest -> Aff (exception :: EXCEPTION | eff) ListJobExecutionsForThingResponse
```

<p>Lists the job executions for the specified thing.</p>

#### `listJobs`

``` purescript
listJobs :: forall eff. Service -> ListJobsRequest -> Aff (exception :: EXCEPTION | eff) ListJobsResponse
```

<p>Lists jobs.</p>

#### `listOTAUpdates`

``` purescript
listOTAUpdates :: forall eff. Service -> ListOTAUpdatesRequest -> Aff (exception :: EXCEPTION | eff) ListOTAUpdatesResponse
```

<p>Lists OTA updates.</p>

#### `listOutgoingCertificates`

``` purescript
listOutgoingCertificates :: forall eff. Service -> ListOutgoingCertificatesRequest -> Aff (exception :: EXCEPTION | eff) ListOutgoingCertificatesResponse
```

<p>Lists certificates that are being transferred but not yet accepted.</p>

#### `listPolicies`

``` purescript
listPolicies :: forall eff. Service -> ListPoliciesRequest -> Aff (exception :: EXCEPTION | eff) ListPoliciesResponse
```

<p>Lists your policies.</p>

#### `listPolicyPrincipals`

``` purescript
listPolicyPrincipals :: forall eff. Service -> ListPolicyPrincipalsRequest -> Aff (exception :: EXCEPTION | eff) ListPolicyPrincipalsResponse
```

<p>Lists the principals associated with the specified policy.</p> <p> <b>Note:</b> This API is deprecated. Please use <a>ListTargetsForPolicy</a> instead.</p>

#### `listPolicyVersions`

``` purescript
listPolicyVersions :: forall eff. Service -> ListPolicyVersionsRequest -> Aff (exception :: EXCEPTION | eff) ListPolicyVersionsResponse
```

<p>Lists the versions of the specified policy and identifies the default version.</p>

#### `listPrincipalPolicies`

``` purescript
listPrincipalPolicies :: forall eff. Service -> ListPrincipalPoliciesRequest -> Aff (exception :: EXCEPTION | eff) ListPrincipalPoliciesResponse
```

<p>Lists the policies attached to the specified principal. If you use an Cognito identity, the ID must be in <a href="http://docs.aws.amazon.com/cognitoidentity/latest/APIReference/API_GetCredentialsForIdentity.html#API_GetCredentialsForIdentity_RequestSyntax">AmazonCognito Identity format</a>.</p> <p> <b>Note:</b> This API is deprecated. Please use <a>ListAttachedPolicies</a> instead.</p>

#### `listPrincipalThings`

``` purescript
listPrincipalThings :: forall eff. Service -> ListPrincipalThingsRequest -> Aff (exception :: EXCEPTION | eff) ListPrincipalThingsResponse
```

<p>Lists the things associated with the specified principal.</p>

#### `listRoleAliases`

``` purescript
listRoleAliases :: forall eff. Service -> ListRoleAliasesRequest -> Aff (exception :: EXCEPTION | eff) ListRoleAliasesResponse
```

<p>Lists the role aliases registered in your account.</p>

#### `listStreams`

``` purescript
listStreams :: forall eff. Service -> ListStreamsRequest -> Aff (exception :: EXCEPTION | eff) ListStreamsResponse
```

<p>Lists all of the streams in your AWS account.</p>

#### `listTargetsForPolicy`

``` purescript
listTargetsForPolicy :: forall eff. Service -> ListTargetsForPolicyRequest -> Aff (exception :: EXCEPTION | eff) ListTargetsForPolicyResponse
```

<p>List targets for the specified policy.</p>

#### `listThingGroups`

``` purescript
listThingGroups :: forall eff. Service -> ListThingGroupsRequest -> Aff (exception :: EXCEPTION | eff) ListThingGroupsResponse
```

<p>List the thing groups in your account.</p>

#### `listThingGroupsForThing`

``` purescript
listThingGroupsForThing :: forall eff. Service -> ListThingGroupsForThingRequest -> Aff (exception :: EXCEPTION | eff) ListThingGroupsForThingResponse
```

<p>List the thing groups to which the specified thing belongs.</p>

#### `listThingPrincipals`

``` purescript
listThingPrincipals :: forall eff. Service -> ListThingPrincipalsRequest -> Aff (exception :: EXCEPTION | eff) ListThingPrincipalsResponse
```

<p>Lists the principals associated with the specified thing.</p>

#### `listThingRegistrationTaskReports`

``` purescript
listThingRegistrationTaskReports :: forall eff. Service -> ListThingRegistrationTaskReportsRequest -> Aff (exception :: EXCEPTION | eff) ListThingRegistrationTaskReportsResponse
```

<p>Information about the thing registration tasks.</p>

#### `listThingRegistrationTasks`

``` purescript
listThingRegistrationTasks :: forall eff. Service -> ListThingRegistrationTasksRequest -> Aff (exception :: EXCEPTION | eff) ListThingRegistrationTasksResponse
```

<p>List bulk thing provisioning tasks.</p>

#### `listThingTypes`

``` purescript
listThingTypes :: forall eff. Service -> ListThingTypesRequest -> Aff (exception :: EXCEPTION | eff) ListThingTypesResponse
```

<p>Lists the existing thing types.</p>

#### `listThings`

``` purescript
listThings :: forall eff. Service -> ListThingsRequest -> Aff (exception :: EXCEPTION | eff) ListThingsResponse
```

<p>Lists your things. Use the <b>attributeName</b> and <b>attributeValue</b> parameters to filter your things. For example, calling <code>ListThings</code> with attributeName=Color and attributeValue=Red retrieves all things in the registry that contain an attribute <b>Color</b> with the value <b>Red</b>. </p>

#### `listThingsInThingGroup`

``` purescript
listThingsInThingGroup :: forall eff. Service -> ListThingsInThingGroupRequest -> Aff (exception :: EXCEPTION | eff) ListThingsInThingGroupResponse
```

<p>Lists the things in the specified group.</p>

#### `listTopicRules`

``` purescript
listTopicRules :: forall eff. Service -> ListTopicRulesRequest -> Aff (exception :: EXCEPTION | eff) ListTopicRulesResponse
```

<p>Lists the rules for the specific topic.</p>

#### `listV2LoggingLevels`

``` purescript
listV2LoggingLevels :: forall eff. Service -> ListV2LoggingLevelsRequest -> Aff (exception :: EXCEPTION | eff) ListV2LoggingLevelsResponse
```

<p>Lists logging levels.</p>

#### `registerCACertificate`

``` purescript
registerCACertificate :: forall eff. Service -> RegisterCACertificateRequest -> Aff (exception :: EXCEPTION | eff) RegisterCACertificateResponse
```

<p>Registers a CA certificate with AWS IoT. This CA certificate can then be used to sign device certificates, which can be then registered with AWS IoT. You can register up to 10 CA certificates per AWS account that have the same subject field. This enables you to have up to 10 certificate authorities sign your device certificates. If you have more than one CA certificate registered, make sure you pass the CA certificate when you register your device certificates with the RegisterCertificate API.</p>

#### `registerCertificate`

``` purescript
registerCertificate :: forall eff. Service -> RegisterCertificateRequest -> Aff (exception :: EXCEPTION | eff) RegisterCertificateResponse
```

<p>Registers a device certificate with AWS IoT. If you have more than one CA certificate that has the same subject field, you must specify the CA certificate that was used to sign the device certificate being registered.</p>

#### `registerThing`

``` purescript
registerThing :: forall eff. Service -> RegisterThingRequest -> Aff (exception :: EXCEPTION | eff) RegisterThingResponse
```

<p>Provisions a thing.</p>

#### `rejectCertificateTransfer`

``` purescript
rejectCertificateTransfer :: forall eff. Service -> RejectCertificateTransferRequest -> Aff (exception :: EXCEPTION | eff) NoOutput
```

<p>Rejects a pending certificate transfer. After AWS IoT rejects a certificate transfer, the certificate status changes from <b>PENDING_TRANSFER</b> to <b>INACTIVE</b>.</p> <p>To check for pending certificate transfers, call <a>ListCertificates</a> to enumerate your certificates.</p> <p>This operation can only be called by the transfer destination. After it is called, the certificate will be returned to the source's account in the INACTIVE state.</p>

#### `removeThingFromThingGroup`

``` purescript
removeThingFromThingGroup :: forall eff. Service -> RemoveThingFromThingGroupRequest -> Aff (exception :: EXCEPTION | eff) RemoveThingFromThingGroupResponse
```

<p>Remove the specified thing from the specified group.</p>

#### `replaceTopicRule`

``` purescript
replaceTopicRule :: forall eff. Service -> ReplaceTopicRuleRequest -> Aff (exception :: EXCEPTION | eff) NoOutput
```

<p>Replaces the rule. You must specify all parameters for the new rule. Creating rules is an administrator-level action. Any user who has permission to create rules will be able to access data processed by the rule.</p>

#### `searchIndex`

``` purescript
searchIndex :: forall eff. Service -> SearchIndexRequest -> Aff (exception :: EXCEPTION | eff) SearchIndexResponse
```

<p>The query search index.</p>

#### `setDefaultAuthorizer`

``` purescript
setDefaultAuthorizer :: forall eff. Service -> SetDefaultAuthorizerRequest -> Aff (exception :: EXCEPTION | eff) SetDefaultAuthorizerResponse
```

<p>Sets the default authorizer. This will be used if a websocket connection is made without specifying an authorizer.</p>

#### `setDefaultPolicyVersion`

``` purescript
setDefaultPolicyVersion :: forall eff. Service -> SetDefaultPolicyVersionRequest -> Aff (exception :: EXCEPTION | eff) NoOutput
```

<p>Sets the specified version of the specified policy as the policy's default (operative) version. This action affects all certificates to which the policy is attached. To list the principals the policy is attached to, use the ListPrincipalPolicy API.</p>

#### `setLoggingOptions`

``` purescript
setLoggingOptions :: forall eff. Service -> SetLoggingOptionsRequest -> Aff (exception :: EXCEPTION | eff) NoOutput
```

<p>Sets the logging options.</p>

#### `setV2LoggingLevel`

``` purescript
setV2LoggingLevel :: forall eff. Service -> SetV2LoggingLevelRequest -> Aff (exception :: EXCEPTION | eff) NoOutput
```

<p>Sets the logging level.</p>

#### `setV2LoggingOptions`

``` purescript
setV2LoggingOptions :: forall eff. Service -> SetV2LoggingOptionsRequest -> Aff (exception :: EXCEPTION | eff) NoOutput
```

<p>Sets the logging options for the V2 logging service.</p>

#### `startThingRegistrationTask`

``` purescript
startThingRegistrationTask :: forall eff. Service -> StartThingRegistrationTaskRequest -> Aff (exception :: EXCEPTION | eff) StartThingRegistrationTaskResponse
```

<p>Creates a bulk thing provisioning task.</p>

#### `stopThingRegistrationTask`

``` purescript
stopThingRegistrationTask :: forall eff. Service -> StopThingRegistrationTaskRequest -> Aff (exception :: EXCEPTION | eff) StopThingRegistrationTaskResponse
```

<p>Cancels a bulk thing provisioning task.</p>

#### `testAuthorization`

``` purescript
testAuthorization :: forall eff. Service -> TestAuthorizationRequest -> Aff (exception :: EXCEPTION | eff) TestAuthorizationResponse
```

<p>Test custom authorization.</p>

#### `testInvokeAuthorizer`

``` purescript
testInvokeAuthorizer :: forall eff. Service -> TestInvokeAuthorizerRequest -> Aff (exception :: EXCEPTION | eff) TestInvokeAuthorizerResponse
```

<p>Invoke the specified custom authorizer for testing purposes.</p>

#### `transferCertificate`

``` purescript
transferCertificate :: forall eff. Service -> TransferCertificateRequest -> Aff (exception :: EXCEPTION | eff) TransferCertificateResponse
```

<p>Transfers the specified certificate to the specified AWS account.</p> <p>You can cancel the transfer until it is acknowledged by the recipient.</p> <p>No notification is sent to the transfer destination's account. It is up to the caller to notify the transfer target.</p> <p>The certificate being transferred must not be in the ACTIVE state. You can use the UpdateCertificate API to deactivate it.</p> <p>The certificate must not have any policies attached to it. You can use the DetachPrincipalPolicy API to detach them.</p>

#### `updateAuthorizer`

``` purescript
updateAuthorizer :: forall eff. Service -> UpdateAuthorizerRequest -> Aff (exception :: EXCEPTION | eff) UpdateAuthorizerResponse
```

<p>Updates an authorizer.</p>

#### `updateCACertificate`

``` purescript
updateCACertificate :: forall eff. Service -> UpdateCACertificateRequest -> Aff (exception :: EXCEPTION | eff) NoOutput
```

<p>Updates a registered CA certificate.</p>

#### `updateCertificate`

``` purescript
updateCertificate :: forall eff. Service -> UpdateCertificateRequest -> Aff (exception :: EXCEPTION | eff) NoOutput
```

<p>Updates the status of the specified certificate. This operation is idempotent.</p> <p>Moving a certificate from the ACTIVE state (including REVOKED) will not disconnect currently connected devices, but these devices will be unable to reconnect.</p> <p>The ACTIVE state is required to authenticate devices connecting to AWS IoT using a certificate.</p>

#### `updateEventConfigurations`

``` purescript
updateEventConfigurations :: forall eff. Service -> UpdateEventConfigurationsRequest -> Aff (exception :: EXCEPTION | eff) UpdateEventConfigurationsResponse
```

<p>Updates the event configurations.</p>

#### `updateIndexingConfiguration`

``` purescript
updateIndexingConfiguration :: forall eff. Service -> UpdateIndexingConfigurationRequest -> Aff (exception :: EXCEPTION | eff) UpdateIndexingConfigurationResponse
```

<p>Updates the search configuration.</p>

#### `updateRoleAlias`

``` purescript
updateRoleAlias :: forall eff. Service -> UpdateRoleAliasRequest -> Aff (exception :: EXCEPTION | eff) UpdateRoleAliasResponse
```

<p>Updates a role alias.</p>

#### `updateStream`

``` purescript
updateStream :: forall eff. Service -> UpdateStreamRequest -> Aff (exception :: EXCEPTION | eff) UpdateStreamResponse
```

<p>Updates an existing stream. The stream version will be incremented by one.</p>

#### `updateThing`

``` purescript
updateThing :: forall eff. Service -> UpdateThingRequest -> Aff (exception :: EXCEPTION | eff) UpdateThingResponse
```

<p>Updates the data for a thing.</p>

#### `updateThingGroup`

``` purescript
updateThingGroup :: forall eff. Service -> UpdateThingGroupRequest -> Aff (exception :: EXCEPTION | eff) UpdateThingGroupResponse
```

<p>Update a thing group.</p>

#### `updateThingGroupsForThing`

``` purescript
updateThingGroupsForThing :: forall eff. Service -> UpdateThingGroupsForThingRequest -> Aff (exception :: EXCEPTION | eff) UpdateThingGroupsForThingResponse
```

<p>Updates the groups to which the thing belongs.</p>


