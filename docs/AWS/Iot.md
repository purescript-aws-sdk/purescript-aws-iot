## Module AWS.Iot

<fullname>AWS IoT</fullname> <p>AWS IoT provides secure, bi-directional communication between Internet-connected things (such as sensors, actuators, embedded devices, or smart appliances) and the AWS cloud. You can discover your custom IoT-Data endpoint to communicate with, configure rules for data processing and integration with other services, organize resources associated with each thing (Thing Registry), configure logging, and create and manage policies and credentials to authenticate things.</p> <p>For more information about how AWS IoT works, see the <a href="http://docs.aws.amazon.com/iot/latest/developerguide/aws-iot-how-it-works.html">Developer Guide</a>.</p>

#### `acceptCertificateTransfer`

``` purescript
acceptCertificateTransfer :: forall eff. AcceptCertificateTransferRequest -> Aff (exception :: EXCEPTION | eff) NoOutput
```

<p>Accepts a pending certificate transfer. The default state of the certificate is INACTIVE.</p> <p>To check for pending certificate transfers, call <a>ListCertificates</a> to enumerate your certificates.</p>

#### `addThingToThingGroup`

``` purescript
addThingToThingGroup :: forall eff. AddThingToThingGroupRequest -> Aff (exception :: EXCEPTION | eff) AddThingToThingGroupResponse
```

<p>Adds a thing to a thing group.</p>

#### `associateTargetsWithJob`

``` purescript
associateTargetsWithJob :: forall eff. AssociateTargetsWithJobRequest -> Aff (exception :: EXCEPTION | eff) AssociateTargetsWithJobResponse
```

<p>Associates a group with a continuous job. The following criteria must be met: </p> <ul> <li> <p>The job must have been created with the <code>targetSelection</code> field set to "CONTINUOUS".</p> </li> <li> <p>The job status must currently be "IN_PROGRESS".</p> </li> <li> <p>The total number of targets associated with a job must not exceed 100.</p> </li> </ul>

#### `attachPolicy`

``` purescript
attachPolicy :: forall eff. AttachPolicyRequest -> Aff (exception :: EXCEPTION | eff) NoOutput
```

<p>Attaches a policy to the specified target.</p>

#### `attachPrincipalPolicy`

``` purescript
attachPrincipalPolicy :: forall eff. AttachPrincipalPolicyRequest -> Aff (exception :: EXCEPTION | eff) NoOutput
```

<p>Attaches the specified policy to the specified principal (certificate or other credential).</p> <p> <b>Note:</b> This API is deprecated. Please use <a>AttachPolicy</a> instead.</p>

#### `attachThingPrincipal`

``` purescript
attachThingPrincipal :: forall eff. AttachThingPrincipalRequest -> Aff (exception :: EXCEPTION | eff) AttachThingPrincipalResponse
```

<p>Attaches the specified principal to the specified thing.</p>

#### `cancelCertificateTransfer`

``` purescript
cancelCertificateTransfer :: forall eff. CancelCertificateTransferRequest -> Aff (exception :: EXCEPTION | eff) NoOutput
```

<p>Cancels a pending transfer for the specified certificate.</p> <p> <b>Note</b> Only the transfer source account can use this operation to cancel a transfer. (Transfer destinations can use <a>RejectCertificateTransfer</a> instead.) After transfer, AWS IoT returns the certificate to the source account in the INACTIVE state. After the destination account has accepted the transfer, the transfer cannot be cancelled.</p> <p>After a certificate transfer is cancelled, the status of the certificate changes from PENDING_TRANSFER to INACTIVE.</p>

#### `cancelJob`

``` purescript
cancelJob :: forall eff. CancelJobRequest -> Aff (exception :: EXCEPTION | eff) CancelJobResponse
```

<p>Cancels a job.</p>

#### `clearDefaultAuthorizer`

``` purescript
clearDefaultAuthorizer :: forall eff. ClearDefaultAuthorizerRequest -> Aff (exception :: EXCEPTION | eff) ClearDefaultAuthorizerResponse
```

<p>Clears the default authorizer.</p>

#### `createAuthorizer`

``` purescript
createAuthorizer :: forall eff. CreateAuthorizerRequest -> Aff (exception :: EXCEPTION | eff) CreateAuthorizerResponse
```

<p>Creates an authorizer.</p>

#### `createCertificateFromCsr`

``` purescript
createCertificateFromCsr :: forall eff. CreateCertificateFromCsrRequest -> Aff (exception :: EXCEPTION | eff) CreateCertificateFromCsrResponse
```

<p>Creates an X.509 certificate using the specified certificate signing request.</p> <p> <b>Note:</b> The CSR must include a public key that is either an RSA key with a length of at least 2048 bits or an ECC key from NIST P-256 or NIST P-384 curves. </p> <p> <b>Note:</b> Reusing the same certificate signing request (CSR) results in a distinct certificate.</p> <p>You can create multiple certificates in a batch by creating a directory, copying multiple .csr files into that directory, and then specifying that directory on the command line. The following commands show how to create a batch of certificates given a batch of CSRs.</p> <p>Assuming a set of CSRs are located inside of the directory my-csr-directory:</p> <p>On Linux and OS X, the command is:</p> <p>$ ls my-csr-directory/ | xargs -I {} aws iot create-certificate-from-csr --certificate-signing-request file://my-csr-directory/{}</p> <p>This command lists all of the CSRs in my-csr-directory and pipes each CSR file name to the aws iot create-certificate-from-csr AWS CLI command to create a certificate for the corresponding CSR.</p> <p>The aws iot create-certificate-from-csr part of the command can also be run in parallel to speed up the certificate creation process:</p> <p>$ ls my-csr-directory/ | xargs -P 10 -I {} aws iot create-certificate-from-csr --certificate-signing-request file://my-csr-directory/{}</p> <p>On Windows PowerShell, the command to create certificates for all CSRs in my-csr-directory is:</p> <p>&gt; ls -Name my-csr-directory | %{aws iot create-certificate-from-csr --certificate-signing-request file://my-csr-directory/$_}</p> <p>On a Windows command prompt, the command to create certificates for all CSRs in my-csr-directory is:</p> <p>&gt; forfiles /p my-csr-directory /c "cmd /c aws iot create-certificate-from-csr --certificate-signing-request file://@path"</p>

#### `createJob`

``` purescript
createJob :: forall eff. CreateJobRequest -> Aff (exception :: EXCEPTION | eff) CreateJobResponse
```

<p>Creates a job.</p>

#### `createKeysAndCertificate`

``` purescript
createKeysAndCertificate :: forall eff. CreateKeysAndCertificateRequest -> Aff (exception :: EXCEPTION | eff) CreateKeysAndCertificateResponse
```

<p>Creates a 2048-bit RSA key pair and issues an X.509 certificate using the issued public key.</p> <p> <b>Note</b> This is the only time AWS IoT issues the private key for this certificate, so it is important to keep it in a secure location.</p>

#### `createOTAUpdate`

``` purescript
createOTAUpdate :: forall eff. CreateOTAUpdateRequest -> Aff (exception :: EXCEPTION | eff) CreateOTAUpdateResponse
```

<p>Creates an AWS IoT OTAUpdate on a target group of things or groups.</p>

#### `createPolicy`

``` purescript
createPolicy :: forall eff. CreatePolicyRequest -> Aff (exception :: EXCEPTION | eff) CreatePolicyResponse
```

<p>Creates an AWS IoT policy.</p> <p>The created policy is the default version for the policy. This operation creates a policy version with a version identifier of <b>1</b> and sets <b>1</b> as the policy's default version.</p>

#### `createPolicyVersion`

``` purescript
createPolicyVersion :: forall eff. CreatePolicyVersionRequest -> Aff (exception :: EXCEPTION | eff) CreatePolicyVersionResponse
```

<p>Creates a new version of the specified AWS IoT policy. To update a policy, create a new policy version. A managed policy can have up to five versions. If the policy has five versions, you must use <a>DeletePolicyVersion</a> to delete an existing version before you create a new one.</p> <p>Optionally, you can set the new version as the policy's default version. The default version is the operative version (that is, the version that is in effect for the certificates to which the policy is attached).</p>

#### `createRoleAlias`

``` purescript
createRoleAlias :: forall eff. CreateRoleAliasRequest -> Aff (exception :: EXCEPTION | eff) CreateRoleAliasResponse
```

<p>Creates a role alias.</p>

#### `createStream`

``` purescript
createStream :: forall eff. CreateStreamRequest -> Aff (exception :: EXCEPTION | eff) CreateStreamResponse
```

<p>Creates a stream for delivering one or more large files in chunks over MQTT. A stream transports data bytes in chunks or blocks packaged as MQTT messages from a source like S3. You can have one or more files associated with a stream. The total size of a file associated with the stream cannot exceed more than 2 MB. The stream will be created with version 0. If a stream is created with the same streamID as a stream that existed and was deleted within last 90 days, we will resurrect that old stream by incrementing the version by 1.</p>

#### `createThing`

``` purescript
createThing :: forall eff. CreateThingRequest -> Aff (exception :: EXCEPTION | eff) CreateThingResponse
```

<p>Creates a thing record in the thing registry.</p>

#### `createThingGroup`

``` purescript
createThingGroup :: forall eff. CreateThingGroupRequest -> Aff (exception :: EXCEPTION | eff) CreateThingGroupResponse
```

<p>Create a thing group.</p>

#### `createThingType`

``` purescript
createThingType :: forall eff. CreateThingTypeRequest -> Aff (exception :: EXCEPTION | eff) CreateThingTypeResponse
```

<p>Creates a new thing type.</p>

#### `createTopicRule`

``` purescript
createTopicRule :: forall eff. CreateTopicRuleRequest -> Aff (exception :: EXCEPTION | eff) NoOutput
```

<p>Creates a rule. Creating rules is an administrator-level action. Any user who has permission to create rules will be able to access data processed by the rule.</p>

#### `deleteAuthorizer`

``` purescript
deleteAuthorizer :: forall eff. DeleteAuthorizerRequest -> Aff (exception :: EXCEPTION | eff) DeleteAuthorizerResponse
```

<p>Deletes an authorizer.</p>

#### `deleteCACertificate`

``` purescript
deleteCACertificate :: forall eff. DeleteCACertificateRequest -> Aff (exception :: EXCEPTION | eff) DeleteCACertificateResponse
```

<p>Deletes a registered CA certificate.</p>

#### `deleteCertificate`

``` purescript
deleteCertificate :: forall eff. DeleteCertificateRequest -> Aff (exception :: EXCEPTION | eff) NoOutput
```

<p>Deletes the specified certificate.</p> <p>A certificate cannot be deleted if it has a policy attached to it or if its status is set to ACTIVE. To delete a certificate, first use the <a>DetachPrincipalPolicy</a> API to detach all policies. Next, use the <a>UpdateCertificate</a> API to set the certificate to the INACTIVE status.</p>

#### `deleteOTAUpdate`

``` purescript
deleteOTAUpdate :: forall eff. DeleteOTAUpdateRequest -> Aff (exception :: EXCEPTION | eff) DeleteOTAUpdateResponse
```

<p>Delete an OTA update.</p>

#### `deletePolicy`

``` purescript
deletePolicy :: forall eff. DeletePolicyRequest -> Aff (exception :: EXCEPTION | eff) NoOutput
```

<p>Deletes the specified policy.</p> <p>A policy cannot be deleted if it has non-default versions or it is attached to any certificate.</p> <p>To delete a policy, use the DeletePolicyVersion API to delete all non-default versions of the policy; use the DetachPrincipalPolicy API to detach the policy from any certificate; and then use the DeletePolicy API to delete the policy.</p> <p>When a policy is deleted using DeletePolicy, its default version is deleted with it.</p>

#### `deletePolicyVersion`

``` purescript
deletePolicyVersion :: forall eff. DeletePolicyVersionRequest -> Aff (exception :: EXCEPTION | eff) NoOutput
```

<p>Deletes the specified version of the specified policy. You cannot delete the default version of a policy using this API. To delete the default version of a policy, use <a>DeletePolicy</a>. To find out which version of a policy is marked as the default version, use ListPolicyVersions.</p>

#### `deleteRegistrationCode`

``` purescript
deleteRegistrationCode :: forall eff. DeleteRegistrationCodeRequest -> Aff (exception :: EXCEPTION | eff) DeleteRegistrationCodeResponse
```

<p>Deletes a CA certificate registration code.</p>

#### `deleteRoleAlias`

``` purescript
deleteRoleAlias :: forall eff. DeleteRoleAliasRequest -> Aff (exception :: EXCEPTION | eff) DeleteRoleAliasResponse
```

<p>Deletes a role alias</p>

#### `deleteStream`

``` purescript
deleteStream :: forall eff. DeleteStreamRequest -> Aff (exception :: EXCEPTION | eff) DeleteStreamResponse
```

<p>Deletes a stream.</p>

#### `deleteThing`

``` purescript
deleteThing :: forall eff. DeleteThingRequest -> Aff (exception :: EXCEPTION | eff) DeleteThingResponse
```

<p>Deletes the specified thing.</p>

#### `deleteThingGroup`

``` purescript
deleteThingGroup :: forall eff. DeleteThingGroupRequest -> Aff (exception :: EXCEPTION | eff) DeleteThingGroupResponse
```

<p>Deletes a thing group.</p>

#### `deleteThingType`

``` purescript
deleteThingType :: forall eff. DeleteThingTypeRequest -> Aff (exception :: EXCEPTION | eff) DeleteThingTypeResponse
```

<p>Deletes the specified thing type . You cannot delete a thing type if it has things associated with it. To delete a thing type, first mark it as deprecated by calling <a>DeprecateThingType</a>, then remove any associated things by calling <a>UpdateThing</a> to change the thing type on any associated thing, and finally use <a>DeleteThingType</a> to delete the thing type.</p>

#### `deleteTopicRule`

``` purescript
deleteTopicRule :: forall eff. DeleteTopicRuleRequest -> Aff (exception :: EXCEPTION | eff) NoOutput
```

<p>Deletes the rule.</p>

#### `deleteV2LoggingLevel`

``` purescript
deleteV2LoggingLevel :: forall eff. DeleteV2LoggingLevelRequest -> Aff (exception :: EXCEPTION | eff) NoOutput
```

<p>Deletes a logging level.</p>

#### `deprecateThingType`

``` purescript
deprecateThingType :: forall eff. DeprecateThingTypeRequest -> Aff (exception :: EXCEPTION | eff) DeprecateThingTypeResponse
```

<p>Deprecates a thing type. You can not associate new things with deprecated thing type.</p>

#### `describeAuthorizer`

``` purescript
describeAuthorizer :: forall eff. DescribeAuthorizerRequest -> Aff (exception :: EXCEPTION | eff) DescribeAuthorizerResponse
```

<p>Describes an authorizer.</p>

#### `describeCACertificate`

``` purescript
describeCACertificate :: forall eff. DescribeCACertificateRequest -> Aff (exception :: EXCEPTION | eff) DescribeCACertificateResponse
```

<p>Describes a registered CA certificate.</p>

#### `describeCertificate`

``` purescript
describeCertificate :: forall eff. DescribeCertificateRequest -> Aff (exception :: EXCEPTION | eff) DescribeCertificateResponse
```

<p>Gets information about the specified certificate.</p>

#### `describeDefaultAuthorizer`

``` purescript
describeDefaultAuthorizer :: forall eff. DescribeDefaultAuthorizerRequest -> Aff (exception :: EXCEPTION | eff) DescribeDefaultAuthorizerResponse
```

<p>Describes the default authorizer.</p>

#### `describeEndpoint`

``` purescript
describeEndpoint :: forall eff. DescribeEndpointRequest -> Aff (exception :: EXCEPTION | eff) DescribeEndpointResponse
```

<p>Returns a unique endpoint specific to the AWS account making the call.</p>

#### `describeEventConfigurations`

``` purescript
describeEventConfigurations :: forall eff. DescribeEventConfigurationsRequest -> Aff (exception :: EXCEPTION | eff) DescribeEventConfigurationsResponse
```

<p>Describes event configurations.</p>

#### `describeIndex`

``` purescript
describeIndex :: forall eff. DescribeIndexRequest -> Aff (exception :: EXCEPTION | eff) DescribeIndexResponse
```

<p>Describes a search index.</p>

#### `describeJob`

``` purescript
describeJob :: forall eff. DescribeJobRequest -> Aff (exception :: EXCEPTION | eff) DescribeJobResponse
```

<p>Describes a job.</p>

#### `describeJobExecution`

``` purescript
describeJobExecution :: forall eff. DescribeJobExecutionRequest -> Aff (exception :: EXCEPTION | eff) DescribeJobExecutionResponse
```

<p>Describes a job execution.</p>

#### `describeRoleAlias`

``` purescript
describeRoleAlias :: forall eff. DescribeRoleAliasRequest -> Aff (exception :: EXCEPTION | eff) DescribeRoleAliasResponse
```

<p>Describes a role alias.</p>

#### `describeStream`

``` purescript
describeStream :: forall eff. DescribeStreamRequest -> Aff (exception :: EXCEPTION | eff) DescribeStreamResponse
```

<p>Gets information about a stream.</p>

#### `describeThing`

``` purescript
describeThing :: forall eff. DescribeThingRequest -> Aff (exception :: EXCEPTION | eff) DescribeThingResponse
```

<p>Gets information about the specified thing.</p>

#### `describeThingGroup`

``` purescript
describeThingGroup :: forall eff. DescribeThingGroupRequest -> Aff (exception :: EXCEPTION | eff) DescribeThingGroupResponse
```

<p>Describe a thing group.</p>

#### `describeThingRegistrationTask`

``` purescript
describeThingRegistrationTask :: forall eff. DescribeThingRegistrationTaskRequest -> Aff (exception :: EXCEPTION | eff) DescribeThingRegistrationTaskResponse
```

<p>Describes a bulk thing provisioning task.</p>

#### `describeThingType`

``` purescript
describeThingType :: forall eff. DescribeThingTypeRequest -> Aff (exception :: EXCEPTION | eff) DescribeThingTypeResponse
```

<p>Gets information about the specified thing type.</p>

#### `detachPolicy`

``` purescript
detachPolicy :: forall eff. DetachPolicyRequest -> Aff (exception :: EXCEPTION | eff) NoOutput
```

<p>Detaches a policy from the specified target.</p>

#### `detachPrincipalPolicy`

``` purescript
detachPrincipalPolicy :: forall eff. DetachPrincipalPolicyRequest -> Aff (exception :: EXCEPTION | eff) NoOutput
```

<p>Removes the specified policy from the specified certificate.</p> <p> <b>Note:</b> This API is deprecated. Please use <a>DetachPolicy</a> instead.</p>

#### `detachThingPrincipal`

``` purescript
detachThingPrincipal :: forall eff. DetachThingPrincipalRequest -> Aff (exception :: EXCEPTION | eff) DetachThingPrincipalResponse
```

<p>Detaches the specified principal from the specified thing.</p>

#### `disableTopicRule`

``` purescript
disableTopicRule :: forall eff. DisableTopicRuleRequest -> Aff (exception :: EXCEPTION | eff) NoOutput
```

<p>Disables the rule.</p>

#### `enableTopicRule`

``` purescript
enableTopicRule :: forall eff. EnableTopicRuleRequest -> Aff (exception :: EXCEPTION | eff) NoOutput
```

<p>Enables the rule.</p>

#### `getEffectivePolicies`

``` purescript
getEffectivePolicies :: forall eff. GetEffectivePoliciesRequest -> Aff (exception :: EXCEPTION | eff) GetEffectivePoliciesResponse
```

<p>Gets effective policies.</p>

#### `getIndexingConfiguration`

``` purescript
getIndexingConfiguration :: forall eff. GetIndexingConfigurationRequest -> Aff (exception :: EXCEPTION | eff) GetIndexingConfigurationResponse
```

<p>Gets the search configuration.</p>

#### `getJobDocument`

``` purescript
getJobDocument :: forall eff. GetJobDocumentRequest -> Aff (exception :: EXCEPTION | eff) GetJobDocumentResponse
```

<p>Gets a job document.</p>

#### `getLoggingOptions`

``` purescript
getLoggingOptions :: forall eff. GetLoggingOptionsRequest -> Aff (exception :: EXCEPTION | eff) GetLoggingOptionsResponse
```

<p>Gets the logging options.</p>

#### `getOTAUpdate`

``` purescript
getOTAUpdate :: forall eff. GetOTAUpdateRequest -> Aff (exception :: EXCEPTION | eff) GetOTAUpdateResponse
```

<p>Gets an OTA update.</p>

#### `getPolicy`

``` purescript
getPolicy :: forall eff. GetPolicyRequest -> Aff (exception :: EXCEPTION | eff) GetPolicyResponse
```

<p>Gets information about the specified policy with the policy document of the default version.</p>

#### `getPolicyVersion`

``` purescript
getPolicyVersion :: forall eff. GetPolicyVersionRequest -> Aff (exception :: EXCEPTION | eff) GetPolicyVersionResponse
```

<p>Gets information about the specified policy version.</p>

#### `getRegistrationCode`

``` purescript
getRegistrationCode :: forall eff. GetRegistrationCodeRequest -> Aff (exception :: EXCEPTION | eff) GetRegistrationCodeResponse
```

<p>Gets a registration code used to register a CA certificate with AWS IoT.</p>

#### `getTopicRule`

``` purescript
getTopicRule :: forall eff. GetTopicRuleRequest -> Aff (exception :: EXCEPTION | eff) GetTopicRuleResponse
```

<p>Gets information about the rule.</p>

#### `getV2LoggingOptions`

``` purescript
getV2LoggingOptions :: forall eff. GetV2LoggingOptionsRequest -> Aff (exception :: EXCEPTION | eff) GetV2LoggingOptionsResponse
```

<p>Gets the fine grained logging options.</p>

#### `listAttachedPolicies`

``` purescript
listAttachedPolicies :: forall eff. ListAttachedPoliciesRequest -> Aff (exception :: EXCEPTION | eff) ListAttachedPoliciesResponse
```

<p>Lists the policies attached to the specified thing group.</p>

#### `listAuthorizers`

``` purescript
listAuthorizers :: forall eff. ListAuthorizersRequest -> Aff (exception :: EXCEPTION | eff) ListAuthorizersResponse
```

<p>Lists the authorizers registered in your account.</p>

#### `listCACertificates`

``` purescript
listCACertificates :: forall eff. ListCACertificatesRequest -> Aff (exception :: EXCEPTION | eff) ListCACertificatesResponse
```

<p>Lists the CA certificates registered for your AWS account.</p> <p>The results are paginated with a default page size of 25. You can use the returned marker to retrieve additional results.</p>

#### `listCertificates`

``` purescript
listCertificates :: forall eff. ListCertificatesRequest -> Aff (exception :: EXCEPTION | eff) ListCertificatesResponse
```

<p>Lists the certificates registered in your AWS account.</p> <p>The results are paginated with a default page size of 25. You can use the returned marker to retrieve additional results.</p>

#### `listCertificatesByCA`

``` purescript
listCertificatesByCA :: forall eff. ListCertificatesByCARequest -> Aff (exception :: EXCEPTION | eff) ListCertificatesByCAResponse
```

<p>List the device certificates signed by the specified CA certificate.</p>

#### `listIndices`

``` purescript
listIndices :: forall eff. ListIndicesRequest -> Aff (exception :: EXCEPTION | eff) ListIndicesResponse
```

<p>Lists the search indices.</p>

#### `listJobExecutionsForJob`

``` purescript
listJobExecutionsForJob :: forall eff. ListJobExecutionsForJobRequest -> Aff (exception :: EXCEPTION | eff) ListJobExecutionsForJobResponse
```

<p>Lists the job executions for a job.</p>

#### `listJobExecutionsForThing`

``` purescript
listJobExecutionsForThing :: forall eff. ListJobExecutionsForThingRequest -> Aff (exception :: EXCEPTION | eff) ListJobExecutionsForThingResponse
```

<p>Lists the job executions for the specified thing.</p>

#### `listJobs`

``` purescript
listJobs :: forall eff. ListJobsRequest -> Aff (exception :: EXCEPTION | eff) ListJobsResponse
```

<p>Lists jobs.</p>

#### `listOTAUpdates`

``` purescript
listOTAUpdates :: forall eff. ListOTAUpdatesRequest -> Aff (exception :: EXCEPTION | eff) ListOTAUpdatesResponse
```

<p>Lists OTA updates.</p>

#### `listOutgoingCertificates`

``` purescript
listOutgoingCertificates :: forall eff. ListOutgoingCertificatesRequest -> Aff (exception :: EXCEPTION | eff) ListOutgoingCertificatesResponse
```

<p>Lists certificates that are being transferred but not yet accepted.</p>

#### `listPolicies`

``` purescript
listPolicies :: forall eff. ListPoliciesRequest -> Aff (exception :: EXCEPTION | eff) ListPoliciesResponse
```

<p>Lists your policies.</p>

#### `listPolicyPrincipals`

``` purescript
listPolicyPrincipals :: forall eff. ListPolicyPrincipalsRequest -> Aff (exception :: EXCEPTION | eff) ListPolicyPrincipalsResponse
```

<p>Lists the principals associated with the specified policy.</p> <p> <b>Note:</b> This API is deprecated. Please use <a>ListTargetsForPolicy</a> instead.</p>

#### `listPolicyVersions`

``` purescript
listPolicyVersions :: forall eff. ListPolicyVersionsRequest -> Aff (exception :: EXCEPTION | eff) ListPolicyVersionsResponse
```

<p>Lists the versions of the specified policy and identifies the default version.</p>

#### `listPrincipalPolicies`

``` purescript
listPrincipalPolicies :: forall eff. ListPrincipalPoliciesRequest -> Aff (exception :: EXCEPTION | eff) ListPrincipalPoliciesResponse
```

<p>Lists the policies attached to the specified principal. If you use an Cognito identity, the ID must be in <a href="http://docs.aws.amazon.com/cognitoidentity/latest/APIReference/API_GetCredentialsForIdentity.html#API_GetCredentialsForIdentity_RequestSyntax">AmazonCognito Identity format</a>.</p> <p> <b>Note:</b> This API is deprecated. Please use <a>ListAttachedPolicies</a> instead.</p>

#### `listPrincipalThings`

``` purescript
listPrincipalThings :: forall eff. ListPrincipalThingsRequest -> Aff (exception :: EXCEPTION | eff) ListPrincipalThingsResponse
```

<p>Lists the things associated with the specified principal.</p>

#### `listRoleAliases`

``` purescript
listRoleAliases :: forall eff. ListRoleAliasesRequest -> Aff (exception :: EXCEPTION | eff) ListRoleAliasesResponse
```

<p>Lists the role aliases registered in your account.</p>

#### `listStreams`

``` purescript
listStreams :: forall eff. ListStreamsRequest -> Aff (exception :: EXCEPTION | eff) ListStreamsResponse
```

<p>Lists all of the streams in your AWS account.</p>

#### `listTargetsForPolicy`

``` purescript
listTargetsForPolicy :: forall eff. ListTargetsForPolicyRequest -> Aff (exception :: EXCEPTION | eff) ListTargetsForPolicyResponse
```

<p>List targets for the specified policy.</p>

#### `listThingGroups`

``` purescript
listThingGroups :: forall eff. ListThingGroupsRequest -> Aff (exception :: EXCEPTION | eff) ListThingGroupsResponse
```

<p>List the thing groups in your account.</p>

#### `listThingGroupsForThing`

``` purescript
listThingGroupsForThing :: forall eff. ListThingGroupsForThingRequest -> Aff (exception :: EXCEPTION | eff) ListThingGroupsForThingResponse
```

<p>List the thing groups to which the specified thing belongs.</p>

#### `listThingPrincipals`

``` purescript
listThingPrincipals :: forall eff. ListThingPrincipalsRequest -> Aff (exception :: EXCEPTION | eff) ListThingPrincipalsResponse
```

<p>Lists the principals associated with the specified thing.</p>

#### `listThingRegistrationTaskReports`

``` purescript
listThingRegistrationTaskReports :: forall eff. ListThingRegistrationTaskReportsRequest -> Aff (exception :: EXCEPTION | eff) ListThingRegistrationTaskReportsResponse
```

<p>Information about the thing registration tasks.</p>

#### `listThingRegistrationTasks`

``` purescript
listThingRegistrationTasks :: forall eff. ListThingRegistrationTasksRequest -> Aff (exception :: EXCEPTION | eff) ListThingRegistrationTasksResponse
```

<p>List bulk thing provisioning tasks.</p>

#### `listThingTypes`

``` purescript
listThingTypes :: forall eff. ListThingTypesRequest -> Aff (exception :: EXCEPTION | eff) ListThingTypesResponse
```

<p>Lists the existing thing types.</p>

#### `listThings`

``` purescript
listThings :: forall eff. ListThingsRequest -> Aff (exception :: EXCEPTION | eff) ListThingsResponse
```

<p>Lists your things. Use the <b>attributeName</b> and <b>attributeValue</b> parameters to filter your things. For example, calling <code>ListThings</code> with attributeName=Color and attributeValue=Red retrieves all things in the registry that contain an attribute <b>Color</b> with the value <b>Red</b>. </p>

#### `listThingsInThingGroup`

``` purescript
listThingsInThingGroup :: forall eff. ListThingsInThingGroupRequest -> Aff (exception :: EXCEPTION | eff) ListThingsInThingGroupResponse
```

<p>Lists the things in the specified group.</p>

#### `listTopicRules`

``` purescript
listTopicRules :: forall eff. ListTopicRulesRequest -> Aff (exception :: EXCEPTION | eff) ListTopicRulesResponse
```

<p>Lists the rules for the specific topic.</p>

#### `listV2LoggingLevels`

``` purescript
listV2LoggingLevels :: forall eff. ListV2LoggingLevelsRequest -> Aff (exception :: EXCEPTION | eff) ListV2LoggingLevelsResponse
```

<p>Lists logging levels.</p>

#### `registerCACertificate`

``` purescript
registerCACertificate :: forall eff. RegisterCACertificateRequest -> Aff (exception :: EXCEPTION | eff) RegisterCACertificateResponse
```

<p>Registers a CA certificate with AWS IoT. This CA certificate can then be used to sign device certificates, which can be then registered with AWS IoT. You can register up to 10 CA certificates per AWS account that have the same subject field. This enables you to have up to 10 certificate authorities sign your device certificates. If you have more than one CA certificate registered, make sure you pass the CA certificate when you register your device certificates with the RegisterCertificate API.</p>

#### `registerCertificate`

``` purescript
registerCertificate :: forall eff. RegisterCertificateRequest -> Aff (exception :: EXCEPTION | eff) RegisterCertificateResponse
```

<p>Registers a device certificate with AWS IoT. If you have more than one CA certificate that has the same subject field, you must specify the CA certificate that was used to sign the device certificate being registered.</p>

#### `registerThing`

``` purescript
registerThing :: forall eff. RegisterThingRequest -> Aff (exception :: EXCEPTION | eff) RegisterThingResponse
```

<p>Provisions a thing.</p>

#### `rejectCertificateTransfer`

``` purescript
rejectCertificateTransfer :: forall eff. RejectCertificateTransferRequest -> Aff (exception :: EXCEPTION | eff) NoOutput
```

<p>Rejects a pending certificate transfer. After AWS IoT rejects a certificate transfer, the certificate status changes from <b>PENDING_TRANSFER</b> to <b>INACTIVE</b>.</p> <p>To check for pending certificate transfers, call <a>ListCertificates</a> to enumerate your certificates.</p> <p>This operation can only be called by the transfer destination. After it is called, the certificate will be returned to the source's account in the INACTIVE state.</p>

#### `removeThingFromThingGroup`

``` purescript
removeThingFromThingGroup :: forall eff. RemoveThingFromThingGroupRequest -> Aff (exception :: EXCEPTION | eff) RemoveThingFromThingGroupResponse
```

<p>Remove the specified thing from the specified group.</p>

#### `replaceTopicRule`

``` purescript
replaceTopicRule :: forall eff. ReplaceTopicRuleRequest -> Aff (exception :: EXCEPTION | eff) NoOutput
```

<p>Replaces the rule. You must specify all parameters for the new rule. Creating rules is an administrator-level action. Any user who has permission to create rules will be able to access data processed by the rule.</p>

#### `searchIndex`

``` purescript
searchIndex :: forall eff. SearchIndexRequest -> Aff (exception :: EXCEPTION | eff) SearchIndexResponse
```

<p>The query search index.</p>

#### `setDefaultAuthorizer`

``` purescript
setDefaultAuthorizer :: forall eff. SetDefaultAuthorizerRequest -> Aff (exception :: EXCEPTION | eff) SetDefaultAuthorizerResponse
```

<p>Sets the default authorizer. This will be used if a websocket connection is made without specifying an authorizer.</p>

#### `setDefaultPolicyVersion`

``` purescript
setDefaultPolicyVersion :: forall eff. SetDefaultPolicyVersionRequest -> Aff (exception :: EXCEPTION | eff) NoOutput
```

<p>Sets the specified version of the specified policy as the policy's default (operative) version. This action affects all certificates to which the policy is attached. To list the principals the policy is attached to, use the ListPrincipalPolicy API.</p>

#### `setLoggingOptions`

``` purescript
setLoggingOptions :: forall eff. SetLoggingOptionsRequest -> Aff (exception :: EXCEPTION | eff) NoOutput
```

<p>Sets the logging options.</p>

#### `setV2LoggingLevel`

``` purescript
setV2LoggingLevel :: forall eff. SetV2LoggingLevelRequest -> Aff (exception :: EXCEPTION | eff) NoOutput
```

<p>Sets the logging level.</p>

#### `setV2LoggingOptions`

``` purescript
setV2LoggingOptions :: forall eff. SetV2LoggingOptionsRequest -> Aff (exception :: EXCEPTION | eff) NoOutput
```

<p>Sets the logging options for the V2 logging service.</p>

#### `startThingRegistrationTask`

``` purescript
startThingRegistrationTask :: forall eff. StartThingRegistrationTaskRequest -> Aff (exception :: EXCEPTION | eff) StartThingRegistrationTaskResponse
```

<p>Creates a bulk thing provisioning task.</p>

#### `stopThingRegistrationTask`

``` purescript
stopThingRegistrationTask :: forall eff. StopThingRegistrationTaskRequest -> Aff (exception :: EXCEPTION | eff) StopThingRegistrationTaskResponse
```

<p>Cancels a bulk thing provisioning task.</p>

#### `testAuthorization`

``` purescript
testAuthorization :: forall eff. TestAuthorizationRequest -> Aff (exception :: EXCEPTION | eff) TestAuthorizationResponse
```

<p>Test custom authorization.</p>

#### `testInvokeAuthorizer`

``` purescript
testInvokeAuthorizer :: forall eff. TestInvokeAuthorizerRequest -> Aff (exception :: EXCEPTION | eff) TestInvokeAuthorizerResponse
```

<p>Invoke the specified custom authorizer for testing purposes.</p>

#### `transferCertificate`

``` purescript
transferCertificate :: forall eff. TransferCertificateRequest -> Aff (exception :: EXCEPTION | eff) TransferCertificateResponse
```

<p>Transfers the specified certificate to the specified AWS account.</p> <p>You can cancel the transfer until it is acknowledged by the recipient.</p> <p>No notification is sent to the transfer destination's account. It is up to the caller to notify the transfer target.</p> <p>The certificate being transferred must not be in the ACTIVE state. You can use the UpdateCertificate API to deactivate it.</p> <p>The certificate must not have any policies attached to it. You can use the DetachPrincipalPolicy API to detach them.</p>

#### `updateAuthorizer`

``` purescript
updateAuthorizer :: forall eff. UpdateAuthorizerRequest -> Aff (exception :: EXCEPTION | eff) UpdateAuthorizerResponse
```

<p>Updates an authorizer.</p>

#### `updateCACertificate`

``` purescript
updateCACertificate :: forall eff. UpdateCACertificateRequest -> Aff (exception :: EXCEPTION | eff) NoOutput
```

<p>Updates a registered CA certificate.</p>

#### `updateCertificate`

``` purescript
updateCertificate :: forall eff. UpdateCertificateRequest -> Aff (exception :: EXCEPTION | eff) NoOutput
```

<p>Updates the status of the specified certificate. This operation is idempotent.</p> <p>Moving a certificate from the ACTIVE state (including REVOKED) will not disconnect currently connected devices, but these devices will be unable to reconnect.</p> <p>The ACTIVE state is required to authenticate devices connecting to AWS IoT using a certificate.</p>

#### `updateEventConfigurations`

``` purescript
updateEventConfigurations :: forall eff. UpdateEventConfigurationsRequest -> Aff (exception :: EXCEPTION | eff) UpdateEventConfigurationsResponse
```

<p>Updates the event configurations.</p>

#### `updateIndexingConfiguration`

``` purescript
updateIndexingConfiguration :: forall eff. UpdateIndexingConfigurationRequest -> Aff (exception :: EXCEPTION | eff) UpdateIndexingConfigurationResponse
```

<p>Updates the search configuration.</p>

#### `updateRoleAlias`

``` purescript
updateRoleAlias :: forall eff. UpdateRoleAliasRequest -> Aff (exception :: EXCEPTION | eff) UpdateRoleAliasResponse
```

<p>Updates a role alias.</p>

#### `updateStream`

``` purescript
updateStream :: forall eff. UpdateStreamRequest -> Aff (exception :: EXCEPTION | eff) UpdateStreamResponse
```

<p>Updates an existing stream. The stream version will be incremented by one.</p>

#### `updateThing`

``` purescript
updateThing :: forall eff. UpdateThingRequest -> Aff (exception :: EXCEPTION | eff) UpdateThingResponse
```

<p>Updates the data for a thing.</p>

#### `updateThingGroup`

``` purescript
updateThingGroup :: forall eff. UpdateThingGroupRequest -> Aff (exception :: EXCEPTION | eff) UpdateThingGroupResponse
```

<p>Update a thing group.</p>

#### `updateThingGroupsForThing`

``` purescript
updateThingGroupsForThing :: forall eff. UpdateThingGroupsForThingRequest -> Aff (exception :: EXCEPTION | eff) UpdateThingGroupsForThingResponse
```

<p>Updates the groups to which the thing belongs.</p>

#### `AcceptCertificateTransferRequest`

``` purescript
newtype AcceptCertificateTransferRequest
  = AcceptCertificateTransferRequest { certificateId :: CertificateId, setAsActive :: NullOrUndefined (SetAsActive) }
```

<p>The input for the AcceptCertificateTransfer operation.</p>

##### Instances
``` purescript
Newtype AcceptCertificateTransferRequest _
Generic AcceptCertificateTransferRequest _
Show AcceptCertificateTransferRequest
Decode AcceptCertificateTransferRequest
Encode AcceptCertificateTransferRequest
```

#### `newAcceptCertificateTransferRequest`

``` purescript
newAcceptCertificateTransferRequest :: CertificateId -> AcceptCertificateTransferRequest
```

Constructs AcceptCertificateTransferRequest from required parameters

#### `newAcceptCertificateTransferRequest'`

``` purescript
newAcceptCertificateTransferRequest' :: CertificateId -> ({ certificateId :: CertificateId, setAsActive :: NullOrUndefined (SetAsActive) } -> { certificateId :: CertificateId, setAsActive :: NullOrUndefined (SetAsActive) }) -> AcceptCertificateTransferRequest
```

Constructs AcceptCertificateTransferRequest's fields from required parameters

#### `Action`

``` purescript
newtype Action
  = Action { dynamoDB :: NullOrUndefined (DynamoDBAction), dynamoDBv2 :: NullOrUndefined (DynamoDBv2Action), lambda :: NullOrUndefined (LambdaAction), sns :: NullOrUndefined (SnsAction), sqs :: NullOrUndefined (SqsAction), kinesis :: NullOrUndefined (KinesisAction), republish :: NullOrUndefined (RepublishAction), s3 :: NullOrUndefined (S3Action), firehose :: NullOrUndefined (FirehoseAction), cloudwatchMetric :: NullOrUndefined (CloudwatchMetricAction), cloudwatchAlarm :: NullOrUndefined (CloudwatchAlarmAction), elasticsearch :: NullOrUndefined (ElasticsearchAction), salesforce :: NullOrUndefined (SalesforceAction) }
```

<p>Describes the actions associated with a rule.</p>

##### Instances
``` purescript
Newtype Action _
Generic Action _
Show Action
Decode Action
Encode Action
```

#### `newAction`

``` purescript
newAction :: Action
```

Constructs Action from required parameters

#### `newAction'`

``` purescript
newAction' :: ({ dynamoDB :: NullOrUndefined (DynamoDBAction), dynamoDBv2 :: NullOrUndefined (DynamoDBv2Action), lambda :: NullOrUndefined (LambdaAction), sns :: NullOrUndefined (SnsAction), sqs :: NullOrUndefined (SqsAction), kinesis :: NullOrUndefined (KinesisAction), republish :: NullOrUndefined (RepublishAction), s3 :: NullOrUndefined (S3Action), firehose :: NullOrUndefined (FirehoseAction), cloudwatchMetric :: NullOrUndefined (CloudwatchMetricAction), cloudwatchAlarm :: NullOrUndefined (CloudwatchAlarmAction), elasticsearch :: NullOrUndefined (ElasticsearchAction), salesforce :: NullOrUndefined (SalesforceAction) } -> { dynamoDB :: NullOrUndefined (DynamoDBAction), dynamoDBv2 :: NullOrUndefined (DynamoDBv2Action), lambda :: NullOrUndefined (LambdaAction), sns :: NullOrUndefined (SnsAction), sqs :: NullOrUndefined (SqsAction), kinesis :: NullOrUndefined (KinesisAction), republish :: NullOrUndefined (RepublishAction), s3 :: NullOrUndefined (S3Action), firehose :: NullOrUndefined (FirehoseAction), cloudwatchMetric :: NullOrUndefined (CloudwatchMetricAction), cloudwatchAlarm :: NullOrUndefined (CloudwatchAlarmAction), elasticsearch :: NullOrUndefined (ElasticsearchAction), salesforce :: NullOrUndefined (SalesforceAction) }) -> Action
```

Constructs Action's fields from required parameters

#### `ActionList`

``` purescript
newtype ActionList
  = ActionList (Array Action)
```

##### Instances
``` purescript
Newtype ActionList _
Generic ActionList _
Show ActionList
Decode ActionList
Encode ActionList
```

#### `ActionType`

``` purescript
newtype ActionType
  = ActionType String
```

##### Instances
``` purescript
Newtype ActionType _
Generic ActionType _
Show ActionType
Decode ActionType
Encode ActionType
```

#### `AddThingToThingGroupRequest`

``` purescript
newtype AddThingToThingGroupRequest
  = AddThingToThingGroupRequest { thingGroupName :: NullOrUndefined (ThingGroupName), thingGroupArn :: NullOrUndefined (ThingGroupArn), thingName :: NullOrUndefined (ThingName), thingArn :: NullOrUndefined (ThingArn) }
```

##### Instances
``` purescript
Newtype AddThingToThingGroupRequest _
Generic AddThingToThingGroupRequest _
Show AddThingToThingGroupRequest
Decode AddThingToThingGroupRequest
Encode AddThingToThingGroupRequest
```

#### `newAddThingToThingGroupRequest`

``` purescript
newAddThingToThingGroupRequest :: AddThingToThingGroupRequest
```

Constructs AddThingToThingGroupRequest from required parameters

#### `newAddThingToThingGroupRequest'`

``` purescript
newAddThingToThingGroupRequest' :: ({ thingGroupName :: NullOrUndefined (ThingGroupName), thingGroupArn :: NullOrUndefined (ThingGroupArn), thingName :: NullOrUndefined (ThingName), thingArn :: NullOrUndefined (ThingArn) } -> { thingGroupName :: NullOrUndefined (ThingGroupName), thingGroupArn :: NullOrUndefined (ThingGroupArn), thingName :: NullOrUndefined (ThingName), thingArn :: NullOrUndefined (ThingArn) }) -> AddThingToThingGroupRequest
```

Constructs AddThingToThingGroupRequest's fields from required parameters

#### `AddThingToThingGroupResponse`

``` purescript
newtype AddThingToThingGroupResponse
  = AddThingToThingGroupResponse NoArguments
```

##### Instances
``` purescript
Newtype AddThingToThingGroupResponse _
Generic AddThingToThingGroupResponse _
Show AddThingToThingGroupResponse
Decode AddThingToThingGroupResponse
Encode AddThingToThingGroupResponse
```

#### `AdditionalParameterMap`

``` purescript
newtype AdditionalParameterMap
  = AdditionalParameterMap (StrMap Value)
```

##### Instances
``` purescript
Newtype AdditionalParameterMap _
Generic AdditionalParameterMap _
Show AdditionalParameterMap
Decode AdditionalParameterMap
Encode AdditionalParameterMap
```

#### `AlarmName`

``` purescript
newtype AlarmName
  = AlarmName String
```

##### Instances
``` purescript
Newtype AlarmName _
Generic AlarmName _
Show AlarmName
Decode AlarmName
Encode AlarmName
```

#### `AllowAutoRegistration`

``` purescript
newtype AllowAutoRegistration
  = AllowAutoRegistration Boolean
```

##### Instances
``` purescript
Newtype AllowAutoRegistration _
Generic AllowAutoRegistration _
Show AllowAutoRegistration
Decode AllowAutoRegistration
Encode AllowAutoRegistration
```

#### `Allowed`

``` purescript
newtype Allowed
  = Allowed { policies :: NullOrUndefined (Policies) }
```

<p>Contains information that allowed the authorization.</p>

##### Instances
``` purescript
Newtype Allowed _
Generic Allowed _
Show Allowed
Decode Allowed
Encode Allowed
```

#### `newAllowed`

``` purescript
newAllowed :: Allowed
```

Constructs Allowed from required parameters

#### `newAllowed'`

``` purescript
newAllowed' :: ({ policies :: NullOrUndefined (Policies) } -> { policies :: NullOrUndefined (Policies) }) -> Allowed
```

Constructs Allowed's fields from required parameters

#### `AscendingOrder`

``` purescript
newtype AscendingOrder
  = AscendingOrder Boolean
```

##### Instances
``` purescript
Newtype AscendingOrder _
Generic AscendingOrder _
Show AscendingOrder
Decode AscendingOrder
Encode AscendingOrder
```

#### `AssociateTargetsWithJobRequest`

``` purescript
newtype AssociateTargetsWithJobRequest
  = AssociateTargetsWithJobRequest { targets :: JobTargets, jobId :: JobId, comment :: NullOrUndefined (Comment) }
```

##### Instances
``` purescript
Newtype AssociateTargetsWithJobRequest _
Generic AssociateTargetsWithJobRequest _
Show AssociateTargetsWithJobRequest
Decode AssociateTargetsWithJobRequest
Encode AssociateTargetsWithJobRequest
```

#### `newAssociateTargetsWithJobRequest`

``` purescript
newAssociateTargetsWithJobRequest :: JobId -> JobTargets -> AssociateTargetsWithJobRequest
```

Constructs AssociateTargetsWithJobRequest from required parameters

#### `newAssociateTargetsWithJobRequest'`

``` purescript
newAssociateTargetsWithJobRequest' :: JobId -> JobTargets -> ({ targets :: JobTargets, jobId :: JobId, comment :: NullOrUndefined (Comment) } -> { targets :: JobTargets, jobId :: JobId, comment :: NullOrUndefined (Comment) }) -> AssociateTargetsWithJobRequest
```

Constructs AssociateTargetsWithJobRequest's fields from required parameters

#### `AssociateTargetsWithJobResponse`

``` purescript
newtype AssociateTargetsWithJobResponse
  = AssociateTargetsWithJobResponse { jobArn :: NullOrUndefined (JobArn), jobId :: NullOrUndefined (JobId), description :: NullOrUndefined (JobDescription) }
```

##### Instances
``` purescript
Newtype AssociateTargetsWithJobResponse _
Generic AssociateTargetsWithJobResponse _
Show AssociateTargetsWithJobResponse
Decode AssociateTargetsWithJobResponse
Encode AssociateTargetsWithJobResponse
```

#### `newAssociateTargetsWithJobResponse`

``` purescript
newAssociateTargetsWithJobResponse :: AssociateTargetsWithJobResponse
```

Constructs AssociateTargetsWithJobResponse from required parameters

#### `newAssociateTargetsWithJobResponse'`

``` purescript
newAssociateTargetsWithJobResponse' :: ({ jobArn :: NullOrUndefined (JobArn), jobId :: NullOrUndefined (JobId), description :: NullOrUndefined (JobDescription) } -> { jobArn :: NullOrUndefined (JobArn), jobId :: NullOrUndefined (JobId), description :: NullOrUndefined (JobDescription) }) -> AssociateTargetsWithJobResponse
```

Constructs AssociateTargetsWithJobResponse's fields from required parameters

#### `AttachPolicyRequest`

``` purescript
newtype AttachPolicyRequest
  = AttachPolicyRequest { policyName :: PolicyName, target :: PolicyTarget }
```

##### Instances
``` purescript
Newtype AttachPolicyRequest _
Generic AttachPolicyRequest _
Show AttachPolicyRequest
Decode AttachPolicyRequest
Encode AttachPolicyRequest
```

#### `newAttachPolicyRequest`

``` purescript
newAttachPolicyRequest :: PolicyName -> PolicyTarget -> AttachPolicyRequest
```

Constructs AttachPolicyRequest from required parameters

#### `newAttachPolicyRequest'`

``` purescript
newAttachPolicyRequest' :: PolicyName -> PolicyTarget -> ({ policyName :: PolicyName, target :: PolicyTarget } -> { policyName :: PolicyName, target :: PolicyTarget }) -> AttachPolicyRequest
```

Constructs AttachPolicyRequest's fields from required parameters

#### `AttachPrincipalPolicyRequest`

``` purescript
newtype AttachPrincipalPolicyRequest
  = AttachPrincipalPolicyRequest { policyName :: PolicyName, principal :: Principal }
```

<p>The input for the AttachPrincipalPolicy operation.</p>

##### Instances
``` purescript
Newtype AttachPrincipalPolicyRequest _
Generic AttachPrincipalPolicyRequest _
Show AttachPrincipalPolicyRequest
Decode AttachPrincipalPolicyRequest
Encode AttachPrincipalPolicyRequest
```

#### `newAttachPrincipalPolicyRequest`

``` purescript
newAttachPrincipalPolicyRequest :: PolicyName -> Principal -> AttachPrincipalPolicyRequest
```

Constructs AttachPrincipalPolicyRequest from required parameters

#### `newAttachPrincipalPolicyRequest'`

``` purescript
newAttachPrincipalPolicyRequest' :: PolicyName -> Principal -> ({ policyName :: PolicyName, principal :: Principal } -> { policyName :: PolicyName, principal :: Principal }) -> AttachPrincipalPolicyRequest
```

Constructs AttachPrincipalPolicyRequest's fields from required parameters

#### `AttachThingPrincipalRequest`

``` purescript
newtype AttachThingPrincipalRequest
  = AttachThingPrincipalRequest { thingName :: ThingName, principal :: Principal }
```

<p>The input for the AttachThingPrincipal operation.</p>

##### Instances
``` purescript
Newtype AttachThingPrincipalRequest _
Generic AttachThingPrincipalRequest _
Show AttachThingPrincipalRequest
Decode AttachThingPrincipalRequest
Encode AttachThingPrincipalRequest
```

#### `newAttachThingPrincipalRequest`

``` purescript
newAttachThingPrincipalRequest :: Principal -> ThingName -> AttachThingPrincipalRequest
```

Constructs AttachThingPrincipalRequest from required parameters

#### `newAttachThingPrincipalRequest'`

``` purescript
newAttachThingPrincipalRequest' :: Principal -> ThingName -> ({ thingName :: ThingName, principal :: Principal } -> { thingName :: ThingName, principal :: Principal }) -> AttachThingPrincipalRequest
```

Constructs AttachThingPrincipalRequest's fields from required parameters

#### `AttachThingPrincipalResponse`

``` purescript
newtype AttachThingPrincipalResponse
  = AttachThingPrincipalResponse NoArguments
```

<p>The output from the AttachThingPrincipal operation.</p>

##### Instances
``` purescript
Newtype AttachThingPrincipalResponse _
Generic AttachThingPrincipalResponse _
Show AttachThingPrincipalResponse
Decode AttachThingPrincipalResponse
Encode AttachThingPrincipalResponse
```

#### `AttributeName`

``` purescript
newtype AttributeName
  = AttributeName String
```

##### Instances
``` purescript
Newtype AttributeName _
Generic AttributeName _
Show AttributeName
Decode AttributeName
Encode AttributeName
```

#### `AttributePayload`

``` purescript
newtype AttributePayload
  = AttributePayload { attributes :: NullOrUndefined (Attributes), merge :: NullOrUndefined (Flag) }
```

<p>The attribute payload.</p>

##### Instances
``` purescript
Newtype AttributePayload _
Generic AttributePayload _
Show AttributePayload
Decode AttributePayload
Encode AttributePayload
```

#### `newAttributePayload`

``` purescript
newAttributePayload :: AttributePayload
```

Constructs AttributePayload from required parameters

#### `newAttributePayload'`

``` purescript
newAttributePayload' :: ({ attributes :: NullOrUndefined (Attributes), merge :: NullOrUndefined (Flag) } -> { attributes :: NullOrUndefined (Attributes), merge :: NullOrUndefined (Flag) }) -> AttributePayload
```

Constructs AttributePayload's fields from required parameters

#### `AttributeValue`

``` purescript
newtype AttributeValue
  = AttributeValue String
```

##### Instances
``` purescript
Newtype AttributeValue _
Generic AttributeValue _
Show AttributeValue
Decode AttributeValue
Encode AttributeValue
```

#### `Attributes`

``` purescript
newtype Attributes
  = Attributes (StrMap AttributeValue)
```

##### Instances
``` purescript
Newtype Attributes _
Generic Attributes _
Show Attributes
Decode Attributes
Encode Attributes
```

#### `AttributesMap`

``` purescript
newtype AttributesMap
  = AttributesMap (StrMap Value)
```

##### Instances
``` purescript
Newtype AttributesMap _
Generic AttributesMap _
Show AttributesMap
Decode AttributesMap
Encode AttributesMap
```

#### `AuthDecision`

``` purescript
newtype AuthDecision
  = AuthDecision String
```

##### Instances
``` purescript
Newtype AuthDecision _
Generic AuthDecision _
Show AuthDecision
Decode AuthDecision
Encode AuthDecision
```

#### `AuthInfo`

``` purescript
newtype AuthInfo
  = AuthInfo { actionType :: NullOrUndefined (ActionType), resources :: NullOrUndefined (Resources) }
```

<p>A collection of authorization information.</p>

##### Instances
``` purescript
Newtype AuthInfo _
Generic AuthInfo _
Show AuthInfo
Decode AuthInfo
Encode AuthInfo
```

#### `newAuthInfo`

``` purescript
newAuthInfo :: AuthInfo
```

Constructs AuthInfo from required parameters

#### `newAuthInfo'`

``` purescript
newAuthInfo' :: ({ actionType :: NullOrUndefined (ActionType), resources :: NullOrUndefined (Resources) } -> { actionType :: NullOrUndefined (ActionType), resources :: NullOrUndefined (Resources) }) -> AuthInfo
```

Constructs AuthInfo's fields from required parameters

#### `AuthInfos`

``` purescript
newtype AuthInfos
  = AuthInfos (Array AuthInfo)
```

##### Instances
``` purescript
Newtype AuthInfos _
Generic AuthInfos _
Show AuthInfos
Decode AuthInfos
Encode AuthInfos
```

#### `AuthResult`

``` purescript
newtype AuthResult
  = AuthResult { authInfo :: NullOrUndefined (AuthInfo), allowed :: NullOrUndefined (Allowed), denied :: NullOrUndefined (Denied), authDecision :: NullOrUndefined (AuthDecision), missingContextValues :: NullOrUndefined (MissingContextValues) }
```

<p>The authorizer result.</p>

##### Instances
``` purescript
Newtype AuthResult _
Generic AuthResult _
Show AuthResult
Decode AuthResult
Encode AuthResult
```

#### `newAuthResult`

``` purescript
newAuthResult :: AuthResult
```

Constructs AuthResult from required parameters

#### `newAuthResult'`

``` purescript
newAuthResult' :: ({ authInfo :: NullOrUndefined (AuthInfo), allowed :: NullOrUndefined (Allowed), denied :: NullOrUndefined (Denied), authDecision :: NullOrUndefined (AuthDecision), missingContextValues :: NullOrUndefined (MissingContextValues) } -> { authInfo :: NullOrUndefined (AuthInfo), allowed :: NullOrUndefined (Allowed), denied :: NullOrUndefined (Denied), authDecision :: NullOrUndefined (AuthDecision), missingContextValues :: NullOrUndefined (MissingContextValues) }) -> AuthResult
```

Constructs AuthResult's fields from required parameters

#### `AuthResults`

``` purescript
newtype AuthResults
  = AuthResults (Array AuthResult)
```

##### Instances
``` purescript
Newtype AuthResults _
Generic AuthResults _
Show AuthResults
Decode AuthResults
Encode AuthResults
```

#### `AuthorizerArn`

``` purescript
newtype AuthorizerArn
  = AuthorizerArn String
```

##### Instances
``` purescript
Newtype AuthorizerArn _
Generic AuthorizerArn _
Show AuthorizerArn
Decode AuthorizerArn
Encode AuthorizerArn
```

#### `AuthorizerDescription`

``` purescript
newtype AuthorizerDescription
  = AuthorizerDescription { authorizerName :: NullOrUndefined (AuthorizerName), authorizerArn :: NullOrUndefined (AuthorizerArn), authorizerFunctionArn :: NullOrUndefined (AuthorizerFunctionArn), tokenKeyName :: NullOrUndefined (TokenKeyName), tokenSigningPublicKeys :: NullOrUndefined (PublicKeyMap), status :: NullOrUndefined (AuthorizerStatus), creationDate :: NullOrUndefined (DateType), lastModifiedDate :: NullOrUndefined (DateType) }
```

<p>The authorizer description.</p>

##### Instances
``` purescript
Newtype AuthorizerDescription _
Generic AuthorizerDescription _
Show AuthorizerDescription
Decode AuthorizerDescription
Encode AuthorizerDescription
```

#### `newAuthorizerDescription`

``` purescript
newAuthorizerDescription :: AuthorizerDescription
```

Constructs AuthorizerDescription from required parameters

#### `newAuthorizerDescription'`

``` purescript
newAuthorizerDescription' :: ({ authorizerName :: NullOrUndefined (AuthorizerName), authorizerArn :: NullOrUndefined (AuthorizerArn), authorizerFunctionArn :: NullOrUndefined (AuthorizerFunctionArn), tokenKeyName :: NullOrUndefined (TokenKeyName), tokenSigningPublicKeys :: NullOrUndefined (PublicKeyMap), status :: NullOrUndefined (AuthorizerStatus), creationDate :: NullOrUndefined (DateType), lastModifiedDate :: NullOrUndefined (DateType) } -> { authorizerName :: NullOrUndefined (AuthorizerName), authorizerArn :: NullOrUndefined (AuthorizerArn), authorizerFunctionArn :: NullOrUndefined (AuthorizerFunctionArn), tokenKeyName :: NullOrUndefined (TokenKeyName), tokenSigningPublicKeys :: NullOrUndefined (PublicKeyMap), status :: NullOrUndefined (AuthorizerStatus), creationDate :: NullOrUndefined (DateType), lastModifiedDate :: NullOrUndefined (DateType) }) -> AuthorizerDescription
```

Constructs AuthorizerDescription's fields from required parameters

#### `AuthorizerFunctionArn`

``` purescript
newtype AuthorizerFunctionArn
  = AuthorizerFunctionArn String
```

##### Instances
``` purescript
Newtype AuthorizerFunctionArn _
Generic AuthorizerFunctionArn _
Show AuthorizerFunctionArn
Decode AuthorizerFunctionArn
Encode AuthorizerFunctionArn
```

#### `AuthorizerName`

``` purescript
newtype AuthorizerName
  = AuthorizerName String
```

##### Instances
``` purescript
Newtype AuthorizerName _
Generic AuthorizerName _
Show AuthorizerName
Decode AuthorizerName
Encode AuthorizerName
```

#### `AuthorizerStatus`

``` purescript
newtype AuthorizerStatus
  = AuthorizerStatus String
```

##### Instances
``` purescript
Newtype AuthorizerStatus _
Generic AuthorizerStatus _
Show AuthorizerStatus
Decode AuthorizerStatus
Encode AuthorizerStatus
```

#### `AuthorizerSummary`

``` purescript
newtype AuthorizerSummary
  = AuthorizerSummary { authorizerName :: NullOrUndefined (AuthorizerName), authorizerArn :: NullOrUndefined (AuthorizerArn) }
```

<p>The authorizer summary.</p>

##### Instances
``` purescript
Newtype AuthorizerSummary _
Generic AuthorizerSummary _
Show AuthorizerSummary
Decode AuthorizerSummary
Encode AuthorizerSummary
```

#### `newAuthorizerSummary`

``` purescript
newAuthorizerSummary :: AuthorizerSummary
```

Constructs AuthorizerSummary from required parameters

#### `newAuthorizerSummary'`

``` purescript
newAuthorizerSummary' :: ({ authorizerName :: NullOrUndefined (AuthorizerName), authorizerArn :: NullOrUndefined (AuthorizerArn) } -> { authorizerName :: NullOrUndefined (AuthorizerName), authorizerArn :: NullOrUndefined (AuthorizerArn) }) -> AuthorizerSummary
```

Constructs AuthorizerSummary's fields from required parameters

#### `Authorizers`

``` purescript
newtype Authorizers
  = Authorizers (Array AuthorizerSummary)
```

##### Instances
``` purescript
Newtype Authorizers _
Generic Authorizers _
Show Authorizers
Decode Authorizers
Encode Authorizers
```

#### `AutoRegistrationStatus`

``` purescript
newtype AutoRegistrationStatus
  = AutoRegistrationStatus String
```

##### Instances
``` purescript
Newtype AutoRegistrationStatus _
Generic AutoRegistrationStatus _
Show AutoRegistrationStatus
Decode AutoRegistrationStatus
Encode AutoRegistrationStatus
```

#### `AwsAccountId`

``` purescript
newtype AwsAccountId
  = AwsAccountId String
```

##### Instances
``` purescript
Newtype AwsAccountId _
Generic AwsAccountId _
Show AwsAccountId
Decode AwsAccountId
Encode AwsAccountId
```

#### `AwsArn`

``` purescript
newtype AwsArn
  = AwsArn String
```

##### Instances
``` purescript
Newtype AwsArn _
Generic AwsArn _
Show AwsArn
Decode AwsArn
Encode AwsArn
```

#### `AwsIotJobArn`

``` purescript
newtype AwsIotJobArn
  = AwsIotJobArn String
```

##### Instances
``` purescript
Newtype AwsIotJobArn _
Generic AwsIotJobArn _
Show AwsIotJobArn
Decode AwsIotJobArn
Encode AwsIotJobArn
```

#### `AwsIotJobId`

``` purescript
newtype AwsIotJobId
  = AwsIotJobId String
```

##### Instances
``` purescript
Newtype AwsIotJobId _
Generic AwsIotJobId _
Show AwsIotJobId
Decode AwsIotJobId
Encode AwsIotJobId
```

#### `AwsIotSqlVersion`

``` purescript
newtype AwsIotSqlVersion
  = AwsIotSqlVersion String
```

##### Instances
``` purescript
Newtype AwsIotSqlVersion _
Generic AwsIotSqlVersion _
Show AwsIotSqlVersion
Decode AwsIotSqlVersion
Encode AwsIotSqlVersion
```

#### `BucketName`

``` purescript
newtype BucketName
  = BucketName String
```

##### Instances
``` purescript
Newtype BucketName _
Generic BucketName _
Show BucketName
Decode BucketName
Encode BucketName
```

#### `CACertificate`

``` purescript
newtype CACertificate
  = CACertificate { certificateArn :: NullOrUndefined (CertificateArn), certificateId :: NullOrUndefined (CertificateId), status :: NullOrUndefined (CACertificateStatus), creationDate :: NullOrUndefined (DateType) }
```

<p>A CA certificate.</p>

##### Instances
``` purescript
Newtype CACertificate _
Generic CACertificate _
Show CACertificate
Decode CACertificate
Encode CACertificate
```

#### `newCACertificate`

``` purescript
newCACertificate :: CACertificate
```

Constructs CACertificate from required parameters

#### `newCACertificate'`

``` purescript
newCACertificate' :: ({ certificateArn :: NullOrUndefined (CertificateArn), certificateId :: NullOrUndefined (CertificateId), status :: NullOrUndefined (CACertificateStatus), creationDate :: NullOrUndefined (DateType) } -> { certificateArn :: NullOrUndefined (CertificateArn), certificateId :: NullOrUndefined (CertificateId), status :: NullOrUndefined (CACertificateStatus), creationDate :: NullOrUndefined (DateType) }) -> CACertificate
```

Constructs CACertificate's fields from required parameters

#### `CACertificateDescription`

``` purescript
newtype CACertificateDescription
  = CACertificateDescription { certificateArn :: NullOrUndefined (CertificateArn), certificateId :: NullOrUndefined (CertificateId), status :: NullOrUndefined (CACertificateStatus), certificatePem :: NullOrUndefined (CertificatePem), ownedBy :: NullOrUndefined (AwsAccountId), creationDate :: NullOrUndefined (DateType), autoRegistrationStatus :: NullOrUndefined (AutoRegistrationStatus) }
```

<p>Describes a CA certificate.</p>

##### Instances
``` purescript
Newtype CACertificateDescription _
Generic CACertificateDescription _
Show CACertificateDescription
Decode CACertificateDescription
Encode CACertificateDescription
```

#### `newCACertificateDescription`

``` purescript
newCACertificateDescription :: CACertificateDescription
```

Constructs CACertificateDescription from required parameters

#### `newCACertificateDescription'`

``` purescript
newCACertificateDescription' :: ({ certificateArn :: NullOrUndefined (CertificateArn), certificateId :: NullOrUndefined (CertificateId), status :: NullOrUndefined (CACertificateStatus), certificatePem :: NullOrUndefined (CertificatePem), ownedBy :: NullOrUndefined (AwsAccountId), creationDate :: NullOrUndefined (DateType), autoRegistrationStatus :: NullOrUndefined (AutoRegistrationStatus) } -> { certificateArn :: NullOrUndefined (CertificateArn), certificateId :: NullOrUndefined (CertificateId), status :: NullOrUndefined (CACertificateStatus), certificatePem :: NullOrUndefined (CertificatePem), ownedBy :: NullOrUndefined (AwsAccountId), creationDate :: NullOrUndefined (DateType), autoRegistrationStatus :: NullOrUndefined (AutoRegistrationStatus) }) -> CACertificateDescription
```

Constructs CACertificateDescription's fields from required parameters

#### `CACertificateStatus`

``` purescript
newtype CACertificateStatus
  = CACertificateStatus String
```

##### Instances
``` purescript
Newtype CACertificateStatus _
Generic CACertificateStatus _
Show CACertificateStatus
Decode CACertificateStatus
Encode CACertificateStatus
```

#### `CACertificates`

``` purescript
newtype CACertificates
  = CACertificates (Array CACertificate)
```

##### Instances
``` purescript
Newtype CACertificates _
Generic CACertificates _
Show CACertificates
Decode CACertificates
Encode CACertificates
```

#### `CancelCertificateTransferRequest`

``` purescript
newtype CancelCertificateTransferRequest
  = CancelCertificateTransferRequest { certificateId :: CertificateId }
```

<p>The input for the CancelCertificateTransfer operation.</p>

##### Instances
``` purescript
Newtype CancelCertificateTransferRequest _
Generic CancelCertificateTransferRequest _
Show CancelCertificateTransferRequest
Decode CancelCertificateTransferRequest
Encode CancelCertificateTransferRequest
```

#### `newCancelCertificateTransferRequest`

``` purescript
newCancelCertificateTransferRequest :: CertificateId -> CancelCertificateTransferRequest
```

Constructs CancelCertificateTransferRequest from required parameters

#### `newCancelCertificateTransferRequest'`

``` purescript
newCancelCertificateTransferRequest' :: CertificateId -> ({ certificateId :: CertificateId } -> { certificateId :: CertificateId }) -> CancelCertificateTransferRequest
```

Constructs CancelCertificateTransferRequest's fields from required parameters

#### `CancelJobRequest`

``` purescript
newtype CancelJobRequest
  = CancelJobRequest { jobId :: JobId, comment :: NullOrUndefined (Comment) }
```

##### Instances
``` purescript
Newtype CancelJobRequest _
Generic CancelJobRequest _
Show CancelJobRequest
Decode CancelJobRequest
Encode CancelJobRequest
```

#### `newCancelJobRequest`

``` purescript
newCancelJobRequest :: JobId -> CancelJobRequest
```

Constructs CancelJobRequest from required parameters

#### `newCancelJobRequest'`

``` purescript
newCancelJobRequest' :: JobId -> ({ jobId :: JobId, comment :: NullOrUndefined (Comment) } -> { jobId :: JobId, comment :: NullOrUndefined (Comment) }) -> CancelJobRequest
```

Constructs CancelJobRequest's fields from required parameters

#### `CancelJobResponse`

``` purescript
newtype CancelJobResponse
  = CancelJobResponse { jobArn :: NullOrUndefined (JobArn), jobId :: NullOrUndefined (JobId), description :: NullOrUndefined (JobDescription) }
```

##### Instances
``` purescript
Newtype CancelJobResponse _
Generic CancelJobResponse _
Show CancelJobResponse
Decode CancelJobResponse
Encode CancelJobResponse
```

#### `newCancelJobResponse`

``` purescript
newCancelJobResponse :: CancelJobResponse
```

Constructs CancelJobResponse from required parameters

#### `newCancelJobResponse'`

``` purescript
newCancelJobResponse' :: ({ jobArn :: NullOrUndefined (JobArn), jobId :: NullOrUndefined (JobId), description :: NullOrUndefined (JobDescription) } -> { jobArn :: NullOrUndefined (JobArn), jobId :: NullOrUndefined (JobId), description :: NullOrUndefined (JobDescription) }) -> CancelJobResponse
```

Constructs CancelJobResponse's fields from required parameters

#### `CanceledThings`

``` purescript
newtype CanceledThings
  = CanceledThings Int
```

##### Instances
``` purescript
Newtype CanceledThings _
Generic CanceledThings _
Show CanceledThings
Decode CanceledThings
Encode CanceledThings
```

#### `CannedAccessControlList`

``` purescript
newtype CannedAccessControlList
  = CannedAccessControlList String
```

##### Instances
``` purescript
Newtype CannedAccessControlList _
Generic CannedAccessControlList _
Show CannedAccessControlList
Decode CannedAccessControlList
Encode CannedAccessControlList
```

#### `Certificate`

``` purescript
newtype Certificate
  = Certificate { certificateArn :: NullOrUndefined (CertificateArn), certificateId :: NullOrUndefined (CertificateId), status :: NullOrUndefined (CertificateStatus), creationDate :: NullOrUndefined (DateType) }
```

<p>Information about a certificate.</p>

##### Instances
``` purescript
Newtype Certificate _
Generic Certificate _
Show Certificate
Decode Certificate
Encode Certificate
```

#### `newCertificate`

``` purescript
newCertificate :: Certificate
```

Constructs Certificate from required parameters

#### `newCertificate'`

``` purescript
newCertificate' :: ({ certificateArn :: NullOrUndefined (CertificateArn), certificateId :: NullOrUndefined (CertificateId), status :: NullOrUndefined (CertificateStatus), creationDate :: NullOrUndefined (DateType) } -> { certificateArn :: NullOrUndefined (CertificateArn), certificateId :: NullOrUndefined (CertificateId), status :: NullOrUndefined (CertificateStatus), creationDate :: NullOrUndefined (DateType) }) -> Certificate
```

Constructs Certificate's fields from required parameters

#### `CertificateArn`

``` purescript
newtype CertificateArn
  = CertificateArn String
```

##### Instances
``` purescript
Newtype CertificateArn _
Generic CertificateArn _
Show CertificateArn
Decode CertificateArn
Encode CertificateArn
```

#### `CertificateConflictException`

``` purescript
newtype CertificateConflictException
  = CertificateConflictException { message :: NullOrUndefined (ErrorMessage') }
```

<p>Unable to verify the CA certificate used to sign the device certificate you are attempting to register. This is happens when you have registered more than one CA certificate that has the same subject field and public key.</p>

##### Instances
``` purescript
Newtype CertificateConflictException _
Generic CertificateConflictException _
Show CertificateConflictException
Decode CertificateConflictException
Encode CertificateConflictException
```

#### `newCertificateConflictException`

``` purescript
newCertificateConflictException :: CertificateConflictException
```

Constructs CertificateConflictException from required parameters

#### `newCertificateConflictException'`

``` purescript
newCertificateConflictException' :: ({ message :: NullOrUndefined (ErrorMessage') } -> { message :: NullOrUndefined (ErrorMessage') }) -> CertificateConflictException
```

Constructs CertificateConflictException's fields from required parameters

#### `CertificateDescription`

``` purescript
newtype CertificateDescription
  = CertificateDescription { certificateArn :: NullOrUndefined (CertificateArn), certificateId :: NullOrUndefined (CertificateId), caCertificateId :: NullOrUndefined (CertificateId), status :: NullOrUndefined (CertificateStatus), certificatePem :: NullOrUndefined (CertificatePem), ownedBy :: NullOrUndefined (AwsAccountId), previousOwnedBy :: NullOrUndefined (AwsAccountId), creationDate :: NullOrUndefined (DateType), lastModifiedDate :: NullOrUndefined (DateType), transferData :: NullOrUndefined (TransferData) }
```

<p>Describes a certificate.</p>

##### Instances
``` purescript
Newtype CertificateDescription _
Generic CertificateDescription _
Show CertificateDescription
Decode CertificateDescription
Encode CertificateDescription
```

#### `newCertificateDescription`

``` purescript
newCertificateDescription :: CertificateDescription
```

Constructs CertificateDescription from required parameters

#### `newCertificateDescription'`

``` purescript
newCertificateDescription' :: ({ certificateArn :: NullOrUndefined (CertificateArn), certificateId :: NullOrUndefined (CertificateId), caCertificateId :: NullOrUndefined (CertificateId), status :: NullOrUndefined (CertificateStatus), certificatePem :: NullOrUndefined (CertificatePem), ownedBy :: NullOrUndefined (AwsAccountId), previousOwnedBy :: NullOrUndefined (AwsAccountId), creationDate :: NullOrUndefined (DateType), lastModifiedDate :: NullOrUndefined (DateType), transferData :: NullOrUndefined (TransferData) } -> { certificateArn :: NullOrUndefined (CertificateArn), certificateId :: NullOrUndefined (CertificateId), caCertificateId :: NullOrUndefined (CertificateId), status :: NullOrUndefined (CertificateStatus), certificatePem :: NullOrUndefined (CertificatePem), ownedBy :: NullOrUndefined (AwsAccountId), previousOwnedBy :: NullOrUndefined (AwsAccountId), creationDate :: NullOrUndefined (DateType), lastModifiedDate :: NullOrUndefined (DateType), transferData :: NullOrUndefined (TransferData) }) -> CertificateDescription
```

Constructs CertificateDescription's fields from required parameters

#### `CertificateId`

``` purescript
newtype CertificateId
  = CertificateId String
```

##### Instances
``` purescript
Newtype CertificateId _
Generic CertificateId _
Show CertificateId
Decode CertificateId
Encode CertificateId
```

#### `CertificateName`

``` purescript
newtype CertificateName
  = CertificateName String
```

##### Instances
``` purescript
Newtype CertificateName _
Generic CertificateName _
Show CertificateName
Decode CertificateName
Encode CertificateName
```

#### `CertificatePem`

``` purescript
newtype CertificatePem
  = CertificatePem String
```

<p>The PEM of a certificate.</p>

##### Instances
``` purescript
Newtype CertificatePem _
Generic CertificatePem _
Show CertificatePem
Decode CertificatePem
Encode CertificatePem
```

#### `CertificateSigningRequest`

``` purescript
newtype CertificateSigningRequest
  = CertificateSigningRequest String
```

##### Instances
``` purescript
Newtype CertificateSigningRequest _
Generic CertificateSigningRequest _
Show CertificateSigningRequest
Decode CertificateSigningRequest
Encode CertificateSigningRequest
```

#### `CertificateStateException`

``` purescript
newtype CertificateStateException
  = CertificateStateException { message :: NullOrUndefined (ErrorMessage') }
```

<p>The certificate operation is not allowed.</p>

##### Instances
``` purescript
Newtype CertificateStateException _
Generic CertificateStateException _
Show CertificateStateException
Decode CertificateStateException
Encode CertificateStateException
```

#### `newCertificateStateException`

``` purescript
newCertificateStateException :: CertificateStateException
```

Constructs CertificateStateException from required parameters

#### `newCertificateStateException'`

``` purescript
newCertificateStateException' :: ({ message :: NullOrUndefined (ErrorMessage') } -> { message :: NullOrUndefined (ErrorMessage') }) -> CertificateStateException
```

Constructs CertificateStateException's fields from required parameters

#### `CertificateStatus`

``` purescript
newtype CertificateStatus
  = CertificateStatus String
```

##### Instances
``` purescript
Newtype CertificateStatus _
Generic CertificateStatus _
Show CertificateStatus
Decode CertificateStatus
Encode CertificateStatus
```

#### `CertificateValidationException`

``` purescript
newtype CertificateValidationException
  = CertificateValidationException { message :: NullOrUndefined (ErrorMessage') }
```

<p>The certificate is invalid.</p>

##### Instances
``` purescript
Newtype CertificateValidationException _
Generic CertificateValidationException _
Show CertificateValidationException
Decode CertificateValidationException
Encode CertificateValidationException
```

#### `newCertificateValidationException`

``` purescript
newCertificateValidationException :: CertificateValidationException
```

Constructs CertificateValidationException from required parameters

#### `newCertificateValidationException'`

``` purescript
newCertificateValidationException' :: ({ message :: NullOrUndefined (ErrorMessage') } -> { message :: NullOrUndefined (ErrorMessage') }) -> CertificateValidationException
```

Constructs CertificateValidationException's fields from required parameters

#### `Certificates`

``` purescript
newtype Certificates
  = Certificates (Array Certificate)
```

##### Instances
``` purescript
Newtype Certificates _
Generic Certificates _
Show Certificates
Decode Certificates
Encode Certificates
```

#### `ClearDefaultAuthorizerRequest`

``` purescript
newtype ClearDefaultAuthorizerRequest
  = ClearDefaultAuthorizerRequest NoArguments
```

##### Instances
``` purescript
Newtype ClearDefaultAuthorizerRequest _
Generic ClearDefaultAuthorizerRequest _
Show ClearDefaultAuthorizerRequest
Decode ClearDefaultAuthorizerRequest
Encode ClearDefaultAuthorizerRequest
```

#### `ClearDefaultAuthorizerResponse`

``` purescript
newtype ClearDefaultAuthorizerResponse
  = ClearDefaultAuthorizerResponse NoArguments
```

##### Instances
``` purescript
Newtype ClearDefaultAuthorizerResponse _
Generic ClearDefaultAuthorizerResponse _
Show ClearDefaultAuthorizerResponse
Decode ClearDefaultAuthorizerResponse
Encode ClearDefaultAuthorizerResponse
```

#### `ClientId`

``` purescript
newtype ClientId
  = ClientId String
```

##### Instances
``` purescript
Newtype ClientId _
Generic ClientId _
Show ClientId
Decode ClientId
Encode ClientId
```

#### `CloudwatchAlarmAction`

``` purescript
newtype CloudwatchAlarmAction
  = CloudwatchAlarmAction { roleArn :: AwsArn, alarmName :: AlarmName, stateReason :: StateReason, stateValue :: StateValue }
```

<p>Describes an action that updates a CloudWatch alarm.</p>

##### Instances
``` purescript
Newtype CloudwatchAlarmAction _
Generic CloudwatchAlarmAction _
Show CloudwatchAlarmAction
Decode CloudwatchAlarmAction
Encode CloudwatchAlarmAction
```

#### `newCloudwatchAlarmAction`

``` purescript
newCloudwatchAlarmAction :: AlarmName -> AwsArn -> StateReason -> StateValue -> CloudwatchAlarmAction
```

Constructs CloudwatchAlarmAction from required parameters

#### `newCloudwatchAlarmAction'`

``` purescript
newCloudwatchAlarmAction' :: AlarmName -> AwsArn -> StateReason -> StateValue -> ({ roleArn :: AwsArn, alarmName :: AlarmName, stateReason :: StateReason, stateValue :: StateValue } -> { roleArn :: AwsArn, alarmName :: AlarmName, stateReason :: StateReason, stateValue :: StateValue }) -> CloudwatchAlarmAction
```

Constructs CloudwatchAlarmAction's fields from required parameters

#### `CloudwatchMetricAction`

``` purescript
newtype CloudwatchMetricAction
  = CloudwatchMetricAction { roleArn :: AwsArn, metricNamespace :: MetricNamespace, metricName :: MetricName, metricValue :: MetricValue, metricUnit :: MetricUnit, metricTimestamp :: NullOrUndefined (MetricTimestamp) }
```

<p>Describes an action that captures a CloudWatch metric.</p>

##### Instances
``` purescript
Newtype CloudwatchMetricAction _
Generic CloudwatchMetricAction _
Show CloudwatchMetricAction
Decode CloudwatchMetricAction
Encode CloudwatchMetricAction
```

#### `newCloudwatchMetricAction`

``` purescript
newCloudwatchMetricAction :: MetricName -> MetricNamespace -> MetricUnit -> MetricValue -> AwsArn -> CloudwatchMetricAction
```

Constructs CloudwatchMetricAction from required parameters

#### `newCloudwatchMetricAction'`

``` purescript
newCloudwatchMetricAction' :: MetricName -> MetricNamespace -> MetricUnit -> MetricValue -> AwsArn -> ({ roleArn :: AwsArn, metricNamespace :: MetricNamespace, metricName :: MetricName, metricValue :: MetricValue, metricUnit :: MetricUnit, metricTimestamp :: NullOrUndefined (MetricTimestamp) } -> { roleArn :: AwsArn, metricNamespace :: MetricNamespace, metricName :: MetricName, metricValue :: MetricValue, metricUnit :: MetricUnit, metricTimestamp :: NullOrUndefined (MetricTimestamp) }) -> CloudwatchMetricAction
```

Constructs CloudwatchMetricAction's fields from required parameters

#### `Code`

``` purescript
newtype Code
  = Code String
```

##### Instances
``` purescript
Newtype Code _
Generic Code _
Show Code
Decode Code
Encode Code
```

#### `CodeSigning`

``` purescript
newtype CodeSigning
  = CodeSigning { awsSignerJobId :: NullOrUndefined (SigningJobId), customCodeSigning :: NullOrUndefined (CustomCodeSigning) }
```

<p>Describes the method to use when code signing a file.</p>

##### Instances
``` purescript
Newtype CodeSigning _
Generic CodeSigning _
Show CodeSigning
Decode CodeSigning
Encode CodeSigning
```

#### `newCodeSigning`

``` purescript
newCodeSigning :: CodeSigning
```

Constructs CodeSigning from required parameters

#### `newCodeSigning'`

``` purescript
newCodeSigning' :: ({ awsSignerJobId :: NullOrUndefined (SigningJobId), customCodeSigning :: NullOrUndefined (CustomCodeSigning) } -> { awsSignerJobId :: NullOrUndefined (SigningJobId), customCodeSigning :: NullOrUndefined (CustomCodeSigning) }) -> CodeSigning
```

Constructs CodeSigning's fields from required parameters

#### `CodeSigningCertificateChain`

``` purescript
newtype CodeSigningCertificateChain
  = CodeSigningCertificateChain { stream :: NullOrUndefined (Stream), certificateName :: NullOrUndefined (CertificateName), inlineDocument :: NullOrUndefined (InlineDocument) }
```

<p>Describes the certificate chain being used when code signing a file.</p>

##### Instances
``` purescript
Newtype CodeSigningCertificateChain _
Generic CodeSigningCertificateChain _
Show CodeSigningCertificateChain
Decode CodeSigningCertificateChain
Encode CodeSigningCertificateChain
```

#### `newCodeSigningCertificateChain`

``` purescript
newCodeSigningCertificateChain :: CodeSigningCertificateChain
```

Constructs CodeSigningCertificateChain from required parameters

#### `newCodeSigningCertificateChain'`

``` purescript
newCodeSigningCertificateChain' :: ({ stream :: NullOrUndefined (Stream), certificateName :: NullOrUndefined (CertificateName), inlineDocument :: NullOrUndefined (InlineDocument) } -> { stream :: NullOrUndefined (Stream), certificateName :: NullOrUndefined (CertificateName), inlineDocument :: NullOrUndefined (InlineDocument) }) -> CodeSigningCertificateChain
```

Constructs CodeSigningCertificateChain's fields from required parameters

#### `CodeSigningSignature`

``` purescript
newtype CodeSigningSignature
  = CodeSigningSignature { stream :: NullOrUndefined (Stream), inlineDocument :: NullOrUndefined (Signature) }
```

<p>Describes the signature for a file.</p>

##### Instances
``` purescript
Newtype CodeSigningSignature _
Generic CodeSigningSignature _
Show CodeSigningSignature
Decode CodeSigningSignature
Encode CodeSigningSignature
```

#### `newCodeSigningSignature`

``` purescript
newCodeSigningSignature :: CodeSigningSignature
```

Constructs CodeSigningSignature from required parameters

#### `newCodeSigningSignature'`

``` purescript
newCodeSigningSignature' :: ({ stream :: NullOrUndefined (Stream), inlineDocument :: NullOrUndefined (Signature) } -> { stream :: NullOrUndefined (Stream), inlineDocument :: NullOrUndefined (Signature) }) -> CodeSigningSignature
```

Constructs CodeSigningSignature's fields from required parameters

#### `CognitoIdentityPoolId`

``` purescript
newtype CognitoIdentityPoolId
  = CognitoIdentityPoolId String
```

##### Instances
``` purescript
Newtype CognitoIdentityPoolId _
Generic CognitoIdentityPoolId _
Show CognitoIdentityPoolId
Decode CognitoIdentityPoolId
Encode CognitoIdentityPoolId
```

#### `Comment`

``` purescript
newtype Comment
  = Comment String
```

##### Instances
``` purescript
Newtype Comment _
Generic Comment _
Show Comment
Decode Comment
Encode Comment
```

#### `Configuration`

``` purescript
newtype Configuration
  = Configuration { "Enabled" :: NullOrUndefined (Enabled) }
```

<p>Configuration.</p>

##### Instances
``` purescript
Newtype Configuration _
Generic Configuration _
Show Configuration
Decode Configuration
Encode Configuration
```

#### `newConfiguration`

``` purescript
newConfiguration :: Configuration
```

Constructs Configuration from required parameters

#### `newConfiguration'`

``` purescript
newConfiguration' :: ({ "Enabled" :: NullOrUndefined (Enabled) } -> { "Enabled" :: NullOrUndefined (Enabled) }) -> Configuration
```

Constructs Configuration's fields from required parameters

#### `ConflictingResourceUpdateException`

``` purescript
newtype ConflictingResourceUpdateException
  = ConflictingResourceUpdateException { message :: NullOrUndefined (ErrorMessage') }
```

<p>A conflicting resource update exception. This exception is thrown when two pending updates cause a conflict.</p>

##### Instances
``` purescript
Newtype ConflictingResourceUpdateException _
Generic ConflictingResourceUpdateException _
Show ConflictingResourceUpdateException
Decode ConflictingResourceUpdateException
Encode ConflictingResourceUpdateException
```

#### `newConflictingResourceUpdateException`

``` purescript
newConflictingResourceUpdateException :: ConflictingResourceUpdateException
```

Constructs ConflictingResourceUpdateException from required parameters

#### `newConflictingResourceUpdateException'`

``` purescript
newConflictingResourceUpdateException' :: ({ message :: NullOrUndefined (ErrorMessage') } -> { message :: NullOrUndefined (ErrorMessage') }) -> ConflictingResourceUpdateException
```

Constructs ConflictingResourceUpdateException's fields from required parameters

#### `Count`

``` purescript
newtype Count
  = Count Int
```

##### Instances
``` purescript
Newtype Count _
Generic Count _
Show Count
Decode Count
Encode Count
```

#### `CreateAuthorizerRequest`

``` purescript
newtype CreateAuthorizerRequest
  = CreateAuthorizerRequest { authorizerName :: AuthorizerName, authorizerFunctionArn :: AuthorizerFunctionArn, tokenKeyName :: TokenKeyName, tokenSigningPublicKeys :: PublicKeyMap, status :: NullOrUndefined (AuthorizerStatus) }
```

##### Instances
``` purescript
Newtype CreateAuthorizerRequest _
Generic CreateAuthorizerRequest _
Show CreateAuthorizerRequest
Decode CreateAuthorizerRequest
Encode CreateAuthorizerRequest
```

#### `newCreateAuthorizerRequest`

``` purescript
newCreateAuthorizerRequest :: AuthorizerFunctionArn -> AuthorizerName -> TokenKeyName -> PublicKeyMap -> CreateAuthorizerRequest
```

Constructs CreateAuthorizerRequest from required parameters

#### `newCreateAuthorizerRequest'`

``` purescript
newCreateAuthorizerRequest' :: AuthorizerFunctionArn -> AuthorizerName -> TokenKeyName -> PublicKeyMap -> ({ authorizerName :: AuthorizerName, authorizerFunctionArn :: AuthorizerFunctionArn, tokenKeyName :: TokenKeyName, tokenSigningPublicKeys :: PublicKeyMap, status :: NullOrUndefined (AuthorizerStatus) } -> { authorizerName :: AuthorizerName, authorizerFunctionArn :: AuthorizerFunctionArn, tokenKeyName :: TokenKeyName, tokenSigningPublicKeys :: PublicKeyMap, status :: NullOrUndefined (AuthorizerStatus) }) -> CreateAuthorizerRequest
```

Constructs CreateAuthorizerRequest's fields from required parameters

#### `CreateAuthorizerResponse`

``` purescript
newtype CreateAuthorizerResponse
  = CreateAuthorizerResponse { authorizerName :: NullOrUndefined (AuthorizerName), authorizerArn :: NullOrUndefined (AuthorizerArn) }
```

##### Instances
``` purescript
Newtype CreateAuthorizerResponse _
Generic CreateAuthorizerResponse _
Show CreateAuthorizerResponse
Decode CreateAuthorizerResponse
Encode CreateAuthorizerResponse
```

#### `newCreateAuthorizerResponse`

``` purescript
newCreateAuthorizerResponse :: CreateAuthorizerResponse
```

Constructs CreateAuthorizerResponse from required parameters

#### `newCreateAuthorizerResponse'`

``` purescript
newCreateAuthorizerResponse' :: ({ authorizerName :: NullOrUndefined (AuthorizerName), authorizerArn :: NullOrUndefined (AuthorizerArn) } -> { authorizerName :: NullOrUndefined (AuthorizerName), authorizerArn :: NullOrUndefined (AuthorizerArn) }) -> CreateAuthorizerResponse
```

Constructs CreateAuthorizerResponse's fields from required parameters

#### `CreateCertificateFromCsrRequest`

``` purescript
newtype CreateCertificateFromCsrRequest
  = CreateCertificateFromCsrRequest { certificateSigningRequest :: CertificateSigningRequest, setAsActive :: NullOrUndefined (SetAsActive) }
```

<p>The input for the CreateCertificateFromCsr operation.</p>

##### Instances
``` purescript
Newtype CreateCertificateFromCsrRequest _
Generic CreateCertificateFromCsrRequest _
Show CreateCertificateFromCsrRequest
Decode CreateCertificateFromCsrRequest
Encode CreateCertificateFromCsrRequest
```

#### `newCreateCertificateFromCsrRequest`

``` purescript
newCreateCertificateFromCsrRequest :: CertificateSigningRequest -> CreateCertificateFromCsrRequest
```

Constructs CreateCertificateFromCsrRequest from required parameters

#### `newCreateCertificateFromCsrRequest'`

``` purescript
newCreateCertificateFromCsrRequest' :: CertificateSigningRequest -> ({ certificateSigningRequest :: CertificateSigningRequest, setAsActive :: NullOrUndefined (SetAsActive) } -> { certificateSigningRequest :: CertificateSigningRequest, setAsActive :: NullOrUndefined (SetAsActive) }) -> CreateCertificateFromCsrRequest
```

Constructs CreateCertificateFromCsrRequest's fields from required parameters

#### `CreateCertificateFromCsrResponse`

``` purescript
newtype CreateCertificateFromCsrResponse
  = CreateCertificateFromCsrResponse { certificateArn :: NullOrUndefined (CertificateArn), certificateId :: NullOrUndefined (CertificateId), certificatePem :: NullOrUndefined (CertificatePem) }
```

<p>The output from the CreateCertificateFromCsr operation.</p>

##### Instances
``` purescript
Newtype CreateCertificateFromCsrResponse _
Generic CreateCertificateFromCsrResponse _
Show CreateCertificateFromCsrResponse
Decode CreateCertificateFromCsrResponse
Encode CreateCertificateFromCsrResponse
```

#### `newCreateCertificateFromCsrResponse`

``` purescript
newCreateCertificateFromCsrResponse :: CreateCertificateFromCsrResponse
```

Constructs CreateCertificateFromCsrResponse from required parameters

#### `newCreateCertificateFromCsrResponse'`

``` purescript
newCreateCertificateFromCsrResponse' :: ({ certificateArn :: NullOrUndefined (CertificateArn), certificateId :: NullOrUndefined (CertificateId), certificatePem :: NullOrUndefined (CertificatePem) } -> { certificateArn :: NullOrUndefined (CertificateArn), certificateId :: NullOrUndefined (CertificateId), certificatePem :: NullOrUndefined (CertificatePem) }) -> CreateCertificateFromCsrResponse
```

Constructs CreateCertificateFromCsrResponse's fields from required parameters

#### `CreateJobRequest`

``` purescript
newtype CreateJobRequest
  = CreateJobRequest { jobId :: JobId, targets :: JobTargets, documentSource :: NullOrUndefined (JobDocumentSource), document :: NullOrUndefined (JobDocument), description :: NullOrUndefined (JobDescription), presignedUrlConfig :: NullOrUndefined (PresignedUrlConfig), targetSelection :: NullOrUndefined (TargetSelection), jobExecutionsRolloutConfig :: NullOrUndefined (JobExecutionsRolloutConfig), documentParameters :: NullOrUndefined (JobDocumentParameters) }
```

##### Instances
``` purescript
Newtype CreateJobRequest _
Generic CreateJobRequest _
Show CreateJobRequest
Decode CreateJobRequest
Encode CreateJobRequest
```

#### `newCreateJobRequest`

``` purescript
newCreateJobRequest :: JobId -> JobTargets -> CreateJobRequest
```

Constructs CreateJobRequest from required parameters

#### `newCreateJobRequest'`

``` purescript
newCreateJobRequest' :: JobId -> JobTargets -> ({ jobId :: JobId, targets :: JobTargets, documentSource :: NullOrUndefined (JobDocumentSource), document :: NullOrUndefined (JobDocument), description :: NullOrUndefined (JobDescription), presignedUrlConfig :: NullOrUndefined (PresignedUrlConfig), targetSelection :: NullOrUndefined (TargetSelection), jobExecutionsRolloutConfig :: NullOrUndefined (JobExecutionsRolloutConfig), documentParameters :: NullOrUndefined (JobDocumentParameters) } -> { jobId :: JobId, targets :: JobTargets, documentSource :: NullOrUndefined (JobDocumentSource), document :: NullOrUndefined (JobDocument), description :: NullOrUndefined (JobDescription), presignedUrlConfig :: NullOrUndefined (PresignedUrlConfig), targetSelection :: NullOrUndefined (TargetSelection), jobExecutionsRolloutConfig :: NullOrUndefined (JobExecutionsRolloutConfig), documentParameters :: NullOrUndefined (JobDocumentParameters) }) -> CreateJobRequest
```

Constructs CreateJobRequest's fields from required parameters

#### `CreateJobResponse`

``` purescript
newtype CreateJobResponse
  = CreateJobResponse { jobArn :: NullOrUndefined (JobArn), jobId :: NullOrUndefined (JobId), description :: NullOrUndefined (JobDescription) }
```

##### Instances
``` purescript
Newtype CreateJobResponse _
Generic CreateJobResponse _
Show CreateJobResponse
Decode CreateJobResponse
Encode CreateJobResponse
```

#### `newCreateJobResponse`

``` purescript
newCreateJobResponse :: CreateJobResponse
```

Constructs CreateJobResponse from required parameters

#### `newCreateJobResponse'`

``` purescript
newCreateJobResponse' :: ({ jobArn :: NullOrUndefined (JobArn), jobId :: NullOrUndefined (JobId), description :: NullOrUndefined (JobDescription) } -> { jobArn :: NullOrUndefined (JobArn), jobId :: NullOrUndefined (JobId), description :: NullOrUndefined (JobDescription) }) -> CreateJobResponse
```

Constructs CreateJobResponse's fields from required parameters

#### `CreateKeysAndCertificateRequest`

``` purescript
newtype CreateKeysAndCertificateRequest
  = CreateKeysAndCertificateRequest { setAsActive :: NullOrUndefined (SetAsActive) }
```

<p>The input for the CreateKeysAndCertificate operation.</p>

##### Instances
``` purescript
Newtype CreateKeysAndCertificateRequest _
Generic CreateKeysAndCertificateRequest _
Show CreateKeysAndCertificateRequest
Decode CreateKeysAndCertificateRequest
Encode CreateKeysAndCertificateRequest
```

#### `newCreateKeysAndCertificateRequest`

``` purescript
newCreateKeysAndCertificateRequest :: CreateKeysAndCertificateRequest
```

Constructs CreateKeysAndCertificateRequest from required parameters

#### `newCreateKeysAndCertificateRequest'`

``` purescript
newCreateKeysAndCertificateRequest' :: ({ setAsActive :: NullOrUndefined (SetAsActive) } -> { setAsActive :: NullOrUndefined (SetAsActive) }) -> CreateKeysAndCertificateRequest
```

Constructs CreateKeysAndCertificateRequest's fields from required parameters

#### `CreateKeysAndCertificateResponse`

``` purescript
newtype CreateKeysAndCertificateResponse
  = CreateKeysAndCertificateResponse { certificateArn :: NullOrUndefined (CertificateArn), certificateId :: NullOrUndefined (CertificateId), certificatePem :: NullOrUndefined (CertificatePem), keyPair :: NullOrUndefined (KeyPair) }
```

<p>The output of the CreateKeysAndCertificate operation.</p>

##### Instances
``` purescript
Newtype CreateKeysAndCertificateResponse _
Generic CreateKeysAndCertificateResponse _
Show CreateKeysAndCertificateResponse
Decode CreateKeysAndCertificateResponse
Encode CreateKeysAndCertificateResponse
```

#### `newCreateKeysAndCertificateResponse`

``` purescript
newCreateKeysAndCertificateResponse :: CreateKeysAndCertificateResponse
```

Constructs CreateKeysAndCertificateResponse from required parameters

#### `newCreateKeysAndCertificateResponse'`

``` purescript
newCreateKeysAndCertificateResponse' :: ({ certificateArn :: NullOrUndefined (CertificateArn), certificateId :: NullOrUndefined (CertificateId), certificatePem :: NullOrUndefined (CertificatePem), keyPair :: NullOrUndefined (KeyPair) } -> { certificateArn :: NullOrUndefined (CertificateArn), certificateId :: NullOrUndefined (CertificateId), certificatePem :: NullOrUndefined (CertificatePem), keyPair :: NullOrUndefined (KeyPair) }) -> CreateKeysAndCertificateResponse
```

Constructs CreateKeysAndCertificateResponse's fields from required parameters

#### `CreateOTAUpdateRequest`

``` purescript
newtype CreateOTAUpdateRequest
  = CreateOTAUpdateRequest { otaUpdateId :: OTAUpdateId, description :: NullOrUndefined (OTAUpdateDescription), targets :: Targets, targetSelection :: NullOrUndefined (TargetSelection), files :: OTAUpdateFiles, roleArn :: RoleArn, additionalParameters :: NullOrUndefined (AdditionalParameterMap) }
```

##### Instances
``` purescript
Newtype CreateOTAUpdateRequest _
Generic CreateOTAUpdateRequest _
Show CreateOTAUpdateRequest
Decode CreateOTAUpdateRequest
Encode CreateOTAUpdateRequest
```

#### `newCreateOTAUpdateRequest`

``` purescript
newCreateOTAUpdateRequest :: OTAUpdateFiles -> OTAUpdateId -> RoleArn -> Targets -> CreateOTAUpdateRequest
```

Constructs CreateOTAUpdateRequest from required parameters

#### `newCreateOTAUpdateRequest'`

``` purescript
newCreateOTAUpdateRequest' :: OTAUpdateFiles -> OTAUpdateId -> RoleArn -> Targets -> ({ otaUpdateId :: OTAUpdateId, description :: NullOrUndefined (OTAUpdateDescription), targets :: Targets, targetSelection :: NullOrUndefined (TargetSelection), files :: OTAUpdateFiles, roleArn :: RoleArn, additionalParameters :: NullOrUndefined (AdditionalParameterMap) } -> { otaUpdateId :: OTAUpdateId, description :: NullOrUndefined (OTAUpdateDescription), targets :: Targets, targetSelection :: NullOrUndefined (TargetSelection), files :: OTAUpdateFiles, roleArn :: RoleArn, additionalParameters :: NullOrUndefined (AdditionalParameterMap) }) -> CreateOTAUpdateRequest
```

Constructs CreateOTAUpdateRequest's fields from required parameters

#### `CreateOTAUpdateResponse`

``` purescript
newtype CreateOTAUpdateResponse
  = CreateOTAUpdateResponse { otaUpdateId :: NullOrUndefined (OTAUpdateId), awsIotJobId :: NullOrUndefined (AwsIotJobId), otaUpdateArn :: NullOrUndefined (OTAUpdateArn), awsIotJobArn :: NullOrUndefined (AwsIotJobArn), otaUpdateStatus :: NullOrUndefined (OTAUpdateStatus) }
```

##### Instances
``` purescript
Newtype CreateOTAUpdateResponse _
Generic CreateOTAUpdateResponse _
Show CreateOTAUpdateResponse
Decode CreateOTAUpdateResponse
Encode CreateOTAUpdateResponse
```

#### `newCreateOTAUpdateResponse`

``` purescript
newCreateOTAUpdateResponse :: CreateOTAUpdateResponse
```

Constructs CreateOTAUpdateResponse from required parameters

#### `newCreateOTAUpdateResponse'`

``` purescript
newCreateOTAUpdateResponse' :: ({ otaUpdateId :: NullOrUndefined (OTAUpdateId), awsIotJobId :: NullOrUndefined (AwsIotJobId), otaUpdateArn :: NullOrUndefined (OTAUpdateArn), awsIotJobArn :: NullOrUndefined (AwsIotJobArn), otaUpdateStatus :: NullOrUndefined (OTAUpdateStatus) } -> { otaUpdateId :: NullOrUndefined (OTAUpdateId), awsIotJobId :: NullOrUndefined (AwsIotJobId), otaUpdateArn :: NullOrUndefined (OTAUpdateArn), awsIotJobArn :: NullOrUndefined (AwsIotJobArn), otaUpdateStatus :: NullOrUndefined (OTAUpdateStatus) }) -> CreateOTAUpdateResponse
```

Constructs CreateOTAUpdateResponse's fields from required parameters

#### `CreatePolicyRequest`

``` purescript
newtype CreatePolicyRequest
  = CreatePolicyRequest { policyName :: PolicyName, policyDocument :: PolicyDocument }
```

<p>The input for the CreatePolicy operation.</p>

##### Instances
``` purescript
Newtype CreatePolicyRequest _
Generic CreatePolicyRequest _
Show CreatePolicyRequest
Decode CreatePolicyRequest
Encode CreatePolicyRequest
```

#### `newCreatePolicyRequest`

``` purescript
newCreatePolicyRequest :: PolicyDocument -> PolicyName -> CreatePolicyRequest
```

Constructs CreatePolicyRequest from required parameters

#### `newCreatePolicyRequest'`

``` purescript
newCreatePolicyRequest' :: PolicyDocument -> PolicyName -> ({ policyName :: PolicyName, policyDocument :: PolicyDocument } -> { policyName :: PolicyName, policyDocument :: PolicyDocument }) -> CreatePolicyRequest
```

Constructs CreatePolicyRequest's fields from required parameters

#### `CreatePolicyResponse`

``` purescript
newtype CreatePolicyResponse
  = CreatePolicyResponse { policyName :: NullOrUndefined (PolicyName), policyArn :: NullOrUndefined (PolicyArn), policyDocument :: NullOrUndefined (PolicyDocument), policyVersionId :: NullOrUndefined (PolicyVersionId) }
```

<p>The output from the CreatePolicy operation.</p>

##### Instances
``` purescript
Newtype CreatePolicyResponse _
Generic CreatePolicyResponse _
Show CreatePolicyResponse
Decode CreatePolicyResponse
Encode CreatePolicyResponse
```

#### `newCreatePolicyResponse`

``` purescript
newCreatePolicyResponse :: CreatePolicyResponse
```

Constructs CreatePolicyResponse from required parameters

#### `newCreatePolicyResponse'`

``` purescript
newCreatePolicyResponse' :: ({ policyName :: NullOrUndefined (PolicyName), policyArn :: NullOrUndefined (PolicyArn), policyDocument :: NullOrUndefined (PolicyDocument), policyVersionId :: NullOrUndefined (PolicyVersionId) } -> { policyName :: NullOrUndefined (PolicyName), policyArn :: NullOrUndefined (PolicyArn), policyDocument :: NullOrUndefined (PolicyDocument), policyVersionId :: NullOrUndefined (PolicyVersionId) }) -> CreatePolicyResponse
```

Constructs CreatePolicyResponse's fields from required parameters

#### `CreatePolicyVersionRequest`

``` purescript
newtype CreatePolicyVersionRequest
  = CreatePolicyVersionRequest { policyName :: PolicyName, policyDocument :: PolicyDocument, setAsDefault :: NullOrUndefined (SetAsDefault) }
```

<p>The input for the CreatePolicyVersion operation.</p>

##### Instances
``` purescript
Newtype CreatePolicyVersionRequest _
Generic CreatePolicyVersionRequest _
Show CreatePolicyVersionRequest
Decode CreatePolicyVersionRequest
Encode CreatePolicyVersionRequest
```

#### `newCreatePolicyVersionRequest`

``` purescript
newCreatePolicyVersionRequest :: PolicyDocument -> PolicyName -> CreatePolicyVersionRequest
```

Constructs CreatePolicyVersionRequest from required parameters

#### `newCreatePolicyVersionRequest'`

``` purescript
newCreatePolicyVersionRequest' :: PolicyDocument -> PolicyName -> ({ policyName :: PolicyName, policyDocument :: PolicyDocument, setAsDefault :: NullOrUndefined (SetAsDefault) } -> { policyName :: PolicyName, policyDocument :: PolicyDocument, setAsDefault :: NullOrUndefined (SetAsDefault) }) -> CreatePolicyVersionRequest
```

Constructs CreatePolicyVersionRequest's fields from required parameters

#### `CreatePolicyVersionResponse`

``` purescript
newtype CreatePolicyVersionResponse
  = CreatePolicyVersionResponse { policyArn :: NullOrUndefined (PolicyArn), policyDocument :: NullOrUndefined (PolicyDocument), policyVersionId :: NullOrUndefined (PolicyVersionId), isDefaultVersion :: NullOrUndefined (IsDefaultVersion) }
```

<p>The output of the CreatePolicyVersion operation.</p>

##### Instances
``` purescript
Newtype CreatePolicyVersionResponse _
Generic CreatePolicyVersionResponse _
Show CreatePolicyVersionResponse
Decode CreatePolicyVersionResponse
Encode CreatePolicyVersionResponse
```

#### `newCreatePolicyVersionResponse`

``` purescript
newCreatePolicyVersionResponse :: CreatePolicyVersionResponse
```

Constructs CreatePolicyVersionResponse from required parameters

#### `newCreatePolicyVersionResponse'`

``` purescript
newCreatePolicyVersionResponse' :: ({ policyArn :: NullOrUndefined (PolicyArn), policyDocument :: NullOrUndefined (PolicyDocument), policyVersionId :: NullOrUndefined (PolicyVersionId), isDefaultVersion :: NullOrUndefined (IsDefaultVersion) } -> { policyArn :: NullOrUndefined (PolicyArn), policyDocument :: NullOrUndefined (PolicyDocument), policyVersionId :: NullOrUndefined (PolicyVersionId), isDefaultVersion :: NullOrUndefined (IsDefaultVersion) }) -> CreatePolicyVersionResponse
```

Constructs CreatePolicyVersionResponse's fields from required parameters

#### `CreateRoleAliasRequest`

``` purescript
newtype CreateRoleAliasRequest
  = CreateRoleAliasRequest { roleAlias :: RoleAlias, roleArn :: RoleArn, credentialDurationSeconds :: NullOrUndefined (CredentialDurationSeconds) }
```

##### Instances
``` purescript
Newtype CreateRoleAliasRequest _
Generic CreateRoleAliasRequest _
Show CreateRoleAliasRequest
Decode CreateRoleAliasRequest
Encode CreateRoleAliasRequest
```

#### `newCreateRoleAliasRequest`

``` purescript
newCreateRoleAliasRequest :: RoleAlias -> RoleArn -> CreateRoleAliasRequest
```

Constructs CreateRoleAliasRequest from required parameters

#### `newCreateRoleAliasRequest'`

``` purescript
newCreateRoleAliasRequest' :: RoleAlias -> RoleArn -> ({ roleAlias :: RoleAlias, roleArn :: RoleArn, credentialDurationSeconds :: NullOrUndefined (CredentialDurationSeconds) } -> { roleAlias :: RoleAlias, roleArn :: RoleArn, credentialDurationSeconds :: NullOrUndefined (CredentialDurationSeconds) }) -> CreateRoleAliasRequest
```

Constructs CreateRoleAliasRequest's fields from required parameters

#### `CreateRoleAliasResponse`

``` purescript
newtype CreateRoleAliasResponse
  = CreateRoleAliasResponse { roleAlias :: NullOrUndefined (RoleAlias), roleAliasArn :: NullOrUndefined (RoleAliasArn) }
```

##### Instances
``` purescript
Newtype CreateRoleAliasResponse _
Generic CreateRoleAliasResponse _
Show CreateRoleAliasResponse
Decode CreateRoleAliasResponse
Encode CreateRoleAliasResponse
```

#### `newCreateRoleAliasResponse`

``` purescript
newCreateRoleAliasResponse :: CreateRoleAliasResponse
```

Constructs CreateRoleAliasResponse from required parameters

#### `newCreateRoleAliasResponse'`

``` purescript
newCreateRoleAliasResponse' :: ({ roleAlias :: NullOrUndefined (RoleAlias), roleAliasArn :: NullOrUndefined (RoleAliasArn) } -> { roleAlias :: NullOrUndefined (RoleAlias), roleAliasArn :: NullOrUndefined (RoleAliasArn) }) -> CreateRoleAliasResponse
```

Constructs CreateRoleAliasResponse's fields from required parameters

#### `CreateStreamRequest`

``` purescript
newtype CreateStreamRequest
  = CreateStreamRequest { streamId :: StreamId, description :: NullOrUndefined (StreamDescription), files :: StreamFiles, roleArn :: RoleArn }
```

##### Instances
``` purescript
Newtype CreateStreamRequest _
Generic CreateStreamRequest _
Show CreateStreamRequest
Decode CreateStreamRequest
Encode CreateStreamRequest
```

#### `newCreateStreamRequest`

``` purescript
newCreateStreamRequest :: StreamFiles -> RoleArn -> StreamId -> CreateStreamRequest
```

Constructs CreateStreamRequest from required parameters

#### `newCreateStreamRequest'`

``` purescript
newCreateStreamRequest' :: StreamFiles -> RoleArn -> StreamId -> ({ streamId :: StreamId, description :: NullOrUndefined (StreamDescription), files :: StreamFiles, roleArn :: RoleArn } -> { streamId :: StreamId, description :: NullOrUndefined (StreamDescription), files :: StreamFiles, roleArn :: RoleArn }) -> CreateStreamRequest
```

Constructs CreateStreamRequest's fields from required parameters

#### `CreateStreamResponse`

``` purescript
newtype CreateStreamResponse
  = CreateStreamResponse { streamId :: NullOrUndefined (StreamId), streamArn :: NullOrUndefined (StreamArn), description :: NullOrUndefined (StreamDescription), streamVersion :: NullOrUndefined (StreamVersion) }
```

##### Instances
``` purescript
Newtype CreateStreamResponse _
Generic CreateStreamResponse _
Show CreateStreamResponse
Decode CreateStreamResponse
Encode CreateStreamResponse
```

#### `newCreateStreamResponse`

``` purescript
newCreateStreamResponse :: CreateStreamResponse
```

Constructs CreateStreamResponse from required parameters

#### `newCreateStreamResponse'`

``` purescript
newCreateStreamResponse' :: ({ streamId :: NullOrUndefined (StreamId), streamArn :: NullOrUndefined (StreamArn), description :: NullOrUndefined (StreamDescription), streamVersion :: NullOrUndefined (StreamVersion) } -> { streamId :: NullOrUndefined (StreamId), streamArn :: NullOrUndefined (StreamArn), description :: NullOrUndefined (StreamDescription), streamVersion :: NullOrUndefined (StreamVersion) }) -> CreateStreamResponse
```

Constructs CreateStreamResponse's fields from required parameters

#### `CreateThingGroupRequest`

``` purescript
newtype CreateThingGroupRequest
  = CreateThingGroupRequest { thingGroupName :: ThingGroupName, parentGroupName :: NullOrUndefined (ThingGroupName), thingGroupProperties :: NullOrUndefined (ThingGroupProperties) }
```

##### Instances
``` purescript
Newtype CreateThingGroupRequest _
Generic CreateThingGroupRequest _
Show CreateThingGroupRequest
Decode CreateThingGroupRequest
Encode CreateThingGroupRequest
```

#### `newCreateThingGroupRequest`

``` purescript
newCreateThingGroupRequest :: ThingGroupName -> CreateThingGroupRequest
```

Constructs CreateThingGroupRequest from required parameters

#### `newCreateThingGroupRequest'`

``` purescript
newCreateThingGroupRequest' :: ThingGroupName -> ({ thingGroupName :: ThingGroupName, parentGroupName :: NullOrUndefined (ThingGroupName), thingGroupProperties :: NullOrUndefined (ThingGroupProperties) } -> { thingGroupName :: ThingGroupName, parentGroupName :: NullOrUndefined (ThingGroupName), thingGroupProperties :: NullOrUndefined (ThingGroupProperties) }) -> CreateThingGroupRequest
```

Constructs CreateThingGroupRequest's fields from required parameters

#### `CreateThingGroupResponse`

``` purescript
newtype CreateThingGroupResponse
  = CreateThingGroupResponse { thingGroupName :: NullOrUndefined (ThingGroupName), thingGroupArn :: NullOrUndefined (ThingGroupArn), thingGroupId :: NullOrUndefined (ThingGroupId) }
```

##### Instances
``` purescript
Newtype CreateThingGroupResponse _
Generic CreateThingGroupResponse _
Show CreateThingGroupResponse
Decode CreateThingGroupResponse
Encode CreateThingGroupResponse
```

#### `newCreateThingGroupResponse`

``` purescript
newCreateThingGroupResponse :: CreateThingGroupResponse
```

Constructs CreateThingGroupResponse from required parameters

#### `newCreateThingGroupResponse'`

``` purescript
newCreateThingGroupResponse' :: ({ thingGroupName :: NullOrUndefined (ThingGroupName), thingGroupArn :: NullOrUndefined (ThingGroupArn), thingGroupId :: NullOrUndefined (ThingGroupId) } -> { thingGroupName :: NullOrUndefined (ThingGroupName), thingGroupArn :: NullOrUndefined (ThingGroupArn), thingGroupId :: NullOrUndefined (ThingGroupId) }) -> CreateThingGroupResponse
```

Constructs CreateThingGroupResponse's fields from required parameters

#### `CreateThingRequest`

``` purescript
newtype CreateThingRequest
  = CreateThingRequest { thingName :: ThingName, thingTypeName :: NullOrUndefined (ThingTypeName), attributePayload :: NullOrUndefined (AttributePayload) }
```

<p>The input for the CreateThing operation.</p>

##### Instances
``` purescript
Newtype CreateThingRequest _
Generic CreateThingRequest _
Show CreateThingRequest
Decode CreateThingRequest
Encode CreateThingRequest
```

#### `newCreateThingRequest`

``` purescript
newCreateThingRequest :: ThingName -> CreateThingRequest
```

Constructs CreateThingRequest from required parameters

#### `newCreateThingRequest'`

``` purescript
newCreateThingRequest' :: ThingName -> ({ thingName :: ThingName, thingTypeName :: NullOrUndefined (ThingTypeName), attributePayload :: NullOrUndefined (AttributePayload) } -> { thingName :: ThingName, thingTypeName :: NullOrUndefined (ThingTypeName), attributePayload :: NullOrUndefined (AttributePayload) }) -> CreateThingRequest
```

Constructs CreateThingRequest's fields from required parameters

#### `CreateThingResponse`

``` purescript
newtype CreateThingResponse
  = CreateThingResponse { thingName :: NullOrUndefined (ThingName), thingArn :: NullOrUndefined (ThingArn), thingId :: NullOrUndefined (ThingId) }
```

<p>The output of the CreateThing operation.</p>

##### Instances
``` purescript
Newtype CreateThingResponse _
Generic CreateThingResponse _
Show CreateThingResponse
Decode CreateThingResponse
Encode CreateThingResponse
```

#### `newCreateThingResponse`

``` purescript
newCreateThingResponse :: CreateThingResponse
```

Constructs CreateThingResponse from required parameters

#### `newCreateThingResponse'`

``` purescript
newCreateThingResponse' :: ({ thingName :: NullOrUndefined (ThingName), thingArn :: NullOrUndefined (ThingArn), thingId :: NullOrUndefined (ThingId) } -> { thingName :: NullOrUndefined (ThingName), thingArn :: NullOrUndefined (ThingArn), thingId :: NullOrUndefined (ThingId) }) -> CreateThingResponse
```

Constructs CreateThingResponse's fields from required parameters

#### `CreateThingTypeRequest`

``` purescript
newtype CreateThingTypeRequest
  = CreateThingTypeRequest { thingTypeName :: ThingTypeName, thingTypeProperties :: NullOrUndefined (ThingTypeProperties) }
```

<p>The input for the CreateThingType operation.</p>

##### Instances
``` purescript
Newtype CreateThingTypeRequest _
Generic CreateThingTypeRequest _
Show CreateThingTypeRequest
Decode CreateThingTypeRequest
Encode CreateThingTypeRequest
```

#### `newCreateThingTypeRequest`

``` purescript
newCreateThingTypeRequest :: ThingTypeName -> CreateThingTypeRequest
```

Constructs CreateThingTypeRequest from required parameters

#### `newCreateThingTypeRequest'`

``` purescript
newCreateThingTypeRequest' :: ThingTypeName -> ({ thingTypeName :: ThingTypeName, thingTypeProperties :: NullOrUndefined (ThingTypeProperties) } -> { thingTypeName :: ThingTypeName, thingTypeProperties :: NullOrUndefined (ThingTypeProperties) }) -> CreateThingTypeRequest
```

Constructs CreateThingTypeRequest's fields from required parameters

#### `CreateThingTypeResponse`

``` purescript
newtype CreateThingTypeResponse
  = CreateThingTypeResponse { thingTypeName :: NullOrUndefined (ThingTypeName), thingTypeArn :: NullOrUndefined (ThingTypeArn), thingTypeId :: NullOrUndefined (ThingTypeId) }
```

<p>The output of the CreateThingType operation.</p>

##### Instances
``` purescript
Newtype CreateThingTypeResponse _
Generic CreateThingTypeResponse _
Show CreateThingTypeResponse
Decode CreateThingTypeResponse
Encode CreateThingTypeResponse
```

#### `newCreateThingTypeResponse`

``` purescript
newCreateThingTypeResponse :: CreateThingTypeResponse
```

Constructs CreateThingTypeResponse from required parameters

#### `newCreateThingTypeResponse'`

``` purescript
newCreateThingTypeResponse' :: ({ thingTypeName :: NullOrUndefined (ThingTypeName), thingTypeArn :: NullOrUndefined (ThingTypeArn), thingTypeId :: NullOrUndefined (ThingTypeId) } -> { thingTypeName :: NullOrUndefined (ThingTypeName), thingTypeArn :: NullOrUndefined (ThingTypeArn), thingTypeId :: NullOrUndefined (ThingTypeId) }) -> CreateThingTypeResponse
```

Constructs CreateThingTypeResponse's fields from required parameters

#### `CreateTopicRuleRequest`

``` purescript
newtype CreateTopicRuleRequest
  = CreateTopicRuleRequest { ruleName :: RuleName, topicRulePayload :: TopicRulePayload }
```

<p>The input for the CreateTopicRule operation.</p>

##### Instances
``` purescript
Newtype CreateTopicRuleRequest _
Generic CreateTopicRuleRequest _
Show CreateTopicRuleRequest
Decode CreateTopicRuleRequest
Encode CreateTopicRuleRequest
```

#### `newCreateTopicRuleRequest`

``` purescript
newCreateTopicRuleRequest :: RuleName -> TopicRulePayload -> CreateTopicRuleRequest
```

Constructs CreateTopicRuleRequest from required parameters

#### `newCreateTopicRuleRequest'`

``` purescript
newCreateTopicRuleRequest' :: RuleName -> TopicRulePayload -> ({ ruleName :: RuleName, topicRulePayload :: TopicRulePayload } -> { ruleName :: RuleName, topicRulePayload :: TopicRulePayload }) -> CreateTopicRuleRequest
```

Constructs CreateTopicRuleRequest's fields from required parameters

#### `CreatedAtDate`

``` purescript
newtype CreatedAtDate
  = CreatedAtDate Timestamp
```

##### Instances
``` purescript
Newtype CreatedAtDate _
Generic CreatedAtDate _
Show CreatedAtDate
Decode CreatedAtDate
Encode CreatedAtDate
```

#### `CreationDate`

``` purescript
newtype CreationDate
  = CreationDate Timestamp
```

##### Instances
``` purescript
Newtype CreationDate _
Generic CreationDate _
Show CreationDate
Decode CreationDate
Encode CreationDate
```

#### `CredentialDurationSeconds`

``` purescript
newtype CredentialDurationSeconds
  = CredentialDurationSeconds Int
```

##### Instances
``` purescript
Newtype CredentialDurationSeconds _
Generic CredentialDurationSeconds _
Show CredentialDurationSeconds
Decode CredentialDurationSeconds
Encode CredentialDurationSeconds
```

#### `CustomCodeSigning`

``` purescript
newtype CustomCodeSigning
  = CustomCodeSigning { signature :: NullOrUndefined (CodeSigningSignature), certificateChain :: NullOrUndefined (CodeSigningCertificateChain), hashAlgorithm :: NullOrUndefined (HashAlgorithm), signatureAlgorithm :: NullOrUndefined (SignatureAlgorithm) }
```

<p>Describes a custom method used to code sign a file.</p>

##### Instances
``` purescript
Newtype CustomCodeSigning _
Generic CustomCodeSigning _
Show CustomCodeSigning
Decode CustomCodeSigning
Encode CustomCodeSigning
```

#### `newCustomCodeSigning`

``` purescript
newCustomCodeSigning :: CustomCodeSigning
```

Constructs CustomCodeSigning from required parameters

#### `newCustomCodeSigning'`

``` purescript
newCustomCodeSigning' :: ({ signature :: NullOrUndefined (CodeSigningSignature), certificateChain :: NullOrUndefined (CodeSigningCertificateChain), hashAlgorithm :: NullOrUndefined (HashAlgorithm), signatureAlgorithm :: NullOrUndefined (SignatureAlgorithm) } -> { signature :: NullOrUndefined (CodeSigningSignature), certificateChain :: NullOrUndefined (CodeSigningCertificateChain), hashAlgorithm :: NullOrUndefined (HashAlgorithm), signatureAlgorithm :: NullOrUndefined (SignatureAlgorithm) }) -> CustomCodeSigning
```

Constructs CustomCodeSigning's fields from required parameters

#### `DateType`

``` purescript
newtype DateType
  = DateType Timestamp
```

##### Instances
``` purescript
Newtype DateType _
Generic DateType _
Show DateType
Decode DateType
Encode DateType
```

#### `DeleteAuthorizerRequest`

``` purescript
newtype DeleteAuthorizerRequest
  = DeleteAuthorizerRequest { authorizerName :: AuthorizerName }
```

##### Instances
``` purescript
Newtype DeleteAuthorizerRequest _
Generic DeleteAuthorizerRequest _
Show DeleteAuthorizerRequest
Decode DeleteAuthorizerRequest
Encode DeleteAuthorizerRequest
```

#### `newDeleteAuthorizerRequest`

``` purescript
newDeleteAuthorizerRequest :: AuthorizerName -> DeleteAuthorizerRequest
```

Constructs DeleteAuthorizerRequest from required parameters

#### `newDeleteAuthorizerRequest'`

``` purescript
newDeleteAuthorizerRequest' :: AuthorizerName -> ({ authorizerName :: AuthorizerName } -> { authorizerName :: AuthorizerName }) -> DeleteAuthorizerRequest
```

Constructs DeleteAuthorizerRequest's fields from required parameters

#### `DeleteAuthorizerResponse`

``` purescript
newtype DeleteAuthorizerResponse
  = DeleteAuthorizerResponse NoArguments
```

##### Instances
``` purescript
Newtype DeleteAuthorizerResponse _
Generic DeleteAuthorizerResponse _
Show DeleteAuthorizerResponse
Decode DeleteAuthorizerResponse
Encode DeleteAuthorizerResponse
```

#### `DeleteCACertificateRequest`

``` purescript
newtype DeleteCACertificateRequest
  = DeleteCACertificateRequest { certificateId :: CertificateId }
```

<p>Input for the DeleteCACertificate operation.</p>

##### Instances
``` purescript
Newtype DeleteCACertificateRequest _
Generic DeleteCACertificateRequest _
Show DeleteCACertificateRequest
Decode DeleteCACertificateRequest
Encode DeleteCACertificateRequest
```

#### `newDeleteCACertificateRequest`

``` purescript
newDeleteCACertificateRequest :: CertificateId -> DeleteCACertificateRequest
```

Constructs DeleteCACertificateRequest from required parameters

#### `newDeleteCACertificateRequest'`

``` purescript
newDeleteCACertificateRequest' :: CertificateId -> ({ certificateId :: CertificateId } -> { certificateId :: CertificateId }) -> DeleteCACertificateRequest
```

Constructs DeleteCACertificateRequest's fields from required parameters

#### `DeleteCACertificateResponse`

``` purescript
newtype DeleteCACertificateResponse
  = DeleteCACertificateResponse NoArguments
```

<p>The output for the DeleteCACertificate operation.</p>

##### Instances
``` purescript
Newtype DeleteCACertificateResponse _
Generic DeleteCACertificateResponse _
Show DeleteCACertificateResponse
Decode DeleteCACertificateResponse
Encode DeleteCACertificateResponse
```

#### `DeleteCertificateRequest`

``` purescript
newtype DeleteCertificateRequest
  = DeleteCertificateRequest { certificateId :: CertificateId, forceDelete :: NullOrUndefined (ForceDelete) }
```

<p>The input for the DeleteCertificate operation.</p>

##### Instances
``` purescript
Newtype DeleteCertificateRequest _
Generic DeleteCertificateRequest _
Show DeleteCertificateRequest
Decode DeleteCertificateRequest
Encode DeleteCertificateRequest
```

#### `newDeleteCertificateRequest`

``` purescript
newDeleteCertificateRequest :: CertificateId -> DeleteCertificateRequest
```

Constructs DeleteCertificateRequest from required parameters

#### `newDeleteCertificateRequest'`

``` purescript
newDeleteCertificateRequest' :: CertificateId -> ({ certificateId :: CertificateId, forceDelete :: NullOrUndefined (ForceDelete) } -> { certificateId :: CertificateId, forceDelete :: NullOrUndefined (ForceDelete) }) -> DeleteCertificateRequest
```

Constructs DeleteCertificateRequest's fields from required parameters

#### `DeleteConflictException`

``` purescript
newtype DeleteConflictException
  = DeleteConflictException { message :: NullOrUndefined (ErrorMessage') }
```

<p>You can't delete the resource because it is attached to one or more resources.</p>

##### Instances
``` purescript
Newtype DeleteConflictException _
Generic DeleteConflictException _
Show DeleteConflictException
Decode DeleteConflictException
Encode DeleteConflictException
```

#### `newDeleteConflictException`

``` purescript
newDeleteConflictException :: DeleteConflictException
```

Constructs DeleteConflictException from required parameters

#### `newDeleteConflictException'`

``` purescript
newDeleteConflictException' :: ({ message :: NullOrUndefined (ErrorMessage') } -> { message :: NullOrUndefined (ErrorMessage') }) -> DeleteConflictException
```

Constructs DeleteConflictException's fields from required parameters

#### `DeleteOTAUpdateRequest`

``` purescript
newtype DeleteOTAUpdateRequest
  = DeleteOTAUpdateRequest { otaUpdateId :: OTAUpdateId }
```

##### Instances
``` purescript
Newtype DeleteOTAUpdateRequest _
Generic DeleteOTAUpdateRequest _
Show DeleteOTAUpdateRequest
Decode DeleteOTAUpdateRequest
Encode DeleteOTAUpdateRequest
```

#### `newDeleteOTAUpdateRequest`

``` purescript
newDeleteOTAUpdateRequest :: OTAUpdateId -> DeleteOTAUpdateRequest
```

Constructs DeleteOTAUpdateRequest from required parameters

#### `newDeleteOTAUpdateRequest'`

``` purescript
newDeleteOTAUpdateRequest' :: OTAUpdateId -> ({ otaUpdateId :: OTAUpdateId } -> { otaUpdateId :: OTAUpdateId }) -> DeleteOTAUpdateRequest
```

Constructs DeleteOTAUpdateRequest's fields from required parameters

#### `DeleteOTAUpdateResponse`

``` purescript
newtype DeleteOTAUpdateResponse
  = DeleteOTAUpdateResponse NoArguments
```

##### Instances
``` purescript
Newtype DeleteOTAUpdateResponse _
Generic DeleteOTAUpdateResponse _
Show DeleteOTAUpdateResponse
Decode DeleteOTAUpdateResponse
Encode DeleteOTAUpdateResponse
```

#### `DeletePolicyRequest`

``` purescript
newtype DeletePolicyRequest
  = DeletePolicyRequest { policyName :: PolicyName }
```

<p>The input for the DeletePolicy operation.</p>

##### Instances
``` purescript
Newtype DeletePolicyRequest _
Generic DeletePolicyRequest _
Show DeletePolicyRequest
Decode DeletePolicyRequest
Encode DeletePolicyRequest
```

#### `newDeletePolicyRequest`

``` purescript
newDeletePolicyRequest :: PolicyName -> DeletePolicyRequest
```

Constructs DeletePolicyRequest from required parameters

#### `newDeletePolicyRequest'`

``` purescript
newDeletePolicyRequest' :: PolicyName -> ({ policyName :: PolicyName } -> { policyName :: PolicyName }) -> DeletePolicyRequest
```

Constructs DeletePolicyRequest's fields from required parameters

#### `DeletePolicyVersionRequest`

``` purescript
newtype DeletePolicyVersionRequest
  = DeletePolicyVersionRequest { policyName :: PolicyName, policyVersionId :: PolicyVersionId }
```

<p>The input for the DeletePolicyVersion operation.</p>

##### Instances
``` purescript
Newtype DeletePolicyVersionRequest _
Generic DeletePolicyVersionRequest _
Show DeletePolicyVersionRequest
Decode DeletePolicyVersionRequest
Encode DeletePolicyVersionRequest
```

#### `newDeletePolicyVersionRequest`

``` purescript
newDeletePolicyVersionRequest :: PolicyName -> PolicyVersionId -> DeletePolicyVersionRequest
```

Constructs DeletePolicyVersionRequest from required parameters

#### `newDeletePolicyVersionRequest'`

``` purescript
newDeletePolicyVersionRequest' :: PolicyName -> PolicyVersionId -> ({ policyName :: PolicyName, policyVersionId :: PolicyVersionId } -> { policyName :: PolicyName, policyVersionId :: PolicyVersionId }) -> DeletePolicyVersionRequest
```

Constructs DeletePolicyVersionRequest's fields from required parameters

#### `DeleteRegistrationCodeRequest`

``` purescript
newtype DeleteRegistrationCodeRequest
  = DeleteRegistrationCodeRequest NoArguments
```

<p>The input for the DeleteRegistrationCode operation.</p>

##### Instances
``` purescript
Newtype DeleteRegistrationCodeRequest _
Generic DeleteRegistrationCodeRequest _
Show DeleteRegistrationCodeRequest
Decode DeleteRegistrationCodeRequest
Encode DeleteRegistrationCodeRequest
```

#### `DeleteRegistrationCodeResponse`

``` purescript
newtype DeleteRegistrationCodeResponse
  = DeleteRegistrationCodeResponse NoArguments
```

<p>The output for the DeleteRegistrationCode operation.</p>

##### Instances
``` purescript
Newtype DeleteRegistrationCodeResponse _
Generic DeleteRegistrationCodeResponse _
Show DeleteRegistrationCodeResponse
Decode DeleteRegistrationCodeResponse
Encode DeleteRegistrationCodeResponse
```

#### `DeleteRoleAliasRequest`

``` purescript
newtype DeleteRoleAliasRequest
  = DeleteRoleAliasRequest { roleAlias :: RoleAlias }
```

##### Instances
``` purescript
Newtype DeleteRoleAliasRequest _
Generic DeleteRoleAliasRequest _
Show DeleteRoleAliasRequest
Decode DeleteRoleAliasRequest
Encode DeleteRoleAliasRequest
```

#### `newDeleteRoleAliasRequest`

``` purescript
newDeleteRoleAliasRequest :: RoleAlias -> DeleteRoleAliasRequest
```

Constructs DeleteRoleAliasRequest from required parameters

#### `newDeleteRoleAliasRequest'`

``` purescript
newDeleteRoleAliasRequest' :: RoleAlias -> ({ roleAlias :: RoleAlias } -> { roleAlias :: RoleAlias }) -> DeleteRoleAliasRequest
```

Constructs DeleteRoleAliasRequest's fields from required parameters

#### `DeleteRoleAliasResponse`

``` purescript
newtype DeleteRoleAliasResponse
  = DeleteRoleAliasResponse NoArguments
```

##### Instances
``` purescript
Newtype DeleteRoleAliasResponse _
Generic DeleteRoleAliasResponse _
Show DeleteRoleAliasResponse
Decode DeleteRoleAliasResponse
Encode DeleteRoleAliasResponse
```

#### `DeleteStreamRequest`

``` purescript
newtype DeleteStreamRequest
  = DeleteStreamRequest { streamId :: StreamId }
```

##### Instances
``` purescript
Newtype DeleteStreamRequest _
Generic DeleteStreamRequest _
Show DeleteStreamRequest
Decode DeleteStreamRequest
Encode DeleteStreamRequest
```

#### `newDeleteStreamRequest`

``` purescript
newDeleteStreamRequest :: StreamId -> DeleteStreamRequest
```

Constructs DeleteStreamRequest from required parameters

#### `newDeleteStreamRequest'`

``` purescript
newDeleteStreamRequest' :: StreamId -> ({ streamId :: StreamId } -> { streamId :: StreamId }) -> DeleteStreamRequest
```

Constructs DeleteStreamRequest's fields from required parameters

#### `DeleteStreamResponse`

``` purescript
newtype DeleteStreamResponse
  = DeleteStreamResponse NoArguments
```

##### Instances
``` purescript
Newtype DeleteStreamResponse _
Generic DeleteStreamResponse _
Show DeleteStreamResponse
Decode DeleteStreamResponse
Encode DeleteStreamResponse
```

#### `DeleteThingGroupRequest`

``` purescript
newtype DeleteThingGroupRequest
  = DeleteThingGroupRequest { thingGroupName :: ThingGroupName, expectedVersion :: NullOrUndefined (OptionalVersion) }
```

##### Instances
``` purescript
Newtype DeleteThingGroupRequest _
Generic DeleteThingGroupRequest _
Show DeleteThingGroupRequest
Decode DeleteThingGroupRequest
Encode DeleteThingGroupRequest
```

#### `newDeleteThingGroupRequest`

``` purescript
newDeleteThingGroupRequest :: ThingGroupName -> DeleteThingGroupRequest
```

Constructs DeleteThingGroupRequest from required parameters

#### `newDeleteThingGroupRequest'`

``` purescript
newDeleteThingGroupRequest' :: ThingGroupName -> ({ thingGroupName :: ThingGroupName, expectedVersion :: NullOrUndefined (OptionalVersion) } -> { thingGroupName :: ThingGroupName, expectedVersion :: NullOrUndefined (OptionalVersion) }) -> DeleteThingGroupRequest
```

Constructs DeleteThingGroupRequest's fields from required parameters

#### `DeleteThingGroupResponse`

``` purescript
newtype DeleteThingGroupResponse
  = DeleteThingGroupResponse NoArguments
```

##### Instances
``` purescript
Newtype DeleteThingGroupResponse _
Generic DeleteThingGroupResponse _
Show DeleteThingGroupResponse
Decode DeleteThingGroupResponse
Encode DeleteThingGroupResponse
```

#### `DeleteThingRequest`

``` purescript
newtype DeleteThingRequest
  = DeleteThingRequest { thingName :: ThingName, expectedVersion :: NullOrUndefined (OptionalVersion) }
```

<p>The input for the DeleteThing operation.</p>

##### Instances
``` purescript
Newtype DeleteThingRequest _
Generic DeleteThingRequest _
Show DeleteThingRequest
Decode DeleteThingRequest
Encode DeleteThingRequest
```

#### `newDeleteThingRequest`

``` purescript
newDeleteThingRequest :: ThingName -> DeleteThingRequest
```

Constructs DeleteThingRequest from required parameters

#### `newDeleteThingRequest'`

``` purescript
newDeleteThingRequest' :: ThingName -> ({ thingName :: ThingName, expectedVersion :: NullOrUndefined (OptionalVersion) } -> { thingName :: ThingName, expectedVersion :: NullOrUndefined (OptionalVersion) }) -> DeleteThingRequest
```

Constructs DeleteThingRequest's fields from required parameters

#### `DeleteThingResponse`

``` purescript
newtype DeleteThingResponse
  = DeleteThingResponse NoArguments
```

<p>The output of the DeleteThing operation.</p>

##### Instances
``` purescript
Newtype DeleteThingResponse _
Generic DeleteThingResponse _
Show DeleteThingResponse
Decode DeleteThingResponse
Encode DeleteThingResponse
```

#### `DeleteThingTypeRequest`

``` purescript
newtype DeleteThingTypeRequest
  = DeleteThingTypeRequest { thingTypeName :: ThingTypeName }
```

<p>The input for the DeleteThingType operation.</p>

##### Instances
``` purescript
Newtype DeleteThingTypeRequest _
Generic DeleteThingTypeRequest _
Show DeleteThingTypeRequest
Decode DeleteThingTypeRequest
Encode DeleteThingTypeRequest
```

#### `newDeleteThingTypeRequest`

``` purescript
newDeleteThingTypeRequest :: ThingTypeName -> DeleteThingTypeRequest
```

Constructs DeleteThingTypeRequest from required parameters

#### `newDeleteThingTypeRequest'`

``` purescript
newDeleteThingTypeRequest' :: ThingTypeName -> ({ thingTypeName :: ThingTypeName } -> { thingTypeName :: ThingTypeName }) -> DeleteThingTypeRequest
```

Constructs DeleteThingTypeRequest's fields from required parameters

#### `DeleteThingTypeResponse`

``` purescript
newtype DeleteThingTypeResponse
  = DeleteThingTypeResponse NoArguments
```

<p>The output for the DeleteThingType operation.</p>

##### Instances
``` purescript
Newtype DeleteThingTypeResponse _
Generic DeleteThingTypeResponse _
Show DeleteThingTypeResponse
Decode DeleteThingTypeResponse
Encode DeleteThingTypeResponse
```

#### `DeleteTopicRuleRequest`

``` purescript
newtype DeleteTopicRuleRequest
  = DeleteTopicRuleRequest { ruleName :: RuleName }
```

<p>The input for the DeleteTopicRule operation.</p>

##### Instances
``` purescript
Newtype DeleteTopicRuleRequest _
Generic DeleteTopicRuleRequest _
Show DeleteTopicRuleRequest
Decode DeleteTopicRuleRequest
Encode DeleteTopicRuleRequest
```

#### `newDeleteTopicRuleRequest`

``` purescript
newDeleteTopicRuleRequest :: RuleName -> DeleteTopicRuleRequest
```

Constructs DeleteTopicRuleRequest from required parameters

#### `newDeleteTopicRuleRequest'`

``` purescript
newDeleteTopicRuleRequest' :: RuleName -> ({ ruleName :: RuleName } -> { ruleName :: RuleName }) -> DeleteTopicRuleRequest
```

Constructs DeleteTopicRuleRequest's fields from required parameters

#### `DeleteV2LoggingLevelRequest`

``` purescript
newtype DeleteV2LoggingLevelRequest
  = DeleteV2LoggingLevelRequest { targetType :: LogTargetType, targetName :: LogTargetName }
```

##### Instances
``` purescript
Newtype DeleteV2LoggingLevelRequest _
Generic DeleteV2LoggingLevelRequest _
Show DeleteV2LoggingLevelRequest
Decode DeleteV2LoggingLevelRequest
Encode DeleteV2LoggingLevelRequest
```

#### `newDeleteV2LoggingLevelRequest`

``` purescript
newDeleteV2LoggingLevelRequest :: LogTargetName -> LogTargetType -> DeleteV2LoggingLevelRequest
```

Constructs DeleteV2LoggingLevelRequest from required parameters

#### `newDeleteV2LoggingLevelRequest'`

``` purescript
newDeleteV2LoggingLevelRequest' :: LogTargetName -> LogTargetType -> ({ targetType :: LogTargetType, targetName :: LogTargetName } -> { targetType :: LogTargetType, targetName :: LogTargetName }) -> DeleteV2LoggingLevelRequest
```

Constructs DeleteV2LoggingLevelRequest's fields from required parameters

#### `DeliveryStreamName`

``` purescript
newtype DeliveryStreamName
  = DeliveryStreamName String
```

##### Instances
``` purescript
Newtype DeliveryStreamName _
Generic DeliveryStreamName _
Show DeliveryStreamName
Decode DeliveryStreamName
Encode DeliveryStreamName
```

#### `Denied`

``` purescript
newtype Denied
  = Denied { implicitDeny :: NullOrUndefined (ImplicitDeny), explicitDeny :: NullOrUndefined (ExplicitDeny) }
```

<p>Contains information that denied the authorization.</p>

##### Instances
``` purescript
Newtype Denied _
Generic Denied _
Show Denied
Decode Denied
Encode Denied
```

#### `newDenied`

``` purescript
newDenied :: Denied
```

Constructs Denied from required parameters

#### `newDenied'`

``` purescript
newDenied' :: ({ implicitDeny :: NullOrUndefined (ImplicitDeny), explicitDeny :: NullOrUndefined (ExplicitDeny) } -> { implicitDeny :: NullOrUndefined (ImplicitDeny), explicitDeny :: NullOrUndefined (ExplicitDeny) }) -> Denied
```

Constructs Denied's fields from required parameters

#### `DeprecateThingTypeRequest`

``` purescript
newtype DeprecateThingTypeRequest
  = DeprecateThingTypeRequest { thingTypeName :: ThingTypeName, undoDeprecate :: NullOrUndefined (UndoDeprecate) }
```

<p>The input for the DeprecateThingType operation.</p>

##### Instances
``` purescript
Newtype DeprecateThingTypeRequest _
Generic DeprecateThingTypeRequest _
Show DeprecateThingTypeRequest
Decode DeprecateThingTypeRequest
Encode DeprecateThingTypeRequest
```

#### `newDeprecateThingTypeRequest`

``` purescript
newDeprecateThingTypeRequest :: ThingTypeName -> DeprecateThingTypeRequest
```

Constructs DeprecateThingTypeRequest from required parameters

#### `newDeprecateThingTypeRequest'`

``` purescript
newDeprecateThingTypeRequest' :: ThingTypeName -> ({ thingTypeName :: ThingTypeName, undoDeprecate :: NullOrUndefined (UndoDeprecate) } -> { thingTypeName :: ThingTypeName, undoDeprecate :: NullOrUndefined (UndoDeprecate) }) -> DeprecateThingTypeRequest
```

Constructs DeprecateThingTypeRequest's fields from required parameters

#### `DeprecateThingTypeResponse`

``` purescript
newtype DeprecateThingTypeResponse
  = DeprecateThingTypeResponse NoArguments
```

<p>The output for the DeprecateThingType operation.</p>

##### Instances
``` purescript
Newtype DeprecateThingTypeResponse _
Generic DeprecateThingTypeResponse _
Show DeprecateThingTypeResponse
Decode DeprecateThingTypeResponse
Encode DeprecateThingTypeResponse
```

#### `DeprecationDate`

``` purescript
newtype DeprecationDate
  = DeprecationDate Timestamp
```

##### Instances
``` purescript
Newtype DeprecationDate _
Generic DeprecationDate _
Show DeprecationDate
Decode DeprecationDate
Encode DeprecationDate
```

#### `DescribeAuthorizerRequest`

``` purescript
newtype DescribeAuthorizerRequest
  = DescribeAuthorizerRequest { authorizerName :: AuthorizerName }
```

##### Instances
``` purescript
Newtype DescribeAuthorizerRequest _
Generic DescribeAuthorizerRequest _
Show DescribeAuthorizerRequest
Decode DescribeAuthorizerRequest
Encode DescribeAuthorizerRequest
```

#### `newDescribeAuthorizerRequest`

``` purescript
newDescribeAuthorizerRequest :: AuthorizerName -> DescribeAuthorizerRequest
```

Constructs DescribeAuthorizerRequest from required parameters

#### `newDescribeAuthorizerRequest'`

``` purescript
newDescribeAuthorizerRequest' :: AuthorizerName -> ({ authorizerName :: AuthorizerName } -> { authorizerName :: AuthorizerName }) -> DescribeAuthorizerRequest
```

Constructs DescribeAuthorizerRequest's fields from required parameters

#### `DescribeAuthorizerResponse`

``` purescript
newtype DescribeAuthorizerResponse
  = DescribeAuthorizerResponse { authorizerDescription :: NullOrUndefined (AuthorizerDescription) }
```

##### Instances
``` purescript
Newtype DescribeAuthorizerResponse _
Generic DescribeAuthorizerResponse _
Show DescribeAuthorizerResponse
Decode DescribeAuthorizerResponse
Encode DescribeAuthorizerResponse
```

#### `newDescribeAuthorizerResponse`

``` purescript
newDescribeAuthorizerResponse :: DescribeAuthorizerResponse
```

Constructs DescribeAuthorizerResponse from required parameters

#### `newDescribeAuthorizerResponse'`

``` purescript
newDescribeAuthorizerResponse' :: ({ authorizerDescription :: NullOrUndefined (AuthorizerDescription) } -> { authorizerDescription :: NullOrUndefined (AuthorizerDescription) }) -> DescribeAuthorizerResponse
```

Constructs DescribeAuthorizerResponse's fields from required parameters

#### `DescribeCACertificateRequest`

``` purescript
newtype DescribeCACertificateRequest
  = DescribeCACertificateRequest { certificateId :: CertificateId }
```

<p>The input for the DescribeCACertificate operation.</p>

##### Instances
``` purescript
Newtype DescribeCACertificateRequest _
Generic DescribeCACertificateRequest _
Show DescribeCACertificateRequest
Decode DescribeCACertificateRequest
Encode DescribeCACertificateRequest
```

#### `newDescribeCACertificateRequest`

``` purescript
newDescribeCACertificateRequest :: CertificateId -> DescribeCACertificateRequest
```

Constructs DescribeCACertificateRequest from required parameters

#### `newDescribeCACertificateRequest'`

``` purescript
newDescribeCACertificateRequest' :: CertificateId -> ({ certificateId :: CertificateId } -> { certificateId :: CertificateId }) -> DescribeCACertificateRequest
```

Constructs DescribeCACertificateRequest's fields from required parameters

#### `DescribeCACertificateResponse`

``` purescript
newtype DescribeCACertificateResponse
  = DescribeCACertificateResponse { certificateDescription :: NullOrUndefined (CACertificateDescription), registrationConfig :: NullOrUndefined (RegistrationConfig) }
```

<p>The output from the DescribeCACertificate operation.</p>

##### Instances
``` purescript
Newtype DescribeCACertificateResponse _
Generic DescribeCACertificateResponse _
Show DescribeCACertificateResponse
Decode DescribeCACertificateResponse
Encode DescribeCACertificateResponse
```

#### `newDescribeCACertificateResponse`

``` purescript
newDescribeCACertificateResponse :: DescribeCACertificateResponse
```

Constructs DescribeCACertificateResponse from required parameters

#### `newDescribeCACertificateResponse'`

``` purescript
newDescribeCACertificateResponse' :: ({ certificateDescription :: NullOrUndefined (CACertificateDescription), registrationConfig :: NullOrUndefined (RegistrationConfig) } -> { certificateDescription :: NullOrUndefined (CACertificateDescription), registrationConfig :: NullOrUndefined (RegistrationConfig) }) -> DescribeCACertificateResponse
```

Constructs DescribeCACertificateResponse's fields from required parameters

#### `DescribeCertificateRequest`

``` purescript
newtype DescribeCertificateRequest
  = DescribeCertificateRequest { certificateId :: CertificateId }
```

<p>The input for the DescribeCertificate operation.</p>

##### Instances
``` purescript
Newtype DescribeCertificateRequest _
Generic DescribeCertificateRequest _
Show DescribeCertificateRequest
Decode DescribeCertificateRequest
Encode DescribeCertificateRequest
```

#### `newDescribeCertificateRequest`

``` purescript
newDescribeCertificateRequest :: CertificateId -> DescribeCertificateRequest
```

Constructs DescribeCertificateRequest from required parameters

#### `newDescribeCertificateRequest'`

``` purescript
newDescribeCertificateRequest' :: CertificateId -> ({ certificateId :: CertificateId } -> { certificateId :: CertificateId }) -> DescribeCertificateRequest
```

Constructs DescribeCertificateRequest's fields from required parameters

#### `DescribeCertificateResponse`

``` purescript
newtype DescribeCertificateResponse
  = DescribeCertificateResponse { certificateDescription :: NullOrUndefined (CertificateDescription) }
```

<p>The output of the DescribeCertificate operation.</p>

##### Instances
``` purescript
Newtype DescribeCertificateResponse _
Generic DescribeCertificateResponse _
Show DescribeCertificateResponse
Decode DescribeCertificateResponse
Encode DescribeCertificateResponse
```

#### `newDescribeCertificateResponse`

``` purescript
newDescribeCertificateResponse :: DescribeCertificateResponse
```

Constructs DescribeCertificateResponse from required parameters

#### `newDescribeCertificateResponse'`

``` purescript
newDescribeCertificateResponse' :: ({ certificateDescription :: NullOrUndefined (CertificateDescription) } -> { certificateDescription :: NullOrUndefined (CertificateDescription) }) -> DescribeCertificateResponse
```

Constructs DescribeCertificateResponse's fields from required parameters

#### `DescribeDefaultAuthorizerRequest`

``` purescript
newtype DescribeDefaultAuthorizerRequest
  = DescribeDefaultAuthorizerRequest NoArguments
```

##### Instances
``` purescript
Newtype DescribeDefaultAuthorizerRequest _
Generic DescribeDefaultAuthorizerRequest _
Show DescribeDefaultAuthorizerRequest
Decode DescribeDefaultAuthorizerRequest
Encode DescribeDefaultAuthorizerRequest
```

#### `DescribeDefaultAuthorizerResponse`

``` purescript
newtype DescribeDefaultAuthorizerResponse
  = DescribeDefaultAuthorizerResponse { authorizerDescription :: NullOrUndefined (AuthorizerDescription) }
```

##### Instances
``` purescript
Newtype DescribeDefaultAuthorizerResponse _
Generic DescribeDefaultAuthorizerResponse _
Show DescribeDefaultAuthorizerResponse
Decode DescribeDefaultAuthorizerResponse
Encode DescribeDefaultAuthorizerResponse
```

#### `newDescribeDefaultAuthorizerResponse`

``` purescript
newDescribeDefaultAuthorizerResponse :: DescribeDefaultAuthorizerResponse
```

Constructs DescribeDefaultAuthorizerResponse from required parameters

#### `newDescribeDefaultAuthorizerResponse'`

``` purescript
newDescribeDefaultAuthorizerResponse' :: ({ authorizerDescription :: NullOrUndefined (AuthorizerDescription) } -> { authorizerDescription :: NullOrUndefined (AuthorizerDescription) }) -> DescribeDefaultAuthorizerResponse
```

Constructs DescribeDefaultAuthorizerResponse's fields from required parameters

#### `DescribeEndpointRequest`

``` purescript
newtype DescribeEndpointRequest
  = DescribeEndpointRequest { endpointType :: NullOrUndefined (EndpointType) }
```

<p>The input for the DescribeEndpoint operation.</p>

##### Instances
``` purescript
Newtype DescribeEndpointRequest _
Generic DescribeEndpointRequest _
Show DescribeEndpointRequest
Decode DescribeEndpointRequest
Encode DescribeEndpointRequest
```

#### `newDescribeEndpointRequest`

``` purescript
newDescribeEndpointRequest :: DescribeEndpointRequest
```

Constructs DescribeEndpointRequest from required parameters

#### `newDescribeEndpointRequest'`

``` purescript
newDescribeEndpointRequest' :: ({ endpointType :: NullOrUndefined (EndpointType) } -> { endpointType :: NullOrUndefined (EndpointType) }) -> DescribeEndpointRequest
```

Constructs DescribeEndpointRequest's fields from required parameters

#### `DescribeEndpointResponse`

``` purescript
newtype DescribeEndpointResponse
  = DescribeEndpointResponse { endpointAddress :: NullOrUndefined (EndpointAddress) }
```

<p>The output from the DescribeEndpoint operation.</p>

##### Instances
``` purescript
Newtype DescribeEndpointResponse _
Generic DescribeEndpointResponse _
Show DescribeEndpointResponse
Decode DescribeEndpointResponse
Encode DescribeEndpointResponse
```

#### `newDescribeEndpointResponse`

``` purescript
newDescribeEndpointResponse :: DescribeEndpointResponse
```

Constructs DescribeEndpointResponse from required parameters

#### `newDescribeEndpointResponse'`

``` purescript
newDescribeEndpointResponse' :: ({ endpointAddress :: NullOrUndefined (EndpointAddress) } -> { endpointAddress :: NullOrUndefined (EndpointAddress) }) -> DescribeEndpointResponse
```

Constructs DescribeEndpointResponse's fields from required parameters

#### `DescribeEventConfigurationsRequest`

``` purescript
newtype DescribeEventConfigurationsRequest
  = DescribeEventConfigurationsRequest NoArguments
```

##### Instances
``` purescript
Newtype DescribeEventConfigurationsRequest _
Generic DescribeEventConfigurationsRequest _
Show DescribeEventConfigurationsRequest
Decode DescribeEventConfigurationsRequest
Encode DescribeEventConfigurationsRequest
```

#### `DescribeEventConfigurationsResponse`

``` purescript
newtype DescribeEventConfigurationsResponse
  = DescribeEventConfigurationsResponse { eventConfigurations :: NullOrUndefined (EventConfigurations), creationDate :: NullOrUndefined (CreationDate), lastModifiedDate :: NullOrUndefined (LastModifiedDate) }
```

##### Instances
``` purescript
Newtype DescribeEventConfigurationsResponse _
Generic DescribeEventConfigurationsResponse _
Show DescribeEventConfigurationsResponse
Decode DescribeEventConfigurationsResponse
Encode DescribeEventConfigurationsResponse
```

#### `newDescribeEventConfigurationsResponse`

``` purescript
newDescribeEventConfigurationsResponse :: DescribeEventConfigurationsResponse
```

Constructs DescribeEventConfigurationsResponse from required parameters

#### `newDescribeEventConfigurationsResponse'`

``` purescript
newDescribeEventConfigurationsResponse' :: ({ eventConfigurations :: NullOrUndefined (EventConfigurations), creationDate :: NullOrUndefined (CreationDate), lastModifiedDate :: NullOrUndefined (LastModifiedDate) } -> { eventConfigurations :: NullOrUndefined (EventConfigurations), creationDate :: NullOrUndefined (CreationDate), lastModifiedDate :: NullOrUndefined (LastModifiedDate) }) -> DescribeEventConfigurationsResponse
```

Constructs DescribeEventConfigurationsResponse's fields from required parameters

#### `DescribeIndexRequest`

``` purescript
newtype DescribeIndexRequest
  = DescribeIndexRequest { indexName :: IndexName }
```

##### Instances
``` purescript
Newtype DescribeIndexRequest _
Generic DescribeIndexRequest _
Show DescribeIndexRequest
Decode DescribeIndexRequest
Encode DescribeIndexRequest
```

#### `newDescribeIndexRequest`

``` purescript
newDescribeIndexRequest :: IndexName -> DescribeIndexRequest
```

Constructs DescribeIndexRequest from required parameters

#### `newDescribeIndexRequest'`

``` purescript
newDescribeIndexRequest' :: IndexName -> ({ indexName :: IndexName } -> { indexName :: IndexName }) -> DescribeIndexRequest
```

Constructs DescribeIndexRequest's fields from required parameters

#### `DescribeIndexResponse`

``` purescript
newtype DescribeIndexResponse
  = DescribeIndexResponse { indexName :: NullOrUndefined (IndexName), indexStatus :: NullOrUndefined (IndexStatus), schema :: NullOrUndefined (IndexSchema) }
```

##### Instances
``` purescript
Newtype DescribeIndexResponse _
Generic DescribeIndexResponse _
Show DescribeIndexResponse
Decode DescribeIndexResponse
Encode DescribeIndexResponse
```

#### `newDescribeIndexResponse`

``` purescript
newDescribeIndexResponse :: DescribeIndexResponse
```

Constructs DescribeIndexResponse from required parameters

#### `newDescribeIndexResponse'`

``` purescript
newDescribeIndexResponse' :: ({ indexName :: NullOrUndefined (IndexName), indexStatus :: NullOrUndefined (IndexStatus), schema :: NullOrUndefined (IndexSchema) } -> { indexName :: NullOrUndefined (IndexName), indexStatus :: NullOrUndefined (IndexStatus), schema :: NullOrUndefined (IndexSchema) }) -> DescribeIndexResponse
```

Constructs DescribeIndexResponse's fields from required parameters

#### `DescribeJobExecutionRequest`

``` purescript
newtype DescribeJobExecutionRequest
  = DescribeJobExecutionRequest { jobId :: JobId, thingName :: ThingName, executionNumber :: NullOrUndefined (ExecutionNumber) }
```

##### Instances
``` purescript
Newtype DescribeJobExecutionRequest _
Generic DescribeJobExecutionRequest _
Show DescribeJobExecutionRequest
Decode DescribeJobExecutionRequest
Encode DescribeJobExecutionRequest
```

#### `newDescribeJobExecutionRequest`

``` purescript
newDescribeJobExecutionRequest :: JobId -> ThingName -> DescribeJobExecutionRequest
```

Constructs DescribeJobExecutionRequest from required parameters

#### `newDescribeJobExecutionRequest'`

``` purescript
newDescribeJobExecutionRequest' :: JobId -> ThingName -> ({ jobId :: JobId, thingName :: ThingName, executionNumber :: NullOrUndefined (ExecutionNumber) } -> { jobId :: JobId, thingName :: ThingName, executionNumber :: NullOrUndefined (ExecutionNumber) }) -> DescribeJobExecutionRequest
```

Constructs DescribeJobExecutionRequest's fields from required parameters

#### `DescribeJobExecutionResponse`

``` purescript
newtype DescribeJobExecutionResponse
  = DescribeJobExecutionResponse { execution :: NullOrUndefined (JobExecution) }
```

##### Instances
``` purescript
Newtype DescribeJobExecutionResponse _
Generic DescribeJobExecutionResponse _
Show DescribeJobExecutionResponse
Decode DescribeJobExecutionResponse
Encode DescribeJobExecutionResponse
```

#### `newDescribeJobExecutionResponse`

``` purescript
newDescribeJobExecutionResponse :: DescribeJobExecutionResponse
```

Constructs DescribeJobExecutionResponse from required parameters

#### `newDescribeJobExecutionResponse'`

``` purescript
newDescribeJobExecutionResponse' :: ({ execution :: NullOrUndefined (JobExecution) } -> { execution :: NullOrUndefined (JobExecution) }) -> DescribeJobExecutionResponse
```

Constructs DescribeJobExecutionResponse's fields from required parameters

#### `DescribeJobRequest`

``` purescript
newtype DescribeJobRequest
  = DescribeJobRequest { jobId :: JobId }
```

##### Instances
``` purescript
Newtype DescribeJobRequest _
Generic DescribeJobRequest _
Show DescribeJobRequest
Decode DescribeJobRequest
Encode DescribeJobRequest
```

#### `newDescribeJobRequest`

``` purescript
newDescribeJobRequest :: JobId -> DescribeJobRequest
```

Constructs DescribeJobRequest from required parameters

#### `newDescribeJobRequest'`

``` purescript
newDescribeJobRequest' :: JobId -> ({ jobId :: JobId } -> { jobId :: JobId }) -> DescribeJobRequest
```

Constructs DescribeJobRequest's fields from required parameters

#### `DescribeJobResponse`

``` purescript
newtype DescribeJobResponse
  = DescribeJobResponse { documentSource :: NullOrUndefined (JobDocumentSource), job :: NullOrUndefined (Job) }
```

##### Instances
``` purescript
Newtype DescribeJobResponse _
Generic DescribeJobResponse _
Show DescribeJobResponse
Decode DescribeJobResponse
Encode DescribeJobResponse
```

#### `newDescribeJobResponse`

``` purescript
newDescribeJobResponse :: DescribeJobResponse
```

Constructs DescribeJobResponse from required parameters

#### `newDescribeJobResponse'`

``` purescript
newDescribeJobResponse' :: ({ documentSource :: NullOrUndefined (JobDocumentSource), job :: NullOrUndefined (Job) } -> { documentSource :: NullOrUndefined (JobDocumentSource), job :: NullOrUndefined (Job) }) -> DescribeJobResponse
```

Constructs DescribeJobResponse's fields from required parameters

#### `DescribeRoleAliasRequest`

``` purescript
newtype DescribeRoleAliasRequest
  = DescribeRoleAliasRequest { roleAlias :: RoleAlias }
```

##### Instances
``` purescript
Newtype DescribeRoleAliasRequest _
Generic DescribeRoleAliasRequest _
Show DescribeRoleAliasRequest
Decode DescribeRoleAliasRequest
Encode DescribeRoleAliasRequest
```

#### `newDescribeRoleAliasRequest`

``` purescript
newDescribeRoleAliasRequest :: RoleAlias -> DescribeRoleAliasRequest
```

Constructs DescribeRoleAliasRequest from required parameters

#### `newDescribeRoleAliasRequest'`

``` purescript
newDescribeRoleAliasRequest' :: RoleAlias -> ({ roleAlias :: RoleAlias } -> { roleAlias :: RoleAlias }) -> DescribeRoleAliasRequest
```

Constructs DescribeRoleAliasRequest's fields from required parameters

#### `DescribeRoleAliasResponse`

``` purescript
newtype DescribeRoleAliasResponse
  = DescribeRoleAliasResponse { roleAliasDescription :: NullOrUndefined (RoleAliasDescription) }
```

##### Instances
``` purescript
Newtype DescribeRoleAliasResponse _
Generic DescribeRoleAliasResponse _
Show DescribeRoleAliasResponse
Decode DescribeRoleAliasResponse
Encode DescribeRoleAliasResponse
```

#### `newDescribeRoleAliasResponse`

``` purescript
newDescribeRoleAliasResponse :: DescribeRoleAliasResponse
```

Constructs DescribeRoleAliasResponse from required parameters

#### `newDescribeRoleAliasResponse'`

``` purescript
newDescribeRoleAliasResponse' :: ({ roleAliasDescription :: NullOrUndefined (RoleAliasDescription) } -> { roleAliasDescription :: NullOrUndefined (RoleAliasDescription) }) -> DescribeRoleAliasResponse
```

Constructs DescribeRoleAliasResponse's fields from required parameters

#### `DescribeStreamRequest`

``` purescript
newtype DescribeStreamRequest
  = DescribeStreamRequest { streamId :: StreamId }
```

##### Instances
``` purescript
Newtype DescribeStreamRequest _
Generic DescribeStreamRequest _
Show DescribeStreamRequest
Decode DescribeStreamRequest
Encode DescribeStreamRequest
```

#### `newDescribeStreamRequest`

``` purescript
newDescribeStreamRequest :: StreamId -> DescribeStreamRequest
```

Constructs DescribeStreamRequest from required parameters

#### `newDescribeStreamRequest'`

``` purescript
newDescribeStreamRequest' :: StreamId -> ({ streamId :: StreamId } -> { streamId :: StreamId }) -> DescribeStreamRequest
```

Constructs DescribeStreamRequest's fields from required parameters

#### `DescribeStreamResponse`

``` purescript
newtype DescribeStreamResponse
  = DescribeStreamResponse { streamInfo :: NullOrUndefined (StreamInfo) }
```

##### Instances
``` purescript
Newtype DescribeStreamResponse _
Generic DescribeStreamResponse _
Show DescribeStreamResponse
Decode DescribeStreamResponse
Encode DescribeStreamResponse
```

#### `newDescribeStreamResponse`

``` purescript
newDescribeStreamResponse :: DescribeStreamResponse
```

Constructs DescribeStreamResponse from required parameters

#### `newDescribeStreamResponse'`

``` purescript
newDescribeStreamResponse' :: ({ streamInfo :: NullOrUndefined (StreamInfo) } -> { streamInfo :: NullOrUndefined (StreamInfo) }) -> DescribeStreamResponse
```

Constructs DescribeStreamResponse's fields from required parameters

#### `DescribeThingGroupRequest`

``` purescript
newtype DescribeThingGroupRequest
  = DescribeThingGroupRequest { thingGroupName :: ThingGroupName }
```

##### Instances
``` purescript
Newtype DescribeThingGroupRequest _
Generic DescribeThingGroupRequest _
Show DescribeThingGroupRequest
Decode DescribeThingGroupRequest
Encode DescribeThingGroupRequest
```

#### `newDescribeThingGroupRequest`

``` purescript
newDescribeThingGroupRequest :: ThingGroupName -> DescribeThingGroupRequest
```

Constructs DescribeThingGroupRequest from required parameters

#### `newDescribeThingGroupRequest'`

``` purescript
newDescribeThingGroupRequest' :: ThingGroupName -> ({ thingGroupName :: ThingGroupName } -> { thingGroupName :: ThingGroupName }) -> DescribeThingGroupRequest
```

Constructs DescribeThingGroupRequest's fields from required parameters

#### `DescribeThingGroupResponse`

``` purescript
newtype DescribeThingGroupResponse
  = DescribeThingGroupResponse { thingGroupName :: NullOrUndefined (ThingGroupName), thingGroupId :: NullOrUndefined (ThingGroupId), thingGroupArn :: NullOrUndefined (ThingGroupArn), version :: NullOrUndefined (Version), thingGroupProperties :: NullOrUndefined (ThingGroupProperties), thingGroupMetadata :: NullOrUndefined (ThingGroupMetadata) }
```

##### Instances
``` purescript
Newtype DescribeThingGroupResponse _
Generic DescribeThingGroupResponse _
Show DescribeThingGroupResponse
Decode DescribeThingGroupResponse
Encode DescribeThingGroupResponse
```

#### `newDescribeThingGroupResponse`

``` purescript
newDescribeThingGroupResponse :: DescribeThingGroupResponse
```

Constructs DescribeThingGroupResponse from required parameters

#### `newDescribeThingGroupResponse'`

``` purescript
newDescribeThingGroupResponse' :: ({ thingGroupName :: NullOrUndefined (ThingGroupName), thingGroupId :: NullOrUndefined (ThingGroupId), thingGroupArn :: NullOrUndefined (ThingGroupArn), version :: NullOrUndefined (Version), thingGroupProperties :: NullOrUndefined (ThingGroupProperties), thingGroupMetadata :: NullOrUndefined (ThingGroupMetadata) } -> { thingGroupName :: NullOrUndefined (ThingGroupName), thingGroupId :: NullOrUndefined (ThingGroupId), thingGroupArn :: NullOrUndefined (ThingGroupArn), version :: NullOrUndefined (Version), thingGroupProperties :: NullOrUndefined (ThingGroupProperties), thingGroupMetadata :: NullOrUndefined (ThingGroupMetadata) }) -> DescribeThingGroupResponse
```

Constructs DescribeThingGroupResponse's fields from required parameters

#### `DescribeThingRegistrationTaskRequest`

``` purescript
newtype DescribeThingRegistrationTaskRequest
  = DescribeThingRegistrationTaskRequest { taskId :: TaskId }
```

##### Instances
``` purescript
Newtype DescribeThingRegistrationTaskRequest _
Generic DescribeThingRegistrationTaskRequest _
Show DescribeThingRegistrationTaskRequest
Decode DescribeThingRegistrationTaskRequest
Encode DescribeThingRegistrationTaskRequest
```

#### `newDescribeThingRegistrationTaskRequest`

``` purescript
newDescribeThingRegistrationTaskRequest :: TaskId -> DescribeThingRegistrationTaskRequest
```

Constructs DescribeThingRegistrationTaskRequest from required parameters

#### `newDescribeThingRegistrationTaskRequest'`

``` purescript
newDescribeThingRegistrationTaskRequest' :: TaskId -> ({ taskId :: TaskId } -> { taskId :: TaskId }) -> DescribeThingRegistrationTaskRequest
```

Constructs DescribeThingRegistrationTaskRequest's fields from required parameters

#### `DescribeThingRegistrationTaskResponse`

``` purescript
newtype DescribeThingRegistrationTaskResponse
  = DescribeThingRegistrationTaskResponse { taskId :: NullOrUndefined (TaskId), creationDate :: NullOrUndefined (CreationDate), lastModifiedDate :: NullOrUndefined (LastModifiedDate), templateBody :: NullOrUndefined (TemplateBody), inputFileBucket :: NullOrUndefined (RegistryS3BucketName), inputFileKey :: NullOrUndefined (RegistryS3KeyName), roleArn :: NullOrUndefined (RoleArn), status :: NullOrUndefined (Status), message :: NullOrUndefined (ErrorMessage), successCount :: NullOrUndefined (Count), failureCount :: NullOrUndefined (Count), percentageProgress :: NullOrUndefined (Percentage) }
```

##### Instances
``` purescript
Newtype DescribeThingRegistrationTaskResponse _
Generic DescribeThingRegistrationTaskResponse _
Show DescribeThingRegistrationTaskResponse
Decode DescribeThingRegistrationTaskResponse
Encode DescribeThingRegistrationTaskResponse
```

#### `newDescribeThingRegistrationTaskResponse`

``` purescript
newDescribeThingRegistrationTaskResponse :: DescribeThingRegistrationTaskResponse
```

Constructs DescribeThingRegistrationTaskResponse from required parameters

#### `newDescribeThingRegistrationTaskResponse'`

``` purescript
newDescribeThingRegistrationTaskResponse' :: ({ taskId :: NullOrUndefined (TaskId), creationDate :: NullOrUndefined (CreationDate), lastModifiedDate :: NullOrUndefined (LastModifiedDate), templateBody :: NullOrUndefined (TemplateBody), inputFileBucket :: NullOrUndefined (RegistryS3BucketName), inputFileKey :: NullOrUndefined (RegistryS3KeyName), roleArn :: NullOrUndefined (RoleArn), status :: NullOrUndefined (Status), message :: NullOrUndefined (ErrorMessage), successCount :: NullOrUndefined (Count), failureCount :: NullOrUndefined (Count), percentageProgress :: NullOrUndefined (Percentage) } -> { taskId :: NullOrUndefined (TaskId), creationDate :: NullOrUndefined (CreationDate), lastModifiedDate :: NullOrUndefined (LastModifiedDate), templateBody :: NullOrUndefined (TemplateBody), inputFileBucket :: NullOrUndefined (RegistryS3BucketName), inputFileKey :: NullOrUndefined (RegistryS3KeyName), roleArn :: NullOrUndefined (RoleArn), status :: NullOrUndefined (Status), message :: NullOrUndefined (ErrorMessage), successCount :: NullOrUndefined (Count), failureCount :: NullOrUndefined (Count), percentageProgress :: NullOrUndefined (Percentage) }) -> DescribeThingRegistrationTaskResponse
```

Constructs DescribeThingRegistrationTaskResponse's fields from required parameters

#### `DescribeThingRequest`

``` purescript
newtype DescribeThingRequest
  = DescribeThingRequest { thingName :: ThingName }
```

<p>The input for the DescribeThing operation.</p>

##### Instances
``` purescript
Newtype DescribeThingRequest _
Generic DescribeThingRequest _
Show DescribeThingRequest
Decode DescribeThingRequest
Encode DescribeThingRequest
```

#### `newDescribeThingRequest`

``` purescript
newDescribeThingRequest :: ThingName -> DescribeThingRequest
```

Constructs DescribeThingRequest from required parameters

#### `newDescribeThingRequest'`

``` purescript
newDescribeThingRequest' :: ThingName -> ({ thingName :: ThingName } -> { thingName :: ThingName }) -> DescribeThingRequest
```

Constructs DescribeThingRequest's fields from required parameters

#### `DescribeThingResponse`

``` purescript
newtype DescribeThingResponse
  = DescribeThingResponse { defaultClientId :: NullOrUndefined (ClientId), thingName :: NullOrUndefined (ThingName), thingId :: NullOrUndefined (ThingId), thingArn :: NullOrUndefined (ThingArn), thingTypeName :: NullOrUndefined (ThingTypeName), attributes :: NullOrUndefined (Attributes), version :: NullOrUndefined (Version) }
```

<p>The output from the DescribeThing operation.</p>

##### Instances
``` purescript
Newtype DescribeThingResponse _
Generic DescribeThingResponse _
Show DescribeThingResponse
Decode DescribeThingResponse
Encode DescribeThingResponse
```

#### `newDescribeThingResponse`

``` purescript
newDescribeThingResponse :: DescribeThingResponse
```

Constructs DescribeThingResponse from required parameters

#### `newDescribeThingResponse'`

``` purescript
newDescribeThingResponse' :: ({ defaultClientId :: NullOrUndefined (ClientId), thingName :: NullOrUndefined (ThingName), thingId :: NullOrUndefined (ThingId), thingArn :: NullOrUndefined (ThingArn), thingTypeName :: NullOrUndefined (ThingTypeName), attributes :: NullOrUndefined (Attributes), version :: NullOrUndefined (Version) } -> { defaultClientId :: NullOrUndefined (ClientId), thingName :: NullOrUndefined (ThingName), thingId :: NullOrUndefined (ThingId), thingArn :: NullOrUndefined (ThingArn), thingTypeName :: NullOrUndefined (ThingTypeName), attributes :: NullOrUndefined (Attributes), version :: NullOrUndefined (Version) }) -> DescribeThingResponse
```

Constructs DescribeThingResponse's fields from required parameters

#### `DescribeThingTypeRequest`

``` purescript
newtype DescribeThingTypeRequest
  = DescribeThingTypeRequest { thingTypeName :: ThingTypeName }
```

<p>The input for the DescribeThingType operation.</p>

##### Instances
``` purescript
Newtype DescribeThingTypeRequest _
Generic DescribeThingTypeRequest _
Show DescribeThingTypeRequest
Decode DescribeThingTypeRequest
Encode DescribeThingTypeRequest
```

#### `newDescribeThingTypeRequest`

``` purescript
newDescribeThingTypeRequest :: ThingTypeName -> DescribeThingTypeRequest
```

Constructs DescribeThingTypeRequest from required parameters

#### `newDescribeThingTypeRequest'`

``` purescript
newDescribeThingTypeRequest' :: ThingTypeName -> ({ thingTypeName :: ThingTypeName } -> { thingTypeName :: ThingTypeName }) -> DescribeThingTypeRequest
```

Constructs DescribeThingTypeRequest's fields from required parameters

#### `DescribeThingTypeResponse`

``` purescript
newtype DescribeThingTypeResponse
  = DescribeThingTypeResponse { thingTypeName :: NullOrUndefined (ThingTypeName), thingTypeId :: NullOrUndefined (ThingTypeId), thingTypeArn :: NullOrUndefined (ThingTypeArn), thingTypeProperties :: NullOrUndefined (ThingTypeProperties), thingTypeMetadata :: NullOrUndefined (ThingTypeMetadata) }
```

<p>The output for the DescribeThingType operation.</p>

##### Instances
``` purescript
Newtype DescribeThingTypeResponse _
Generic DescribeThingTypeResponse _
Show DescribeThingTypeResponse
Decode DescribeThingTypeResponse
Encode DescribeThingTypeResponse
```

#### `newDescribeThingTypeResponse`

``` purescript
newDescribeThingTypeResponse :: DescribeThingTypeResponse
```

Constructs DescribeThingTypeResponse from required parameters

#### `newDescribeThingTypeResponse'`

``` purescript
newDescribeThingTypeResponse' :: ({ thingTypeName :: NullOrUndefined (ThingTypeName), thingTypeId :: NullOrUndefined (ThingTypeId), thingTypeArn :: NullOrUndefined (ThingTypeArn), thingTypeProperties :: NullOrUndefined (ThingTypeProperties), thingTypeMetadata :: NullOrUndefined (ThingTypeMetadata) } -> { thingTypeName :: NullOrUndefined (ThingTypeName), thingTypeId :: NullOrUndefined (ThingTypeId), thingTypeArn :: NullOrUndefined (ThingTypeArn), thingTypeProperties :: NullOrUndefined (ThingTypeProperties), thingTypeMetadata :: NullOrUndefined (ThingTypeMetadata) }) -> DescribeThingTypeResponse
```

Constructs DescribeThingTypeResponse's fields from required parameters

#### `Description`

``` purescript
newtype Description
  = Description String
```

##### Instances
``` purescript
Newtype Description _
Generic Description _
Show Description
Decode Description
Encode Description
```

#### `DetachPolicyRequest`

``` purescript
newtype DetachPolicyRequest
  = DetachPolicyRequest { policyName :: PolicyName, target :: PolicyTarget }
```

##### Instances
``` purescript
Newtype DetachPolicyRequest _
Generic DetachPolicyRequest _
Show DetachPolicyRequest
Decode DetachPolicyRequest
Encode DetachPolicyRequest
```

#### `newDetachPolicyRequest`

``` purescript
newDetachPolicyRequest :: PolicyName -> PolicyTarget -> DetachPolicyRequest
```

Constructs DetachPolicyRequest from required parameters

#### `newDetachPolicyRequest'`

``` purescript
newDetachPolicyRequest' :: PolicyName -> PolicyTarget -> ({ policyName :: PolicyName, target :: PolicyTarget } -> { policyName :: PolicyName, target :: PolicyTarget }) -> DetachPolicyRequest
```

Constructs DetachPolicyRequest's fields from required parameters

#### `DetachPrincipalPolicyRequest`

``` purescript
newtype DetachPrincipalPolicyRequest
  = DetachPrincipalPolicyRequest { policyName :: PolicyName, principal :: Principal }
```

<p>The input for the DetachPrincipalPolicy operation.</p>

##### Instances
``` purescript
Newtype DetachPrincipalPolicyRequest _
Generic DetachPrincipalPolicyRequest _
Show DetachPrincipalPolicyRequest
Decode DetachPrincipalPolicyRequest
Encode DetachPrincipalPolicyRequest
```

#### `newDetachPrincipalPolicyRequest`

``` purescript
newDetachPrincipalPolicyRequest :: PolicyName -> Principal -> DetachPrincipalPolicyRequest
```

Constructs DetachPrincipalPolicyRequest from required parameters

#### `newDetachPrincipalPolicyRequest'`

``` purescript
newDetachPrincipalPolicyRequest' :: PolicyName -> Principal -> ({ policyName :: PolicyName, principal :: Principal } -> { policyName :: PolicyName, principal :: Principal }) -> DetachPrincipalPolicyRequest
```

Constructs DetachPrincipalPolicyRequest's fields from required parameters

#### `DetachThingPrincipalRequest`

``` purescript
newtype DetachThingPrincipalRequest
  = DetachThingPrincipalRequest { thingName :: ThingName, principal :: Principal }
```

<p>The input for the DetachThingPrincipal operation.</p>

##### Instances
``` purescript
Newtype DetachThingPrincipalRequest _
Generic DetachThingPrincipalRequest _
Show DetachThingPrincipalRequest
Decode DetachThingPrincipalRequest
Encode DetachThingPrincipalRequest
```

#### `newDetachThingPrincipalRequest`

``` purescript
newDetachThingPrincipalRequest :: Principal -> ThingName -> DetachThingPrincipalRequest
```

Constructs DetachThingPrincipalRequest from required parameters

#### `newDetachThingPrincipalRequest'`

``` purescript
newDetachThingPrincipalRequest' :: Principal -> ThingName -> ({ thingName :: ThingName, principal :: Principal } -> { thingName :: ThingName, principal :: Principal }) -> DetachThingPrincipalRequest
```

Constructs DetachThingPrincipalRequest's fields from required parameters

#### `DetachThingPrincipalResponse`

``` purescript
newtype DetachThingPrincipalResponse
  = DetachThingPrincipalResponse NoArguments
```

<p>The output from the DetachThingPrincipal operation.</p>

##### Instances
``` purescript
Newtype DetachThingPrincipalResponse _
Generic DetachThingPrincipalResponse _
Show DetachThingPrincipalResponse
Decode DetachThingPrincipalResponse
Encode DetachThingPrincipalResponse
```

#### `DetailsKey`

``` purescript
newtype DetailsKey
  = DetailsKey String
```

##### Instances
``` purescript
Newtype DetailsKey _
Generic DetailsKey _
Show DetailsKey
Decode DetailsKey
Encode DetailsKey
```

#### `DetailsMap`

``` purescript
newtype DetailsMap
  = DetailsMap (StrMap DetailsValue)
```

##### Instances
``` purescript
Newtype DetailsMap _
Generic DetailsMap _
Show DetailsMap
Decode DetailsMap
Encode DetailsMap
```

#### `DetailsValue`

``` purescript
newtype DetailsValue
  = DetailsValue String
```

##### Instances
``` purescript
Newtype DetailsValue _
Generic DetailsValue _
Show DetailsValue
Decode DetailsValue
Encode DetailsValue
```

#### `DisableAllLogs`

``` purescript
newtype DisableAllLogs
  = DisableAllLogs Boolean
```

##### Instances
``` purescript
Newtype DisableAllLogs _
Generic DisableAllLogs _
Show DisableAllLogs
Decode DisableAllLogs
Encode DisableAllLogs
```

#### `DisableTopicRuleRequest`

``` purescript
newtype DisableTopicRuleRequest
  = DisableTopicRuleRequest { ruleName :: RuleName }
```

<p>The input for the DisableTopicRuleRequest operation.</p>

##### Instances
``` purescript
Newtype DisableTopicRuleRequest _
Generic DisableTopicRuleRequest _
Show DisableTopicRuleRequest
Decode DisableTopicRuleRequest
Encode DisableTopicRuleRequest
```

#### `newDisableTopicRuleRequest`

``` purescript
newDisableTopicRuleRequest :: RuleName -> DisableTopicRuleRequest
```

Constructs DisableTopicRuleRequest from required parameters

#### `newDisableTopicRuleRequest'`

``` purescript
newDisableTopicRuleRequest' :: RuleName -> ({ ruleName :: RuleName } -> { ruleName :: RuleName }) -> DisableTopicRuleRequest
```

Constructs DisableTopicRuleRequest's fields from required parameters

#### `DynamoDBAction`

``` purescript
newtype DynamoDBAction
  = DynamoDBAction { tableName :: TableName, roleArn :: AwsArn, operation :: NullOrUndefined (DynamoOperation), hashKeyField :: HashKeyField, hashKeyValue :: HashKeyValue, hashKeyType :: NullOrUndefined (DynamoKeyType), rangeKeyField :: NullOrUndefined (RangeKeyField), rangeKeyValue :: NullOrUndefined (RangeKeyValue), rangeKeyType :: NullOrUndefined (DynamoKeyType), payloadField :: NullOrUndefined (PayloadField) }
```

<p>Describes an action to write to a DynamoDB table.</p> <p>The <code>tableName</code>, <code>hashKeyField</code>, and <code>rangeKeyField</code> values must match the values used when you created the table.</p> <p>The <code>hashKeyValue</code> and <code>rangeKeyvalue</code> fields use a substitution template syntax. These templates provide data at runtime. The syntax is as follows: ${<i>sql-expression</i>}.</p> <p>You can specify any valid expression in a WHERE or SELECT clause, including JSON properties, comparisons, calculations, and functions. For example, the following field uses the third level of the topic:</p> <p> <code>"hashKeyValue": "${topic(3)}"</code> </p> <p>The following field uses the timestamp:</p> <p> <code>"rangeKeyValue": "${timestamp()}"</code> </p>

##### Instances
``` purescript
Newtype DynamoDBAction _
Generic DynamoDBAction _
Show DynamoDBAction
Decode DynamoDBAction
Encode DynamoDBAction
```

#### `newDynamoDBAction`

``` purescript
newDynamoDBAction :: HashKeyField -> HashKeyValue -> AwsArn -> TableName -> DynamoDBAction
```

Constructs DynamoDBAction from required parameters

#### `newDynamoDBAction'`

``` purescript
newDynamoDBAction' :: HashKeyField -> HashKeyValue -> AwsArn -> TableName -> ({ tableName :: TableName, roleArn :: AwsArn, operation :: NullOrUndefined (DynamoOperation), hashKeyField :: HashKeyField, hashKeyValue :: HashKeyValue, hashKeyType :: NullOrUndefined (DynamoKeyType), rangeKeyField :: NullOrUndefined (RangeKeyField), rangeKeyValue :: NullOrUndefined (RangeKeyValue), rangeKeyType :: NullOrUndefined (DynamoKeyType), payloadField :: NullOrUndefined (PayloadField) } -> { tableName :: TableName, roleArn :: AwsArn, operation :: NullOrUndefined (DynamoOperation), hashKeyField :: HashKeyField, hashKeyValue :: HashKeyValue, hashKeyType :: NullOrUndefined (DynamoKeyType), rangeKeyField :: NullOrUndefined (RangeKeyField), rangeKeyValue :: NullOrUndefined (RangeKeyValue), rangeKeyType :: NullOrUndefined (DynamoKeyType), payloadField :: NullOrUndefined (PayloadField) }) -> DynamoDBAction
```

Constructs DynamoDBAction's fields from required parameters

#### `DynamoDBv2Action`

``` purescript
newtype DynamoDBv2Action
  = DynamoDBv2Action { roleArn :: NullOrUndefined (AwsArn), putItem :: NullOrUndefined (PutItemInput) }
```

<p>Describes an action to write to a DynamoDB table.</p> <p>This DynamoDB action writes each attribute in the message payload into it's own column in the DynamoDB table.</p>

##### Instances
``` purescript
Newtype DynamoDBv2Action _
Generic DynamoDBv2Action _
Show DynamoDBv2Action
Decode DynamoDBv2Action
Encode DynamoDBv2Action
```

#### `newDynamoDBv2Action`

``` purescript
newDynamoDBv2Action :: DynamoDBv2Action
```

Constructs DynamoDBv2Action from required parameters

#### `newDynamoDBv2Action'`

``` purescript
newDynamoDBv2Action' :: ({ roleArn :: NullOrUndefined (AwsArn), putItem :: NullOrUndefined (PutItemInput) } -> { roleArn :: NullOrUndefined (AwsArn), putItem :: NullOrUndefined (PutItemInput) }) -> DynamoDBv2Action
```

Constructs DynamoDBv2Action's fields from required parameters

#### `DynamoKeyType`

``` purescript
newtype DynamoKeyType
  = DynamoKeyType String
```

##### Instances
``` purescript
Newtype DynamoKeyType _
Generic DynamoKeyType _
Show DynamoKeyType
Decode DynamoKeyType
Encode DynamoKeyType
```

#### `DynamoOperation`

``` purescript
newtype DynamoOperation
  = DynamoOperation String
```

##### Instances
``` purescript
Newtype DynamoOperation _
Generic DynamoOperation _
Show DynamoOperation
Decode DynamoOperation
Encode DynamoOperation
```

#### `EffectivePolicies`

``` purescript
newtype EffectivePolicies
  = EffectivePolicies (Array EffectivePolicy)
```

##### Instances
``` purescript
Newtype EffectivePolicies _
Generic EffectivePolicies _
Show EffectivePolicies
Decode EffectivePolicies
Encode EffectivePolicies
```

#### `EffectivePolicy`

``` purescript
newtype EffectivePolicy
  = EffectivePolicy { policyName :: NullOrUndefined (PolicyName), policyArn :: NullOrUndefined (PolicyArn), policyDocument :: NullOrUndefined (PolicyDocument) }
```

<p>The policy that has the effect on the authorization results.</p>

##### Instances
``` purescript
Newtype EffectivePolicy _
Generic EffectivePolicy _
Show EffectivePolicy
Decode EffectivePolicy
Encode EffectivePolicy
```

#### `newEffectivePolicy`

``` purescript
newEffectivePolicy :: EffectivePolicy
```

Constructs EffectivePolicy from required parameters

#### `newEffectivePolicy'`

``` purescript
newEffectivePolicy' :: ({ policyName :: NullOrUndefined (PolicyName), policyArn :: NullOrUndefined (PolicyArn), policyDocument :: NullOrUndefined (PolicyDocument) } -> { policyName :: NullOrUndefined (PolicyName), policyArn :: NullOrUndefined (PolicyArn), policyDocument :: NullOrUndefined (PolicyDocument) }) -> EffectivePolicy
```

Constructs EffectivePolicy's fields from required parameters

#### `ElasticsearchAction`

``` purescript
newtype ElasticsearchAction
  = ElasticsearchAction { roleArn :: AwsArn, endpoint :: ElasticsearchEndpoint, index :: ElasticsearchIndex, "type" :: ElasticsearchType, id :: ElasticsearchId }
```

<p>Describes an action that writes data to an Amazon Elasticsearch Service domain.</p>

##### Instances
``` purescript
Newtype ElasticsearchAction _
Generic ElasticsearchAction _
Show ElasticsearchAction
Decode ElasticsearchAction
Encode ElasticsearchAction
```

#### `newElasticsearchAction`

``` purescript
newElasticsearchAction :: ElasticsearchEndpoint -> ElasticsearchId -> ElasticsearchIndex -> AwsArn -> ElasticsearchType -> ElasticsearchAction
```

Constructs ElasticsearchAction from required parameters

#### `newElasticsearchAction'`

``` purescript
newElasticsearchAction' :: ElasticsearchEndpoint -> ElasticsearchId -> ElasticsearchIndex -> AwsArn -> ElasticsearchType -> ({ roleArn :: AwsArn, endpoint :: ElasticsearchEndpoint, index :: ElasticsearchIndex, "type" :: ElasticsearchType, id :: ElasticsearchId } -> { roleArn :: AwsArn, endpoint :: ElasticsearchEndpoint, index :: ElasticsearchIndex, "type" :: ElasticsearchType, id :: ElasticsearchId }) -> ElasticsearchAction
```

Constructs ElasticsearchAction's fields from required parameters

#### `ElasticsearchEndpoint`

``` purescript
newtype ElasticsearchEndpoint
  = ElasticsearchEndpoint String
```

##### Instances
``` purescript
Newtype ElasticsearchEndpoint _
Generic ElasticsearchEndpoint _
Show ElasticsearchEndpoint
Decode ElasticsearchEndpoint
Encode ElasticsearchEndpoint
```

#### `ElasticsearchId`

``` purescript
newtype ElasticsearchId
  = ElasticsearchId String
```

##### Instances
``` purescript
Newtype ElasticsearchId _
Generic ElasticsearchId _
Show ElasticsearchId
Decode ElasticsearchId
Encode ElasticsearchId
```

#### `ElasticsearchIndex`

``` purescript
newtype ElasticsearchIndex
  = ElasticsearchIndex String
```

##### Instances
``` purescript
Newtype ElasticsearchIndex _
Generic ElasticsearchIndex _
Show ElasticsearchIndex
Decode ElasticsearchIndex
Encode ElasticsearchIndex
```

#### `ElasticsearchType`

``` purescript
newtype ElasticsearchType
  = ElasticsearchType String
```

##### Instances
``` purescript
Newtype ElasticsearchType _
Generic ElasticsearchType _
Show ElasticsearchType
Decode ElasticsearchType
Encode ElasticsearchType
```

#### `EnableTopicRuleRequest`

``` purescript
newtype EnableTopicRuleRequest
  = EnableTopicRuleRequest { ruleName :: RuleName }
```

<p>The input for the EnableTopicRuleRequest operation.</p>

##### Instances
``` purescript
Newtype EnableTopicRuleRequest _
Generic EnableTopicRuleRequest _
Show EnableTopicRuleRequest
Decode EnableTopicRuleRequest
Encode EnableTopicRuleRequest
```

#### `newEnableTopicRuleRequest`

``` purescript
newEnableTopicRuleRequest :: RuleName -> EnableTopicRuleRequest
```

Constructs EnableTopicRuleRequest from required parameters

#### `newEnableTopicRuleRequest'`

``` purescript
newEnableTopicRuleRequest' :: RuleName -> ({ ruleName :: RuleName } -> { ruleName :: RuleName }) -> EnableTopicRuleRequest
```

Constructs EnableTopicRuleRequest's fields from required parameters

#### `Enabled`

``` purescript
newtype Enabled
  = Enabled Boolean
```

##### Instances
``` purescript
Newtype Enabled _
Generic Enabled _
Show Enabled
Decode Enabled
Encode Enabled
```

#### `EndpointAddress`

``` purescript
newtype EndpointAddress
  = EndpointAddress String
```

##### Instances
``` purescript
Newtype EndpointAddress _
Generic EndpointAddress _
Show EndpointAddress
Decode EndpointAddress
Encode EndpointAddress
```

#### `EndpointType`

``` purescript
newtype EndpointType
  = EndpointType String
```

##### Instances
``` purescript
Newtype EndpointType _
Generic EndpointType _
Show EndpointType
Decode EndpointType
Encode EndpointType
```

#### `ErrorInfo`

``` purescript
newtype ErrorInfo
  = ErrorInfo { code :: NullOrUndefined (Code), message :: NullOrUndefined (OTAUpdateErrorMessage) }
```

<p>Error information.</p>

##### Instances
``` purescript
Newtype ErrorInfo _
Generic ErrorInfo _
Show ErrorInfo
Decode ErrorInfo
Encode ErrorInfo
```

#### `newErrorInfo`

``` purescript
newErrorInfo :: ErrorInfo
```

Constructs ErrorInfo from required parameters

#### `newErrorInfo'`

``` purescript
newErrorInfo' :: ({ code :: NullOrUndefined (Code), message :: NullOrUndefined (OTAUpdateErrorMessage) } -> { code :: NullOrUndefined (Code), message :: NullOrUndefined (OTAUpdateErrorMessage) }) -> ErrorInfo
```

Constructs ErrorInfo's fields from required parameters

#### `ErrorMessage`

``` purescript
newtype ErrorMessage
  = ErrorMessage String
```

##### Instances
``` purescript
Newtype ErrorMessage _
Generic ErrorMessage _
Show ErrorMessage
Decode ErrorMessage
Encode ErrorMessage
```

#### `EventConfigurations`

``` purescript
newtype EventConfigurations
  = EventConfigurations (StrMap Configuration)
```

##### Instances
``` purescript
Newtype EventConfigurations _
Generic EventConfigurations _
Show EventConfigurations
Decode EventConfigurations
Encode EventConfigurations
```

#### `EventType`

``` purescript
newtype EventType
  = EventType String
```

##### Instances
``` purescript
Newtype EventType _
Generic EventType _
Show EventType
Decode EventType
Encode EventType
```

#### `ExecutionNumber`

``` purescript
newtype ExecutionNumber
  = ExecutionNumber Number
```

##### Instances
``` purescript
Newtype ExecutionNumber _
Generic ExecutionNumber _
Show ExecutionNumber
Decode ExecutionNumber
Encode ExecutionNumber
```

#### `ExpiresInSec`

``` purescript
newtype ExpiresInSec
  = ExpiresInSec Number
```

##### Instances
``` purescript
Newtype ExpiresInSec _
Generic ExpiresInSec _
Show ExpiresInSec
Decode ExpiresInSec
Encode ExpiresInSec
```

#### `ExplicitDeny`

``` purescript
newtype ExplicitDeny
  = ExplicitDeny { policies :: NullOrUndefined (Policies) }
```

<p>Information that explicitly denies authorization.</p>

##### Instances
``` purescript
Newtype ExplicitDeny _
Generic ExplicitDeny _
Show ExplicitDeny
Decode ExplicitDeny
Encode ExplicitDeny
```

#### `newExplicitDeny`

``` purescript
newExplicitDeny :: ExplicitDeny
```

Constructs ExplicitDeny from required parameters

#### `newExplicitDeny'`

``` purescript
newExplicitDeny' :: ({ policies :: NullOrUndefined (Policies) } -> { policies :: NullOrUndefined (Policies) }) -> ExplicitDeny
```

Constructs ExplicitDeny's fields from required parameters

#### `FailedThings`

``` purescript
newtype FailedThings
  = FailedThings Int
```

##### Instances
``` purescript
Newtype FailedThings _
Generic FailedThings _
Show FailedThings
Decode FailedThings
Encode FailedThings
```

#### `FileId`

``` purescript
newtype FileId
  = FileId Int
```

##### Instances
``` purescript
Newtype FileId _
Generic FileId _
Show FileId
Decode FileId
Encode FileId
```

#### `FileName`

``` purescript
newtype FileName
  = FileName String
```

##### Instances
``` purescript
Newtype FileName _
Generic FileName _
Show FileName
Decode FileName
Encode FileName
```

#### `FirehoseAction`

``` purescript
newtype FirehoseAction
  = FirehoseAction { roleArn :: AwsArn, deliveryStreamName :: DeliveryStreamName, separator :: NullOrUndefined (FirehoseSeparator) }
```

<p>Describes an action that writes data to an Amazon Kinesis Firehose stream.</p>

##### Instances
``` purescript
Newtype FirehoseAction _
Generic FirehoseAction _
Show FirehoseAction
Decode FirehoseAction
Encode FirehoseAction
```

#### `newFirehoseAction`

``` purescript
newFirehoseAction :: DeliveryStreamName -> AwsArn -> FirehoseAction
```

Constructs FirehoseAction from required parameters

#### `newFirehoseAction'`

``` purescript
newFirehoseAction' :: DeliveryStreamName -> AwsArn -> ({ roleArn :: AwsArn, deliveryStreamName :: DeliveryStreamName, separator :: NullOrUndefined (FirehoseSeparator) } -> { roleArn :: AwsArn, deliveryStreamName :: DeliveryStreamName, separator :: NullOrUndefined (FirehoseSeparator) }) -> FirehoseAction
```

Constructs FirehoseAction's fields from required parameters

#### `FirehoseSeparator`

``` purescript
newtype FirehoseSeparator
  = FirehoseSeparator String
```

##### Instances
``` purescript
Newtype FirehoseSeparator _
Generic FirehoseSeparator _
Show FirehoseSeparator
Decode FirehoseSeparator
Encode FirehoseSeparator
```

#### `Flag`

``` purescript
newtype Flag
  = Flag Boolean
```

##### Instances
``` purescript
Newtype Flag _
Generic Flag _
Show Flag
Decode Flag
Encode Flag
```

#### `ForceDelete`

``` purescript
newtype ForceDelete
  = ForceDelete Boolean
```

##### Instances
``` purescript
Newtype ForceDelete _
Generic ForceDelete _
Show ForceDelete
Decode ForceDelete
Encode ForceDelete
```

#### `FunctionArn`

``` purescript
newtype FunctionArn
  = FunctionArn String
```

##### Instances
``` purescript
Newtype FunctionArn _
Generic FunctionArn _
Show FunctionArn
Decode FunctionArn
Encode FunctionArn
```

#### `GEMaxResults`

``` purescript
newtype GEMaxResults
  = GEMaxResults Int
```

##### Instances
``` purescript
Newtype GEMaxResults _
Generic GEMaxResults _
Show GEMaxResults
Decode GEMaxResults
Encode GEMaxResults
```

#### `GetEffectivePoliciesRequest`

``` purescript
newtype GetEffectivePoliciesRequest
  = GetEffectivePoliciesRequest { principal :: NullOrUndefined (Principal), cognitoIdentityPoolId :: NullOrUndefined (CognitoIdentityPoolId), thingName :: NullOrUndefined (ThingName) }
```

##### Instances
``` purescript
Newtype GetEffectivePoliciesRequest _
Generic GetEffectivePoliciesRequest _
Show GetEffectivePoliciesRequest
Decode GetEffectivePoliciesRequest
Encode GetEffectivePoliciesRequest
```

#### `newGetEffectivePoliciesRequest`

``` purescript
newGetEffectivePoliciesRequest :: GetEffectivePoliciesRequest
```

Constructs GetEffectivePoliciesRequest from required parameters

#### `newGetEffectivePoliciesRequest'`

``` purescript
newGetEffectivePoliciesRequest' :: ({ principal :: NullOrUndefined (Principal), cognitoIdentityPoolId :: NullOrUndefined (CognitoIdentityPoolId), thingName :: NullOrUndefined (ThingName) } -> { principal :: NullOrUndefined (Principal), cognitoIdentityPoolId :: NullOrUndefined (CognitoIdentityPoolId), thingName :: NullOrUndefined (ThingName) }) -> GetEffectivePoliciesRequest
```

Constructs GetEffectivePoliciesRequest's fields from required parameters

#### `GetEffectivePoliciesResponse`

``` purescript
newtype GetEffectivePoliciesResponse
  = GetEffectivePoliciesResponse { effectivePolicies :: NullOrUndefined (EffectivePolicies) }
```

##### Instances
``` purescript
Newtype GetEffectivePoliciesResponse _
Generic GetEffectivePoliciesResponse _
Show GetEffectivePoliciesResponse
Decode GetEffectivePoliciesResponse
Encode GetEffectivePoliciesResponse
```

#### `newGetEffectivePoliciesResponse`

``` purescript
newGetEffectivePoliciesResponse :: GetEffectivePoliciesResponse
```

Constructs GetEffectivePoliciesResponse from required parameters

#### `newGetEffectivePoliciesResponse'`

``` purescript
newGetEffectivePoliciesResponse' :: ({ effectivePolicies :: NullOrUndefined (EffectivePolicies) } -> { effectivePolicies :: NullOrUndefined (EffectivePolicies) }) -> GetEffectivePoliciesResponse
```

Constructs GetEffectivePoliciesResponse's fields from required parameters

#### `GetIndexingConfigurationRequest`

``` purescript
newtype GetIndexingConfigurationRequest
  = GetIndexingConfigurationRequest NoArguments
```

##### Instances
``` purescript
Newtype GetIndexingConfigurationRequest _
Generic GetIndexingConfigurationRequest _
Show GetIndexingConfigurationRequest
Decode GetIndexingConfigurationRequest
Encode GetIndexingConfigurationRequest
```

#### `GetIndexingConfigurationResponse`

``` purescript
newtype GetIndexingConfigurationResponse
  = GetIndexingConfigurationResponse { thingIndexingConfiguration :: NullOrUndefined (ThingIndexingConfiguration) }
```

##### Instances
``` purescript
Newtype GetIndexingConfigurationResponse _
Generic GetIndexingConfigurationResponse _
Show GetIndexingConfigurationResponse
Decode GetIndexingConfigurationResponse
Encode GetIndexingConfigurationResponse
```

#### `newGetIndexingConfigurationResponse`

``` purescript
newGetIndexingConfigurationResponse :: GetIndexingConfigurationResponse
```

Constructs GetIndexingConfigurationResponse from required parameters

#### `newGetIndexingConfigurationResponse'`

``` purescript
newGetIndexingConfigurationResponse' :: ({ thingIndexingConfiguration :: NullOrUndefined (ThingIndexingConfiguration) } -> { thingIndexingConfiguration :: NullOrUndefined (ThingIndexingConfiguration) }) -> GetIndexingConfigurationResponse
```

Constructs GetIndexingConfigurationResponse's fields from required parameters

#### `GetJobDocumentRequest`

``` purescript
newtype GetJobDocumentRequest
  = GetJobDocumentRequest { jobId :: JobId }
```

##### Instances
``` purescript
Newtype GetJobDocumentRequest _
Generic GetJobDocumentRequest _
Show GetJobDocumentRequest
Decode GetJobDocumentRequest
Encode GetJobDocumentRequest
```

#### `newGetJobDocumentRequest`

``` purescript
newGetJobDocumentRequest :: JobId -> GetJobDocumentRequest
```

Constructs GetJobDocumentRequest from required parameters

#### `newGetJobDocumentRequest'`

``` purescript
newGetJobDocumentRequest' :: JobId -> ({ jobId :: JobId } -> { jobId :: JobId }) -> GetJobDocumentRequest
```

Constructs GetJobDocumentRequest's fields from required parameters

#### `GetJobDocumentResponse`

``` purescript
newtype GetJobDocumentResponse
  = GetJobDocumentResponse { document :: NullOrUndefined (JobDocument) }
```

##### Instances
``` purescript
Newtype GetJobDocumentResponse _
Generic GetJobDocumentResponse _
Show GetJobDocumentResponse
Decode GetJobDocumentResponse
Encode GetJobDocumentResponse
```

#### `newGetJobDocumentResponse`

``` purescript
newGetJobDocumentResponse :: GetJobDocumentResponse
```

Constructs GetJobDocumentResponse from required parameters

#### `newGetJobDocumentResponse'`

``` purescript
newGetJobDocumentResponse' :: ({ document :: NullOrUndefined (JobDocument) } -> { document :: NullOrUndefined (JobDocument) }) -> GetJobDocumentResponse
```

Constructs GetJobDocumentResponse's fields from required parameters

#### `GetLoggingOptionsRequest`

``` purescript
newtype GetLoggingOptionsRequest
  = GetLoggingOptionsRequest NoArguments
```

<p>The input for the GetLoggingOptions operation.</p>

##### Instances
``` purescript
Newtype GetLoggingOptionsRequest _
Generic GetLoggingOptionsRequest _
Show GetLoggingOptionsRequest
Decode GetLoggingOptionsRequest
Encode GetLoggingOptionsRequest
```

#### `GetLoggingOptionsResponse`

``` purescript
newtype GetLoggingOptionsResponse
  = GetLoggingOptionsResponse { roleArn :: NullOrUndefined (AwsArn), logLevel :: NullOrUndefined (LogLevel) }
```

<p>The output from the GetLoggingOptions operation.</p>

##### Instances
``` purescript
Newtype GetLoggingOptionsResponse _
Generic GetLoggingOptionsResponse _
Show GetLoggingOptionsResponse
Decode GetLoggingOptionsResponse
Encode GetLoggingOptionsResponse
```

#### `newGetLoggingOptionsResponse`

``` purescript
newGetLoggingOptionsResponse :: GetLoggingOptionsResponse
```

Constructs GetLoggingOptionsResponse from required parameters

#### `newGetLoggingOptionsResponse'`

``` purescript
newGetLoggingOptionsResponse' :: ({ roleArn :: NullOrUndefined (AwsArn), logLevel :: NullOrUndefined (LogLevel) } -> { roleArn :: NullOrUndefined (AwsArn), logLevel :: NullOrUndefined (LogLevel) }) -> GetLoggingOptionsResponse
```

Constructs GetLoggingOptionsResponse's fields from required parameters

#### `GetOTAUpdateRequest`

``` purescript
newtype GetOTAUpdateRequest
  = GetOTAUpdateRequest { otaUpdateId :: OTAUpdateId }
```

##### Instances
``` purescript
Newtype GetOTAUpdateRequest _
Generic GetOTAUpdateRequest _
Show GetOTAUpdateRequest
Decode GetOTAUpdateRequest
Encode GetOTAUpdateRequest
```

#### `newGetOTAUpdateRequest`

``` purescript
newGetOTAUpdateRequest :: OTAUpdateId -> GetOTAUpdateRequest
```

Constructs GetOTAUpdateRequest from required parameters

#### `newGetOTAUpdateRequest'`

``` purescript
newGetOTAUpdateRequest' :: OTAUpdateId -> ({ otaUpdateId :: OTAUpdateId } -> { otaUpdateId :: OTAUpdateId }) -> GetOTAUpdateRequest
```

Constructs GetOTAUpdateRequest's fields from required parameters

#### `GetOTAUpdateResponse`

``` purescript
newtype GetOTAUpdateResponse
  = GetOTAUpdateResponse { otaUpdateInfo :: NullOrUndefined (OTAUpdateInfo) }
```

##### Instances
``` purescript
Newtype GetOTAUpdateResponse _
Generic GetOTAUpdateResponse _
Show GetOTAUpdateResponse
Decode GetOTAUpdateResponse
Encode GetOTAUpdateResponse
```

#### `newGetOTAUpdateResponse`

``` purescript
newGetOTAUpdateResponse :: GetOTAUpdateResponse
```

Constructs GetOTAUpdateResponse from required parameters

#### `newGetOTAUpdateResponse'`

``` purescript
newGetOTAUpdateResponse' :: ({ otaUpdateInfo :: NullOrUndefined (OTAUpdateInfo) } -> { otaUpdateInfo :: NullOrUndefined (OTAUpdateInfo) }) -> GetOTAUpdateResponse
```

Constructs GetOTAUpdateResponse's fields from required parameters

#### `GetPolicyRequest`

``` purescript
newtype GetPolicyRequest
  = GetPolicyRequest { policyName :: PolicyName }
```

<p>The input for the GetPolicy operation.</p>

##### Instances
``` purescript
Newtype GetPolicyRequest _
Generic GetPolicyRequest _
Show GetPolicyRequest
Decode GetPolicyRequest
Encode GetPolicyRequest
```

#### `newGetPolicyRequest`

``` purescript
newGetPolicyRequest :: PolicyName -> GetPolicyRequest
```

Constructs GetPolicyRequest from required parameters

#### `newGetPolicyRequest'`

``` purescript
newGetPolicyRequest' :: PolicyName -> ({ policyName :: PolicyName } -> { policyName :: PolicyName }) -> GetPolicyRequest
```

Constructs GetPolicyRequest's fields from required parameters

#### `GetPolicyResponse`

``` purescript
newtype GetPolicyResponse
  = GetPolicyResponse { policyName :: NullOrUndefined (PolicyName), policyArn :: NullOrUndefined (PolicyArn), policyDocument :: NullOrUndefined (PolicyDocument), defaultVersionId :: NullOrUndefined (PolicyVersionId) }
```

<p>The output from the GetPolicy operation.</p>

##### Instances
``` purescript
Newtype GetPolicyResponse _
Generic GetPolicyResponse _
Show GetPolicyResponse
Decode GetPolicyResponse
Encode GetPolicyResponse
```

#### `newGetPolicyResponse`

``` purescript
newGetPolicyResponse :: GetPolicyResponse
```

Constructs GetPolicyResponse from required parameters

#### `newGetPolicyResponse'`

``` purescript
newGetPolicyResponse' :: ({ policyName :: NullOrUndefined (PolicyName), policyArn :: NullOrUndefined (PolicyArn), policyDocument :: NullOrUndefined (PolicyDocument), defaultVersionId :: NullOrUndefined (PolicyVersionId) } -> { policyName :: NullOrUndefined (PolicyName), policyArn :: NullOrUndefined (PolicyArn), policyDocument :: NullOrUndefined (PolicyDocument), defaultVersionId :: NullOrUndefined (PolicyVersionId) }) -> GetPolicyResponse
```

Constructs GetPolicyResponse's fields from required parameters

#### `GetPolicyVersionRequest`

``` purescript
newtype GetPolicyVersionRequest
  = GetPolicyVersionRequest { policyName :: PolicyName, policyVersionId :: PolicyVersionId }
```

<p>The input for the GetPolicyVersion operation.</p>

##### Instances
``` purescript
Newtype GetPolicyVersionRequest _
Generic GetPolicyVersionRequest _
Show GetPolicyVersionRequest
Decode GetPolicyVersionRequest
Encode GetPolicyVersionRequest
```

#### `newGetPolicyVersionRequest`

``` purescript
newGetPolicyVersionRequest :: PolicyName -> PolicyVersionId -> GetPolicyVersionRequest
```

Constructs GetPolicyVersionRequest from required parameters

#### `newGetPolicyVersionRequest'`

``` purescript
newGetPolicyVersionRequest' :: PolicyName -> PolicyVersionId -> ({ policyName :: PolicyName, policyVersionId :: PolicyVersionId } -> { policyName :: PolicyName, policyVersionId :: PolicyVersionId }) -> GetPolicyVersionRequest
```

Constructs GetPolicyVersionRequest's fields from required parameters

#### `GetPolicyVersionResponse`

``` purescript
newtype GetPolicyVersionResponse
  = GetPolicyVersionResponse { policyArn :: NullOrUndefined (PolicyArn), policyName :: NullOrUndefined (PolicyName), policyDocument :: NullOrUndefined (PolicyDocument), policyVersionId :: NullOrUndefined (PolicyVersionId), isDefaultVersion :: NullOrUndefined (IsDefaultVersion) }
```

<p>The output from the GetPolicyVersion operation.</p>

##### Instances
``` purescript
Newtype GetPolicyVersionResponse _
Generic GetPolicyVersionResponse _
Show GetPolicyVersionResponse
Decode GetPolicyVersionResponse
Encode GetPolicyVersionResponse
```

#### `newGetPolicyVersionResponse`

``` purescript
newGetPolicyVersionResponse :: GetPolicyVersionResponse
```

Constructs GetPolicyVersionResponse from required parameters

#### `newGetPolicyVersionResponse'`

``` purescript
newGetPolicyVersionResponse' :: ({ policyArn :: NullOrUndefined (PolicyArn), policyName :: NullOrUndefined (PolicyName), policyDocument :: NullOrUndefined (PolicyDocument), policyVersionId :: NullOrUndefined (PolicyVersionId), isDefaultVersion :: NullOrUndefined (IsDefaultVersion) } -> { policyArn :: NullOrUndefined (PolicyArn), policyName :: NullOrUndefined (PolicyName), policyDocument :: NullOrUndefined (PolicyDocument), policyVersionId :: NullOrUndefined (PolicyVersionId), isDefaultVersion :: NullOrUndefined (IsDefaultVersion) }) -> GetPolicyVersionResponse
```

Constructs GetPolicyVersionResponse's fields from required parameters

#### `GetRegistrationCodeRequest`

``` purescript
newtype GetRegistrationCodeRequest
  = GetRegistrationCodeRequest NoArguments
```

<p>The input to the GetRegistrationCode operation.</p>

##### Instances
``` purescript
Newtype GetRegistrationCodeRequest _
Generic GetRegistrationCodeRequest _
Show GetRegistrationCodeRequest
Decode GetRegistrationCodeRequest
Encode GetRegistrationCodeRequest
```

#### `GetRegistrationCodeResponse`

``` purescript
newtype GetRegistrationCodeResponse
  = GetRegistrationCodeResponse { registrationCode :: NullOrUndefined (RegistrationCode) }
```

<p>The output from the GetRegistrationCode operation.</p>

##### Instances
``` purescript
Newtype GetRegistrationCodeResponse _
Generic GetRegistrationCodeResponse _
Show GetRegistrationCodeResponse
Decode GetRegistrationCodeResponse
Encode GetRegistrationCodeResponse
```

#### `newGetRegistrationCodeResponse`

``` purescript
newGetRegistrationCodeResponse :: GetRegistrationCodeResponse
```

Constructs GetRegistrationCodeResponse from required parameters

#### `newGetRegistrationCodeResponse'`

``` purescript
newGetRegistrationCodeResponse' :: ({ registrationCode :: NullOrUndefined (RegistrationCode) } -> { registrationCode :: NullOrUndefined (RegistrationCode) }) -> GetRegistrationCodeResponse
```

Constructs GetRegistrationCodeResponse's fields from required parameters

#### `GetTopicRuleRequest`

``` purescript
newtype GetTopicRuleRequest
  = GetTopicRuleRequest { ruleName :: RuleName }
```

<p>The input for the GetTopicRule operation.</p>

##### Instances
``` purescript
Newtype GetTopicRuleRequest _
Generic GetTopicRuleRequest _
Show GetTopicRuleRequest
Decode GetTopicRuleRequest
Encode GetTopicRuleRequest
```

#### `newGetTopicRuleRequest`

``` purescript
newGetTopicRuleRequest :: RuleName -> GetTopicRuleRequest
```

Constructs GetTopicRuleRequest from required parameters

#### `newGetTopicRuleRequest'`

``` purescript
newGetTopicRuleRequest' :: RuleName -> ({ ruleName :: RuleName } -> { ruleName :: RuleName }) -> GetTopicRuleRequest
```

Constructs GetTopicRuleRequest's fields from required parameters

#### `GetTopicRuleResponse`

``` purescript
newtype GetTopicRuleResponse
  = GetTopicRuleResponse { ruleArn :: NullOrUndefined (RuleArn), rule :: NullOrUndefined (TopicRule) }
```

<p>The output from the GetTopicRule operation.</p>

##### Instances
``` purescript
Newtype GetTopicRuleResponse _
Generic GetTopicRuleResponse _
Show GetTopicRuleResponse
Decode GetTopicRuleResponse
Encode GetTopicRuleResponse
```

#### `newGetTopicRuleResponse`

``` purescript
newGetTopicRuleResponse :: GetTopicRuleResponse
```

Constructs GetTopicRuleResponse from required parameters

#### `newGetTopicRuleResponse'`

``` purescript
newGetTopicRuleResponse' :: ({ ruleArn :: NullOrUndefined (RuleArn), rule :: NullOrUndefined (TopicRule) } -> { ruleArn :: NullOrUndefined (RuleArn), rule :: NullOrUndefined (TopicRule) }) -> GetTopicRuleResponse
```

Constructs GetTopicRuleResponse's fields from required parameters

#### `GetV2LoggingOptionsRequest`

``` purescript
newtype GetV2LoggingOptionsRequest
  = GetV2LoggingOptionsRequest NoArguments
```

##### Instances
``` purescript
Newtype GetV2LoggingOptionsRequest _
Generic GetV2LoggingOptionsRequest _
Show GetV2LoggingOptionsRequest
Decode GetV2LoggingOptionsRequest
Encode GetV2LoggingOptionsRequest
```

#### `GetV2LoggingOptionsResponse`

``` purescript
newtype GetV2LoggingOptionsResponse
  = GetV2LoggingOptionsResponse { roleArn :: NullOrUndefined (AwsArn), defaultLogLevel :: NullOrUndefined (LogLevel), disableAllLogs :: NullOrUndefined (DisableAllLogs) }
```

##### Instances
``` purescript
Newtype GetV2LoggingOptionsResponse _
Generic GetV2LoggingOptionsResponse _
Show GetV2LoggingOptionsResponse
Decode GetV2LoggingOptionsResponse
Encode GetV2LoggingOptionsResponse
```

#### `newGetV2LoggingOptionsResponse`

``` purescript
newGetV2LoggingOptionsResponse :: GetV2LoggingOptionsResponse
```

Constructs GetV2LoggingOptionsResponse from required parameters

#### `newGetV2LoggingOptionsResponse'`

``` purescript
newGetV2LoggingOptionsResponse' :: ({ roleArn :: NullOrUndefined (AwsArn), defaultLogLevel :: NullOrUndefined (LogLevel), disableAllLogs :: NullOrUndefined (DisableAllLogs) } -> { roleArn :: NullOrUndefined (AwsArn), defaultLogLevel :: NullOrUndefined (LogLevel), disableAllLogs :: NullOrUndefined (DisableAllLogs) }) -> GetV2LoggingOptionsResponse
```

Constructs GetV2LoggingOptionsResponse's fields from required parameters

#### `GroupNameAndArn`

``` purescript
newtype GroupNameAndArn
  = GroupNameAndArn { groupName :: NullOrUndefined (ThingGroupName), groupArn :: NullOrUndefined (ThingGroupArn) }
```

<p>The name and ARN of a group.</p>

##### Instances
``` purescript
Newtype GroupNameAndArn _
Generic GroupNameAndArn _
Show GroupNameAndArn
Decode GroupNameAndArn
Encode GroupNameAndArn
```

#### `newGroupNameAndArn`

``` purescript
newGroupNameAndArn :: GroupNameAndArn
```

Constructs GroupNameAndArn from required parameters

#### `newGroupNameAndArn'`

``` purescript
newGroupNameAndArn' :: ({ groupName :: NullOrUndefined (ThingGroupName), groupArn :: NullOrUndefined (ThingGroupArn) } -> { groupName :: NullOrUndefined (ThingGroupName), groupArn :: NullOrUndefined (ThingGroupArn) }) -> GroupNameAndArn
```

Constructs GroupNameAndArn's fields from required parameters

#### `HashAlgorithm`

``` purescript
newtype HashAlgorithm
  = HashAlgorithm String
```

##### Instances
``` purescript
Newtype HashAlgorithm _
Generic HashAlgorithm _
Show HashAlgorithm
Decode HashAlgorithm
Encode HashAlgorithm
```

#### `HashKeyField`

``` purescript
newtype HashKeyField
  = HashKeyField String
```

##### Instances
``` purescript
Newtype HashKeyField _
Generic HashKeyField _
Show HashKeyField
Decode HashKeyField
Encode HashKeyField
```

#### `HashKeyValue`

``` purescript
newtype HashKeyValue
  = HashKeyValue String
```

##### Instances
``` purescript
Newtype HashKeyValue _
Generic HashKeyValue _
Show HashKeyValue
Decode HashKeyValue
Encode HashKeyValue
```

#### `ImplicitDeny`

``` purescript
newtype ImplicitDeny
  = ImplicitDeny { policies :: NullOrUndefined (Policies) }
```

<p>Information that implicitly denies authorization. When policy doesn't explicitly deny or allow an action on a resource it is considered an implicit deny.</p>

##### Instances
``` purescript
Newtype ImplicitDeny _
Generic ImplicitDeny _
Show ImplicitDeny
Decode ImplicitDeny
Encode ImplicitDeny
```

#### `newImplicitDeny`

``` purescript
newImplicitDeny :: ImplicitDeny
```

Constructs ImplicitDeny from required parameters

#### `newImplicitDeny'`

``` purescript
newImplicitDeny' :: ({ policies :: NullOrUndefined (Policies) } -> { policies :: NullOrUndefined (Policies) }) -> ImplicitDeny
```

Constructs ImplicitDeny's fields from required parameters

#### `InProgressThings`

``` purescript
newtype InProgressThings
  = InProgressThings Int
```

##### Instances
``` purescript
Newtype InProgressThings _
Generic InProgressThings _
Show InProgressThings
Decode InProgressThings
Encode InProgressThings
```

#### `IndexName`

``` purescript
newtype IndexName
  = IndexName String
```

##### Instances
``` purescript
Newtype IndexName _
Generic IndexName _
Show IndexName
Decode IndexName
Encode IndexName
```

#### `IndexNamesList`

``` purescript
newtype IndexNamesList
  = IndexNamesList (Array IndexName)
```

##### Instances
``` purescript
Newtype IndexNamesList _
Generic IndexNamesList _
Show IndexNamesList
Decode IndexNamesList
Encode IndexNamesList
```

#### `IndexNotReadyException`

``` purescript
newtype IndexNotReadyException
  = IndexNotReadyException { message :: NullOrUndefined (ErrorMessage') }
```

<p>The index is not ready.</p>

##### Instances
``` purescript
Newtype IndexNotReadyException _
Generic IndexNotReadyException _
Show IndexNotReadyException
Decode IndexNotReadyException
Encode IndexNotReadyException
```

#### `newIndexNotReadyException`

``` purescript
newIndexNotReadyException :: IndexNotReadyException
```

Constructs IndexNotReadyException from required parameters

#### `newIndexNotReadyException'`

``` purescript
newIndexNotReadyException' :: ({ message :: NullOrUndefined (ErrorMessage') } -> { message :: NullOrUndefined (ErrorMessage') }) -> IndexNotReadyException
```

Constructs IndexNotReadyException's fields from required parameters

#### `IndexSchema`

``` purescript
newtype IndexSchema
  = IndexSchema String
```

##### Instances
``` purescript
Newtype IndexSchema _
Generic IndexSchema _
Show IndexSchema
Decode IndexSchema
Encode IndexSchema
```

#### `IndexStatus`

``` purescript
newtype IndexStatus
  = IndexStatus String
```

##### Instances
``` purescript
Newtype IndexStatus _
Generic IndexStatus _
Show IndexStatus
Decode IndexStatus
Encode IndexStatus
```

#### `InlineDocument`

``` purescript
newtype InlineDocument
  = InlineDocument String
```

##### Instances
``` purescript
Newtype InlineDocument _
Generic InlineDocument _
Show InlineDocument
Decode InlineDocument
Encode InlineDocument
```

#### `InternalException`

``` purescript
newtype InternalException
  = InternalException { message :: NullOrUndefined (ErrorMessage') }
```

<p>An unexpected error has occurred.</p>

##### Instances
``` purescript
Newtype InternalException _
Generic InternalException _
Show InternalException
Decode InternalException
Encode InternalException
```

#### `newInternalException`

``` purescript
newInternalException :: InternalException
```

Constructs InternalException from required parameters

#### `newInternalException'`

``` purescript
newInternalException' :: ({ message :: NullOrUndefined (ErrorMessage') } -> { message :: NullOrUndefined (ErrorMessage') }) -> InternalException
```

Constructs InternalException's fields from required parameters

#### `InternalFailureException`

``` purescript
newtype InternalFailureException
  = InternalFailureException { message :: NullOrUndefined (ErrorMessage') }
```

<p>An unexpected error has occurred.</p>

##### Instances
``` purescript
Newtype InternalFailureException _
Generic InternalFailureException _
Show InternalFailureException
Decode InternalFailureException
Encode InternalFailureException
```

#### `newInternalFailureException`

``` purescript
newInternalFailureException :: InternalFailureException
```

Constructs InternalFailureException from required parameters

#### `newInternalFailureException'`

``` purescript
newInternalFailureException' :: ({ message :: NullOrUndefined (ErrorMessage') } -> { message :: NullOrUndefined (ErrorMessage') }) -> InternalFailureException
```

Constructs InternalFailureException's fields from required parameters

#### `InvalidQueryException`

``` purescript
newtype InvalidQueryException
  = InvalidQueryException { message :: NullOrUndefined (ErrorMessage') }
```

<p>The query is invalid.</p>

##### Instances
``` purescript
Newtype InvalidQueryException _
Generic InvalidQueryException _
Show InvalidQueryException
Decode InvalidQueryException
Encode InvalidQueryException
```

#### `newInvalidQueryException`

``` purescript
newInvalidQueryException :: InvalidQueryException
```

Constructs InvalidQueryException from required parameters

#### `newInvalidQueryException'`

``` purescript
newInvalidQueryException' :: ({ message :: NullOrUndefined (ErrorMessage') } -> { message :: NullOrUndefined (ErrorMessage') }) -> InvalidQueryException
```

Constructs InvalidQueryException's fields from required parameters

#### `InvalidRequestException`

``` purescript
newtype InvalidRequestException
  = InvalidRequestException { message :: NullOrUndefined (ErrorMessage') }
```

<p>The request is not valid.</p>

##### Instances
``` purescript
Newtype InvalidRequestException _
Generic InvalidRequestException _
Show InvalidRequestException
Decode InvalidRequestException
Encode InvalidRequestException
```

#### `newInvalidRequestException`

``` purescript
newInvalidRequestException :: InvalidRequestException
```

Constructs InvalidRequestException from required parameters

#### `newInvalidRequestException'`

``` purescript
newInvalidRequestException' :: ({ message :: NullOrUndefined (ErrorMessage') } -> { message :: NullOrUndefined (ErrorMessage') }) -> InvalidRequestException
```

Constructs InvalidRequestException's fields from required parameters

#### `InvalidResponseException`

``` purescript
newtype InvalidResponseException
  = InvalidResponseException { message :: NullOrUndefined (ErrorMessage') }
```

<p>The response is invalid.</p>

##### Instances
``` purescript
Newtype InvalidResponseException _
Generic InvalidResponseException _
Show InvalidResponseException
Decode InvalidResponseException
Encode InvalidResponseException
```

#### `newInvalidResponseException`

``` purescript
newInvalidResponseException :: InvalidResponseException
```

Constructs InvalidResponseException from required parameters

#### `newInvalidResponseException'`

``` purescript
newInvalidResponseException' :: ({ message :: NullOrUndefined (ErrorMessage') } -> { message :: NullOrUndefined (ErrorMessage') }) -> InvalidResponseException
```

Constructs InvalidResponseException's fields from required parameters

#### `IsAuthenticated`

``` purescript
newtype IsAuthenticated
  = IsAuthenticated Boolean
```

##### Instances
``` purescript
Newtype IsAuthenticated _
Generic IsAuthenticated _
Show IsAuthenticated
Decode IsAuthenticated
Encode IsAuthenticated
```

#### `IsDefaultVersion`

``` purescript
newtype IsDefaultVersion
  = IsDefaultVersion Boolean
```

##### Instances
``` purescript
Newtype IsDefaultVersion _
Generic IsDefaultVersion _
Show IsDefaultVersion
Decode IsDefaultVersion
Encode IsDefaultVersion
```

#### `IsDisabled`

``` purescript
newtype IsDisabled
  = IsDisabled Boolean
```

##### Instances
``` purescript
Newtype IsDisabled _
Generic IsDisabled _
Show IsDisabled
Decode IsDisabled
Encode IsDisabled
```

#### `Job`

``` purescript
newtype Job
  = Job { jobArn :: NullOrUndefined (JobArn), jobId :: NullOrUndefined (JobId), targetSelection :: NullOrUndefined (TargetSelection), status :: NullOrUndefined (JobStatus), comment :: NullOrUndefined (Comment), targets :: NullOrUndefined (JobTargets), description :: NullOrUndefined (JobDescription), presignedUrlConfig :: NullOrUndefined (PresignedUrlConfig), jobExecutionsRolloutConfig :: NullOrUndefined (JobExecutionsRolloutConfig), createdAt :: NullOrUndefined (DateType), lastUpdatedAt :: NullOrUndefined (DateType), completedAt :: NullOrUndefined (DateType), jobProcessDetails :: NullOrUndefined (JobProcessDetails), documentParameters :: NullOrUndefined (JobDocumentParameters) }
```

<p>The <code>Job</code> object contains details about a job.</p>

##### Instances
``` purescript
Newtype Job _
Generic Job _
Show Job
Decode Job
Encode Job
```

#### `newJob`

``` purescript
newJob :: Job
```

Constructs Job from required parameters

#### `newJob'`

``` purescript
newJob' :: ({ jobArn :: NullOrUndefined (JobArn), jobId :: NullOrUndefined (JobId), targetSelection :: NullOrUndefined (TargetSelection), status :: NullOrUndefined (JobStatus), comment :: NullOrUndefined (Comment), targets :: NullOrUndefined (JobTargets), description :: NullOrUndefined (JobDescription), presignedUrlConfig :: NullOrUndefined (PresignedUrlConfig), jobExecutionsRolloutConfig :: NullOrUndefined (JobExecutionsRolloutConfig), createdAt :: NullOrUndefined (DateType), lastUpdatedAt :: NullOrUndefined (DateType), completedAt :: NullOrUndefined (DateType), jobProcessDetails :: NullOrUndefined (JobProcessDetails), documentParameters :: NullOrUndefined (JobDocumentParameters) } -> { jobArn :: NullOrUndefined (JobArn), jobId :: NullOrUndefined (JobId), targetSelection :: NullOrUndefined (TargetSelection), status :: NullOrUndefined (JobStatus), comment :: NullOrUndefined (Comment), targets :: NullOrUndefined (JobTargets), description :: NullOrUndefined (JobDescription), presignedUrlConfig :: NullOrUndefined (PresignedUrlConfig), jobExecutionsRolloutConfig :: NullOrUndefined (JobExecutionsRolloutConfig), createdAt :: NullOrUndefined (DateType), lastUpdatedAt :: NullOrUndefined (DateType), completedAt :: NullOrUndefined (DateType), jobProcessDetails :: NullOrUndefined (JobProcessDetails), documentParameters :: NullOrUndefined (JobDocumentParameters) }) -> Job
```

Constructs Job's fields from required parameters

#### `JobArn`

``` purescript
newtype JobArn
  = JobArn String
```

##### Instances
``` purescript
Newtype JobArn _
Generic JobArn _
Show JobArn
Decode JobArn
Encode JobArn
```

#### `JobDescription`

``` purescript
newtype JobDescription
  = JobDescription String
```

##### Instances
``` purescript
Newtype JobDescription _
Generic JobDescription _
Show JobDescription
Decode JobDescription
Encode JobDescription
```

#### `JobDocument`

``` purescript
newtype JobDocument
  = JobDocument String
```

##### Instances
``` purescript
Newtype JobDocument _
Generic JobDocument _
Show JobDocument
Decode JobDocument
Encode JobDocument
```

#### `JobDocumentParameters`

``` purescript
newtype JobDocumentParameters
  = JobDocumentParameters (StrMap ParameterValue)
```

##### Instances
``` purescript
Newtype JobDocumentParameters _
Generic JobDocumentParameters _
Show JobDocumentParameters
Decode JobDocumentParameters
Encode JobDocumentParameters
```

#### `JobDocumentSource`

``` purescript
newtype JobDocumentSource
  = JobDocumentSource String
```

##### Instances
``` purescript
Newtype JobDocumentSource _
Generic JobDocumentSource _
Show JobDocumentSource
Decode JobDocumentSource
Encode JobDocumentSource
```

#### `JobExecution`

``` purescript
newtype JobExecution
  = JobExecution { jobId :: NullOrUndefined (JobId), status :: NullOrUndefined (JobExecutionStatus), statusDetails :: NullOrUndefined (JobExecutionStatusDetails), thingArn :: NullOrUndefined (ThingArn), queuedAt :: NullOrUndefined (DateType), startedAt :: NullOrUndefined (DateType), lastUpdatedAt :: NullOrUndefined (DateType), executionNumber :: NullOrUndefined (ExecutionNumber) }
```

<p>The job execution object represents the execution of a job on a particular device.</p>

##### Instances
``` purescript
Newtype JobExecution _
Generic JobExecution _
Show JobExecution
Decode JobExecution
Encode JobExecution
```

#### `newJobExecution`

``` purescript
newJobExecution :: JobExecution
```

Constructs JobExecution from required parameters

#### `newJobExecution'`

``` purescript
newJobExecution' :: ({ jobId :: NullOrUndefined (JobId), status :: NullOrUndefined (JobExecutionStatus), statusDetails :: NullOrUndefined (JobExecutionStatusDetails), thingArn :: NullOrUndefined (ThingArn), queuedAt :: NullOrUndefined (DateType), startedAt :: NullOrUndefined (DateType), lastUpdatedAt :: NullOrUndefined (DateType), executionNumber :: NullOrUndefined (ExecutionNumber) } -> { jobId :: NullOrUndefined (JobId), status :: NullOrUndefined (JobExecutionStatus), statusDetails :: NullOrUndefined (JobExecutionStatusDetails), thingArn :: NullOrUndefined (ThingArn), queuedAt :: NullOrUndefined (DateType), startedAt :: NullOrUndefined (DateType), lastUpdatedAt :: NullOrUndefined (DateType), executionNumber :: NullOrUndefined (ExecutionNumber) }) -> JobExecution
```

Constructs JobExecution's fields from required parameters

#### `JobExecutionStatus`

``` purescript
newtype JobExecutionStatus
  = JobExecutionStatus String
```

##### Instances
``` purescript
Newtype JobExecutionStatus _
Generic JobExecutionStatus _
Show JobExecutionStatus
Decode JobExecutionStatus
Encode JobExecutionStatus
```

#### `JobExecutionStatusDetails`

``` purescript
newtype JobExecutionStatusDetails
  = JobExecutionStatusDetails { detailsMap :: NullOrUndefined (DetailsMap) }
```

<p>Details of the job execution status.</p>

##### Instances
``` purescript
Newtype JobExecutionStatusDetails _
Generic JobExecutionStatusDetails _
Show JobExecutionStatusDetails
Decode JobExecutionStatusDetails
Encode JobExecutionStatusDetails
```

#### `newJobExecutionStatusDetails`

``` purescript
newJobExecutionStatusDetails :: JobExecutionStatusDetails
```

Constructs JobExecutionStatusDetails from required parameters

#### `newJobExecutionStatusDetails'`

``` purescript
newJobExecutionStatusDetails' :: ({ detailsMap :: NullOrUndefined (DetailsMap) } -> { detailsMap :: NullOrUndefined (DetailsMap) }) -> JobExecutionStatusDetails
```

Constructs JobExecutionStatusDetails's fields from required parameters

#### `JobExecutionSummary`

``` purescript
newtype JobExecutionSummary
  = JobExecutionSummary { status :: NullOrUndefined (JobExecutionStatus), queuedAt :: NullOrUndefined (DateType), startedAt :: NullOrUndefined (DateType), lastUpdatedAt :: NullOrUndefined (DateType), executionNumber :: NullOrUndefined (ExecutionNumber) }
```

<p>The job execution summary.</p>

##### Instances
``` purescript
Newtype JobExecutionSummary _
Generic JobExecutionSummary _
Show JobExecutionSummary
Decode JobExecutionSummary
Encode JobExecutionSummary
```

#### `newJobExecutionSummary`

``` purescript
newJobExecutionSummary :: JobExecutionSummary
```

Constructs JobExecutionSummary from required parameters

#### `newJobExecutionSummary'`

``` purescript
newJobExecutionSummary' :: ({ status :: NullOrUndefined (JobExecutionStatus), queuedAt :: NullOrUndefined (DateType), startedAt :: NullOrUndefined (DateType), lastUpdatedAt :: NullOrUndefined (DateType), executionNumber :: NullOrUndefined (ExecutionNumber) } -> { status :: NullOrUndefined (JobExecutionStatus), queuedAt :: NullOrUndefined (DateType), startedAt :: NullOrUndefined (DateType), lastUpdatedAt :: NullOrUndefined (DateType), executionNumber :: NullOrUndefined (ExecutionNumber) }) -> JobExecutionSummary
```

Constructs JobExecutionSummary's fields from required parameters

#### `JobExecutionSummaryForJob`

``` purescript
newtype JobExecutionSummaryForJob
  = JobExecutionSummaryForJob { thingArn :: NullOrUndefined (ThingArn), jobExecutionSummary :: NullOrUndefined (JobExecutionSummary) }
```

<p>Contains a summary of information about job executions for a specific job.</p>

##### Instances
``` purescript
Newtype JobExecutionSummaryForJob _
Generic JobExecutionSummaryForJob _
Show JobExecutionSummaryForJob
Decode JobExecutionSummaryForJob
Encode JobExecutionSummaryForJob
```

#### `newJobExecutionSummaryForJob`

``` purescript
newJobExecutionSummaryForJob :: JobExecutionSummaryForJob
```

Constructs JobExecutionSummaryForJob from required parameters

#### `newJobExecutionSummaryForJob'`

``` purescript
newJobExecutionSummaryForJob' :: ({ thingArn :: NullOrUndefined (ThingArn), jobExecutionSummary :: NullOrUndefined (JobExecutionSummary) } -> { thingArn :: NullOrUndefined (ThingArn), jobExecutionSummary :: NullOrUndefined (JobExecutionSummary) }) -> JobExecutionSummaryForJob
```

Constructs JobExecutionSummaryForJob's fields from required parameters

#### `JobExecutionSummaryForJobList`

``` purescript
newtype JobExecutionSummaryForJobList
  = JobExecutionSummaryForJobList (Array JobExecutionSummaryForJob)
```

##### Instances
``` purescript
Newtype JobExecutionSummaryForJobList _
Generic JobExecutionSummaryForJobList _
Show JobExecutionSummaryForJobList
Decode JobExecutionSummaryForJobList
Encode JobExecutionSummaryForJobList
```

#### `JobExecutionSummaryForThing`

``` purescript
newtype JobExecutionSummaryForThing
  = JobExecutionSummaryForThing { jobId :: NullOrUndefined (JobId), jobExecutionSummary :: NullOrUndefined (JobExecutionSummary) }
```

<p>The job execution summary for a thing.</p>

##### Instances
``` purescript
Newtype JobExecutionSummaryForThing _
Generic JobExecutionSummaryForThing _
Show JobExecutionSummaryForThing
Decode JobExecutionSummaryForThing
Encode JobExecutionSummaryForThing
```

#### `newJobExecutionSummaryForThing`

``` purescript
newJobExecutionSummaryForThing :: JobExecutionSummaryForThing
```

Constructs JobExecutionSummaryForThing from required parameters

#### `newJobExecutionSummaryForThing'`

``` purescript
newJobExecutionSummaryForThing' :: ({ jobId :: NullOrUndefined (JobId), jobExecutionSummary :: NullOrUndefined (JobExecutionSummary) } -> { jobId :: NullOrUndefined (JobId), jobExecutionSummary :: NullOrUndefined (JobExecutionSummary) }) -> JobExecutionSummaryForThing
```

Constructs JobExecutionSummaryForThing's fields from required parameters

#### `JobExecutionSummaryForThingList`

``` purescript
newtype JobExecutionSummaryForThingList
  = JobExecutionSummaryForThingList (Array JobExecutionSummaryForThing)
```

##### Instances
``` purescript
Newtype JobExecutionSummaryForThingList _
Generic JobExecutionSummaryForThingList _
Show JobExecutionSummaryForThingList
Decode JobExecutionSummaryForThingList
Encode JobExecutionSummaryForThingList
```

#### `JobExecutionsRolloutConfig`

``` purescript
newtype JobExecutionsRolloutConfig
  = JobExecutionsRolloutConfig { maximumPerMinute :: NullOrUndefined (MaxJobExecutionsPerMin) }
```

<p>Allows you to create a staged rollout of a job.</p>

##### Instances
``` purescript
Newtype JobExecutionsRolloutConfig _
Generic JobExecutionsRolloutConfig _
Show JobExecutionsRolloutConfig
Decode JobExecutionsRolloutConfig
Encode JobExecutionsRolloutConfig
```

#### `newJobExecutionsRolloutConfig`

``` purescript
newJobExecutionsRolloutConfig :: JobExecutionsRolloutConfig
```

Constructs JobExecutionsRolloutConfig from required parameters

#### `newJobExecutionsRolloutConfig'`

``` purescript
newJobExecutionsRolloutConfig' :: ({ maximumPerMinute :: NullOrUndefined (MaxJobExecutionsPerMin) } -> { maximumPerMinute :: NullOrUndefined (MaxJobExecutionsPerMin) }) -> JobExecutionsRolloutConfig
```

Constructs JobExecutionsRolloutConfig's fields from required parameters

#### `JobId`

``` purescript
newtype JobId
  = JobId String
```

##### Instances
``` purescript
Newtype JobId _
Generic JobId _
Show JobId
Decode JobId
Encode JobId
```

#### `JobProcessDetails`

``` purescript
newtype JobProcessDetails
  = JobProcessDetails { processingTargets :: NullOrUndefined (ProcessingTargetNameList), numberOfCanceledThings :: NullOrUndefined (CanceledThings), numberOfSucceededThings :: NullOrUndefined (SucceededThings), numberOfFailedThings :: NullOrUndefined (FailedThings), numberOfRejectedThings :: NullOrUndefined (RejectedThings), numberOfQueuedThings :: NullOrUndefined (QueuedThings), numberOfInProgressThings :: NullOrUndefined (InProgressThings), numberOfRemovedThings :: NullOrUndefined (RemovedThings) }
```

<p>The job process details.</p>

##### Instances
``` purescript
Newtype JobProcessDetails _
Generic JobProcessDetails _
Show JobProcessDetails
Decode JobProcessDetails
Encode JobProcessDetails
```

#### `newJobProcessDetails`

``` purescript
newJobProcessDetails :: JobProcessDetails
```

Constructs JobProcessDetails from required parameters

#### `newJobProcessDetails'`

``` purescript
newJobProcessDetails' :: ({ processingTargets :: NullOrUndefined (ProcessingTargetNameList), numberOfCanceledThings :: NullOrUndefined (CanceledThings), numberOfSucceededThings :: NullOrUndefined (SucceededThings), numberOfFailedThings :: NullOrUndefined (FailedThings), numberOfRejectedThings :: NullOrUndefined (RejectedThings), numberOfQueuedThings :: NullOrUndefined (QueuedThings), numberOfInProgressThings :: NullOrUndefined (InProgressThings), numberOfRemovedThings :: NullOrUndefined (RemovedThings) } -> { processingTargets :: NullOrUndefined (ProcessingTargetNameList), numberOfCanceledThings :: NullOrUndefined (CanceledThings), numberOfSucceededThings :: NullOrUndefined (SucceededThings), numberOfFailedThings :: NullOrUndefined (FailedThings), numberOfRejectedThings :: NullOrUndefined (RejectedThings), numberOfQueuedThings :: NullOrUndefined (QueuedThings), numberOfInProgressThings :: NullOrUndefined (InProgressThings), numberOfRemovedThings :: NullOrUndefined (RemovedThings) }) -> JobProcessDetails
```

Constructs JobProcessDetails's fields from required parameters

#### `JobStatus`

``` purescript
newtype JobStatus
  = JobStatus String
```

##### Instances
``` purescript
Newtype JobStatus _
Generic JobStatus _
Show JobStatus
Decode JobStatus
Encode JobStatus
```

#### `JobSummary`

``` purescript
newtype JobSummary
  = JobSummary { jobArn :: NullOrUndefined (JobArn), jobId :: NullOrUndefined (JobId), thingGroupId :: NullOrUndefined (ThingGroupId), targetSelection :: NullOrUndefined (TargetSelection), status :: NullOrUndefined (JobStatus), createdAt :: NullOrUndefined (DateType), lastUpdatedAt :: NullOrUndefined (DateType), completedAt :: NullOrUndefined (DateType) }
```

<p>The job summary.</p>

##### Instances
``` purescript
Newtype JobSummary _
Generic JobSummary _
Show JobSummary
Decode JobSummary
Encode JobSummary
```

#### `newJobSummary`

``` purescript
newJobSummary :: JobSummary
```

Constructs JobSummary from required parameters

#### `newJobSummary'`

``` purescript
newJobSummary' :: ({ jobArn :: NullOrUndefined (JobArn), jobId :: NullOrUndefined (JobId), thingGroupId :: NullOrUndefined (ThingGroupId), targetSelection :: NullOrUndefined (TargetSelection), status :: NullOrUndefined (JobStatus), createdAt :: NullOrUndefined (DateType), lastUpdatedAt :: NullOrUndefined (DateType), completedAt :: NullOrUndefined (DateType) } -> { jobArn :: NullOrUndefined (JobArn), jobId :: NullOrUndefined (JobId), thingGroupId :: NullOrUndefined (ThingGroupId), targetSelection :: NullOrUndefined (TargetSelection), status :: NullOrUndefined (JobStatus), createdAt :: NullOrUndefined (DateType), lastUpdatedAt :: NullOrUndefined (DateType), completedAt :: NullOrUndefined (DateType) }) -> JobSummary
```

Constructs JobSummary's fields from required parameters

#### `JobSummaryList`

``` purescript
newtype JobSummaryList
  = JobSummaryList (Array JobSummary)
```

##### Instances
``` purescript
Newtype JobSummaryList _
Generic JobSummaryList _
Show JobSummaryList
Decode JobSummaryList
Encode JobSummaryList
```

#### `JobTargets`

``` purescript
newtype JobTargets
  = JobTargets (Array TargetArn)
```

##### Instances
``` purescript
Newtype JobTargets _
Generic JobTargets _
Show JobTargets
Decode JobTargets
Encode JobTargets
```

#### `JsonDocument`

``` purescript
newtype JsonDocument
  = JsonDocument String
```

##### Instances
``` purescript
Newtype JsonDocument _
Generic JsonDocument _
Show JsonDocument
Decode JsonDocument
Encode JsonDocument
```

#### `Key`

``` purescript
newtype Key
  = Key String
```

##### Instances
``` purescript
Newtype Key _
Generic Key _
Show Key
Decode Key
Encode Key
```

#### `KeyName`

``` purescript
newtype KeyName
  = KeyName String
```

##### Instances
``` purescript
Newtype KeyName _
Generic KeyName _
Show KeyName
Decode KeyName
Encode KeyName
```

#### `KeyPair`

``` purescript
newtype KeyPair
  = KeyPair { "PublicKey" :: NullOrUndefined (PublicKey), "PrivateKey" :: NullOrUndefined (PrivateKey) }
```

<p>Describes a key pair.</p>

##### Instances
``` purescript
Newtype KeyPair _
Generic KeyPair _
Show KeyPair
Decode KeyPair
Encode KeyPair
```

#### `newKeyPair`

``` purescript
newKeyPair :: KeyPair
```

Constructs KeyPair from required parameters

#### `newKeyPair'`

``` purescript
newKeyPair' :: ({ "PublicKey" :: NullOrUndefined (PublicKey), "PrivateKey" :: NullOrUndefined (PrivateKey) } -> { "PublicKey" :: NullOrUndefined (PublicKey), "PrivateKey" :: NullOrUndefined (PrivateKey) }) -> KeyPair
```

Constructs KeyPair's fields from required parameters

#### `KeyValue`

``` purescript
newtype KeyValue
  = KeyValue String
```

##### Instances
``` purescript
Newtype KeyValue _
Generic KeyValue _
Show KeyValue
Decode KeyValue
Encode KeyValue
```

#### `KinesisAction`

``` purescript
newtype KinesisAction
  = KinesisAction { roleArn :: AwsArn, streamName :: StreamName, partitionKey :: NullOrUndefined (PartitionKey) }
```

<p>Describes an action to write data to an Amazon Kinesis stream.</p>

##### Instances
``` purescript
Newtype KinesisAction _
Generic KinesisAction _
Show KinesisAction
Decode KinesisAction
Encode KinesisAction
```

#### `newKinesisAction`

``` purescript
newKinesisAction :: AwsArn -> StreamName -> KinesisAction
```

Constructs KinesisAction from required parameters

#### `newKinesisAction'`

``` purescript
newKinesisAction' :: AwsArn -> StreamName -> ({ roleArn :: AwsArn, streamName :: StreamName, partitionKey :: NullOrUndefined (PartitionKey) } -> { roleArn :: AwsArn, streamName :: StreamName, partitionKey :: NullOrUndefined (PartitionKey) }) -> KinesisAction
```

Constructs KinesisAction's fields from required parameters

#### `LambdaAction`

``` purescript
newtype LambdaAction
  = LambdaAction { functionArn :: FunctionArn }
```

<p>Describes an action to invoke a Lambda function.</p>

##### Instances
``` purescript
Newtype LambdaAction _
Generic LambdaAction _
Show LambdaAction
Decode LambdaAction
Encode LambdaAction
```

#### `newLambdaAction`

``` purescript
newLambdaAction :: FunctionArn -> LambdaAction
```

Constructs LambdaAction from required parameters

#### `newLambdaAction'`

``` purescript
newLambdaAction' :: FunctionArn -> ({ functionArn :: FunctionArn } -> { functionArn :: FunctionArn }) -> LambdaAction
```

Constructs LambdaAction's fields from required parameters

#### `LaserMaxResults`

``` purescript
newtype LaserMaxResults
  = LaserMaxResults Int
```

##### Instances
``` purescript
Newtype LaserMaxResults _
Generic LaserMaxResults _
Show LaserMaxResults
Decode LaserMaxResults
Encode LaserMaxResults
```

#### `LastModifiedDate`

``` purescript
newtype LastModifiedDate
  = LastModifiedDate Timestamp
```

##### Instances
``` purescript
Newtype LastModifiedDate _
Generic LastModifiedDate _
Show LastModifiedDate
Decode LastModifiedDate
Encode LastModifiedDate
```

#### `LimitExceededException`

``` purescript
newtype LimitExceededException
  = LimitExceededException { message :: NullOrUndefined (ErrorMessage') }
```

<p>The number of attached entities exceeds the limit.</p>

##### Instances
``` purescript
Newtype LimitExceededException _
Generic LimitExceededException _
Show LimitExceededException
Decode LimitExceededException
Encode LimitExceededException
```

#### `newLimitExceededException`

``` purescript
newLimitExceededException :: LimitExceededException
```

Constructs LimitExceededException from required parameters

#### `newLimitExceededException'`

``` purescript
newLimitExceededException' :: ({ message :: NullOrUndefined (ErrorMessage') } -> { message :: NullOrUndefined (ErrorMessage') }) -> LimitExceededException
```

Constructs LimitExceededException's fields from required parameters

#### `ListAttachedPoliciesRequest`

``` purescript
newtype ListAttachedPoliciesRequest
  = ListAttachedPoliciesRequest { target :: PolicyTarget, recursive :: NullOrUndefined (Recursive), marker :: NullOrUndefined (Marker), pageSize :: NullOrUndefined (PageSize) }
```

##### Instances
``` purescript
Newtype ListAttachedPoliciesRequest _
Generic ListAttachedPoliciesRequest _
Show ListAttachedPoliciesRequest
Decode ListAttachedPoliciesRequest
Encode ListAttachedPoliciesRequest
```

#### `newListAttachedPoliciesRequest`

``` purescript
newListAttachedPoliciesRequest :: PolicyTarget -> ListAttachedPoliciesRequest
```

Constructs ListAttachedPoliciesRequest from required parameters

#### `newListAttachedPoliciesRequest'`

``` purescript
newListAttachedPoliciesRequest' :: PolicyTarget -> ({ target :: PolicyTarget, recursive :: NullOrUndefined (Recursive), marker :: NullOrUndefined (Marker), pageSize :: NullOrUndefined (PageSize) } -> { target :: PolicyTarget, recursive :: NullOrUndefined (Recursive), marker :: NullOrUndefined (Marker), pageSize :: NullOrUndefined (PageSize) }) -> ListAttachedPoliciesRequest
```

Constructs ListAttachedPoliciesRequest's fields from required parameters

#### `ListAttachedPoliciesResponse`

``` purescript
newtype ListAttachedPoliciesResponse
  = ListAttachedPoliciesResponse { policies :: NullOrUndefined (Policies), nextMarker :: NullOrUndefined (Marker) }
```

##### Instances
``` purescript
Newtype ListAttachedPoliciesResponse _
Generic ListAttachedPoliciesResponse _
Show ListAttachedPoliciesResponse
Decode ListAttachedPoliciesResponse
Encode ListAttachedPoliciesResponse
```

#### `newListAttachedPoliciesResponse`

``` purescript
newListAttachedPoliciesResponse :: ListAttachedPoliciesResponse
```

Constructs ListAttachedPoliciesResponse from required parameters

#### `newListAttachedPoliciesResponse'`

``` purescript
newListAttachedPoliciesResponse' :: ({ policies :: NullOrUndefined (Policies), nextMarker :: NullOrUndefined (Marker) } -> { policies :: NullOrUndefined (Policies), nextMarker :: NullOrUndefined (Marker) }) -> ListAttachedPoliciesResponse
```

Constructs ListAttachedPoliciesResponse's fields from required parameters

#### `ListAuthorizersRequest`

``` purescript
newtype ListAuthorizersRequest
  = ListAuthorizersRequest { pageSize :: NullOrUndefined (PageSize), marker :: NullOrUndefined (Marker), ascendingOrder :: NullOrUndefined (AscendingOrder), status :: NullOrUndefined (AuthorizerStatus) }
```

##### Instances
``` purescript
Newtype ListAuthorizersRequest _
Generic ListAuthorizersRequest _
Show ListAuthorizersRequest
Decode ListAuthorizersRequest
Encode ListAuthorizersRequest
```

#### `newListAuthorizersRequest`

``` purescript
newListAuthorizersRequest :: ListAuthorizersRequest
```

Constructs ListAuthorizersRequest from required parameters

#### `newListAuthorizersRequest'`

``` purescript
newListAuthorizersRequest' :: ({ pageSize :: NullOrUndefined (PageSize), marker :: NullOrUndefined (Marker), ascendingOrder :: NullOrUndefined (AscendingOrder), status :: NullOrUndefined (AuthorizerStatus) } -> { pageSize :: NullOrUndefined (PageSize), marker :: NullOrUndefined (Marker), ascendingOrder :: NullOrUndefined (AscendingOrder), status :: NullOrUndefined (AuthorizerStatus) }) -> ListAuthorizersRequest
```

Constructs ListAuthorizersRequest's fields from required parameters

#### `ListAuthorizersResponse`

``` purescript
newtype ListAuthorizersResponse
  = ListAuthorizersResponse { authorizers :: NullOrUndefined (Authorizers), nextMarker :: NullOrUndefined (Marker) }
```

##### Instances
``` purescript
Newtype ListAuthorizersResponse _
Generic ListAuthorizersResponse _
Show ListAuthorizersResponse
Decode ListAuthorizersResponse
Encode ListAuthorizersResponse
```

#### `newListAuthorizersResponse`

``` purescript
newListAuthorizersResponse :: ListAuthorizersResponse
```

Constructs ListAuthorizersResponse from required parameters

#### `newListAuthorizersResponse'`

``` purescript
newListAuthorizersResponse' :: ({ authorizers :: NullOrUndefined (Authorizers), nextMarker :: NullOrUndefined (Marker) } -> { authorizers :: NullOrUndefined (Authorizers), nextMarker :: NullOrUndefined (Marker) }) -> ListAuthorizersResponse
```

Constructs ListAuthorizersResponse's fields from required parameters

#### `ListCACertificatesRequest`

``` purescript
newtype ListCACertificatesRequest
  = ListCACertificatesRequest { pageSize :: NullOrUndefined (PageSize), marker :: NullOrUndefined (Marker), ascendingOrder :: NullOrUndefined (AscendingOrder) }
```

<p>Input for the ListCACertificates operation.</p>

##### Instances
``` purescript
Newtype ListCACertificatesRequest _
Generic ListCACertificatesRequest _
Show ListCACertificatesRequest
Decode ListCACertificatesRequest
Encode ListCACertificatesRequest
```

#### `newListCACertificatesRequest`

``` purescript
newListCACertificatesRequest :: ListCACertificatesRequest
```

Constructs ListCACertificatesRequest from required parameters

#### `newListCACertificatesRequest'`

``` purescript
newListCACertificatesRequest' :: ({ pageSize :: NullOrUndefined (PageSize), marker :: NullOrUndefined (Marker), ascendingOrder :: NullOrUndefined (AscendingOrder) } -> { pageSize :: NullOrUndefined (PageSize), marker :: NullOrUndefined (Marker), ascendingOrder :: NullOrUndefined (AscendingOrder) }) -> ListCACertificatesRequest
```

Constructs ListCACertificatesRequest's fields from required parameters

#### `ListCACertificatesResponse`

``` purescript
newtype ListCACertificatesResponse
  = ListCACertificatesResponse { certificates :: NullOrUndefined (CACertificates), nextMarker :: NullOrUndefined (Marker) }
```

<p>The output from the ListCACertificates operation.</p>

##### Instances
``` purescript
Newtype ListCACertificatesResponse _
Generic ListCACertificatesResponse _
Show ListCACertificatesResponse
Decode ListCACertificatesResponse
Encode ListCACertificatesResponse
```

#### `newListCACertificatesResponse`

``` purescript
newListCACertificatesResponse :: ListCACertificatesResponse
```

Constructs ListCACertificatesResponse from required parameters

#### `newListCACertificatesResponse'`

``` purescript
newListCACertificatesResponse' :: ({ certificates :: NullOrUndefined (CACertificates), nextMarker :: NullOrUndefined (Marker) } -> { certificates :: NullOrUndefined (CACertificates), nextMarker :: NullOrUndefined (Marker) }) -> ListCACertificatesResponse
```

Constructs ListCACertificatesResponse's fields from required parameters

#### `ListCertificatesByCARequest`

``` purescript
newtype ListCertificatesByCARequest
  = ListCertificatesByCARequest { caCertificateId :: CertificateId, pageSize :: NullOrUndefined (PageSize), marker :: NullOrUndefined (Marker), ascendingOrder :: NullOrUndefined (AscendingOrder) }
```

<p>The input to the ListCertificatesByCA operation.</p>

##### Instances
``` purescript
Newtype ListCertificatesByCARequest _
Generic ListCertificatesByCARequest _
Show ListCertificatesByCARequest
Decode ListCertificatesByCARequest
Encode ListCertificatesByCARequest
```

#### `newListCertificatesByCARequest`

``` purescript
newListCertificatesByCARequest :: CertificateId -> ListCertificatesByCARequest
```

Constructs ListCertificatesByCARequest from required parameters

#### `newListCertificatesByCARequest'`

``` purescript
newListCertificatesByCARequest' :: CertificateId -> ({ caCertificateId :: CertificateId, pageSize :: NullOrUndefined (PageSize), marker :: NullOrUndefined (Marker), ascendingOrder :: NullOrUndefined (AscendingOrder) } -> { caCertificateId :: CertificateId, pageSize :: NullOrUndefined (PageSize), marker :: NullOrUndefined (Marker), ascendingOrder :: NullOrUndefined (AscendingOrder) }) -> ListCertificatesByCARequest
```

Constructs ListCertificatesByCARequest's fields from required parameters

#### `ListCertificatesByCAResponse`

``` purescript
newtype ListCertificatesByCAResponse
  = ListCertificatesByCAResponse { certificates :: NullOrUndefined (Certificates), nextMarker :: NullOrUndefined (Marker) }
```

<p>The output of the ListCertificatesByCA operation.</p>

##### Instances
``` purescript
Newtype ListCertificatesByCAResponse _
Generic ListCertificatesByCAResponse _
Show ListCertificatesByCAResponse
Decode ListCertificatesByCAResponse
Encode ListCertificatesByCAResponse
```

#### `newListCertificatesByCAResponse`

``` purescript
newListCertificatesByCAResponse :: ListCertificatesByCAResponse
```

Constructs ListCertificatesByCAResponse from required parameters

#### `newListCertificatesByCAResponse'`

``` purescript
newListCertificatesByCAResponse' :: ({ certificates :: NullOrUndefined (Certificates), nextMarker :: NullOrUndefined (Marker) } -> { certificates :: NullOrUndefined (Certificates), nextMarker :: NullOrUndefined (Marker) }) -> ListCertificatesByCAResponse
```

Constructs ListCertificatesByCAResponse's fields from required parameters

#### `ListCertificatesRequest`

``` purescript
newtype ListCertificatesRequest
  = ListCertificatesRequest { pageSize :: NullOrUndefined (PageSize), marker :: NullOrUndefined (Marker), ascendingOrder :: NullOrUndefined (AscendingOrder) }
```

<p>The input for the ListCertificates operation.</p>

##### Instances
``` purescript
Newtype ListCertificatesRequest _
Generic ListCertificatesRequest _
Show ListCertificatesRequest
Decode ListCertificatesRequest
Encode ListCertificatesRequest
```

#### `newListCertificatesRequest`

``` purescript
newListCertificatesRequest :: ListCertificatesRequest
```

Constructs ListCertificatesRequest from required parameters

#### `newListCertificatesRequest'`

``` purescript
newListCertificatesRequest' :: ({ pageSize :: NullOrUndefined (PageSize), marker :: NullOrUndefined (Marker), ascendingOrder :: NullOrUndefined (AscendingOrder) } -> { pageSize :: NullOrUndefined (PageSize), marker :: NullOrUndefined (Marker), ascendingOrder :: NullOrUndefined (AscendingOrder) }) -> ListCertificatesRequest
```

Constructs ListCertificatesRequest's fields from required parameters

#### `ListCertificatesResponse`

``` purescript
newtype ListCertificatesResponse
  = ListCertificatesResponse { certificates :: NullOrUndefined (Certificates), nextMarker :: NullOrUndefined (Marker) }
```

<p>The output of the ListCertificates operation.</p>

##### Instances
``` purescript
Newtype ListCertificatesResponse _
Generic ListCertificatesResponse _
Show ListCertificatesResponse
Decode ListCertificatesResponse
Encode ListCertificatesResponse
```

#### `newListCertificatesResponse`

``` purescript
newListCertificatesResponse :: ListCertificatesResponse
```

Constructs ListCertificatesResponse from required parameters

#### `newListCertificatesResponse'`

``` purescript
newListCertificatesResponse' :: ({ certificates :: NullOrUndefined (Certificates), nextMarker :: NullOrUndefined (Marker) } -> { certificates :: NullOrUndefined (Certificates), nextMarker :: NullOrUndefined (Marker) }) -> ListCertificatesResponse
```

Constructs ListCertificatesResponse's fields from required parameters

#### `ListIndicesRequest`

``` purescript
newtype ListIndicesRequest
  = ListIndicesRequest { nextToken :: NullOrUndefined (NextToken), maxResults :: NullOrUndefined (QueryMaxResults) }
```

##### Instances
``` purescript
Newtype ListIndicesRequest _
Generic ListIndicesRequest _
Show ListIndicesRequest
Decode ListIndicesRequest
Encode ListIndicesRequest
```

#### `newListIndicesRequest`

``` purescript
newListIndicesRequest :: ListIndicesRequest
```

Constructs ListIndicesRequest from required parameters

#### `newListIndicesRequest'`

``` purescript
newListIndicesRequest' :: ({ nextToken :: NullOrUndefined (NextToken), maxResults :: NullOrUndefined (QueryMaxResults) } -> { nextToken :: NullOrUndefined (NextToken), maxResults :: NullOrUndefined (QueryMaxResults) }) -> ListIndicesRequest
```

Constructs ListIndicesRequest's fields from required parameters

#### `ListIndicesResponse`

``` purescript
newtype ListIndicesResponse
  = ListIndicesResponse { indexNames :: NullOrUndefined (IndexNamesList), nextToken :: NullOrUndefined (NextToken) }
```

##### Instances
``` purescript
Newtype ListIndicesResponse _
Generic ListIndicesResponse _
Show ListIndicesResponse
Decode ListIndicesResponse
Encode ListIndicesResponse
```

#### `newListIndicesResponse`

``` purescript
newListIndicesResponse :: ListIndicesResponse
```

Constructs ListIndicesResponse from required parameters

#### `newListIndicesResponse'`

``` purescript
newListIndicesResponse' :: ({ indexNames :: NullOrUndefined (IndexNamesList), nextToken :: NullOrUndefined (NextToken) } -> { indexNames :: NullOrUndefined (IndexNamesList), nextToken :: NullOrUndefined (NextToken) }) -> ListIndicesResponse
```

Constructs ListIndicesResponse's fields from required parameters

#### `ListJobExecutionsForJobRequest`

``` purescript
newtype ListJobExecutionsForJobRequest
  = ListJobExecutionsForJobRequest { jobId :: JobId, status :: NullOrUndefined (JobExecutionStatus), maxResults :: NullOrUndefined (LaserMaxResults), nextToken :: NullOrUndefined (NextToken) }
```

##### Instances
``` purescript
Newtype ListJobExecutionsForJobRequest _
Generic ListJobExecutionsForJobRequest _
Show ListJobExecutionsForJobRequest
Decode ListJobExecutionsForJobRequest
Encode ListJobExecutionsForJobRequest
```

#### `newListJobExecutionsForJobRequest`

``` purescript
newListJobExecutionsForJobRequest :: JobId -> ListJobExecutionsForJobRequest
```

Constructs ListJobExecutionsForJobRequest from required parameters

#### `newListJobExecutionsForJobRequest'`

``` purescript
newListJobExecutionsForJobRequest' :: JobId -> ({ jobId :: JobId, status :: NullOrUndefined (JobExecutionStatus), maxResults :: NullOrUndefined (LaserMaxResults), nextToken :: NullOrUndefined (NextToken) } -> { jobId :: JobId, status :: NullOrUndefined (JobExecutionStatus), maxResults :: NullOrUndefined (LaserMaxResults), nextToken :: NullOrUndefined (NextToken) }) -> ListJobExecutionsForJobRequest
```

Constructs ListJobExecutionsForJobRequest's fields from required parameters

#### `ListJobExecutionsForJobResponse`

``` purescript
newtype ListJobExecutionsForJobResponse
  = ListJobExecutionsForJobResponse { executionSummaries :: NullOrUndefined (JobExecutionSummaryForJobList), nextToken :: NullOrUndefined (NextToken) }
```

##### Instances
``` purescript
Newtype ListJobExecutionsForJobResponse _
Generic ListJobExecutionsForJobResponse _
Show ListJobExecutionsForJobResponse
Decode ListJobExecutionsForJobResponse
Encode ListJobExecutionsForJobResponse
```

#### `newListJobExecutionsForJobResponse`

``` purescript
newListJobExecutionsForJobResponse :: ListJobExecutionsForJobResponse
```

Constructs ListJobExecutionsForJobResponse from required parameters

#### `newListJobExecutionsForJobResponse'`

``` purescript
newListJobExecutionsForJobResponse' :: ({ executionSummaries :: NullOrUndefined (JobExecutionSummaryForJobList), nextToken :: NullOrUndefined (NextToken) } -> { executionSummaries :: NullOrUndefined (JobExecutionSummaryForJobList), nextToken :: NullOrUndefined (NextToken) }) -> ListJobExecutionsForJobResponse
```

Constructs ListJobExecutionsForJobResponse's fields from required parameters

#### `ListJobExecutionsForThingRequest`

``` purescript
newtype ListJobExecutionsForThingRequest
  = ListJobExecutionsForThingRequest { thingName :: ThingName, status :: NullOrUndefined (JobExecutionStatus), maxResults :: NullOrUndefined (LaserMaxResults), nextToken :: NullOrUndefined (NextToken) }
```

##### Instances
``` purescript
Newtype ListJobExecutionsForThingRequest _
Generic ListJobExecutionsForThingRequest _
Show ListJobExecutionsForThingRequest
Decode ListJobExecutionsForThingRequest
Encode ListJobExecutionsForThingRequest
```

#### `newListJobExecutionsForThingRequest`

``` purescript
newListJobExecutionsForThingRequest :: ThingName -> ListJobExecutionsForThingRequest
```

Constructs ListJobExecutionsForThingRequest from required parameters

#### `newListJobExecutionsForThingRequest'`

``` purescript
newListJobExecutionsForThingRequest' :: ThingName -> ({ thingName :: ThingName, status :: NullOrUndefined (JobExecutionStatus), maxResults :: NullOrUndefined (LaserMaxResults), nextToken :: NullOrUndefined (NextToken) } -> { thingName :: ThingName, status :: NullOrUndefined (JobExecutionStatus), maxResults :: NullOrUndefined (LaserMaxResults), nextToken :: NullOrUndefined (NextToken) }) -> ListJobExecutionsForThingRequest
```

Constructs ListJobExecutionsForThingRequest's fields from required parameters

#### `ListJobExecutionsForThingResponse`

``` purescript
newtype ListJobExecutionsForThingResponse
  = ListJobExecutionsForThingResponse { executionSummaries :: NullOrUndefined (JobExecutionSummaryForThingList), nextToken :: NullOrUndefined (NextToken) }
```

##### Instances
``` purescript
Newtype ListJobExecutionsForThingResponse _
Generic ListJobExecutionsForThingResponse _
Show ListJobExecutionsForThingResponse
Decode ListJobExecutionsForThingResponse
Encode ListJobExecutionsForThingResponse
```

#### `newListJobExecutionsForThingResponse`

``` purescript
newListJobExecutionsForThingResponse :: ListJobExecutionsForThingResponse
```

Constructs ListJobExecutionsForThingResponse from required parameters

#### `newListJobExecutionsForThingResponse'`

``` purescript
newListJobExecutionsForThingResponse' :: ({ executionSummaries :: NullOrUndefined (JobExecutionSummaryForThingList), nextToken :: NullOrUndefined (NextToken) } -> { executionSummaries :: NullOrUndefined (JobExecutionSummaryForThingList), nextToken :: NullOrUndefined (NextToken) }) -> ListJobExecutionsForThingResponse
```

Constructs ListJobExecutionsForThingResponse's fields from required parameters

#### `ListJobsRequest`

``` purescript
newtype ListJobsRequest
  = ListJobsRequest { status :: NullOrUndefined (JobStatus), targetSelection :: NullOrUndefined (TargetSelection), maxResults :: NullOrUndefined (LaserMaxResults), nextToken :: NullOrUndefined (NextToken), thingGroupName :: NullOrUndefined (ThingGroupName), thingGroupId :: NullOrUndefined (ThingGroupId) }
```

##### Instances
``` purescript
Newtype ListJobsRequest _
Generic ListJobsRequest _
Show ListJobsRequest
Decode ListJobsRequest
Encode ListJobsRequest
```

#### `newListJobsRequest`

``` purescript
newListJobsRequest :: ListJobsRequest
```

Constructs ListJobsRequest from required parameters

#### `newListJobsRequest'`

``` purescript
newListJobsRequest' :: ({ status :: NullOrUndefined (JobStatus), targetSelection :: NullOrUndefined (TargetSelection), maxResults :: NullOrUndefined (LaserMaxResults), nextToken :: NullOrUndefined (NextToken), thingGroupName :: NullOrUndefined (ThingGroupName), thingGroupId :: NullOrUndefined (ThingGroupId) } -> { status :: NullOrUndefined (JobStatus), targetSelection :: NullOrUndefined (TargetSelection), maxResults :: NullOrUndefined (LaserMaxResults), nextToken :: NullOrUndefined (NextToken), thingGroupName :: NullOrUndefined (ThingGroupName), thingGroupId :: NullOrUndefined (ThingGroupId) }) -> ListJobsRequest
```

Constructs ListJobsRequest's fields from required parameters

#### `ListJobsResponse`

``` purescript
newtype ListJobsResponse
  = ListJobsResponse { jobs :: NullOrUndefined (JobSummaryList), nextToken :: NullOrUndefined (NextToken) }
```

##### Instances
``` purescript
Newtype ListJobsResponse _
Generic ListJobsResponse _
Show ListJobsResponse
Decode ListJobsResponse
Encode ListJobsResponse
```

#### `newListJobsResponse`

``` purescript
newListJobsResponse :: ListJobsResponse
```

Constructs ListJobsResponse from required parameters

#### `newListJobsResponse'`

``` purescript
newListJobsResponse' :: ({ jobs :: NullOrUndefined (JobSummaryList), nextToken :: NullOrUndefined (NextToken) } -> { jobs :: NullOrUndefined (JobSummaryList), nextToken :: NullOrUndefined (NextToken) }) -> ListJobsResponse
```

Constructs ListJobsResponse's fields from required parameters

#### `ListOTAUpdatesRequest`

``` purescript
newtype ListOTAUpdatesRequest
  = ListOTAUpdatesRequest { maxResults :: NullOrUndefined (MaxResults), nextToken :: NullOrUndefined (NextToken), otaUpdateStatus :: NullOrUndefined (OTAUpdateStatus) }
```

##### Instances
``` purescript
Newtype ListOTAUpdatesRequest _
Generic ListOTAUpdatesRequest _
Show ListOTAUpdatesRequest
Decode ListOTAUpdatesRequest
Encode ListOTAUpdatesRequest
```

#### `newListOTAUpdatesRequest`

``` purescript
newListOTAUpdatesRequest :: ListOTAUpdatesRequest
```

Constructs ListOTAUpdatesRequest from required parameters

#### `newListOTAUpdatesRequest'`

``` purescript
newListOTAUpdatesRequest' :: ({ maxResults :: NullOrUndefined (MaxResults), nextToken :: NullOrUndefined (NextToken), otaUpdateStatus :: NullOrUndefined (OTAUpdateStatus) } -> { maxResults :: NullOrUndefined (MaxResults), nextToken :: NullOrUndefined (NextToken), otaUpdateStatus :: NullOrUndefined (OTAUpdateStatus) }) -> ListOTAUpdatesRequest
```

Constructs ListOTAUpdatesRequest's fields from required parameters

#### `ListOTAUpdatesResponse`

``` purescript
newtype ListOTAUpdatesResponse
  = ListOTAUpdatesResponse { otaUpdates :: NullOrUndefined (OTAUpdatesSummary), nextToken :: NullOrUndefined (NextToken) }
```

##### Instances
``` purescript
Newtype ListOTAUpdatesResponse _
Generic ListOTAUpdatesResponse _
Show ListOTAUpdatesResponse
Decode ListOTAUpdatesResponse
Encode ListOTAUpdatesResponse
```

#### `newListOTAUpdatesResponse`

``` purescript
newListOTAUpdatesResponse :: ListOTAUpdatesResponse
```

Constructs ListOTAUpdatesResponse from required parameters

#### `newListOTAUpdatesResponse'`

``` purescript
newListOTAUpdatesResponse' :: ({ otaUpdates :: NullOrUndefined (OTAUpdatesSummary), nextToken :: NullOrUndefined (NextToken) } -> { otaUpdates :: NullOrUndefined (OTAUpdatesSummary), nextToken :: NullOrUndefined (NextToken) }) -> ListOTAUpdatesResponse
```

Constructs ListOTAUpdatesResponse's fields from required parameters

#### `ListOutgoingCertificatesRequest`

``` purescript
newtype ListOutgoingCertificatesRequest
  = ListOutgoingCertificatesRequest { pageSize :: NullOrUndefined (PageSize), marker :: NullOrUndefined (Marker), ascendingOrder :: NullOrUndefined (AscendingOrder) }
```

<p>The input to the ListOutgoingCertificates operation.</p>

##### Instances
``` purescript
Newtype ListOutgoingCertificatesRequest _
Generic ListOutgoingCertificatesRequest _
Show ListOutgoingCertificatesRequest
Decode ListOutgoingCertificatesRequest
Encode ListOutgoingCertificatesRequest
```

#### `newListOutgoingCertificatesRequest`

``` purescript
newListOutgoingCertificatesRequest :: ListOutgoingCertificatesRequest
```

Constructs ListOutgoingCertificatesRequest from required parameters

#### `newListOutgoingCertificatesRequest'`

``` purescript
newListOutgoingCertificatesRequest' :: ({ pageSize :: NullOrUndefined (PageSize), marker :: NullOrUndefined (Marker), ascendingOrder :: NullOrUndefined (AscendingOrder) } -> { pageSize :: NullOrUndefined (PageSize), marker :: NullOrUndefined (Marker), ascendingOrder :: NullOrUndefined (AscendingOrder) }) -> ListOutgoingCertificatesRequest
```

Constructs ListOutgoingCertificatesRequest's fields from required parameters

#### `ListOutgoingCertificatesResponse`

``` purescript
newtype ListOutgoingCertificatesResponse
  = ListOutgoingCertificatesResponse { outgoingCertificates :: NullOrUndefined (OutgoingCertificates), nextMarker :: NullOrUndefined (Marker) }
```

<p>The output from the ListOutgoingCertificates operation.</p>

##### Instances
``` purescript
Newtype ListOutgoingCertificatesResponse _
Generic ListOutgoingCertificatesResponse _
Show ListOutgoingCertificatesResponse
Decode ListOutgoingCertificatesResponse
Encode ListOutgoingCertificatesResponse
```

#### `newListOutgoingCertificatesResponse`

``` purescript
newListOutgoingCertificatesResponse :: ListOutgoingCertificatesResponse
```

Constructs ListOutgoingCertificatesResponse from required parameters

#### `newListOutgoingCertificatesResponse'`

``` purescript
newListOutgoingCertificatesResponse' :: ({ outgoingCertificates :: NullOrUndefined (OutgoingCertificates), nextMarker :: NullOrUndefined (Marker) } -> { outgoingCertificates :: NullOrUndefined (OutgoingCertificates), nextMarker :: NullOrUndefined (Marker) }) -> ListOutgoingCertificatesResponse
```

Constructs ListOutgoingCertificatesResponse's fields from required parameters

#### `ListPoliciesRequest`

``` purescript
newtype ListPoliciesRequest
  = ListPoliciesRequest { marker :: NullOrUndefined (Marker), pageSize :: NullOrUndefined (PageSize), ascendingOrder :: NullOrUndefined (AscendingOrder) }
```

<p>The input for the ListPolicies operation.</p>

##### Instances
``` purescript
Newtype ListPoliciesRequest _
Generic ListPoliciesRequest _
Show ListPoliciesRequest
Decode ListPoliciesRequest
Encode ListPoliciesRequest
```

#### `newListPoliciesRequest`

``` purescript
newListPoliciesRequest :: ListPoliciesRequest
```

Constructs ListPoliciesRequest from required parameters

#### `newListPoliciesRequest'`

``` purescript
newListPoliciesRequest' :: ({ marker :: NullOrUndefined (Marker), pageSize :: NullOrUndefined (PageSize), ascendingOrder :: NullOrUndefined (AscendingOrder) } -> { marker :: NullOrUndefined (Marker), pageSize :: NullOrUndefined (PageSize), ascendingOrder :: NullOrUndefined (AscendingOrder) }) -> ListPoliciesRequest
```

Constructs ListPoliciesRequest's fields from required parameters

#### `ListPoliciesResponse`

``` purescript
newtype ListPoliciesResponse
  = ListPoliciesResponse { policies :: NullOrUndefined (Policies), nextMarker :: NullOrUndefined (Marker) }
```

<p>The output from the ListPolicies operation.</p>

##### Instances
``` purescript
Newtype ListPoliciesResponse _
Generic ListPoliciesResponse _
Show ListPoliciesResponse
Decode ListPoliciesResponse
Encode ListPoliciesResponse
```

#### `newListPoliciesResponse`

``` purescript
newListPoliciesResponse :: ListPoliciesResponse
```

Constructs ListPoliciesResponse from required parameters

#### `newListPoliciesResponse'`

``` purescript
newListPoliciesResponse' :: ({ policies :: NullOrUndefined (Policies), nextMarker :: NullOrUndefined (Marker) } -> { policies :: NullOrUndefined (Policies), nextMarker :: NullOrUndefined (Marker) }) -> ListPoliciesResponse
```

Constructs ListPoliciesResponse's fields from required parameters

#### `ListPolicyPrincipalsRequest`

``` purescript
newtype ListPolicyPrincipalsRequest
  = ListPolicyPrincipalsRequest { policyName :: PolicyName, marker :: NullOrUndefined (Marker), pageSize :: NullOrUndefined (PageSize), ascendingOrder :: NullOrUndefined (AscendingOrder) }
```

<p>The input for the ListPolicyPrincipals operation.</p>

##### Instances
``` purescript
Newtype ListPolicyPrincipalsRequest _
Generic ListPolicyPrincipalsRequest _
Show ListPolicyPrincipalsRequest
Decode ListPolicyPrincipalsRequest
Encode ListPolicyPrincipalsRequest
```

#### `newListPolicyPrincipalsRequest`

``` purescript
newListPolicyPrincipalsRequest :: PolicyName -> ListPolicyPrincipalsRequest
```

Constructs ListPolicyPrincipalsRequest from required parameters

#### `newListPolicyPrincipalsRequest'`

``` purescript
newListPolicyPrincipalsRequest' :: PolicyName -> ({ policyName :: PolicyName, marker :: NullOrUndefined (Marker), pageSize :: NullOrUndefined (PageSize), ascendingOrder :: NullOrUndefined (AscendingOrder) } -> { policyName :: PolicyName, marker :: NullOrUndefined (Marker), pageSize :: NullOrUndefined (PageSize), ascendingOrder :: NullOrUndefined (AscendingOrder) }) -> ListPolicyPrincipalsRequest
```

Constructs ListPolicyPrincipalsRequest's fields from required parameters

#### `ListPolicyPrincipalsResponse`

``` purescript
newtype ListPolicyPrincipalsResponse
  = ListPolicyPrincipalsResponse { principals :: NullOrUndefined (Principals), nextMarker :: NullOrUndefined (Marker) }
```

<p>The output from the ListPolicyPrincipals operation.</p>

##### Instances
``` purescript
Newtype ListPolicyPrincipalsResponse _
Generic ListPolicyPrincipalsResponse _
Show ListPolicyPrincipalsResponse
Decode ListPolicyPrincipalsResponse
Encode ListPolicyPrincipalsResponse
```

#### `newListPolicyPrincipalsResponse`

``` purescript
newListPolicyPrincipalsResponse :: ListPolicyPrincipalsResponse
```

Constructs ListPolicyPrincipalsResponse from required parameters

#### `newListPolicyPrincipalsResponse'`

``` purescript
newListPolicyPrincipalsResponse' :: ({ principals :: NullOrUndefined (Principals), nextMarker :: NullOrUndefined (Marker) } -> { principals :: NullOrUndefined (Principals), nextMarker :: NullOrUndefined (Marker) }) -> ListPolicyPrincipalsResponse
```

Constructs ListPolicyPrincipalsResponse's fields from required parameters

#### `ListPolicyVersionsRequest`

``` purescript
newtype ListPolicyVersionsRequest
  = ListPolicyVersionsRequest { policyName :: PolicyName }
```

<p>The input for the ListPolicyVersions operation.</p>

##### Instances
``` purescript
Newtype ListPolicyVersionsRequest _
Generic ListPolicyVersionsRequest _
Show ListPolicyVersionsRequest
Decode ListPolicyVersionsRequest
Encode ListPolicyVersionsRequest
```

#### `newListPolicyVersionsRequest`

``` purescript
newListPolicyVersionsRequest :: PolicyName -> ListPolicyVersionsRequest
```

Constructs ListPolicyVersionsRequest from required parameters

#### `newListPolicyVersionsRequest'`

``` purescript
newListPolicyVersionsRequest' :: PolicyName -> ({ policyName :: PolicyName } -> { policyName :: PolicyName }) -> ListPolicyVersionsRequest
```

Constructs ListPolicyVersionsRequest's fields from required parameters

#### `ListPolicyVersionsResponse`

``` purescript
newtype ListPolicyVersionsResponse
  = ListPolicyVersionsResponse { policyVersions :: NullOrUndefined (PolicyVersions) }
```

<p>The output from the ListPolicyVersions operation.</p>

##### Instances
``` purescript
Newtype ListPolicyVersionsResponse _
Generic ListPolicyVersionsResponse _
Show ListPolicyVersionsResponse
Decode ListPolicyVersionsResponse
Encode ListPolicyVersionsResponse
```

#### `newListPolicyVersionsResponse`

``` purescript
newListPolicyVersionsResponse :: ListPolicyVersionsResponse
```

Constructs ListPolicyVersionsResponse from required parameters

#### `newListPolicyVersionsResponse'`

``` purescript
newListPolicyVersionsResponse' :: ({ policyVersions :: NullOrUndefined (PolicyVersions) } -> { policyVersions :: NullOrUndefined (PolicyVersions) }) -> ListPolicyVersionsResponse
```

Constructs ListPolicyVersionsResponse's fields from required parameters

#### `ListPrincipalPoliciesRequest`

``` purescript
newtype ListPrincipalPoliciesRequest
  = ListPrincipalPoliciesRequest { principal :: Principal, marker :: NullOrUndefined (Marker), pageSize :: NullOrUndefined (PageSize), ascendingOrder :: NullOrUndefined (AscendingOrder) }
```

<p>The input for the ListPrincipalPolicies operation.</p>

##### Instances
``` purescript
Newtype ListPrincipalPoliciesRequest _
Generic ListPrincipalPoliciesRequest _
Show ListPrincipalPoliciesRequest
Decode ListPrincipalPoliciesRequest
Encode ListPrincipalPoliciesRequest
```

#### `newListPrincipalPoliciesRequest`

``` purescript
newListPrincipalPoliciesRequest :: Principal -> ListPrincipalPoliciesRequest
```

Constructs ListPrincipalPoliciesRequest from required parameters

#### `newListPrincipalPoliciesRequest'`

``` purescript
newListPrincipalPoliciesRequest' :: Principal -> ({ principal :: Principal, marker :: NullOrUndefined (Marker), pageSize :: NullOrUndefined (PageSize), ascendingOrder :: NullOrUndefined (AscendingOrder) } -> { principal :: Principal, marker :: NullOrUndefined (Marker), pageSize :: NullOrUndefined (PageSize), ascendingOrder :: NullOrUndefined (AscendingOrder) }) -> ListPrincipalPoliciesRequest
```

Constructs ListPrincipalPoliciesRequest's fields from required parameters

#### `ListPrincipalPoliciesResponse`

``` purescript
newtype ListPrincipalPoliciesResponse
  = ListPrincipalPoliciesResponse { policies :: NullOrUndefined (Policies), nextMarker :: NullOrUndefined (Marker) }
```

<p>The output from the ListPrincipalPolicies operation.</p>

##### Instances
``` purescript
Newtype ListPrincipalPoliciesResponse _
Generic ListPrincipalPoliciesResponse _
Show ListPrincipalPoliciesResponse
Decode ListPrincipalPoliciesResponse
Encode ListPrincipalPoliciesResponse
```

#### `newListPrincipalPoliciesResponse`

``` purescript
newListPrincipalPoliciesResponse :: ListPrincipalPoliciesResponse
```

Constructs ListPrincipalPoliciesResponse from required parameters

#### `newListPrincipalPoliciesResponse'`

``` purescript
newListPrincipalPoliciesResponse' :: ({ policies :: NullOrUndefined (Policies), nextMarker :: NullOrUndefined (Marker) } -> { policies :: NullOrUndefined (Policies), nextMarker :: NullOrUndefined (Marker) }) -> ListPrincipalPoliciesResponse
```

Constructs ListPrincipalPoliciesResponse's fields from required parameters

#### `ListPrincipalThingsRequest`

``` purescript
newtype ListPrincipalThingsRequest
  = ListPrincipalThingsRequest { nextToken :: NullOrUndefined (NextToken), maxResults :: NullOrUndefined (RegistryMaxResults), principal :: Principal }
```

<p>The input for the ListPrincipalThings operation.</p>

##### Instances
``` purescript
Newtype ListPrincipalThingsRequest _
Generic ListPrincipalThingsRequest _
Show ListPrincipalThingsRequest
Decode ListPrincipalThingsRequest
Encode ListPrincipalThingsRequest
```

#### `newListPrincipalThingsRequest`

``` purescript
newListPrincipalThingsRequest :: Principal -> ListPrincipalThingsRequest
```

Constructs ListPrincipalThingsRequest from required parameters

#### `newListPrincipalThingsRequest'`

``` purescript
newListPrincipalThingsRequest' :: Principal -> ({ nextToken :: NullOrUndefined (NextToken), maxResults :: NullOrUndefined (RegistryMaxResults), principal :: Principal } -> { nextToken :: NullOrUndefined (NextToken), maxResults :: NullOrUndefined (RegistryMaxResults), principal :: Principal }) -> ListPrincipalThingsRequest
```

Constructs ListPrincipalThingsRequest's fields from required parameters

#### `ListPrincipalThingsResponse`

``` purescript
newtype ListPrincipalThingsResponse
  = ListPrincipalThingsResponse { things :: NullOrUndefined (ThingNameList), nextToken :: NullOrUndefined (NextToken) }
```

<p>The output from the ListPrincipalThings operation.</p>

##### Instances
``` purescript
Newtype ListPrincipalThingsResponse _
Generic ListPrincipalThingsResponse _
Show ListPrincipalThingsResponse
Decode ListPrincipalThingsResponse
Encode ListPrincipalThingsResponse
```

#### `newListPrincipalThingsResponse`

``` purescript
newListPrincipalThingsResponse :: ListPrincipalThingsResponse
```

Constructs ListPrincipalThingsResponse from required parameters

#### `newListPrincipalThingsResponse'`

``` purescript
newListPrincipalThingsResponse' :: ({ things :: NullOrUndefined (ThingNameList), nextToken :: NullOrUndefined (NextToken) } -> { things :: NullOrUndefined (ThingNameList), nextToken :: NullOrUndefined (NextToken) }) -> ListPrincipalThingsResponse
```

Constructs ListPrincipalThingsResponse's fields from required parameters

#### `ListRoleAliasesRequest`

``` purescript
newtype ListRoleAliasesRequest
  = ListRoleAliasesRequest { pageSize :: NullOrUndefined (PageSize), marker :: NullOrUndefined (Marker), ascendingOrder :: NullOrUndefined (AscendingOrder) }
```

##### Instances
``` purescript
Newtype ListRoleAliasesRequest _
Generic ListRoleAliasesRequest _
Show ListRoleAliasesRequest
Decode ListRoleAliasesRequest
Encode ListRoleAliasesRequest
```

#### `newListRoleAliasesRequest`

``` purescript
newListRoleAliasesRequest :: ListRoleAliasesRequest
```

Constructs ListRoleAliasesRequest from required parameters

#### `newListRoleAliasesRequest'`

``` purescript
newListRoleAliasesRequest' :: ({ pageSize :: NullOrUndefined (PageSize), marker :: NullOrUndefined (Marker), ascendingOrder :: NullOrUndefined (AscendingOrder) } -> { pageSize :: NullOrUndefined (PageSize), marker :: NullOrUndefined (Marker), ascendingOrder :: NullOrUndefined (AscendingOrder) }) -> ListRoleAliasesRequest
```

Constructs ListRoleAliasesRequest's fields from required parameters

#### `ListRoleAliasesResponse`

``` purescript
newtype ListRoleAliasesResponse
  = ListRoleAliasesResponse { roleAliases :: NullOrUndefined (RoleAliases), nextMarker :: NullOrUndefined (Marker) }
```

##### Instances
``` purescript
Newtype ListRoleAliasesResponse _
Generic ListRoleAliasesResponse _
Show ListRoleAliasesResponse
Decode ListRoleAliasesResponse
Encode ListRoleAliasesResponse
```

#### `newListRoleAliasesResponse`

``` purescript
newListRoleAliasesResponse :: ListRoleAliasesResponse
```

Constructs ListRoleAliasesResponse from required parameters

#### `newListRoleAliasesResponse'`

``` purescript
newListRoleAliasesResponse' :: ({ roleAliases :: NullOrUndefined (RoleAliases), nextMarker :: NullOrUndefined (Marker) } -> { roleAliases :: NullOrUndefined (RoleAliases), nextMarker :: NullOrUndefined (Marker) }) -> ListRoleAliasesResponse
```

Constructs ListRoleAliasesResponse's fields from required parameters

#### `ListStreamsRequest`

``` purescript
newtype ListStreamsRequest
  = ListStreamsRequest { maxResults :: NullOrUndefined (MaxResults), nextToken :: NullOrUndefined (NextToken), ascendingOrder :: NullOrUndefined (AscendingOrder) }
```

##### Instances
``` purescript
Newtype ListStreamsRequest _
Generic ListStreamsRequest _
Show ListStreamsRequest
Decode ListStreamsRequest
Encode ListStreamsRequest
```

#### `newListStreamsRequest`

``` purescript
newListStreamsRequest :: ListStreamsRequest
```

Constructs ListStreamsRequest from required parameters

#### `newListStreamsRequest'`

``` purescript
newListStreamsRequest' :: ({ maxResults :: NullOrUndefined (MaxResults), nextToken :: NullOrUndefined (NextToken), ascendingOrder :: NullOrUndefined (AscendingOrder) } -> { maxResults :: NullOrUndefined (MaxResults), nextToken :: NullOrUndefined (NextToken), ascendingOrder :: NullOrUndefined (AscendingOrder) }) -> ListStreamsRequest
```

Constructs ListStreamsRequest's fields from required parameters

#### `ListStreamsResponse`

``` purescript
newtype ListStreamsResponse
  = ListStreamsResponse { streams :: NullOrUndefined (StreamsSummary), nextToken :: NullOrUndefined (NextToken) }
```

##### Instances
``` purescript
Newtype ListStreamsResponse _
Generic ListStreamsResponse _
Show ListStreamsResponse
Decode ListStreamsResponse
Encode ListStreamsResponse
```

#### `newListStreamsResponse`

``` purescript
newListStreamsResponse :: ListStreamsResponse
```

Constructs ListStreamsResponse from required parameters

#### `newListStreamsResponse'`

``` purescript
newListStreamsResponse' :: ({ streams :: NullOrUndefined (StreamsSummary), nextToken :: NullOrUndefined (NextToken) } -> { streams :: NullOrUndefined (StreamsSummary), nextToken :: NullOrUndefined (NextToken) }) -> ListStreamsResponse
```

Constructs ListStreamsResponse's fields from required parameters

#### `ListTargetsForPolicyRequest`

``` purescript
newtype ListTargetsForPolicyRequest
  = ListTargetsForPolicyRequest { policyName :: PolicyName, marker :: NullOrUndefined (Marker), pageSize :: NullOrUndefined (PageSize) }
```

##### Instances
``` purescript
Newtype ListTargetsForPolicyRequest _
Generic ListTargetsForPolicyRequest _
Show ListTargetsForPolicyRequest
Decode ListTargetsForPolicyRequest
Encode ListTargetsForPolicyRequest
```

#### `newListTargetsForPolicyRequest`

``` purescript
newListTargetsForPolicyRequest :: PolicyName -> ListTargetsForPolicyRequest
```

Constructs ListTargetsForPolicyRequest from required parameters

#### `newListTargetsForPolicyRequest'`

``` purescript
newListTargetsForPolicyRequest' :: PolicyName -> ({ policyName :: PolicyName, marker :: NullOrUndefined (Marker), pageSize :: NullOrUndefined (PageSize) } -> { policyName :: PolicyName, marker :: NullOrUndefined (Marker), pageSize :: NullOrUndefined (PageSize) }) -> ListTargetsForPolicyRequest
```

Constructs ListTargetsForPolicyRequest's fields from required parameters

#### `ListTargetsForPolicyResponse`

``` purescript
newtype ListTargetsForPolicyResponse
  = ListTargetsForPolicyResponse { targets :: NullOrUndefined (PolicyTargets), nextMarker :: NullOrUndefined (Marker) }
```

##### Instances
``` purescript
Newtype ListTargetsForPolicyResponse _
Generic ListTargetsForPolicyResponse _
Show ListTargetsForPolicyResponse
Decode ListTargetsForPolicyResponse
Encode ListTargetsForPolicyResponse
```

#### `newListTargetsForPolicyResponse`

``` purescript
newListTargetsForPolicyResponse :: ListTargetsForPolicyResponse
```

Constructs ListTargetsForPolicyResponse from required parameters

#### `newListTargetsForPolicyResponse'`

``` purescript
newListTargetsForPolicyResponse' :: ({ targets :: NullOrUndefined (PolicyTargets), nextMarker :: NullOrUndefined (Marker) } -> { targets :: NullOrUndefined (PolicyTargets), nextMarker :: NullOrUndefined (Marker) }) -> ListTargetsForPolicyResponse
```

Constructs ListTargetsForPolicyResponse's fields from required parameters

#### `ListThingGroupsForThingRequest`

``` purescript
newtype ListThingGroupsForThingRequest
  = ListThingGroupsForThingRequest { thingName :: ThingName, nextToken :: NullOrUndefined (NextToken), maxResults :: NullOrUndefined (RegistryMaxResults) }
```

##### Instances
``` purescript
Newtype ListThingGroupsForThingRequest _
Generic ListThingGroupsForThingRequest _
Show ListThingGroupsForThingRequest
Decode ListThingGroupsForThingRequest
Encode ListThingGroupsForThingRequest
```

#### `newListThingGroupsForThingRequest`

``` purescript
newListThingGroupsForThingRequest :: ThingName -> ListThingGroupsForThingRequest
```

Constructs ListThingGroupsForThingRequest from required parameters

#### `newListThingGroupsForThingRequest'`

``` purescript
newListThingGroupsForThingRequest' :: ThingName -> ({ thingName :: ThingName, nextToken :: NullOrUndefined (NextToken), maxResults :: NullOrUndefined (RegistryMaxResults) } -> { thingName :: ThingName, nextToken :: NullOrUndefined (NextToken), maxResults :: NullOrUndefined (RegistryMaxResults) }) -> ListThingGroupsForThingRequest
```

Constructs ListThingGroupsForThingRequest's fields from required parameters

#### `ListThingGroupsForThingResponse`

``` purescript
newtype ListThingGroupsForThingResponse
  = ListThingGroupsForThingResponse { thingGroups :: NullOrUndefined (ThingGroupNameAndArnList), nextToken :: NullOrUndefined (NextToken) }
```

##### Instances
``` purescript
Newtype ListThingGroupsForThingResponse _
Generic ListThingGroupsForThingResponse _
Show ListThingGroupsForThingResponse
Decode ListThingGroupsForThingResponse
Encode ListThingGroupsForThingResponse
```

#### `newListThingGroupsForThingResponse`

``` purescript
newListThingGroupsForThingResponse :: ListThingGroupsForThingResponse
```

Constructs ListThingGroupsForThingResponse from required parameters

#### `newListThingGroupsForThingResponse'`

``` purescript
newListThingGroupsForThingResponse' :: ({ thingGroups :: NullOrUndefined (ThingGroupNameAndArnList), nextToken :: NullOrUndefined (NextToken) } -> { thingGroups :: NullOrUndefined (ThingGroupNameAndArnList), nextToken :: NullOrUndefined (NextToken) }) -> ListThingGroupsForThingResponse
```

Constructs ListThingGroupsForThingResponse's fields from required parameters

#### `ListThingGroupsRequest`

``` purescript
newtype ListThingGroupsRequest
  = ListThingGroupsRequest { nextToken :: NullOrUndefined (NextToken), maxResults :: NullOrUndefined (RegistryMaxResults), parentGroup :: NullOrUndefined (ThingGroupName), namePrefixFilter :: NullOrUndefined (ThingGroupName), recursive :: NullOrUndefined (RecursiveWithoutDefault) }
```

##### Instances
``` purescript
Newtype ListThingGroupsRequest _
Generic ListThingGroupsRequest _
Show ListThingGroupsRequest
Decode ListThingGroupsRequest
Encode ListThingGroupsRequest
```

#### `newListThingGroupsRequest`

``` purescript
newListThingGroupsRequest :: ListThingGroupsRequest
```

Constructs ListThingGroupsRequest from required parameters

#### `newListThingGroupsRequest'`

``` purescript
newListThingGroupsRequest' :: ({ nextToken :: NullOrUndefined (NextToken), maxResults :: NullOrUndefined (RegistryMaxResults), parentGroup :: NullOrUndefined (ThingGroupName), namePrefixFilter :: NullOrUndefined (ThingGroupName), recursive :: NullOrUndefined (RecursiveWithoutDefault) } -> { nextToken :: NullOrUndefined (NextToken), maxResults :: NullOrUndefined (RegistryMaxResults), parentGroup :: NullOrUndefined (ThingGroupName), namePrefixFilter :: NullOrUndefined (ThingGroupName), recursive :: NullOrUndefined (RecursiveWithoutDefault) }) -> ListThingGroupsRequest
```

Constructs ListThingGroupsRequest's fields from required parameters

#### `ListThingGroupsResponse`

``` purescript
newtype ListThingGroupsResponse
  = ListThingGroupsResponse { thingGroups :: NullOrUndefined (ThingGroupNameAndArnList), nextToken :: NullOrUndefined (NextToken) }
```

##### Instances
``` purescript
Newtype ListThingGroupsResponse _
Generic ListThingGroupsResponse _
Show ListThingGroupsResponse
Decode ListThingGroupsResponse
Encode ListThingGroupsResponse
```

#### `newListThingGroupsResponse`

``` purescript
newListThingGroupsResponse :: ListThingGroupsResponse
```

Constructs ListThingGroupsResponse from required parameters

#### `newListThingGroupsResponse'`

``` purescript
newListThingGroupsResponse' :: ({ thingGroups :: NullOrUndefined (ThingGroupNameAndArnList), nextToken :: NullOrUndefined (NextToken) } -> { thingGroups :: NullOrUndefined (ThingGroupNameAndArnList), nextToken :: NullOrUndefined (NextToken) }) -> ListThingGroupsResponse
```

Constructs ListThingGroupsResponse's fields from required parameters

#### `ListThingPrincipalsRequest`

``` purescript
newtype ListThingPrincipalsRequest
  = ListThingPrincipalsRequest { thingName :: ThingName }
```

<p>The input for the ListThingPrincipal operation.</p>

##### Instances
``` purescript
Newtype ListThingPrincipalsRequest _
Generic ListThingPrincipalsRequest _
Show ListThingPrincipalsRequest
Decode ListThingPrincipalsRequest
Encode ListThingPrincipalsRequest
```

#### `newListThingPrincipalsRequest`

``` purescript
newListThingPrincipalsRequest :: ThingName -> ListThingPrincipalsRequest
```

Constructs ListThingPrincipalsRequest from required parameters

#### `newListThingPrincipalsRequest'`

``` purescript
newListThingPrincipalsRequest' :: ThingName -> ({ thingName :: ThingName } -> { thingName :: ThingName }) -> ListThingPrincipalsRequest
```

Constructs ListThingPrincipalsRequest's fields from required parameters

#### `ListThingPrincipalsResponse`

``` purescript
newtype ListThingPrincipalsResponse
  = ListThingPrincipalsResponse { principals :: NullOrUndefined (Principals) }
```

<p>The output from the ListThingPrincipals operation.</p>

##### Instances
``` purescript
Newtype ListThingPrincipalsResponse _
Generic ListThingPrincipalsResponse _
Show ListThingPrincipalsResponse
Decode ListThingPrincipalsResponse
Encode ListThingPrincipalsResponse
```

#### `newListThingPrincipalsResponse`

``` purescript
newListThingPrincipalsResponse :: ListThingPrincipalsResponse
```

Constructs ListThingPrincipalsResponse from required parameters

#### `newListThingPrincipalsResponse'`

``` purescript
newListThingPrincipalsResponse' :: ({ principals :: NullOrUndefined (Principals) } -> { principals :: NullOrUndefined (Principals) }) -> ListThingPrincipalsResponse
```

Constructs ListThingPrincipalsResponse's fields from required parameters

#### `ListThingRegistrationTaskReportsRequest`

``` purescript
newtype ListThingRegistrationTaskReportsRequest
  = ListThingRegistrationTaskReportsRequest { taskId :: TaskId, reportType :: ReportType, nextToken :: NullOrUndefined (NextToken), maxResults :: NullOrUndefined (RegistryMaxResults) }
```

##### Instances
``` purescript
Newtype ListThingRegistrationTaskReportsRequest _
Generic ListThingRegistrationTaskReportsRequest _
Show ListThingRegistrationTaskReportsRequest
Decode ListThingRegistrationTaskReportsRequest
Encode ListThingRegistrationTaskReportsRequest
```

#### `newListThingRegistrationTaskReportsRequest`

``` purescript
newListThingRegistrationTaskReportsRequest :: ReportType -> TaskId -> ListThingRegistrationTaskReportsRequest
```

Constructs ListThingRegistrationTaskReportsRequest from required parameters

#### `newListThingRegistrationTaskReportsRequest'`

``` purescript
newListThingRegistrationTaskReportsRequest' :: ReportType -> TaskId -> ({ taskId :: TaskId, reportType :: ReportType, nextToken :: NullOrUndefined (NextToken), maxResults :: NullOrUndefined (RegistryMaxResults) } -> { taskId :: TaskId, reportType :: ReportType, nextToken :: NullOrUndefined (NextToken), maxResults :: NullOrUndefined (RegistryMaxResults) }) -> ListThingRegistrationTaskReportsRequest
```

Constructs ListThingRegistrationTaskReportsRequest's fields from required parameters

#### `ListThingRegistrationTaskReportsResponse`

``` purescript
newtype ListThingRegistrationTaskReportsResponse
  = ListThingRegistrationTaskReportsResponse { resourceLinks :: NullOrUndefined (S3FileUrlList), reportType :: NullOrUndefined (ReportType), nextToken :: NullOrUndefined (NextToken) }
```

##### Instances
``` purescript
Newtype ListThingRegistrationTaskReportsResponse _
Generic ListThingRegistrationTaskReportsResponse _
Show ListThingRegistrationTaskReportsResponse
Decode ListThingRegistrationTaskReportsResponse
Encode ListThingRegistrationTaskReportsResponse
```

#### `newListThingRegistrationTaskReportsResponse`

``` purescript
newListThingRegistrationTaskReportsResponse :: ListThingRegistrationTaskReportsResponse
```

Constructs ListThingRegistrationTaskReportsResponse from required parameters

#### `newListThingRegistrationTaskReportsResponse'`

``` purescript
newListThingRegistrationTaskReportsResponse' :: ({ resourceLinks :: NullOrUndefined (S3FileUrlList), reportType :: NullOrUndefined (ReportType), nextToken :: NullOrUndefined (NextToken) } -> { resourceLinks :: NullOrUndefined (S3FileUrlList), reportType :: NullOrUndefined (ReportType), nextToken :: NullOrUndefined (NextToken) }) -> ListThingRegistrationTaskReportsResponse
```

Constructs ListThingRegistrationTaskReportsResponse's fields from required parameters

#### `ListThingRegistrationTasksRequest`

``` purescript
newtype ListThingRegistrationTasksRequest
  = ListThingRegistrationTasksRequest { nextToken :: NullOrUndefined (NextToken), maxResults :: NullOrUndefined (RegistryMaxResults), status :: NullOrUndefined (Status) }
```

##### Instances
``` purescript
Newtype ListThingRegistrationTasksRequest _
Generic ListThingRegistrationTasksRequest _
Show ListThingRegistrationTasksRequest
Decode ListThingRegistrationTasksRequest
Encode ListThingRegistrationTasksRequest
```

#### `newListThingRegistrationTasksRequest`

``` purescript
newListThingRegistrationTasksRequest :: ListThingRegistrationTasksRequest
```

Constructs ListThingRegistrationTasksRequest from required parameters

#### `newListThingRegistrationTasksRequest'`

``` purescript
newListThingRegistrationTasksRequest' :: ({ nextToken :: NullOrUndefined (NextToken), maxResults :: NullOrUndefined (RegistryMaxResults), status :: NullOrUndefined (Status) } -> { nextToken :: NullOrUndefined (NextToken), maxResults :: NullOrUndefined (RegistryMaxResults), status :: NullOrUndefined (Status) }) -> ListThingRegistrationTasksRequest
```

Constructs ListThingRegistrationTasksRequest's fields from required parameters

#### `ListThingRegistrationTasksResponse`

``` purescript
newtype ListThingRegistrationTasksResponse
  = ListThingRegistrationTasksResponse { taskIds :: NullOrUndefined (TaskIdList), nextToken :: NullOrUndefined (NextToken) }
```

##### Instances
``` purescript
Newtype ListThingRegistrationTasksResponse _
Generic ListThingRegistrationTasksResponse _
Show ListThingRegistrationTasksResponse
Decode ListThingRegistrationTasksResponse
Encode ListThingRegistrationTasksResponse
```

#### `newListThingRegistrationTasksResponse`

``` purescript
newListThingRegistrationTasksResponse :: ListThingRegistrationTasksResponse
```

Constructs ListThingRegistrationTasksResponse from required parameters

#### `newListThingRegistrationTasksResponse'`

``` purescript
newListThingRegistrationTasksResponse' :: ({ taskIds :: NullOrUndefined (TaskIdList), nextToken :: NullOrUndefined (NextToken) } -> { taskIds :: NullOrUndefined (TaskIdList), nextToken :: NullOrUndefined (NextToken) }) -> ListThingRegistrationTasksResponse
```

Constructs ListThingRegistrationTasksResponse's fields from required parameters

#### `ListThingTypesRequest`

``` purescript
newtype ListThingTypesRequest
  = ListThingTypesRequest { nextToken :: NullOrUndefined (NextToken), maxResults :: NullOrUndefined (RegistryMaxResults), thingTypeName :: NullOrUndefined (ThingTypeName) }
```

<p>The input for the ListThingTypes operation.</p>

##### Instances
``` purescript
Newtype ListThingTypesRequest _
Generic ListThingTypesRequest _
Show ListThingTypesRequest
Decode ListThingTypesRequest
Encode ListThingTypesRequest
```

#### `newListThingTypesRequest`

``` purescript
newListThingTypesRequest :: ListThingTypesRequest
```

Constructs ListThingTypesRequest from required parameters

#### `newListThingTypesRequest'`

``` purescript
newListThingTypesRequest' :: ({ nextToken :: NullOrUndefined (NextToken), maxResults :: NullOrUndefined (RegistryMaxResults), thingTypeName :: NullOrUndefined (ThingTypeName) } -> { nextToken :: NullOrUndefined (NextToken), maxResults :: NullOrUndefined (RegistryMaxResults), thingTypeName :: NullOrUndefined (ThingTypeName) }) -> ListThingTypesRequest
```

Constructs ListThingTypesRequest's fields from required parameters

#### `ListThingTypesResponse`

``` purescript
newtype ListThingTypesResponse
  = ListThingTypesResponse { thingTypes :: NullOrUndefined (ThingTypeList), nextToken :: NullOrUndefined (NextToken) }
```

<p>The output for the ListThingTypes operation.</p>

##### Instances
``` purescript
Newtype ListThingTypesResponse _
Generic ListThingTypesResponse _
Show ListThingTypesResponse
Decode ListThingTypesResponse
Encode ListThingTypesResponse
```

#### `newListThingTypesResponse`

``` purescript
newListThingTypesResponse :: ListThingTypesResponse
```

Constructs ListThingTypesResponse from required parameters

#### `newListThingTypesResponse'`

``` purescript
newListThingTypesResponse' :: ({ thingTypes :: NullOrUndefined (ThingTypeList), nextToken :: NullOrUndefined (NextToken) } -> { thingTypes :: NullOrUndefined (ThingTypeList), nextToken :: NullOrUndefined (NextToken) }) -> ListThingTypesResponse
```

Constructs ListThingTypesResponse's fields from required parameters

#### `ListThingsInThingGroupRequest`

``` purescript
newtype ListThingsInThingGroupRequest
  = ListThingsInThingGroupRequest { thingGroupName :: ThingGroupName, recursive :: NullOrUndefined (Recursive), nextToken :: NullOrUndefined (NextToken), maxResults :: NullOrUndefined (RegistryMaxResults) }
```

##### Instances
``` purescript
Newtype ListThingsInThingGroupRequest _
Generic ListThingsInThingGroupRequest _
Show ListThingsInThingGroupRequest
Decode ListThingsInThingGroupRequest
Encode ListThingsInThingGroupRequest
```

#### `newListThingsInThingGroupRequest`

``` purescript
newListThingsInThingGroupRequest :: ThingGroupName -> ListThingsInThingGroupRequest
```

Constructs ListThingsInThingGroupRequest from required parameters

#### `newListThingsInThingGroupRequest'`

``` purescript
newListThingsInThingGroupRequest' :: ThingGroupName -> ({ thingGroupName :: ThingGroupName, recursive :: NullOrUndefined (Recursive), nextToken :: NullOrUndefined (NextToken), maxResults :: NullOrUndefined (RegistryMaxResults) } -> { thingGroupName :: ThingGroupName, recursive :: NullOrUndefined (Recursive), nextToken :: NullOrUndefined (NextToken), maxResults :: NullOrUndefined (RegistryMaxResults) }) -> ListThingsInThingGroupRequest
```

Constructs ListThingsInThingGroupRequest's fields from required parameters

#### `ListThingsInThingGroupResponse`

``` purescript
newtype ListThingsInThingGroupResponse
  = ListThingsInThingGroupResponse { things :: NullOrUndefined (ThingNameList), nextToken :: NullOrUndefined (NextToken) }
```

##### Instances
``` purescript
Newtype ListThingsInThingGroupResponse _
Generic ListThingsInThingGroupResponse _
Show ListThingsInThingGroupResponse
Decode ListThingsInThingGroupResponse
Encode ListThingsInThingGroupResponse
```

#### `newListThingsInThingGroupResponse`

``` purescript
newListThingsInThingGroupResponse :: ListThingsInThingGroupResponse
```

Constructs ListThingsInThingGroupResponse from required parameters

#### `newListThingsInThingGroupResponse'`

``` purescript
newListThingsInThingGroupResponse' :: ({ things :: NullOrUndefined (ThingNameList), nextToken :: NullOrUndefined (NextToken) } -> { things :: NullOrUndefined (ThingNameList), nextToken :: NullOrUndefined (NextToken) }) -> ListThingsInThingGroupResponse
```

Constructs ListThingsInThingGroupResponse's fields from required parameters

#### `ListThingsRequest`

``` purescript
newtype ListThingsRequest
  = ListThingsRequest { nextToken :: NullOrUndefined (NextToken), maxResults :: NullOrUndefined (RegistryMaxResults), attributeName :: NullOrUndefined (AttributeName), attributeValue :: NullOrUndefined (AttributeValue), thingTypeName :: NullOrUndefined (ThingTypeName) }
```

<p>The input for the ListThings operation.</p>

##### Instances
``` purescript
Newtype ListThingsRequest _
Generic ListThingsRequest _
Show ListThingsRequest
Decode ListThingsRequest
Encode ListThingsRequest
```

#### `newListThingsRequest`

``` purescript
newListThingsRequest :: ListThingsRequest
```

Constructs ListThingsRequest from required parameters

#### `newListThingsRequest'`

``` purescript
newListThingsRequest' :: ({ nextToken :: NullOrUndefined (NextToken), maxResults :: NullOrUndefined (RegistryMaxResults), attributeName :: NullOrUndefined (AttributeName), attributeValue :: NullOrUndefined (AttributeValue), thingTypeName :: NullOrUndefined (ThingTypeName) } -> { nextToken :: NullOrUndefined (NextToken), maxResults :: NullOrUndefined (RegistryMaxResults), attributeName :: NullOrUndefined (AttributeName), attributeValue :: NullOrUndefined (AttributeValue), thingTypeName :: NullOrUndefined (ThingTypeName) }) -> ListThingsRequest
```

Constructs ListThingsRequest's fields from required parameters

#### `ListThingsResponse`

``` purescript
newtype ListThingsResponse
  = ListThingsResponse { things :: NullOrUndefined (ThingAttributeList), nextToken :: NullOrUndefined (NextToken) }
```

<p>The output from the ListThings operation.</p>

##### Instances
``` purescript
Newtype ListThingsResponse _
Generic ListThingsResponse _
Show ListThingsResponse
Decode ListThingsResponse
Encode ListThingsResponse
```

#### `newListThingsResponse`

``` purescript
newListThingsResponse :: ListThingsResponse
```

Constructs ListThingsResponse from required parameters

#### `newListThingsResponse'`

``` purescript
newListThingsResponse' :: ({ things :: NullOrUndefined (ThingAttributeList), nextToken :: NullOrUndefined (NextToken) } -> { things :: NullOrUndefined (ThingAttributeList), nextToken :: NullOrUndefined (NextToken) }) -> ListThingsResponse
```

Constructs ListThingsResponse's fields from required parameters

#### `ListTopicRulesRequest`

``` purescript
newtype ListTopicRulesRequest
  = ListTopicRulesRequest { topic :: NullOrUndefined (Topic), maxResults :: NullOrUndefined (GEMaxResults), nextToken :: NullOrUndefined (NextToken), ruleDisabled :: NullOrUndefined (IsDisabled) }
```

<p>The input for the ListTopicRules operation.</p>

##### Instances
``` purescript
Newtype ListTopicRulesRequest _
Generic ListTopicRulesRequest _
Show ListTopicRulesRequest
Decode ListTopicRulesRequest
Encode ListTopicRulesRequest
```

#### `newListTopicRulesRequest`

``` purescript
newListTopicRulesRequest :: ListTopicRulesRequest
```

Constructs ListTopicRulesRequest from required parameters

#### `newListTopicRulesRequest'`

``` purescript
newListTopicRulesRequest' :: ({ topic :: NullOrUndefined (Topic), maxResults :: NullOrUndefined (GEMaxResults), nextToken :: NullOrUndefined (NextToken), ruleDisabled :: NullOrUndefined (IsDisabled) } -> { topic :: NullOrUndefined (Topic), maxResults :: NullOrUndefined (GEMaxResults), nextToken :: NullOrUndefined (NextToken), ruleDisabled :: NullOrUndefined (IsDisabled) }) -> ListTopicRulesRequest
```

Constructs ListTopicRulesRequest's fields from required parameters

#### `ListTopicRulesResponse`

``` purescript
newtype ListTopicRulesResponse
  = ListTopicRulesResponse { rules :: NullOrUndefined (TopicRuleList), nextToken :: NullOrUndefined (NextToken) }
```

<p>The output from the ListTopicRules operation.</p>

##### Instances
``` purescript
Newtype ListTopicRulesResponse _
Generic ListTopicRulesResponse _
Show ListTopicRulesResponse
Decode ListTopicRulesResponse
Encode ListTopicRulesResponse
```

#### `newListTopicRulesResponse`

``` purescript
newListTopicRulesResponse :: ListTopicRulesResponse
```

Constructs ListTopicRulesResponse from required parameters

#### `newListTopicRulesResponse'`

``` purescript
newListTopicRulesResponse' :: ({ rules :: NullOrUndefined (TopicRuleList), nextToken :: NullOrUndefined (NextToken) } -> { rules :: NullOrUndefined (TopicRuleList), nextToken :: NullOrUndefined (NextToken) }) -> ListTopicRulesResponse
```

Constructs ListTopicRulesResponse's fields from required parameters

#### `ListV2LoggingLevelsRequest`

``` purescript
newtype ListV2LoggingLevelsRequest
  = ListV2LoggingLevelsRequest { targetType :: NullOrUndefined (LogTargetType), nextToken :: NullOrUndefined (NextToken), maxResults :: NullOrUndefined (SkyfallMaxResults) }
```

##### Instances
``` purescript
Newtype ListV2LoggingLevelsRequest _
Generic ListV2LoggingLevelsRequest _
Show ListV2LoggingLevelsRequest
Decode ListV2LoggingLevelsRequest
Encode ListV2LoggingLevelsRequest
```

#### `newListV2LoggingLevelsRequest`

``` purescript
newListV2LoggingLevelsRequest :: ListV2LoggingLevelsRequest
```

Constructs ListV2LoggingLevelsRequest from required parameters

#### `newListV2LoggingLevelsRequest'`

``` purescript
newListV2LoggingLevelsRequest' :: ({ targetType :: NullOrUndefined (LogTargetType), nextToken :: NullOrUndefined (NextToken), maxResults :: NullOrUndefined (SkyfallMaxResults) } -> { targetType :: NullOrUndefined (LogTargetType), nextToken :: NullOrUndefined (NextToken), maxResults :: NullOrUndefined (SkyfallMaxResults) }) -> ListV2LoggingLevelsRequest
```

Constructs ListV2LoggingLevelsRequest's fields from required parameters

#### `ListV2LoggingLevelsResponse`

``` purescript
newtype ListV2LoggingLevelsResponse
  = ListV2LoggingLevelsResponse { logTargetConfigurations :: NullOrUndefined (LogTargetConfigurations), nextToken :: NullOrUndefined (NextToken) }
```

##### Instances
``` purescript
Newtype ListV2LoggingLevelsResponse _
Generic ListV2LoggingLevelsResponse _
Show ListV2LoggingLevelsResponse
Decode ListV2LoggingLevelsResponse
Encode ListV2LoggingLevelsResponse
```

#### `newListV2LoggingLevelsResponse`

``` purescript
newListV2LoggingLevelsResponse :: ListV2LoggingLevelsResponse
```

Constructs ListV2LoggingLevelsResponse from required parameters

#### `newListV2LoggingLevelsResponse'`

``` purescript
newListV2LoggingLevelsResponse' :: ({ logTargetConfigurations :: NullOrUndefined (LogTargetConfigurations), nextToken :: NullOrUndefined (NextToken) } -> { logTargetConfigurations :: NullOrUndefined (LogTargetConfigurations), nextToken :: NullOrUndefined (NextToken) }) -> ListV2LoggingLevelsResponse
```

Constructs ListV2LoggingLevelsResponse's fields from required parameters

#### `LogLevel`

``` purescript
newtype LogLevel
  = LogLevel String
```

##### Instances
``` purescript
Newtype LogLevel _
Generic LogLevel _
Show LogLevel
Decode LogLevel
Encode LogLevel
```

#### `LogTarget`

``` purescript
newtype LogTarget
  = LogTarget { targetType :: LogTargetType, targetName :: NullOrUndefined (LogTargetName) }
```

<p>A log target.</p>

##### Instances
``` purescript
Newtype LogTarget _
Generic LogTarget _
Show LogTarget
Decode LogTarget
Encode LogTarget
```

#### `newLogTarget`

``` purescript
newLogTarget :: LogTargetType -> LogTarget
```

Constructs LogTarget from required parameters

#### `newLogTarget'`

``` purescript
newLogTarget' :: LogTargetType -> ({ targetType :: LogTargetType, targetName :: NullOrUndefined (LogTargetName) } -> { targetType :: LogTargetType, targetName :: NullOrUndefined (LogTargetName) }) -> LogTarget
```

Constructs LogTarget's fields from required parameters

#### `LogTargetConfiguration`

``` purescript
newtype LogTargetConfiguration
  = LogTargetConfiguration { logTarget :: NullOrUndefined (LogTarget), logLevel :: NullOrUndefined (LogLevel) }
```

<p>The target configuration.</p>

##### Instances
``` purescript
Newtype LogTargetConfiguration _
Generic LogTargetConfiguration _
Show LogTargetConfiguration
Decode LogTargetConfiguration
Encode LogTargetConfiguration
```

#### `newLogTargetConfiguration`

``` purescript
newLogTargetConfiguration :: LogTargetConfiguration
```

Constructs LogTargetConfiguration from required parameters

#### `newLogTargetConfiguration'`

``` purescript
newLogTargetConfiguration' :: ({ logTarget :: NullOrUndefined (LogTarget), logLevel :: NullOrUndefined (LogLevel) } -> { logTarget :: NullOrUndefined (LogTarget), logLevel :: NullOrUndefined (LogLevel) }) -> LogTargetConfiguration
```

Constructs LogTargetConfiguration's fields from required parameters

#### `LogTargetConfigurations`

``` purescript
newtype LogTargetConfigurations
  = LogTargetConfigurations (Array LogTargetConfiguration)
```

##### Instances
``` purescript
Newtype LogTargetConfigurations _
Generic LogTargetConfigurations _
Show LogTargetConfigurations
Decode LogTargetConfigurations
Encode LogTargetConfigurations
```

#### `LogTargetName`

``` purescript
newtype LogTargetName
  = LogTargetName String
```

##### Instances
``` purescript
Newtype LogTargetName _
Generic LogTargetName _
Show LogTargetName
Decode LogTargetName
Encode LogTargetName
```

#### `LogTargetType`

``` purescript
newtype LogTargetType
  = LogTargetType String
```

##### Instances
``` purescript
Newtype LogTargetType _
Generic LogTargetType _
Show LogTargetType
Decode LogTargetType
Encode LogTargetType
```

#### `LoggingOptionsPayload`

``` purescript
newtype LoggingOptionsPayload
  = LoggingOptionsPayload { roleArn :: AwsArn, logLevel :: NullOrUndefined (LogLevel) }
```

<p>Describes the logging options payload.</p>

##### Instances
``` purescript
Newtype LoggingOptionsPayload _
Generic LoggingOptionsPayload _
Show LoggingOptionsPayload
Decode LoggingOptionsPayload
Encode LoggingOptionsPayload
```

#### `newLoggingOptionsPayload`

``` purescript
newLoggingOptionsPayload :: AwsArn -> LoggingOptionsPayload
```

Constructs LoggingOptionsPayload from required parameters

#### `newLoggingOptionsPayload'`

``` purescript
newLoggingOptionsPayload' :: AwsArn -> ({ roleArn :: AwsArn, logLevel :: NullOrUndefined (LogLevel) } -> { roleArn :: AwsArn, logLevel :: NullOrUndefined (LogLevel) }) -> LoggingOptionsPayload
```

Constructs LoggingOptionsPayload's fields from required parameters

#### `MalformedPolicyException`

``` purescript
newtype MalformedPolicyException
  = MalformedPolicyException { message :: NullOrUndefined (ErrorMessage') }
```

<p>The policy documentation is not valid.</p>

##### Instances
``` purescript
Newtype MalformedPolicyException _
Generic MalformedPolicyException _
Show MalformedPolicyException
Decode MalformedPolicyException
Encode MalformedPolicyException
```

#### `newMalformedPolicyException`

``` purescript
newMalformedPolicyException :: MalformedPolicyException
```

Constructs MalformedPolicyException from required parameters

#### `newMalformedPolicyException'`

``` purescript
newMalformedPolicyException' :: ({ message :: NullOrUndefined (ErrorMessage') } -> { message :: NullOrUndefined (ErrorMessage') }) -> MalformedPolicyException
```

Constructs MalformedPolicyException's fields from required parameters

#### `Marker`

``` purescript
newtype Marker
  = Marker String
```

##### Instances
``` purescript
Newtype Marker _
Generic Marker _
Show Marker
Decode Marker
Encode Marker
```

#### `MaxJobExecutionsPerMin`

``` purescript
newtype MaxJobExecutionsPerMin
  = MaxJobExecutionsPerMin Int
```

##### Instances
``` purescript
Newtype MaxJobExecutionsPerMin _
Generic MaxJobExecutionsPerMin _
Show MaxJobExecutionsPerMin
Decode MaxJobExecutionsPerMin
Encode MaxJobExecutionsPerMin
```

#### `MaxResults`

``` purescript
newtype MaxResults
  = MaxResults Int
```

##### Instances
``` purescript
Newtype MaxResults _
Generic MaxResults _
Show MaxResults
Decode MaxResults
Encode MaxResults
```

#### `Message`

``` purescript
newtype Message
  = Message String
```

##### Instances
``` purescript
Newtype Message _
Generic Message _
Show Message
Decode Message
Encode Message
```

#### `MessageFormat`

``` purescript
newtype MessageFormat
  = MessageFormat String
```

##### Instances
``` purescript
Newtype MessageFormat _
Generic MessageFormat _
Show MessageFormat
Decode MessageFormat
Encode MessageFormat
```

#### `MetricName`

``` purescript
newtype MetricName
  = MetricName String
```

##### Instances
``` purescript
Newtype MetricName _
Generic MetricName _
Show MetricName
Decode MetricName
Encode MetricName
```

#### `MetricNamespace`

``` purescript
newtype MetricNamespace
  = MetricNamespace String
```

##### Instances
``` purescript
Newtype MetricNamespace _
Generic MetricNamespace _
Show MetricNamespace
Decode MetricNamespace
Encode MetricNamespace
```

#### `MetricTimestamp`

``` purescript
newtype MetricTimestamp
  = MetricTimestamp String
```

##### Instances
``` purescript
Newtype MetricTimestamp _
Generic MetricTimestamp _
Show MetricTimestamp
Decode MetricTimestamp
Encode MetricTimestamp
```

#### `MetricUnit`

``` purescript
newtype MetricUnit
  = MetricUnit String
```

##### Instances
``` purescript
Newtype MetricUnit _
Generic MetricUnit _
Show MetricUnit
Decode MetricUnit
Encode MetricUnit
```

#### `MetricValue`

``` purescript
newtype MetricValue
  = MetricValue String
```

##### Instances
``` purescript
Newtype MetricValue _
Generic MetricValue _
Show MetricValue
Decode MetricValue
Encode MetricValue
```

#### `MissingContextValue`

``` purescript
newtype MissingContextValue
  = MissingContextValue String
```

##### Instances
``` purescript
Newtype MissingContextValue _
Generic MissingContextValue _
Show MissingContextValue
Decode MissingContextValue
Encode MissingContextValue
```

#### `MissingContextValues`

``` purescript
newtype MissingContextValues
  = MissingContextValues (Array MissingContextValue)
```

##### Instances
``` purescript
Newtype MissingContextValues _
Generic MissingContextValues _
Show MissingContextValues
Decode MissingContextValues
Encode MissingContextValues
```

#### `NextToken`

``` purescript
newtype NextToken
  = NextToken String
```

##### Instances
``` purescript
Newtype NextToken _
Generic NextToken _
Show NextToken
Decode NextToken
Encode NextToken
```

#### `NotConfiguredException`

``` purescript
newtype NotConfiguredException
  = NotConfiguredException { message :: NullOrUndefined (ErrorMessage') }
```

<p>The resource is not configured.</p>

##### Instances
``` purescript
Newtype NotConfiguredException _
Generic NotConfiguredException _
Show NotConfiguredException
Decode NotConfiguredException
Encode NotConfiguredException
```

#### `newNotConfiguredException`

``` purescript
newNotConfiguredException :: NotConfiguredException
```

Constructs NotConfiguredException from required parameters

#### `newNotConfiguredException'`

``` purescript
newNotConfiguredException' :: ({ message :: NullOrUndefined (ErrorMessage') } -> { message :: NullOrUndefined (ErrorMessage') }) -> NotConfiguredException
```

Constructs NotConfiguredException's fields from required parameters

#### `OTAUpdateArn`

``` purescript
newtype OTAUpdateArn
  = OTAUpdateArn String
```

##### Instances
``` purescript
Newtype OTAUpdateArn _
Generic OTAUpdateArn _
Show OTAUpdateArn
Decode OTAUpdateArn
Encode OTAUpdateArn
```

#### `OTAUpdateDescription`

``` purescript
newtype OTAUpdateDescription
  = OTAUpdateDescription String
```

##### Instances
``` purescript
Newtype OTAUpdateDescription _
Generic OTAUpdateDescription _
Show OTAUpdateDescription
Decode OTAUpdateDescription
Encode OTAUpdateDescription
```

#### `OTAUpdateErrorMessage`

``` purescript
newtype OTAUpdateErrorMessage
  = OTAUpdateErrorMessage String
```

##### Instances
``` purescript
Newtype OTAUpdateErrorMessage _
Generic OTAUpdateErrorMessage _
Show OTAUpdateErrorMessage
Decode OTAUpdateErrorMessage
Encode OTAUpdateErrorMessage
```

#### `OTAUpdateFile`

``` purescript
newtype OTAUpdateFile
  = OTAUpdateFile { fileName :: NullOrUndefined (FileName), fileVersion :: NullOrUndefined (OTAUpdateFileVersion), fileSource :: NullOrUndefined (Stream), codeSigning :: NullOrUndefined (CodeSigning), attributes :: NullOrUndefined (AttributesMap) }
```

<p>Describes a file to be associated with an OTA update.</p>

##### Instances
``` purescript
Newtype OTAUpdateFile _
Generic OTAUpdateFile _
Show OTAUpdateFile
Decode OTAUpdateFile
Encode OTAUpdateFile
```

#### `newOTAUpdateFile`

``` purescript
newOTAUpdateFile :: OTAUpdateFile
```

Constructs OTAUpdateFile from required parameters

#### `newOTAUpdateFile'`

``` purescript
newOTAUpdateFile' :: ({ fileName :: NullOrUndefined (FileName), fileVersion :: NullOrUndefined (OTAUpdateFileVersion), fileSource :: NullOrUndefined (Stream), codeSigning :: NullOrUndefined (CodeSigning), attributes :: NullOrUndefined (AttributesMap) } -> { fileName :: NullOrUndefined (FileName), fileVersion :: NullOrUndefined (OTAUpdateFileVersion), fileSource :: NullOrUndefined (Stream), codeSigning :: NullOrUndefined (CodeSigning), attributes :: NullOrUndefined (AttributesMap) }) -> OTAUpdateFile
```

Constructs OTAUpdateFile's fields from required parameters

#### `OTAUpdateFileVersion`

``` purescript
newtype OTAUpdateFileVersion
  = OTAUpdateFileVersion String
```

##### Instances
``` purescript
Newtype OTAUpdateFileVersion _
Generic OTAUpdateFileVersion _
Show OTAUpdateFileVersion
Decode OTAUpdateFileVersion
Encode OTAUpdateFileVersion
```

#### `OTAUpdateFiles`

``` purescript
newtype OTAUpdateFiles
  = OTAUpdateFiles (Array OTAUpdateFile)
```

##### Instances
``` purescript
Newtype OTAUpdateFiles _
Generic OTAUpdateFiles _
Show OTAUpdateFiles
Decode OTAUpdateFiles
Encode OTAUpdateFiles
```

#### `OTAUpdateId`

``` purescript
newtype OTAUpdateId
  = OTAUpdateId String
```

##### Instances
``` purescript
Newtype OTAUpdateId _
Generic OTAUpdateId _
Show OTAUpdateId
Decode OTAUpdateId
Encode OTAUpdateId
```

#### `OTAUpdateInfo`

``` purescript
newtype OTAUpdateInfo
  = OTAUpdateInfo { otaUpdateId :: NullOrUndefined (OTAUpdateId), otaUpdateArn :: NullOrUndefined (OTAUpdateArn), creationDate :: NullOrUndefined (DateType), lastModifiedDate :: NullOrUndefined (DateType), description :: NullOrUndefined (OTAUpdateDescription), targets :: NullOrUndefined (Targets), targetSelection :: NullOrUndefined (TargetSelection), otaUpdateFiles :: NullOrUndefined (OTAUpdateFiles), otaUpdateStatus :: NullOrUndefined (OTAUpdateStatus), awsIotJobId :: NullOrUndefined (AwsIotJobId), awsIotJobArn :: NullOrUndefined (AwsIotJobArn), errorInfo :: NullOrUndefined (ErrorInfo), additionalParameters :: NullOrUndefined (AdditionalParameterMap) }
```

<p>Information about an OTA update.</p>

##### Instances
``` purescript
Newtype OTAUpdateInfo _
Generic OTAUpdateInfo _
Show OTAUpdateInfo
Decode OTAUpdateInfo
Encode OTAUpdateInfo
```

#### `newOTAUpdateInfo`

``` purescript
newOTAUpdateInfo :: OTAUpdateInfo
```

Constructs OTAUpdateInfo from required parameters

#### `newOTAUpdateInfo'`

``` purescript
newOTAUpdateInfo' :: ({ otaUpdateId :: NullOrUndefined (OTAUpdateId), otaUpdateArn :: NullOrUndefined (OTAUpdateArn), creationDate :: NullOrUndefined (DateType), lastModifiedDate :: NullOrUndefined (DateType), description :: NullOrUndefined (OTAUpdateDescription), targets :: NullOrUndefined (Targets), targetSelection :: NullOrUndefined (TargetSelection), otaUpdateFiles :: NullOrUndefined (OTAUpdateFiles), otaUpdateStatus :: NullOrUndefined (OTAUpdateStatus), awsIotJobId :: NullOrUndefined (AwsIotJobId), awsIotJobArn :: NullOrUndefined (AwsIotJobArn), errorInfo :: NullOrUndefined (ErrorInfo), additionalParameters :: NullOrUndefined (AdditionalParameterMap) } -> { otaUpdateId :: NullOrUndefined (OTAUpdateId), otaUpdateArn :: NullOrUndefined (OTAUpdateArn), creationDate :: NullOrUndefined (DateType), lastModifiedDate :: NullOrUndefined (DateType), description :: NullOrUndefined (OTAUpdateDescription), targets :: NullOrUndefined (Targets), targetSelection :: NullOrUndefined (TargetSelection), otaUpdateFiles :: NullOrUndefined (OTAUpdateFiles), otaUpdateStatus :: NullOrUndefined (OTAUpdateStatus), awsIotJobId :: NullOrUndefined (AwsIotJobId), awsIotJobArn :: NullOrUndefined (AwsIotJobArn), errorInfo :: NullOrUndefined (ErrorInfo), additionalParameters :: NullOrUndefined (AdditionalParameterMap) }) -> OTAUpdateInfo
```

Constructs OTAUpdateInfo's fields from required parameters

#### `OTAUpdateStatus`

``` purescript
newtype OTAUpdateStatus
  = OTAUpdateStatus String
```

##### Instances
``` purescript
Newtype OTAUpdateStatus _
Generic OTAUpdateStatus _
Show OTAUpdateStatus
Decode OTAUpdateStatus
Encode OTAUpdateStatus
```

#### `OTAUpdateSummary`

``` purescript
newtype OTAUpdateSummary
  = OTAUpdateSummary { otaUpdateId :: NullOrUndefined (OTAUpdateId), otaUpdateArn :: NullOrUndefined (OTAUpdateArn), creationDate :: NullOrUndefined (DateType) }
```

<p>An OTA update summary.</p>

##### Instances
``` purescript
Newtype OTAUpdateSummary _
Generic OTAUpdateSummary _
Show OTAUpdateSummary
Decode OTAUpdateSummary
Encode OTAUpdateSummary
```

#### `newOTAUpdateSummary`

``` purescript
newOTAUpdateSummary :: OTAUpdateSummary
```

Constructs OTAUpdateSummary from required parameters

#### `newOTAUpdateSummary'`

``` purescript
newOTAUpdateSummary' :: ({ otaUpdateId :: NullOrUndefined (OTAUpdateId), otaUpdateArn :: NullOrUndefined (OTAUpdateArn), creationDate :: NullOrUndefined (DateType) } -> { otaUpdateId :: NullOrUndefined (OTAUpdateId), otaUpdateArn :: NullOrUndefined (OTAUpdateArn), creationDate :: NullOrUndefined (DateType) }) -> OTAUpdateSummary
```

Constructs OTAUpdateSummary's fields from required parameters

#### `OTAUpdatesSummary`

``` purescript
newtype OTAUpdatesSummary
  = OTAUpdatesSummary (Array OTAUpdateSummary)
```

##### Instances
``` purescript
Newtype OTAUpdatesSummary _
Generic OTAUpdatesSummary _
Show OTAUpdatesSummary
Decode OTAUpdatesSummary
Encode OTAUpdatesSummary
```

#### `OptionalVersion`

``` purescript
newtype OptionalVersion
  = OptionalVersion Number
```

##### Instances
``` purescript
Newtype OptionalVersion _
Generic OptionalVersion _
Show OptionalVersion
Decode OptionalVersion
Encode OptionalVersion
```

#### `OutgoingCertificate`

``` purescript
newtype OutgoingCertificate
  = OutgoingCertificate { certificateArn :: NullOrUndefined (CertificateArn), certificateId :: NullOrUndefined (CertificateId), transferredTo :: NullOrUndefined (AwsAccountId), transferDate :: NullOrUndefined (DateType), transferMessage :: NullOrUndefined (Message), creationDate :: NullOrUndefined (DateType) }
```

<p>A certificate that has been transferred but not yet accepted.</p>

##### Instances
``` purescript
Newtype OutgoingCertificate _
Generic OutgoingCertificate _
Show OutgoingCertificate
Decode OutgoingCertificate
Encode OutgoingCertificate
```

#### `newOutgoingCertificate`

``` purescript
newOutgoingCertificate :: OutgoingCertificate
```

Constructs OutgoingCertificate from required parameters

#### `newOutgoingCertificate'`

``` purescript
newOutgoingCertificate' :: ({ certificateArn :: NullOrUndefined (CertificateArn), certificateId :: NullOrUndefined (CertificateId), transferredTo :: NullOrUndefined (AwsAccountId), transferDate :: NullOrUndefined (DateType), transferMessage :: NullOrUndefined (Message), creationDate :: NullOrUndefined (DateType) } -> { certificateArn :: NullOrUndefined (CertificateArn), certificateId :: NullOrUndefined (CertificateId), transferredTo :: NullOrUndefined (AwsAccountId), transferDate :: NullOrUndefined (DateType), transferMessage :: NullOrUndefined (Message), creationDate :: NullOrUndefined (DateType) }) -> OutgoingCertificate
```

Constructs OutgoingCertificate's fields from required parameters

#### `OutgoingCertificates`

``` purescript
newtype OutgoingCertificates
  = OutgoingCertificates (Array OutgoingCertificate)
```

##### Instances
``` purescript
Newtype OutgoingCertificates _
Generic OutgoingCertificates _
Show OutgoingCertificates
Decode OutgoingCertificates
Encode OutgoingCertificates
```

#### `PageSize`

``` purescript
newtype PageSize
  = PageSize Int
```

##### Instances
``` purescript
Newtype PageSize _
Generic PageSize _
Show PageSize
Decode PageSize
Encode PageSize
```

#### `Parameter`

``` purescript
newtype Parameter
  = Parameter String
```

##### Instances
``` purescript
Newtype Parameter _
Generic Parameter _
Show Parameter
Decode Parameter
Encode Parameter
```

#### `ParameterKey`

``` purescript
newtype ParameterKey
  = ParameterKey String
```

##### Instances
``` purescript
Newtype ParameterKey _
Generic ParameterKey _
Show ParameterKey
Decode ParameterKey
Encode ParameterKey
```

#### `ParameterValue`

``` purescript
newtype ParameterValue
  = ParameterValue String
```

##### Instances
``` purescript
Newtype ParameterValue _
Generic ParameterValue _
Show ParameterValue
Decode ParameterValue
Encode ParameterValue
```

#### `Parameters`

``` purescript
newtype Parameters
  = Parameters (StrMap Value)
```

##### Instances
``` purescript
Newtype Parameters _
Generic Parameters _
Show Parameters
Decode Parameters
Encode Parameters
```

#### `PartitionKey`

``` purescript
newtype PartitionKey
  = PartitionKey String
```

##### Instances
``` purescript
Newtype PartitionKey _
Generic PartitionKey _
Show PartitionKey
Decode PartitionKey
Encode PartitionKey
```

#### `PayloadField`

``` purescript
newtype PayloadField
  = PayloadField String
```

##### Instances
``` purescript
Newtype PayloadField _
Generic PayloadField _
Show PayloadField
Decode PayloadField
Encode PayloadField
```

#### `Percentage`

``` purescript
newtype Percentage
  = Percentage Int
```

##### Instances
``` purescript
Newtype Percentage _
Generic Percentage _
Show Percentage
Decode Percentage
Encode Percentage
```

#### `Policies`

``` purescript
newtype Policies
  = Policies (Array Policy)
```

##### Instances
``` purescript
Newtype Policies _
Generic Policies _
Show Policies
Decode Policies
Encode Policies
```

#### `Policy`

``` purescript
newtype Policy
  = Policy { policyName :: NullOrUndefined (PolicyName), policyArn :: NullOrUndefined (PolicyArn) }
```

<p>Describes an AWS IoT policy.</p>

##### Instances
``` purescript
Newtype Policy _
Generic Policy _
Show Policy
Decode Policy
Encode Policy
```

#### `newPolicy`

``` purescript
newPolicy :: Policy
```

Constructs Policy from required parameters

#### `newPolicy'`

``` purescript
newPolicy' :: ({ policyName :: NullOrUndefined (PolicyName), policyArn :: NullOrUndefined (PolicyArn) } -> { policyName :: NullOrUndefined (PolicyName), policyArn :: NullOrUndefined (PolicyArn) }) -> Policy
```

Constructs Policy's fields from required parameters

#### `PolicyArn`

``` purescript
newtype PolicyArn
  = PolicyArn String
```

##### Instances
``` purescript
Newtype PolicyArn _
Generic PolicyArn _
Show PolicyArn
Decode PolicyArn
Encode PolicyArn
```

#### `PolicyDocument`

``` purescript
newtype PolicyDocument
  = PolicyDocument String
```

##### Instances
``` purescript
Newtype PolicyDocument _
Generic PolicyDocument _
Show PolicyDocument
Decode PolicyDocument
Encode PolicyDocument
```

#### `PolicyDocuments`

``` purescript
newtype PolicyDocuments
  = PolicyDocuments (Array PolicyDocument)
```

##### Instances
``` purescript
Newtype PolicyDocuments _
Generic PolicyDocuments _
Show PolicyDocuments
Decode PolicyDocuments
Encode PolicyDocuments
```

#### `PolicyName`

``` purescript
newtype PolicyName
  = PolicyName String
```

##### Instances
``` purescript
Newtype PolicyName _
Generic PolicyName _
Show PolicyName
Decode PolicyName
Encode PolicyName
```

#### `PolicyNames`

``` purescript
newtype PolicyNames
  = PolicyNames (Array PolicyName)
```

##### Instances
``` purescript
Newtype PolicyNames _
Generic PolicyNames _
Show PolicyNames
Decode PolicyNames
Encode PolicyNames
```

#### `PolicyTarget`

``` purescript
newtype PolicyTarget
  = PolicyTarget String
```

##### Instances
``` purescript
Newtype PolicyTarget _
Generic PolicyTarget _
Show PolicyTarget
Decode PolicyTarget
Encode PolicyTarget
```

#### `PolicyTargets`

``` purescript
newtype PolicyTargets
  = PolicyTargets (Array PolicyTarget)
```

##### Instances
``` purescript
Newtype PolicyTargets _
Generic PolicyTargets _
Show PolicyTargets
Decode PolicyTargets
Encode PolicyTargets
```

#### `PolicyVersion`

``` purescript
newtype PolicyVersion
  = PolicyVersion { versionId :: NullOrUndefined (PolicyVersionId), isDefaultVersion :: NullOrUndefined (IsDefaultVersion), createDate :: NullOrUndefined (DateType) }
```

<p>Describes a policy version.</p>

##### Instances
``` purescript
Newtype PolicyVersion _
Generic PolicyVersion _
Show PolicyVersion
Decode PolicyVersion
Encode PolicyVersion
```

#### `newPolicyVersion`

``` purescript
newPolicyVersion :: PolicyVersion
```

Constructs PolicyVersion from required parameters

#### `newPolicyVersion'`

``` purescript
newPolicyVersion' :: ({ versionId :: NullOrUndefined (PolicyVersionId), isDefaultVersion :: NullOrUndefined (IsDefaultVersion), createDate :: NullOrUndefined (DateType) } -> { versionId :: NullOrUndefined (PolicyVersionId), isDefaultVersion :: NullOrUndefined (IsDefaultVersion), createDate :: NullOrUndefined (DateType) }) -> PolicyVersion
```

Constructs PolicyVersion's fields from required parameters

#### `PolicyVersionId`

``` purescript
newtype PolicyVersionId
  = PolicyVersionId String
```

##### Instances
``` purescript
Newtype PolicyVersionId _
Generic PolicyVersionId _
Show PolicyVersionId
Decode PolicyVersionId
Encode PolicyVersionId
```

#### `PolicyVersions`

``` purescript
newtype PolicyVersions
  = PolicyVersions (Array PolicyVersion)
```

##### Instances
``` purescript
Newtype PolicyVersions _
Generic PolicyVersions _
Show PolicyVersions
Decode PolicyVersions
Encode PolicyVersions
```

#### `PresignedUrlConfig`

``` purescript
newtype PresignedUrlConfig
  = PresignedUrlConfig { roleArn :: NullOrUndefined (RoleArn), expiresInSec :: NullOrUndefined (ExpiresInSec) }
```

<p>Configuration for pre-signed S3 URLs.</p>

##### Instances
``` purescript
Newtype PresignedUrlConfig _
Generic PresignedUrlConfig _
Show PresignedUrlConfig
Decode PresignedUrlConfig
Encode PresignedUrlConfig
```

#### `newPresignedUrlConfig`

``` purescript
newPresignedUrlConfig :: PresignedUrlConfig
```

Constructs PresignedUrlConfig from required parameters

#### `newPresignedUrlConfig'`

``` purescript
newPresignedUrlConfig' :: ({ roleArn :: NullOrUndefined (RoleArn), expiresInSec :: NullOrUndefined (ExpiresInSec) } -> { roleArn :: NullOrUndefined (RoleArn), expiresInSec :: NullOrUndefined (ExpiresInSec) }) -> PresignedUrlConfig
```

Constructs PresignedUrlConfig's fields from required parameters

#### `Principal`

``` purescript
newtype Principal
  = Principal String
```

##### Instances
``` purescript
Newtype Principal _
Generic Principal _
Show Principal
Decode Principal
Encode Principal
```

#### `PrincipalArn`

``` purescript
newtype PrincipalArn
  = PrincipalArn String
```

##### Instances
``` purescript
Newtype PrincipalArn _
Generic PrincipalArn _
Show PrincipalArn
Decode PrincipalArn
Encode PrincipalArn
```

#### `PrincipalId`

``` purescript
newtype PrincipalId
  = PrincipalId String
```

##### Instances
``` purescript
Newtype PrincipalId _
Generic PrincipalId _
Show PrincipalId
Decode PrincipalId
Encode PrincipalId
```

#### `Principals`

``` purescript
newtype Principals
  = Principals (Array PrincipalArn)
```

##### Instances
``` purescript
Newtype Principals _
Generic Principals _
Show Principals
Decode Principals
Encode Principals
```

#### `PrivateKey`

``` purescript
newtype PrivateKey
  = PrivateKey String
```

##### Instances
``` purescript
Newtype PrivateKey _
Generic PrivateKey _
Show PrivateKey
Decode PrivateKey
Encode PrivateKey
```

#### `ProcessingTargetName`

``` purescript
newtype ProcessingTargetName
  = ProcessingTargetName String
```

##### Instances
``` purescript
Newtype ProcessingTargetName _
Generic ProcessingTargetName _
Show ProcessingTargetName
Decode ProcessingTargetName
Encode ProcessingTargetName
```

#### `ProcessingTargetNameList`

``` purescript
newtype ProcessingTargetNameList
  = ProcessingTargetNameList (Array ProcessingTargetName)
```

##### Instances
``` purescript
Newtype ProcessingTargetNameList _
Generic ProcessingTargetNameList _
Show ProcessingTargetNameList
Decode ProcessingTargetNameList
Encode ProcessingTargetNameList
```

#### `PublicKey`

``` purescript
newtype PublicKey
  = PublicKey String
```

##### Instances
``` purescript
Newtype PublicKey _
Generic PublicKey _
Show PublicKey
Decode PublicKey
Encode PublicKey
```

#### `PublicKeyMap`

``` purescript
newtype PublicKeyMap
  = PublicKeyMap (StrMap KeyValue)
```

##### Instances
``` purescript
Newtype PublicKeyMap _
Generic PublicKeyMap _
Show PublicKeyMap
Decode PublicKeyMap
Encode PublicKeyMap
```

#### `PutItemInput`

``` purescript
newtype PutItemInput
  = PutItemInput { tableName :: TableName }
```

<p>The input for the DynamoActionVS action that specifies the DynamoDB table to which the message data will be written.</p>

##### Instances
``` purescript
Newtype PutItemInput _
Generic PutItemInput _
Show PutItemInput
Decode PutItemInput
Encode PutItemInput
```

#### `newPutItemInput`

``` purescript
newPutItemInput :: TableName -> PutItemInput
```

Constructs PutItemInput from required parameters

#### `newPutItemInput'`

``` purescript
newPutItemInput' :: TableName -> ({ tableName :: TableName } -> { tableName :: TableName }) -> PutItemInput
```

Constructs PutItemInput's fields from required parameters

#### `QueryMaxResults`

``` purescript
newtype QueryMaxResults
  = QueryMaxResults Int
```

##### Instances
``` purescript
Newtype QueryMaxResults _
Generic QueryMaxResults _
Show QueryMaxResults
Decode QueryMaxResults
Encode QueryMaxResults
```

#### `QueryString`

``` purescript
newtype QueryString
  = QueryString String
```

##### Instances
``` purescript
Newtype QueryString _
Generic QueryString _
Show QueryString
Decode QueryString
Encode QueryString
```

#### `QueryVersion`

``` purescript
newtype QueryVersion
  = QueryVersion String
```

##### Instances
``` purescript
Newtype QueryVersion _
Generic QueryVersion _
Show QueryVersion
Decode QueryVersion
Encode QueryVersion
```

#### `QueueUrl`

``` purescript
newtype QueueUrl
  = QueueUrl String
```

##### Instances
``` purescript
Newtype QueueUrl _
Generic QueueUrl _
Show QueueUrl
Decode QueueUrl
Encode QueueUrl
```

#### `QueuedThings`

``` purescript
newtype QueuedThings
  = QueuedThings Int
```

##### Instances
``` purescript
Newtype QueuedThings _
Generic QueuedThings _
Show QueuedThings
Decode QueuedThings
Encode QueuedThings
```

#### `RangeKeyField`

``` purescript
newtype RangeKeyField
  = RangeKeyField String
```

##### Instances
``` purescript
Newtype RangeKeyField _
Generic RangeKeyField _
Show RangeKeyField
Decode RangeKeyField
Encode RangeKeyField
```

#### `RangeKeyValue`

``` purescript
newtype RangeKeyValue
  = RangeKeyValue String
```

##### Instances
``` purescript
Newtype RangeKeyValue _
Generic RangeKeyValue _
Show RangeKeyValue
Decode RangeKeyValue
Encode RangeKeyValue
```

#### `Recursive`

``` purescript
newtype Recursive
  = Recursive Boolean
```

##### Instances
``` purescript
Newtype Recursive _
Generic Recursive _
Show Recursive
Decode Recursive
Encode Recursive
```

#### `RecursiveWithoutDefault`

``` purescript
newtype RecursiveWithoutDefault
  = RecursiveWithoutDefault Boolean
```

##### Instances
``` purescript
Newtype RecursiveWithoutDefault _
Generic RecursiveWithoutDefault _
Show RecursiveWithoutDefault
Decode RecursiveWithoutDefault
Encode RecursiveWithoutDefault
```

#### `RegisterCACertificateRequest`

``` purescript
newtype RegisterCACertificateRequest
  = RegisterCACertificateRequest { caCertificate :: CertificatePem, verificationCertificate :: CertificatePem, setAsActive :: NullOrUndefined (SetAsActive), allowAutoRegistration :: NullOrUndefined (AllowAutoRegistration), registrationConfig :: NullOrUndefined (RegistrationConfig) }
```

<p>The input to the RegisterCACertificate operation.</p>

##### Instances
``` purescript
Newtype RegisterCACertificateRequest _
Generic RegisterCACertificateRequest _
Show RegisterCACertificateRequest
Decode RegisterCACertificateRequest
Encode RegisterCACertificateRequest
```

#### `newRegisterCACertificateRequest`

``` purescript
newRegisterCACertificateRequest :: CertificatePem -> CertificatePem -> RegisterCACertificateRequest
```

Constructs RegisterCACertificateRequest from required parameters

#### `newRegisterCACertificateRequest'`

``` purescript
newRegisterCACertificateRequest' :: CertificatePem -> CertificatePem -> ({ caCertificate :: CertificatePem, verificationCertificate :: CertificatePem, setAsActive :: NullOrUndefined (SetAsActive), allowAutoRegistration :: NullOrUndefined (AllowAutoRegistration), registrationConfig :: NullOrUndefined (RegistrationConfig) } -> { caCertificate :: CertificatePem, verificationCertificate :: CertificatePem, setAsActive :: NullOrUndefined (SetAsActive), allowAutoRegistration :: NullOrUndefined (AllowAutoRegistration), registrationConfig :: NullOrUndefined (RegistrationConfig) }) -> RegisterCACertificateRequest
```

Constructs RegisterCACertificateRequest's fields from required parameters

#### `RegisterCACertificateResponse`

``` purescript
newtype RegisterCACertificateResponse
  = RegisterCACertificateResponse { certificateArn :: NullOrUndefined (CertificateArn), certificateId :: NullOrUndefined (CertificateId) }
```

<p>The output from the RegisterCACertificateResponse operation.</p>

##### Instances
``` purescript
Newtype RegisterCACertificateResponse _
Generic RegisterCACertificateResponse _
Show RegisterCACertificateResponse
Decode RegisterCACertificateResponse
Encode RegisterCACertificateResponse
```

#### `newRegisterCACertificateResponse`

``` purescript
newRegisterCACertificateResponse :: RegisterCACertificateResponse
```

Constructs RegisterCACertificateResponse from required parameters

#### `newRegisterCACertificateResponse'`

``` purescript
newRegisterCACertificateResponse' :: ({ certificateArn :: NullOrUndefined (CertificateArn), certificateId :: NullOrUndefined (CertificateId) } -> { certificateArn :: NullOrUndefined (CertificateArn), certificateId :: NullOrUndefined (CertificateId) }) -> RegisterCACertificateResponse
```

Constructs RegisterCACertificateResponse's fields from required parameters

#### `RegisterCertificateRequest`

``` purescript
newtype RegisterCertificateRequest
  = RegisterCertificateRequest { certificatePem :: CertificatePem, caCertificatePem :: NullOrUndefined (CertificatePem), setAsActive :: NullOrUndefined (SetAsActiveFlag), status :: NullOrUndefined (CertificateStatus) }
```

<p>The input to the RegisterCertificate operation.</p>

##### Instances
``` purescript
Newtype RegisterCertificateRequest _
Generic RegisterCertificateRequest _
Show RegisterCertificateRequest
Decode RegisterCertificateRequest
Encode RegisterCertificateRequest
```

#### `newRegisterCertificateRequest`

``` purescript
newRegisterCertificateRequest :: CertificatePem -> RegisterCertificateRequest
```

Constructs RegisterCertificateRequest from required parameters

#### `newRegisterCertificateRequest'`

``` purescript
newRegisterCertificateRequest' :: CertificatePem -> ({ certificatePem :: CertificatePem, caCertificatePem :: NullOrUndefined (CertificatePem), setAsActive :: NullOrUndefined (SetAsActiveFlag), status :: NullOrUndefined (CertificateStatus) } -> { certificatePem :: CertificatePem, caCertificatePem :: NullOrUndefined (CertificatePem), setAsActive :: NullOrUndefined (SetAsActiveFlag), status :: NullOrUndefined (CertificateStatus) }) -> RegisterCertificateRequest
```

Constructs RegisterCertificateRequest's fields from required parameters

#### `RegisterCertificateResponse`

``` purescript
newtype RegisterCertificateResponse
  = RegisterCertificateResponse { certificateArn :: NullOrUndefined (CertificateArn), certificateId :: NullOrUndefined (CertificateId) }
```

<p>The output from the RegisterCertificate operation.</p>

##### Instances
``` purescript
Newtype RegisterCertificateResponse _
Generic RegisterCertificateResponse _
Show RegisterCertificateResponse
Decode RegisterCertificateResponse
Encode RegisterCertificateResponse
```

#### `newRegisterCertificateResponse`

``` purescript
newRegisterCertificateResponse :: RegisterCertificateResponse
```

Constructs RegisterCertificateResponse from required parameters

#### `newRegisterCertificateResponse'`

``` purescript
newRegisterCertificateResponse' :: ({ certificateArn :: NullOrUndefined (CertificateArn), certificateId :: NullOrUndefined (CertificateId) } -> { certificateArn :: NullOrUndefined (CertificateArn), certificateId :: NullOrUndefined (CertificateId) }) -> RegisterCertificateResponse
```

Constructs RegisterCertificateResponse's fields from required parameters

#### `RegisterThingRequest`

``` purescript
newtype RegisterThingRequest
  = RegisterThingRequest { templateBody :: TemplateBody, parameters :: NullOrUndefined (Parameters) }
```

##### Instances
``` purescript
Newtype RegisterThingRequest _
Generic RegisterThingRequest _
Show RegisterThingRequest
Decode RegisterThingRequest
Encode RegisterThingRequest
```

#### `newRegisterThingRequest`

``` purescript
newRegisterThingRequest :: TemplateBody -> RegisterThingRequest
```

Constructs RegisterThingRequest from required parameters

#### `newRegisterThingRequest'`

``` purescript
newRegisterThingRequest' :: TemplateBody -> ({ templateBody :: TemplateBody, parameters :: NullOrUndefined (Parameters) } -> { templateBody :: TemplateBody, parameters :: NullOrUndefined (Parameters) }) -> RegisterThingRequest
```

Constructs RegisterThingRequest's fields from required parameters

#### `RegisterThingResponse`

``` purescript
newtype RegisterThingResponse
  = RegisterThingResponse { certificatePem :: NullOrUndefined (CertificatePem), resourceArns :: NullOrUndefined (ResourceArns) }
```

##### Instances
``` purescript
Newtype RegisterThingResponse _
Generic RegisterThingResponse _
Show RegisterThingResponse
Decode RegisterThingResponse
Encode RegisterThingResponse
```

#### `newRegisterThingResponse`

``` purescript
newRegisterThingResponse :: RegisterThingResponse
```

Constructs RegisterThingResponse from required parameters

#### `newRegisterThingResponse'`

``` purescript
newRegisterThingResponse' :: ({ certificatePem :: NullOrUndefined (CertificatePem), resourceArns :: NullOrUndefined (ResourceArns) } -> { certificatePem :: NullOrUndefined (CertificatePem), resourceArns :: NullOrUndefined (ResourceArns) }) -> RegisterThingResponse
```

Constructs RegisterThingResponse's fields from required parameters

#### `RegistrationCode`

``` purescript
newtype RegistrationCode
  = RegistrationCode String
```

##### Instances
``` purescript
Newtype RegistrationCode _
Generic RegistrationCode _
Show RegistrationCode
Decode RegistrationCode
Encode RegistrationCode
```

#### `RegistrationCodeValidationException`

``` purescript
newtype RegistrationCodeValidationException
  = RegistrationCodeValidationException { message :: NullOrUndefined (ErrorMessage') }
```

<p>The registration code is invalid.</p>

##### Instances
``` purescript
Newtype RegistrationCodeValidationException _
Generic RegistrationCodeValidationException _
Show RegistrationCodeValidationException
Decode RegistrationCodeValidationException
Encode RegistrationCodeValidationException
```

#### `newRegistrationCodeValidationException`

``` purescript
newRegistrationCodeValidationException :: RegistrationCodeValidationException
```

Constructs RegistrationCodeValidationException from required parameters

#### `newRegistrationCodeValidationException'`

``` purescript
newRegistrationCodeValidationException' :: ({ message :: NullOrUndefined (ErrorMessage') } -> { message :: NullOrUndefined (ErrorMessage') }) -> RegistrationCodeValidationException
```

Constructs RegistrationCodeValidationException's fields from required parameters

#### `RegistrationConfig`

``` purescript
newtype RegistrationConfig
  = RegistrationConfig { templateBody :: NullOrUndefined (TemplateBody), roleArn :: NullOrUndefined (RoleArn) }
```

<p>The registration configuration.</p>

##### Instances
``` purescript
Newtype RegistrationConfig _
Generic RegistrationConfig _
Show RegistrationConfig
Decode RegistrationConfig
Encode RegistrationConfig
```

#### `newRegistrationConfig`

``` purescript
newRegistrationConfig :: RegistrationConfig
```

Constructs RegistrationConfig from required parameters

#### `newRegistrationConfig'`

``` purescript
newRegistrationConfig' :: ({ templateBody :: NullOrUndefined (TemplateBody), roleArn :: NullOrUndefined (RoleArn) } -> { templateBody :: NullOrUndefined (TemplateBody), roleArn :: NullOrUndefined (RoleArn) }) -> RegistrationConfig
```

Constructs RegistrationConfig's fields from required parameters

#### `RegistryMaxResults`

``` purescript
newtype RegistryMaxResults
  = RegistryMaxResults Int
```

##### Instances
``` purescript
Newtype RegistryMaxResults _
Generic RegistryMaxResults _
Show RegistryMaxResults
Decode RegistryMaxResults
Encode RegistryMaxResults
```

#### `RegistryS3BucketName`

``` purescript
newtype RegistryS3BucketName
  = RegistryS3BucketName String
```

##### Instances
``` purescript
Newtype RegistryS3BucketName _
Generic RegistryS3BucketName _
Show RegistryS3BucketName
Decode RegistryS3BucketName
Encode RegistryS3BucketName
```

#### `RegistryS3KeyName`

``` purescript
newtype RegistryS3KeyName
  = RegistryS3KeyName String
```

##### Instances
``` purescript
Newtype RegistryS3KeyName _
Generic RegistryS3KeyName _
Show RegistryS3KeyName
Decode RegistryS3KeyName
Encode RegistryS3KeyName
```

#### `RejectCertificateTransferRequest`

``` purescript
newtype RejectCertificateTransferRequest
  = RejectCertificateTransferRequest { certificateId :: CertificateId, rejectReason :: NullOrUndefined (Message) }
```

<p>The input for the RejectCertificateTransfer operation.</p>

##### Instances
``` purescript
Newtype RejectCertificateTransferRequest _
Generic RejectCertificateTransferRequest _
Show RejectCertificateTransferRequest
Decode RejectCertificateTransferRequest
Encode RejectCertificateTransferRequest
```

#### `newRejectCertificateTransferRequest`

``` purescript
newRejectCertificateTransferRequest :: CertificateId -> RejectCertificateTransferRequest
```

Constructs RejectCertificateTransferRequest from required parameters

#### `newRejectCertificateTransferRequest'`

``` purescript
newRejectCertificateTransferRequest' :: CertificateId -> ({ certificateId :: CertificateId, rejectReason :: NullOrUndefined (Message) } -> { certificateId :: CertificateId, rejectReason :: NullOrUndefined (Message) }) -> RejectCertificateTransferRequest
```

Constructs RejectCertificateTransferRequest's fields from required parameters

#### `RejectedThings`

``` purescript
newtype RejectedThings
  = RejectedThings Int
```

##### Instances
``` purescript
Newtype RejectedThings _
Generic RejectedThings _
Show RejectedThings
Decode RejectedThings
Encode RejectedThings
```

#### `RemoveAutoRegistration`

``` purescript
newtype RemoveAutoRegistration
  = RemoveAutoRegistration Boolean
```

##### Instances
``` purescript
Newtype RemoveAutoRegistration _
Generic RemoveAutoRegistration _
Show RemoveAutoRegistration
Decode RemoveAutoRegistration
Encode RemoveAutoRegistration
```

#### `RemoveThingFromThingGroupRequest`

``` purescript
newtype RemoveThingFromThingGroupRequest
  = RemoveThingFromThingGroupRequest { thingGroupName :: NullOrUndefined (ThingGroupName), thingGroupArn :: NullOrUndefined (ThingGroupArn), thingName :: NullOrUndefined (ThingName), thingArn :: NullOrUndefined (ThingArn) }
```

##### Instances
``` purescript
Newtype RemoveThingFromThingGroupRequest _
Generic RemoveThingFromThingGroupRequest _
Show RemoveThingFromThingGroupRequest
Decode RemoveThingFromThingGroupRequest
Encode RemoveThingFromThingGroupRequest
```

#### `newRemoveThingFromThingGroupRequest`

``` purescript
newRemoveThingFromThingGroupRequest :: RemoveThingFromThingGroupRequest
```

Constructs RemoveThingFromThingGroupRequest from required parameters

#### `newRemoveThingFromThingGroupRequest'`

``` purescript
newRemoveThingFromThingGroupRequest' :: ({ thingGroupName :: NullOrUndefined (ThingGroupName), thingGroupArn :: NullOrUndefined (ThingGroupArn), thingName :: NullOrUndefined (ThingName), thingArn :: NullOrUndefined (ThingArn) } -> { thingGroupName :: NullOrUndefined (ThingGroupName), thingGroupArn :: NullOrUndefined (ThingGroupArn), thingName :: NullOrUndefined (ThingName), thingArn :: NullOrUndefined (ThingArn) }) -> RemoveThingFromThingGroupRequest
```

Constructs RemoveThingFromThingGroupRequest's fields from required parameters

#### `RemoveThingFromThingGroupResponse`

``` purescript
newtype RemoveThingFromThingGroupResponse
  = RemoveThingFromThingGroupResponse NoArguments
```

##### Instances
``` purescript
Newtype RemoveThingFromThingGroupResponse _
Generic RemoveThingFromThingGroupResponse _
Show RemoveThingFromThingGroupResponse
Decode RemoveThingFromThingGroupResponse
Encode RemoveThingFromThingGroupResponse
```

#### `RemoveThingType`

``` purescript
newtype RemoveThingType
  = RemoveThingType Boolean
```

##### Instances
``` purescript
Newtype RemoveThingType _
Generic RemoveThingType _
Show RemoveThingType
Decode RemoveThingType
Encode RemoveThingType
```

#### `RemovedThings`

``` purescript
newtype RemovedThings
  = RemovedThings Int
```

##### Instances
``` purescript
Newtype RemovedThings _
Generic RemovedThings _
Show RemovedThings
Decode RemovedThings
Encode RemovedThings
```

#### `ReplaceTopicRuleRequest`

``` purescript
newtype ReplaceTopicRuleRequest
  = ReplaceTopicRuleRequest { ruleName :: RuleName, topicRulePayload :: TopicRulePayload }
```

<p>The input for the ReplaceTopicRule operation.</p>

##### Instances
``` purescript
Newtype ReplaceTopicRuleRequest _
Generic ReplaceTopicRuleRequest _
Show ReplaceTopicRuleRequest
Decode ReplaceTopicRuleRequest
Encode ReplaceTopicRuleRequest
```

#### `newReplaceTopicRuleRequest`

``` purescript
newReplaceTopicRuleRequest :: RuleName -> TopicRulePayload -> ReplaceTopicRuleRequest
```

Constructs ReplaceTopicRuleRequest from required parameters

#### `newReplaceTopicRuleRequest'`

``` purescript
newReplaceTopicRuleRequest' :: RuleName -> TopicRulePayload -> ({ ruleName :: RuleName, topicRulePayload :: TopicRulePayload } -> { ruleName :: RuleName, topicRulePayload :: TopicRulePayload }) -> ReplaceTopicRuleRequest
```

Constructs ReplaceTopicRuleRequest's fields from required parameters

#### `ReportType`

``` purescript
newtype ReportType
  = ReportType String
```

##### Instances
``` purescript
Newtype ReportType _
Generic ReportType _
Show ReportType
Decode ReportType
Encode ReportType
```

#### `RepublishAction`

``` purescript
newtype RepublishAction
  = RepublishAction { roleArn :: AwsArn, topic :: TopicPattern }
```

<p>Describes an action to republish to another topic.</p>

##### Instances
``` purescript
Newtype RepublishAction _
Generic RepublishAction _
Show RepublishAction
Decode RepublishAction
Encode RepublishAction
```

#### `newRepublishAction`

``` purescript
newRepublishAction :: AwsArn -> TopicPattern -> RepublishAction
```

Constructs RepublishAction from required parameters

#### `newRepublishAction'`

``` purescript
newRepublishAction' :: AwsArn -> TopicPattern -> ({ roleArn :: AwsArn, topic :: TopicPattern } -> { roleArn :: AwsArn, topic :: TopicPattern }) -> RepublishAction
```

Constructs RepublishAction's fields from required parameters

#### `Resource`

``` purescript
newtype Resource
  = Resource String
```

##### Instances
``` purescript
Newtype Resource _
Generic Resource _
Show Resource
Decode Resource
Encode Resource
```

#### `ResourceAlreadyExistsException`

``` purescript
newtype ResourceAlreadyExistsException
  = ResourceAlreadyExistsException { message :: NullOrUndefined (ErrorMessage'), resourceId :: NullOrUndefined (ResourceId'), resourceArn :: NullOrUndefined (ResourceArn') }
```

<p>The resource already exists.</p>

##### Instances
``` purescript
Newtype ResourceAlreadyExistsException _
Generic ResourceAlreadyExistsException _
Show ResourceAlreadyExistsException
Decode ResourceAlreadyExistsException
Encode ResourceAlreadyExistsException
```

#### `newResourceAlreadyExistsException`

``` purescript
newResourceAlreadyExistsException :: ResourceAlreadyExistsException
```

Constructs ResourceAlreadyExistsException from required parameters

#### `newResourceAlreadyExistsException'`

``` purescript
newResourceAlreadyExistsException' :: ({ message :: NullOrUndefined (ErrorMessage'), resourceId :: NullOrUndefined (ResourceId'), resourceArn :: NullOrUndefined (ResourceArn') } -> { message :: NullOrUndefined (ErrorMessage'), resourceId :: NullOrUndefined (ResourceId'), resourceArn :: NullOrUndefined (ResourceArn') }) -> ResourceAlreadyExistsException
```

Constructs ResourceAlreadyExistsException's fields from required parameters

#### `ResourceArn`

``` purescript
newtype ResourceArn
  = ResourceArn String
```

##### Instances
``` purescript
Newtype ResourceArn _
Generic ResourceArn _
Show ResourceArn
Decode ResourceArn
Encode ResourceArn
```

#### `ResourceArns`

``` purescript
newtype ResourceArns
  = ResourceArns (StrMap ResourceArn)
```

##### Instances
``` purescript
Newtype ResourceArns _
Generic ResourceArns _
Show ResourceArns
Decode ResourceArns
Encode ResourceArns
```

#### `ResourceLogicalId`

``` purescript
newtype ResourceLogicalId
  = ResourceLogicalId String
```

##### Instances
``` purescript
Newtype ResourceLogicalId _
Generic ResourceLogicalId _
Show ResourceLogicalId
Decode ResourceLogicalId
Encode ResourceLogicalId
```

#### `ResourceNotFoundException`

``` purescript
newtype ResourceNotFoundException
  = ResourceNotFoundException { message :: NullOrUndefined (ErrorMessage') }
```

<p>The specified resource does not exist.</p>

##### Instances
``` purescript
Newtype ResourceNotFoundException _
Generic ResourceNotFoundException _
Show ResourceNotFoundException
Decode ResourceNotFoundException
Encode ResourceNotFoundException
```

#### `newResourceNotFoundException`

``` purescript
newResourceNotFoundException :: ResourceNotFoundException
```

Constructs ResourceNotFoundException from required parameters

#### `newResourceNotFoundException'`

``` purescript
newResourceNotFoundException' :: ({ message :: NullOrUndefined (ErrorMessage') } -> { message :: NullOrUndefined (ErrorMessage') }) -> ResourceNotFoundException
```

Constructs ResourceNotFoundException's fields from required parameters

#### `ResourceRegistrationFailureException`

``` purescript
newtype ResourceRegistrationFailureException
  = ResourceRegistrationFailureException { message :: NullOrUndefined (ErrorMessage') }
```

<p>The resource registration failed.</p>

##### Instances
``` purescript
Newtype ResourceRegistrationFailureException _
Generic ResourceRegistrationFailureException _
Show ResourceRegistrationFailureException
Decode ResourceRegistrationFailureException
Encode ResourceRegistrationFailureException
```

#### `newResourceRegistrationFailureException`

``` purescript
newResourceRegistrationFailureException :: ResourceRegistrationFailureException
```

Constructs ResourceRegistrationFailureException from required parameters

#### `newResourceRegistrationFailureException'`

``` purescript
newResourceRegistrationFailureException' :: ({ message :: NullOrUndefined (ErrorMessage') } -> { message :: NullOrUndefined (ErrorMessage') }) -> ResourceRegistrationFailureException
```

Constructs ResourceRegistrationFailureException's fields from required parameters

#### `Resources`

``` purescript
newtype Resources
  = Resources (Array Resource)
```

##### Instances
``` purescript
Newtype Resources _
Generic Resources _
Show Resources
Decode Resources
Encode Resources
```

#### `RoleAlias`

``` purescript
newtype RoleAlias
  = RoleAlias String
```

##### Instances
``` purescript
Newtype RoleAlias _
Generic RoleAlias _
Show RoleAlias
Decode RoleAlias
Encode RoleAlias
```

#### `RoleAliasArn`

``` purescript
newtype RoleAliasArn
  = RoleAliasArn String
```

##### Instances
``` purescript
Newtype RoleAliasArn _
Generic RoleAliasArn _
Show RoleAliasArn
Decode RoleAliasArn
Encode RoleAliasArn
```

#### `RoleAliasDescription`

``` purescript
newtype RoleAliasDescription
  = RoleAliasDescription { roleAlias :: NullOrUndefined (RoleAlias), roleArn :: NullOrUndefined (RoleArn), owner :: NullOrUndefined (AwsAccountId), credentialDurationSeconds :: NullOrUndefined (CredentialDurationSeconds), creationDate :: NullOrUndefined (DateType), lastModifiedDate :: NullOrUndefined (DateType) }
```

<p>Role alias description.</p>

##### Instances
``` purescript
Newtype RoleAliasDescription _
Generic RoleAliasDescription _
Show RoleAliasDescription
Decode RoleAliasDescription
Encode RoleAliasDescription
```

#### `newRoleAliasDescription`

``` purescript
newRoleAliasDescription :: RoleAliasDescription
```

Constructs RoleAliasDescription from required parameters

#### `newRoleAliasDescription'`

``` purescript
newRoleAliasDescription' :: ({ roleAlias :: NullOrUndefined (RoleAlias), roleArn :: NullOrUndefined (RoleArn), owner :: NullOrUndefined (AwsAccountId), credentialDurationSeconds :: NullOrUndefined (CredentialDurationSeconds), creationDate :: NullOrUndefined (DateType), lastModifiedDate :: NullOrUndefined (DateType) } -> { roleAlias :: NullOrUndefined (RoleAlias), roleArn :: NullOrUndefined (RoleArn), owner :: NullOrUndefined (AwsAccountId), credentialDurationSeconds :: NullOrUndefined (CredentialDurationSeconds), creationDate :: NullOrUndefined (DateType), lastModifiedDate :: NullOrUndefined (DateType) }) -> RoleAliasDescription
```

Constructs RoleAliasDescription's fields from required parameters

#### `RoleAliases`

``` purescript
newtype RoleAliases
  = RoleAliases (Array RoleAlias)
```

##### Instances
``` purescript
Newtype RoleAliases _
Generic RoleAliases _
Show RoleAliases
Decode RoleAliases
Encode RoleAliases
```

#### `RoleArn`

``` purescript
newtype RoleArn
  = RoleArn String
```

##### Instances
``` purescript
Newtype RoleArn _
Generic RoleArn _
Show RoleArn
Decode RoleArn
Encode RoleArn
```

#### `RuleArn`

``` purescript
newtype RuleArn
  = RuleArn String
```

##### Instances
``` purescript
Newtype RuleArn _
Generic RuleArn _
Show RuleArn
Decode RuleArn
Encode RuleArn
```

#### `RuleName`

``` purescript
newtype RuleName
  = RuleName String
```

##### Instances
``` purescript
Newtype RuleName _
Generic RuleName _
Show RuleName
Decode RuleName
Encode RuleName
```

#### `S3Action`

``` purescript
newtype S3Action
  = S3Action { roleArn :: AwsArn, bucketName :: BucketName, key :: Key, cannedAcl :: NullOrUndefined (CannedAccessControlList) }
```

<p>Describes an action to write data to an Amazon S3 bucket.</p>

##### Instances
``` purescript
Newtype S3Action _
Generic S3Action _
Show S3Action
Decode S3Action
Encode S3Action
```

#### `newS3Action`

``` purescript
newS3Action :: BucketName -> Key -> AwsArn -> S3Action
```

Constructs S3Action from required parameters

#### `newS3Action'`

``` purescript
newS3Action' :: BucketName -> Key -> AwsArn -> ({ roleArn :: AwsArn, bucketName :: BucketName, key :: Key, cannedAcl :: NullOrUndefined (CannedAccessControlList) } -> { roleArn :: AwsArn, bucketName :: BucketName, key :: Key, cannedAcl :: NullOrUndefined (CannedAccessControlList) }) -> S3Action
```

Constructs S3Action's fields from required parameters

#### `S3Bucket`

``` purescript
newtype S3Bucket
  = S3Bucket String
```

##### Instances
``` purescript
Newtype S3Bucket _
Generic S3Bucket _
Show S3Bucket
Decode S3Bucket
Encode S3Bucket
```

#### `S3FileUrl`

``` purescript
newtype S3FileUrl
  = S3FileUrl String
```

##### Instances
``` purescript
Newtype S3FileUrl _
Generic S3FileUrl _
Show S3FileUrl
Decode S3FileUrl
Encode S3FileUrl
```

#### `S3FileUrlList`

``` purescript
newtype S3FileUrlList
  = S3FileUrlList (Array S3FileUrl)
```

##### Instances
``` purescript
Newtype S3FileUrlList _
Generic S3FileUrlList _
Show S3FileUrlList
Decode S3FileUrlList
Encode S3FileUrlList
```

#### `S3Key`

``` purescript
newtype S3Key
  = S3Key String
```

##### Instances
``` purescript
Newtype S3Key _
Generic S3Key _
Show S3Key
Decode S3Key
Encode S3Key
```

#### `S3Location`

``` purescript
newtype S3Location
  = S3Location { bucket :: S3Bucket, key :: S3Key, version :: NullOrUndefined (S3Version) }
```

<p>The location in S3 the contains the files to stream.</p>

##### Instances
``` purescript
Newtype S3Location _
Generic S3Location _
Show S3Location
Decode S3Location
Encode S3Location
```

#### `newS3Location`

``` purescript
newS3Location :: S3Bucket -> S3Key -> S3Location
```

Constructs S3Location from required parameters

#### `newS3Location'`

``` purescript
newS3Location' :: S3Bucket -> S3Key -> ({ bucket :: S3Bucket, key :: S3Key, version :: NullOrUndefined (S3Version) } -> { bucket :: S3Bucket, key :: S3Key, version :: NullOrUndefined (S3Version) }) -> S3Location
```

Constructs S3Location's fields from required parameters

#### `S3Version`

``` purescript
newtype S3Version
  = S3Version String
```

##### Instances
``` purescript
Newtype S3Version _
Generic S3Version _
Show S3Version
Decode S3Version
Encode S3Version
```

#### `SQL`

``` purescript
newtype SQL
  = SQL String
```

##### Instances
``` purescript
Newtype SQL _
Generic SQL _
Show SQL
Decode SQL
Encode SQL
```

#### `SalesforceAction`

``` purescript
newtype SalesforceAction
  = SalesforceAction { token :: SalesforceToken, url :: SalesforceEndpoint }
```

<p>Describes an action to write a message to a Salesforce IoT Cloud Input Stream.</p>

##### Instances
``` purescript
Newtype SalesforceAction _
Generic SalesforceAction _
Show SalesforceAction
Decode SalesforceAction
Encode SalesforceAction
```

#### `newSalesforceAction`

``` purescript
newSalesforceAction :: SalesforceToken -> SalesforceEndpoint -> SalesforceAction
```

Constructs SalesforceAction from required parameters

#### `newSalesforceAction'`

``` purescript
newSalesforceAction' :: SalesforceToken -> SalesforceEndpoint -> ({ token :: SalesforceToken, url :: SalesforceEndpoint } -> { token :: SalesforceToken, url :: SalesforceEndpoint }) -> SalesforceAction
```

Constructs SalesforceAction's fields from required parameters

#### `SalesforceEndpoint`

``` purescript
newtype SalesforceEndpoint
  = SalesforceEndpoint String
```

##### Instances
``` purescript
Newtype SalesforceEndpoint _
Generic SalesforceEndpoint _
Show SalesforceEndpoint
Decode SalesforceEndpoint
Encode SalesforceEndpoint
```

#### `SalesforceToken`

``` purescript
newtype SalesforceToken
  = SalesforceToken String
```

##### Instances
``` purescript
Newtype SalesforceToken _
Generic SalesforceToken _
Show SalesforceToken
Decode SalesforceToken
Encode SalesforceToken
```

#### `SearchIndexRequest`

``` purescript
newtype SearchIndexRequest
  = SearchIndexRequest { indexName :: NullOrUndefined (IndexName), queryString :: QueryString, nextToken :: NullOrUndefined (NextToken), maxResults :: NullOrUndefined (QueryMaxResults), queryVersion :: NullOrUndefined (QueryVersion) }
```

##### Instances
``` purescript
Newtype SearchIndexRequest _
Generic SearchIndexRequest _
Show SearchIndexRequest
Decode SearchIndexRequest
Encode SearchIndexRequest
```

#### `newSearchIndexRequest`

``` purescript
newSearchIndexRequest :: QueryString -> SearchIndexRequest
```

Constructs SearchIndexRequest from required parameters

#### `newSearchIndexRequest'`

``` purescript
newSearchIndexRequest' :: QueryString -> ({ indexName :: NullOrUndefined (IndexName), queryString :: QueryString, nextToken :: NullOrUndefined (NextToken), maxResults :: NullOrUndefined (QueryMaxResults), queryVersion :: NullOrUndefined (QueryVersion) } -> { indexName :: NullOrUndefined (IndexName), queryString :: QueryString, nextToken :: NullOrUndefined (NextToken), maxResults :: NullOrUndefined (QueryMaxResults), queryVersion :: NullOrUndefined (QueryVersion) }) -> SearchIndexRequest
```

Constructs SearchIndexRequest's fields from required parameters

#### `SearchIndexResponse`

``` purescript
newtype SearchIndexResponse
  = SearchIndexResponse { nextToken :: NullOrUndefined (NextToken), things :: NullOrUndefined (ThingDocumentList) }
```

##### Instances
``` purescript
Newtype SearchIndexResponse _
Generic SearchIndexResponse _
Show SearchIndexResponse
Decode SearchIndexResponse
Encode SearchIndexResponse
```

#### `newSearchIndexResponse`

``` purescript
newSearchIndexResponse :: SearchIndexResponse
```

Constructs SearchIndexResponse from required parameters

#### `newSearchIndexResponse'`

``` purescript
newSearchIndexResponse' :: ({ nextToken :: NullOrUndefined (NextToken), things :: NullOrUndefined (ThingDocumentList) } -> { nextToken :: NullOrUndefined (NextToken), things :: NullOrUndefined (ThingDocumentList) }) -> SearchIndexResponse
```

Constructs SearchIndexResponse's fields from required parameters

#### `SearchableAttributes`

``` purescript
newtype SearchableAttributes
  = SearchableAttributes (Array AttributeName)
```

##### Instances
``` purescript
Newtype SearchableAttributes _
Generic SearchableAttributes _
Show SearchableAttributes
Decode SearchableAttributes
Encode SearchableAttributes
```

#### `Seconds`

``` purescript
newtype Seconds
  = Seconds Int
```

##### Instances
``` purescript
Newtype Seconds _
Generic Seconds _
Show Seconds
Decode Seconds
Encode Seconds
```

#### `ServiceUnavailableException`

``` purescript
newtype ServiceUnavailableException
  = ServiceUnavailableException { message :: NullOrUndefined (ErrorMessage') }
```

<p>The service is temporarily unavailable.</p>

##### Instances
``` purescript
Newtype ServiceUnavailableException _
Generic ServiceUnavailableException _
Show ServiceUnavailableException
Decode ServiceUnavailableException
Encode ServiceUnavailableException
```

#### `newServiceUnavailableException`

``` purescript
newServiceUnavailableException :: ServiceUnavailableException
```

Constructs ServiceUnavailableException from required parameters

#### `newServiceUnavailableException'`

``` purescript
newServiceUnavailableException' :: ({ message :: NullOrUndefined (ErrorMessage') } -> { message :: NullOrUndefined (ErrorMessage') }) -> ServiceUnavailableException
```

Constructs ServiceUnavailableException's fields from required parameters

#### `SetAsActive`

``` purescript
newtype SetAsActive
  = SetAsActive Boolean
```

##### Instances
``` purescript
Newtype SetAsActive _
Generic SetAsActive _
Show SetAsActive
Decode SetAsActive
Encode SetAsActive
```

#### `SetAsActiveFlag`

``` purescript
newtype SetAsActiveFlag
  = SetAsActiveFlag Boolean
```

##### Instances
``` purescript
Newtype SetAsActiveFlag _
Generic SetAsActiveFlag _
Show SetAsActiveFlag
Decode SetAsActiveFlag
Encode SetAsActiveFlag
```

#### `SetAsDefault`

``` purescript
newtype SetAsDefault
  = SetAsDefault Boolean
```

##### Instances
``` purescript
Newtype SetAsDefault _
Generic SetAsDefault _
Show SetAsDefault
Decode SetAsDefault
Encode SetAsDefault
```

#### `SetDefaultAuthorizerRequest`

``` purescript
newtype SetDefaultAuthorizerRequest
  = SetDefaultAuthorizerRequest { authorizerName :: AuthorizerName }
```

##### Instances
``` purescript
Newtype SetDefaultAuthorizerRequest _
Generic SetDefaultAuthorizerRequest _
Show SetDefaultAuthorizerRequest
Decode SetDefaultAuthorizerRequest
Encode SetDefaultAuthorizerRequest
```

#### `newSetDefaultAuthorizerRequest`

``` purescript
newSetDefaultAuthorizerRequest :: AuthorizerName -> SetDefaultAuthorizerRequest
```

Constructs SetDefaultAuthorizerRequest from required parameters

#### `newSetDefaultAuthorizerRequest'`

``` purescript
newSetDefaultAuthorizerRequest' :: AuthorizerName -> ({ authorizerName :: AuthorizerName } -> { authorizerName :: AuthorizerName }) -> SetDefaultAuthorizerRequest
```

Constructs SetDefaultAuthorizerRequest's fields from required parameters

#### `SetDefaultAuthorizerResponse`

``` purescript
newtype SetDefaultAuthorizerResponse
  = SetDefaultAuthorizerResponse { authorizerName :: NullOrUndefined (AuthorizerName), authorizerArn :: NullOrUndefined (AuthorizerArn) }
```

##### Instances
``` purescript
Newtype SetDefaultAuthorizerResponse _
Generic SetDefaultAuthorizerResponse _
Show SetDefaultAuthorizerResponse
Decode SetDefaultAuthorizerResponse
Encode SetDefaultAuthorizerResponse
```

#### `newSetDefaultAuthorizerResponse`

``` purescript
newSetDefaultAuthorizerResponse :: SetDefaultAuthorizerResponse
```

Constructs SetDefaultAuthorizerResponse from required parameters

#### `newSetDefaultAuthorizerResponse'`

``` purescript
newSetDefaultAuthorizerResponse' :: ({ authorizerName :: NullOrUndefined (AuthorizerName), authorizerArn :: NullOrUndefined (AuthorizerArn) } -> { authorizerName :: NullOrUndefined (AuthorizerName), authorizerArn :: NullOrUndefined (AuthorizerArn) }) -> SetDefaultAuthorizerResponse
```

Constructs SetDefaultAuthorizerResponse's fields from required parameters

#### `SetDefaultPolicyVersionRequest`

``` purescript
newtype SetDefaultPolicyVersionRequest
  = SetDefaultPolicyVersionRequest { policyName :: PolicyName, policyVersionId :: PolicyVersionId }
```

<p>The input for the SetDefaultPolicyVersion operation.</p>

##### Instances
``` purescript
Newtype SetDefaultPolicyVersionRequest _
Generic SetDefaultPolicyVersionRequest _
Show SetDefaultPolicyVersionRequest
Decode SetDefaultPolicyVersionRequest
Encode SetDefaultPolicyVersionRequest
```

#### `newSetDefaultPolicyVersionRequest`

``` purescript
newSetDefaultPolicyVersionRequest :: PolicyName -> PolicyVersionId -> SetDefaultPolicyVersionRequest
```

Constructs SetDefaultPolicyVersionRequest from required parameters

#### `newSetDefaultPolicyVersionRequest'`

``` purescript
newSetDefaultPolicyVersionRequest' :: PolicyName -> PolicyVersionId -> ({ policyName :: PolicyName, policyVersionId :: PolicyVersionId } -> { policyName :: PolicyName, policyVersionId :: PolicyVersionId }) -> SetDefaultPolicyVersionRequest
```

Constructs SetDefaultPolicyVersionRequest's fields from required parameters

#### `SetLoggingOptionsRequest`

``` purescript
newtype SetLoggingOptionsRequest
  = SetLoggingOptionsRequest { loggingOptionsPayload :: LoggingOptionsPayload }
```

<p>The input for the SetLoggingOptions operation.</p>

##### Instances
``` purescript
Newtype SetLoggingOptionsRequest _
Generic SetLoggingOptionsRequest _
Show SetLoggingOptionsRequest
Decode SetLoggingOptionsRequest
Encode SetLoggingOptionsRequest
```

#### `newSetLoggingOptionsRequest`

``` purescript
newSetLoggingOptionsRequest :: LoggingOptionsPayload -> SetLoggingOptionsRequest
```

Constructs SetLoggingOptionsRequest from required parameters

#### `newSetLoggingOptionsRequest'`

``` purescript
newSetLoggingOptionsRequest' :: LoggingOptionsPayload -> ({ loggingOptionsPayload :: LoggingOptionsPayload } -> { loggingOptionsPayload :: LoggingOptionsPayload }) -> SetLoggingOptionsRequest
```

Constructs SetLoggingOptionsRequest's fields from required parameters

#### `SetV2LoggingLevelRequest`

``` purescript
newtype SetV2LoggingLevelRequest
  = SetV2LoggingLevelRequest { logTarget :: LogTarget, logLevel :: LogLevel }
```

##### Instances
``` purescript
Newtype SetV2LoggingLevelRequest _
Generic SetV2LoggingLevelRequest _
Show SetV2LoggingLevelRequest
Decode SetV2LoggingLevelRequest
Encode SetV2LoggingLevelRequest
```

#### `newSetV2LoggingLevelRequest`

``` purescript
newSetV2LoggingLevelRequest :: LogLevel -> LogTarget -> SetV2LoggingLevelRequest
```

Constructs SetV2LoggingLevelRequest from required parameters

#### `newSetV2LoggingLevelRequest'`

``` purescript
newSetV2LoggingLevelRequest' :: LogLevel -> LogTarget -> ({ logTarget :: LogTarget, logLevel :: LogLevel } -> { logTarget :: LogTarget, logLevel :: LogLevel }) -> SetV2LoggingLevelRequest
```

Constructs SetV2LoggingLevelRequest's fields from required parameters

#### `SetV2LoggingOptionsRequest`

``` purescript
newtype SetV2LoggingOptionsRequest
  = SetV2LoggingOptionsRequest { roleArn :: NullOrUndefined (AwsArn), defaultLogLevel :: NullOrUndefined (LogLevel), disableAllLogs :: NullOrUndefined (DisableAllLogs) }
```

##### Instances
``` purescript
Newtype SetV2LoggingOptionsRequest _
Generic SetV2LoggingOptionsRequest _
Show SetV2LoggingOptionsRequest
Decode SetV2LoggingOptionsRequest
Encode SetV2LoggingOptionsRequest
```

#### `newSetV2LoggingOptionsRequest`

``` purescript
newSetV2LoggingOptionsRequest :: SetV2LoggingOptionsRequest
```

Constructs SetV2LoggingOptionsRequest from required parameters

#### `newSetV2LoggingOptionsRequest'`

``` purescript
newSetV2LoggingOptionsRequest' :: ({ roleArn :: NullOrUndefined (AwsArn), defaultLogLevel :: NullOrUndefined (LogLevel), disableAllLogs :: NullOrUndefined (DisableAllLogs) } -> { roleArn :: NullOrUndefined (AwsArn), defaultLogLevel :: NullOrUndefined (LogLevel), disableAllLogs :: NullOrUndefined (DisableAllLogs) }) -> SetV2LoggingOptionsRequest
```

Constructs SetV2LoggingOptionsRequest's fields from required parameters

#### `Signature`

``` purescript
newtype Signature
  = Signature String
```

##### Instances
``` purescript
Newtype Signature _
Generic Signature _
Show Signature
Decode Signature
Encode Signature
```

#### `SignatureAlgorithm`

``` purescript
newtype SignatureAlgorithm
  = SignatureAlgorithm String
```

##### Instances
``` purescript
Newtype SignatureAlgorithm _
Generic SignatureAlgorithm _
Show SignatureAlgorithm
Decode SignatureAlgorithm
Encode SignatureAlgorithm
```

#### `SigningJobId`

``` purescript
newtype SigningJobId
  = SigningJobId String
```

##### Instances
``` purescript
Newtype SigningJobId _
Generic SigningJobId _
Show SigningJobId
Decode SigningJobId
Encode SigningJobId
```

#### `SkyfallMaxResults`

``` purescript
newtype SkyfallMaxResults
  = SkyfallMaxResults Int
```

##### Instances
``` purescript
Newtype SkyfallMaxResults _
Generic SkyfallMaxResults _
Show SkyfallMaxResults
Decode SkyfallMaxResults
Encode SkyfallMaxResults
```

#### `SnsAction`

``` purescript
newtype SnsAction
  = SnsAction { targetArn :: AwsArn, roleArn :: AwsArn, messageFormat :: NullOrUndefined (MessageFormat) }
```

<p>Describes an action to publish to an Amazon SNS topic.</p>

##### Instances
``` purescript
Newtype SnsAction _
Generic SnsAction _
Show SnsAction
Decode SnsAction
Encode SnsAction
```

#### `newSnsAction`

``` purescript
newSnsAction :: AwsArn -> AwsArn -> SnsAction
```

Constructs SnsAction from required parameters

#### `newSnsAction'`

``` purescript
newSnsAction' :: AwsArn -> AwsArn -> ({ targetArn :: AwsArn, roleArn :: AwsArn, messageFormat :: NullOrUndefined (MessageFormat) } -> { targetArn :: AwsArn, roleArn :: AwsArn, messageFormat :: NullOrUndefined (MessageFormat) }) -> SnsAction
```

Constructs SnsAction's fields from required parameters

#### `SqlParseException`

``` purescript
newtype SqlParseException
  = SqlParseException { message :: NullOrUndefined (ErrorMessage') }
```

<p>The Rule-SQL expression can't be parsed correctly.</p>

##### Instances
``` purescript
Newtype SqlParseException _
Generic SqlParseException _
Show SqlParseException
Decode SqlParseException
Encode SqlParseException
```

#### `newSqlParseException`

``` purescript
newSqlParseException :: SqlParseException
```

Constructs SqlParseException from required parameters

#### `newSqlParseException'`

``` purescript
newSqlParseException' :: ({ message :: NullOrUndefined (ErrorMessage') } -> { message :: NullOrUndefined (ErrorMessage') }) -> SqlParseException
```

Constructs SqlParseException's fields from required parameters

#### `SqsAction`

``` purescript
newtype SqsAction
  = SqsAction { roleArn :: AwsArn, queueUrl :: QueueUrl, useBase64 :: NullOrUndefined (UseBase64) }
```

<p>Describes an action to publish data to an Amazon SQS queue.</p>

##### Instances
``` purescript
Newtype SqsAction _
Generic SqsAction _
Show SqsAction
Decode SqsAction
Encode SqsAction
```

#### `newSqsAction`

``` purescript
newSqsAction :: QueueUrl -> AwsArn -> SqsAction
```

Constructs SqsAction from required parameters

#### `newSqsAction'`

``` purescript
newSqsAction' :: QueueUrl -> AwsArn -> ({ roleArn :: AwsArn, queueUrl :: QueueUrl, useBase64 :: NullOrUndefined (UseBase64) } -> { roleArn :: AwsArn, queueUrl :: QueueUrl, useBase64 :: NullOrUndefined (UseBase64) }) -> SqsAction
```

Constructs SqsAction's fields from required parameters

#### `StartThingRegistrationTaskRequest`

``` purescript
newtype StartThingRegistrationTaskRequest
  = StartThingRegistrationTaskRequest { templateBody :: TemplateBody, inputFileBucket :: RegistryS3BucketName, inputFileKey :: RegistryS3KeyName, roleArn :: RoleArn }
```

##### Instances
``` purescript
Newtype StartThingRegistrationTaskRequest _
Generic StartThingRegistrationTaskRequest _
Show StartThingRegistrationTaskRequest
Decode StartThingRegistrationTaskRequest
Encode StartThingRegistrationTaskRequest
```

#### `newStartThingRegistrationTaskRequest`

``` purescript
newStartThingRegistrationTaskRequest :: RegistryS3BucketName -> RegistryS3KeyName -> RoleArn -> TemplateBody -> StartThingRegistrationTaskRequest
```

Constructs StartThingRegistrationTaskRequest from required parameters

#### `newStartThingRegistrationTaskRequest'`

``` purescript
newStartThingRegistrationTaskRequest' :: RegistryS3BucketName -> RegistryS3KeyName -> RoleArn -> TemplateBody -> ({ templateBody :: TemplateBody, inputFileBucket :: RegistryS3BucketName, inputFileKey :: RegistryS3KeyName, roleArn :: RoleArn } -> { templateBody :: TemplateBody, inputFileBucket :: RegistryS3BucketName, inputFileKey :: RegistryS3KeyName, roleArn :: RoleArn }) -> StartThingRegistrationTaskRequest
```

Constructs StartThingRegistrationTaskRequest's fields from required parameters

#### `StartThingRegistrationTaskResponse`

``` purescript
newtype StartThingRegistrationTaskResponse
  = StartThingRegistrationTaskResponse { taskId :: NullOrUndefined (TaskId) }
```

##### Instances
``` purescript
Newtype StartThingRegistrationTaskResponse _
Generic StartThingRegistrationTaskResponse _
Show StartThingRegistrationTaskResponse
Decode StartThingRegistrationTaskResponse
Encode StartThingRegistrationTaskResponse
```

#### `newStartThingRegistrationTaskResponse`

``` purescript
newStartThingRegistrationTaskResponse :: StartThingRegistrationTaskResponse
```

Constructs StartThingRegistrationTaskResponse from required parameters

#### `newStartThingRegistrationTaskResponse'`

``` purescript
newStartThingRegistrationTaskResponse' :: ({ taskId :: NullOrUndefined (TaskId) } -> { taskId :: NullOrUndefined (TaskId) }) -> StartThingRegistrationTaskResponse
```

Constructs StartThingRegistrationTaskResponse's fields from required parameters

#### `StateReason`

``` purescript
newtype StateReason
  = StateReason String
```

##### Instances
``` purescript
Newtype StateReason _
Generic StateReason _
Show StateReason
Decode StateReason
Encode StateReason
```

#### `StateValue`

``` purescript
newtype StateValue
  = StateValue String
```

##### Instances
``` purescript
Newtype StateValue _
Generic StateValue _
Show StateValue
Decode StateValue
Encode StateValue
```

#### `Status`

``` purescript
newtype Status
  = Status String
```

##### Instances
``` purescript
Newtype Status _
Generic Status _
Show Status
Decode Status
Encode Status
```

#### `StopThingRegistrationTaskRequest`

``` purescript
newtype StopThingRegistrationTaskRequest
  = StopThingRegistrationTaskRequest { taskId :: TaskId }
```

##### Instances
``` purescript
Newtype StopThingRegistrationTaskRequest _
Generic StopThingRegistrationTaskRequest _
Show StopThingRegistrationTaskRequest
Decode StopThingRegistrationTaskRequest
Encode StopThingRegistrationTaskRequest
```

#### `newStopThingRegistrationTaskRequest`

``` purescript
newStopThingRegistrationTaskRequest :: TaskId -> StopThingRegistrationTaskRequest
```

Constructs StopThingRegistrationTaskRequest from required parameters

#### `newStopThingRegistrationTaskRequest'`

``` purescript
newStopThingRegistrationTaskRequest' :: TaskId -> ({ taskId :: TaskId } -> { taskId :: TaskId }) -> StopThingRegistrationTaskRequest
```

Constructs StopThingRegistrationTaskRequest's fields from required parameters

#### `StopThingRegistrationTaskResponse`

``` purescript
newtype StopThingRegistrationTaskResponse
  = StopThingRegistrationTaskResponse NoArguments
```

##### Instances
``` purescript
Newtype StopThingRegistrationTaskResponse _
Generic StopThingRegistrationTaskResponse _
Show StopThingRegistrationTaskResponse
Decode StopThingRegistrationTaskResponse
Encode StopThingRegistrationTaskResponse
```

#### `Stream`

``` purescript
newtype Stream
  = Stream { streamId :: NullOrUndefined (StreamId), fileId :: NullOrUndefined (FileId) }
```

<p>Describes a group of files that can be streamed.</p>

##### Instances
``` purescript
Newtype Stream _
Generic Stream _
Show Stream
Decode Stream
Encode Stream
```

#### `newStream`

``` purescript
newStream :: Stream
```

Constructs Stream from required parameters

#### `newStream'`

``` purescript
newStream' :: ({ streamId :: NullOrUndefined (StreamId), fileId :: NullOrUndefined (FileId) } -> { streamId :: NullOrUndefined (StreamId), fileId :: NullOrUndefined (FileId) }) -> Stream
```

Constructs Stream's fields from required parameters

#### `StreamArn`

``` purescript
newtype StreamArn
  = StreamArn String
```

##### Instances
``` purescript
Newtype StreamArn _
Generic StreamArn _
Show StreamArn
Decode StreamArn
Encode StreamArn
```

#### `StreamDescription`

``` purescript
newtype StreamDescription
  = StreamDescription String
```

##### Instances
``` purescript
Newtype StreamDescription _
Generic StreamDescription _
Show StreamDescription
Decode StreamDescription
Encode StreamDescription
```

#### `StreamFile`

``` purescript
newtype StreamFile
  = StreamFile { fileId :: NullOrUndefined (FileId), s3Location :: NullOrUndefined (S3Location) }
```

<p>Represents a file to stream.</p>

##### Instances
``` purescript
Newtype StreamFile _
Generic StreamFile _
Show StreamFile
Decode StreamFile
Encode StreamFile
```

#### `newStreamFile`

``` purescript
newStreamFile :: StreamFile
```

Constructs StreamFile from required parameters

#### `newStreamFile'`

``` purescript
newStreamFile' :: ({ fileId :: NullOrUndefined (FileId), s3Location :: NullOrUndefined (S3Location) } -> { fileId :: NullOrUndefined (FileId), s3Location :: NullOrUndefined (S3Location) }) -> StreamFile
```

Constructs StreamFile's fields from required parameters

#### `StreamFiles`

``` purescript
newtype StreamFiles
  = StreamFiles (Array StreamFile)
```

##### Instances
``` purescript
Newtype StreamFiles _
Generic StreamFiles _
Show StreamFiles
Decode StreamFiles
Encode StreamFiles
```

#### `StreamId`

``` purescript
newtype StreamId
  = StreamId String
```

##### Instances
``` purescript
Newtype StreamId _
Generic StreamId _
Show StreamId
Decode StreamId
Encode StreamId
```

#### `StreamInfo`

``` purescript
newtype StreamInfo
  = StreamInfo { streamId :: NullOrUndefined (StreamId), streamArn :: NullOrUndefined (StreamArn), streamVersion :: NullOrUndefined (StreamVersion), description :: NullOrUndefined (StreamDescription), files :: NullOrUndefined (StreamFiles), createdAt :: NullOrUndefined (DateType), lastUpdatedAt :: NullOrUndefined (DateType), roleArn :: NullOrUndefined (RoleArn) }
```

<p>Information about a stream.</p>

##### Instances
``` purescript
Newtype StreamInfo _
Generic StreamInfo _
Show StreamInfo
Decode StreamInfo
Encode StreamInfo
```

#### `newStreamInfo`

``` purescript
newStreamInfo :: StreamInfo
```

Constructs StreamInfo from required parameters

#### `newStreamInfo'`

``` purescript
newStreamInfo' :: ({ streamId :: NullOrUndefined (StreamId), streamArn :: NullOrUndefined (StreamArn), streamVersion :: NullOrUndefined (StreamVersion), description :: NullOrUndefined (StreamDescription), files :: NullOrUndefined (StreamFiles), createdAt :: NullOrUndefined (DateType), lastUpdatedAt :: NullOrUndefined (DateType), roleArn :: NullOrUndefined (RoleArn) } -> { streamId :: NullOrUndefined (StreamId), streamArn :: NullOrUndefined (StreamArn), streamVersion :: NullOrUndefined (StreamVersion), description :: NullOrUndefined (StreamDescription), files :: NullOrUndefined (StreamFiles), createdAt :: NullOrUndefined (DateType), lastUpdatedAt :: NullOrUndefined (DateType), roleArn :: NullOrUndefined (RoleArn) }) -> StreamInfo
```

Constructs StreamInfo's fields from required parameters

#### `StreamName`

``` purescript
newtype StreamName
  = StreamName String
```

##### Instances
``` purescript
Newtype StreamName _
Generic StreamName _
Show StreamName
Decode StreamName
Encode StreamName
```

#### `StreamSummary`

``` purescript
newtype StreamSummary
  = StreamSummary { streamId :: NullOrUndefined (StreamId), streamArn :: NullOrUndefined (StreamArn), streamVersion :: NullOrUndefined (StreamVersion), description :: NullOrUndefined (StreamDescription) }
```

<p>A summary of a stream.</p>

##### Instances
``` purescript
Newtype StreamSummary _
Generic StreamSummary _
Show StreamSummary
Decode StreamSummary
Encode StreamSummary
```

#### `newStreamSummary`

``` purescript
newStreamSummary :: StreamSummary
```

Constructs StreamSummary from required parameters

#### `newStreamSummary'`

``` purescript
newStreamSummary' :: ({ streamId :: NullOrUndefined (StreamId), streamArn :: NullOrUndefined (StreamArn), streamVersion :: NullOrUndefined (StreamVersion), description :: NullOrUndefined (StreamDescription) } -> { streamId :: NullOrUndefined (StreamId), streamArn :: NullOrUndefined (StreamArn), streamVersion :: NullOrUndefined (StreamVersion), description :: NullOrUndefined (StreamDescription) }) -> StreamSummary
```

Constructs StreamSummary's fields from required parameters

#### `StreamVersion`

``` purescript
newtype StreamVersion
  = StreamVersion Int
```

##### Instances
``` purescript
Newtype StreamVersion _
Generic StreamVersion _
Show StreamVersion
Decode StreamVersion
Encode StreamVersion
```

#### `StreamsSummary`

``` purescript
newtype StreamsSummary
  = StreamsSummary (Array StreamSummary)
```

##### Instances
``` purescript
Newtype StreamsSummary _
Generic StreamsSummary _
Show StreamsSummary
Decode StreamsSummary
Encode StreamsSummary
```

#### `SucceededThings`

``` purescript
newtype SucceededThings
  = SucceededThings Int
```

##### Instances
``` purescript
Newtype SucceededThings _
Generic SucceededThings _
Show SucceededThings
Decode SucceededThings
Encode SucceededThings
```

#### `TableName`

``` purescript
newtype TableName
  = TableName String
```

##### Instances
``` purescript
Newtype TableName _
Generic TableName _
Show TableName
Decode TableName
Encode TableName
```

#### `Target`

``` purescript
newtype Target
  = Target String
```

##### Instances
``` purescript
Newtype Target _
Generic Target _
Show Target
Decode Target
Encode Target
```

#### `TargetArn`

``` purescript
newtype TargetArn
  = TargetArn String
```

##### Instances
``` purescript
Newtype TargetArn _
Generic TargetArn _
Show TargetArn
Decode TargetArn
Encode TargetArn
```

#### `TargetSelection`

``` purescript
newtype TargetSelection
  = TargetSelection String
```

##### Instances
``` purescript
Newtype TargetSelection _
Generic TargetSelection _
Show TargetSelection
Decode TargetSelection
Encode TargetSelection
```

#### `Targets`

``` purescript
newtype Targets
  = Targets (Array Target)
```

##### Instances
``` purescript
Newtype Targets _
Generic Targets _
Show Targets
Decode Targets
Encode Targets
```

#### `TaskId`

``` purescript
newtype TaskId
  = TaskId String
```

##### Instances
``` purescript
Newtype TaskId _
Generic TaskId _
Show TaskId
Decode TaskId
Encode TaskId
```

#### `TaskIdList`

``` purescript
newtype TaskIdList
  = TaskIdList (Array TaskId)
```

##### Instances
``` purescript
Newtype TaskIdList _
Generic TaskIdList _
Show TaskIdList
Decode TaskIdList
Encode TaskIdList
```

#### `TemplateBody`

``` purescript
newtype TemplateBody
  = TemplateBody String
```

##### Instances
``` purescript
Newtype TemplateBody _
Generic TemplateBody _
Show TemplateBody
Decode TemplateBody
Encode TemplateBody
```

#### `TestAuthorizationRequest`

``` purescript
newtype TestAuthorizationRequest
  = TestAuthorizationRequest { principal :: NullOrUndefined (Principal), cognitoIdentityPoolId :: NullOrUndefined (CognitoIdentityPoolId), authInfos :: AuthInfos, clientId :: NullOrUndefined (ClientId), policyNamesToAdd :: NullOrUndefined (PolicyNames), policyNamesToSkip :: NullOrUndefined (PolicyNames) }
```

##### Instances
``` purescript
Newtype TestAuthorizationRequest _
Generic TestAuthorizationRequest _
Show TestAuthorizationRequest
Decode TestAuthorizationRequest
Encode TestAuthorizationRequest
```

#### `newTestAuthorizationRequest`

``` purescript
newTestAuthorizationRequest :: AuthInfos -> TestAuthorizationRequest
```

Constructs TestAuthorizationRequest from required parameters

#### `newTestAuthorizationRequest'`

``` purescript
newTestAuthorizationRequest' :: AuthInfos -> ({ principal :: NullOrUndefined (Principal), cognitoIdentityPoolId :: NullOrUndefined (CognitoIdentityPoolId), authInfos :: AuthInfos, clientId :: NullOrUndefined (ClientId), policyNamesToAdd :: NullOrUndefined (PolicyNames), policyNamesToSkip :: NullOrUndefined (PolicyNames) } -> { principal :: NullOrUndefined (Principal), cognitoIdentityPoolId :: NullOrUndefined (CognitoIdentityPoolId), authInfos :: AuthInfos, clientId :: NullOrUndefined (ClientId), policyNamesToAdd :: NullOrUndefined (PolicyNames), policyNamesToSkip :: NullOrUndefined (PolicyNames) }) -> TestAuthorizationRequest
```

Constructs TestAuthorizationRequest's fields from required parameters

#### `TestAuthorizationResponse`

``` purescript
newtype TestAuthorizationResponse
  = TestAuthorizationResponse { authResults :: NullOrUndefined (AuthResults) }
```

##### Instances
``` purescript
Newtype TestAuthorizationResponse _
Generic TestAuthorizationResponse _
Show TestAuthorizationResponse
Decode TestAuthorizationResponse
Encode TestAuthorizationResponse
```

#### `newTestAuthorizationResponse`

``` purescript
newTestAuthorizationResponse :: TestAuthorizationResponse
```

Constructs TestAuthorizationResponse from required parameters

#### `newTestAuthorizationResponse'`

``` purescript
newTestAuthorizationResponse' :: ({ authResults :: NullOrUndefined (AuthResults) } -> { authResults :: NullOrUndefined (AuthResults) }) -> TestAuthorizationResponse
```

Constructs TestAuthorizationResponse's fields from required parameters

#### `TestInvokeAuthorizerRequest`

``` purescript
newtype TestInvokeAuthorizerRequest
  = TestInvokeAuthorizerRequest { authorizerName :: AuthorizerName, token :: Token, tokenSignature :: TokenSignature }
```

##### Instances
``` purescript
Newtype TestInvokeAuthorizerRequest _
Generic TestInvokeAuthorizerRequest _
Show TestInvokeAuthorizerRequest
Decode TestInvokeAuthorizerRequest
Encode TestInvokeAuthorizerRequest
```

#### `newTestInvokeAuthorizerRequest`

``` purescript
newTestInvokeAuthorizerRequest :: AuthorizerName -> Token -> TokenSignature -> TestInvokeAuthorizerRequest
```

Constructs TestInvokeAuthorizerRequest from required parameters

#### `newTestInvokeAuthorizerRequest'`

``` purescript
newTestInvokeAuthorizerRequest' :: AuthorizerName -> Token -> TokenSignature -> ({ authorizerName :: AuthorizerName, token :: Token, tokenSignature :: TokenSignature } -> { authorizerName :: AuthorizerName, token :: Token, tokenSignature :: TokenSignature }) -> TestInvokeAuthorizerRequest
```

Constructs TestInvokeAuthorizerRequest's fields from required parameters

#### `TestInvokeAuthorizerResponse`

``` purescript
newtype TestInvokeAuthorizerResponse
  = TestInvokeAuthorizerResponse { isAuthenticated :: NullOrUndefined (IsAuthenticated), principalId :: NullOrUndefined (PrincipalId), policyDocuments :: NullOrUndefined (PolicyDocuments), refreshAfterInSeconds :: NullOrUndefined (Seconds), disconnectAfterInSeconds :: NullOrUndefined (Seconds) }
```

##### Instances
``` purescript
Newtype TestInvokeAuthorizerResponse _
Generic TestInvokeAuthorizerResponse _
Show TestInvokeAuthorizerResponse
Decode TestInvokeAuthorizerResponse
Encode TestInvokeAuthorizerResponse
```

#### `newTestInvokeAuthorizerResponse`

``` purescript
newTestInvokeAuthorizerResponse :: TestInvokeAuthorizerResponse
```

Constructs TestInvokeAuthorizerResponse from required parameters

#### `newTestInvokeAuthorizerResponse'`

``` purescript
newTestInvokeAuthorizerResponse' :: ({ isAuthenticated :: NullOrUndefined (IsAuthenticated), principalId :: NullOrUndefined (PrincipalId), policyDocuments :: NullOrUndefined (PolicyDocuments), refreshAfterInSeconds :: NullOrUndefined (Seconds), disconnectAfterInSeconds :: NullOrUndefined (Seconds) } -> { isAuthenticated :: NullOrUndefined (IsAuthenticated), principalId :: NullOrUndefined (PrincipalId), policyDocuments :: NullOrUndefined (PolicyDocuments), refreshAfterInSeconds :: NullOrUndefined (Seconds), disconnectAfterInSeconds :: NullOrUndefined (Seconds) }) -> TestInvokeAuthorizerResponse
```

Constructs TestInvokeAuthorizerResponse's fields from required parameters

#### `ThingArn`

``` purescript
newtype ThingArn
  = ThingArn String
```

##### Instances
``` purescript
Newtype ThingArn _
Generic ThingArn _
Show ThingArn
Decode ThingArn
Encode ThingArn
```

#### `ThingAttribute`

``` purescript
newtype ThingAttribute
  = ThingAttribute { thingName :: NullOrUndefined (ThingName), thingTypeName :: NullOrUndefined (ThingTypeName), thingArn :: NullOrUndefined (ThingArn), attributes :: NullOrUndefined (Attributes), version :: NullOrUndefined (Version) }
```

<p>The properties of the thing, including thing name, thing type name, and a list of thing attributes.</p>

##### Instances
``` purescript
Newtype ThingAttribute _
Generic ThingAttribute _
Show ThingAttribute
Decode ThingAttribute
Encode ThingAttribute
```

#### `newThingAttribute`

``` purescript
newThingAttribute :: ThingAttribute
```

Constructs ThingAttribute from required parameters

#### `newThingAttribute'`

``` purescript
newThingAttribute' :: ({ thingName :: NullOrUndefined (ThingName), thingTypeName :: NullOrUndefined (ThingTypeName), thingArn :: NullOrUndefined (ThingArn), attributes :: NullOrUndefined (Attributes), version :: NullOrUndefined (Version) } -> { thingName :: NullOrUndefined (ThingName), thingTypeName :: NullOrUndefined (ThingTypeName), thingArn :: NullOrUndefined (ThingArn), attributes :: NullOrUndefined (Attributes), version :: NullOrUndefined (Version) }) -> ThingAttribute
```

Constructs ThingAttribute's fields from required parameters

#### `ThingAttributeList`

``` purescript
newtype ThingAttributeList
  = ThingAttributeList (Array ThingAttribute)
```

##### Instances
``` purescript
Newtype ThingAttributeList _
Generic ThingAttributeList _
Show ThingAttributeList
Decode ThingAttributeList
Encode ThingAttributeList
```

#### `ThingDocument`

``` purescript
newtype ThingDocument
  = ThingDocument { thingName :: NullOrUndefined (ThingName), thingId :: NullOrUndefined (ThingId), thingTypeName :: NullOrUndefined (ThingTypeName), thingGroupNames :: NullOrUndefined (ThingGroupNameList), attributes :: NullOrUndefined (Attributes), shadow :: NullOrUndefined (JsonDocument) }
```

<p>The thing search index document.</p>

##### Instances
``` purescript
Newtype ThingDocument _
Generic ThingDocument _
Show ThingDocument
Decode ThingDocument
Encode ThingDocument
```

#### `newThingDocument`

``` purescript
newThingDocument :: ThingDocument
```

Constructs ThingDocument from required parameters

#### `newThingDocument'`

``` purescript
newThingDocument' :: ({ thingName :: NullOrUndefined (ThingName), thingId :: NullOrUndefined (ThingId), thingTypeName :: NullOrUndefined (ThingTypeName), thingGroupNames :: NullOrUndefined (ThingGroupNameList), attributes :: NullOrUndefined (Attributes), shadow :: NullOrUndefined (JsonDocument) } -> { thingName :: NullOrUndefined (ThingName), thingId :: NullOrUndefined (ThingId), thingTypeName :: NullOrUndefined (ThingTypeName), thingGroupNames :: NullOrUndefined (ThingGroupNameList), attributes :: NullOrUndefined (Attributes), shadow :: NullOrUndefined (JsonDocument) }) -> ThingDocument
```

Constructs ThingDocument's fields from required parameters

#### `ThingDocumentList`

``` purescript
newtype ThingDocumentList
  = ThingDocumentList (Array ThingDocument)
```

##### Instances
``` purescript
Newtype ThingDocumentList _
Generic ThingDocumentList _
Show ThingDocumentList
Decode ThingDocumentList
Encode ThingDocumentList
```

#### `ThingGroupArn`

``` purescript
newtype ThingGroupArn
  = ThingGroupArn String
```

##### Instances
``` purescript
Newtype ThingGroupArn _
Generic ThingGroupArn _
Show ThingGroupArn
Decode ThingGroupArn
Encode ThingGroupArn
```

#### `ThingGroupDescription`

``` purescript
newtype ThingGroupDescription
  = ThingGroupDescription String
```

##### Instances
``` purescript
Newtype ThingGroupDescription _
Generic ThingGroupDescription _
Show ThingGroupDescription
Decode ThingGroupDescription
Encode ThingGroupDescription
```

#### `ThingGroupId`

``` purescript
newtype ThingGroupId
  = ThingGroupId String
```

##### Instances
``` purescript
Newtype ThingGroupId _
Generic ThingGroupId _
Show ThingGroupId
Decode ThingGroupId
Encode ThingGroupId
```

#### `ThingGroupList`

``` purescript
newtype ThingGroupList
  = ThingGroupList (Array ThingGroupName)
```

##### Instances
``` purescript
Newtype ThingGroupList _
Generic ThingGroupList _
Show ThingGroupList
Decode ThingGroupList
Encode ThingGroupList
```

#### `ThingGroupMetadata`

``` purescript
newtype ThingGroupMetadata
  = ThingGroupMetadata { parentGroupName :: NullOrUndefined (ThingGroupName), rootToParentThingGroups :: NullOrUndefined (ThingGroupNameAndArnList), creationDate :: NullOrUndefined (CreationDate) }
```

<p>Thing group metadata.</p>

##### Instances
``` purescript
Newtype ThingGroupMetadata _
Generic ThingGroupMetadata _
Show ThingGroupMetadata
Decode ThingGroupMetadata
Encode ThingGroupMetadata
```

#### `newThingGroupMetadata`

``` purescript
newThingGroupMetadata :: ThingGroupMetadata
```

Constructs ThingGroupMetadata from required parameters

#### `newThingGroupMetadata'`

``` purescript
newThingGroupMetadata' :: ({ parentGroupName :: NullOrUndefined (ThingGroupName), rootToParentThingGroups :: NullOrUndefined (ThingGroupNameAndArnList), creationDate :: NullOrUndefined (CreationDate) } -> { parentGroupName :: NullOrUndefined (ThingGroupName), rootToParentThingGroups :: NullOrUndefined (ThingGroupNameAndArnList), creationDate :: NullOrUndefined (CreationDate) }) -> ThingGroupMetadata
```

Constructs ThingGroupMetadata's fields from required parameters

#### `ThingGroupName`

``` purescript
newtype ThingGroupName
  = ThingGroupName String
```

##### Instances
``` purescript
Newtype ThingGroupName _
Generic ThingGroupName _
Show ThingGroupName
Decode ThingGroupName
Encode ThingGroupName
```

#### `ThingGroupNameAndArnList`

``` purescript
newtype ThingGroupNameAndArnList
  = ThingGroupNameAndArnList (Array GroupNameAndArn)
```

##### Instances
``` purescript
Newtype ThingGroupNameAndArnList _
Generic ThingGroupNameAndArnList _
Show ThingGroupNameAndArnList
Decode ThingGroupNameAndArnList
Encode ThingGroupNameAndArnList
```

#### `ThingGroupNameList`

``` purescript
newtype ThingGroupNameList
  = ThingGroupNameList (Array ThingGroupName)
```

##### Instances
``` purescript
Newtype ThingGroupNameList _
Generic ThingGroupNameList _
Show ThingGroupNameList
Decode ThingGroupNameList
Encode ThingGroupNameList
```

#### `ThingGroupProperties`

``` purescript
newtype ThingGroupProperties
  = ThingGroupProperties { thingGroupDescription :: NullOrUndefined (ThingGroupDescription), attributePayload :: NullOrUndefined (AttributePayload) }
```

<p>Thing group properties.</p>

##### Instances
``` purescript
Newtype ThingGroupProperties _
Generic ThingGroupProperties _
Show ThingGroupProperties
Decode ThingGroupProperties
Encode ThingGroupProperties
```

#### `newThingGroupProperties`

``` purescript
newThingGroupProperties :: ThingGroupProperties
```

Constructs ThingGroupProperties from required parameters

#### `newThingGroupProperties'`

``` purescript
newThingGroupProperties' :: ({ thingGroupDescription :: NullOrUndefined (ThingGroupDescription), attributePayload :: NullOrUndefined (AttributePayload) } -> { thingGroupDescription :: NullOrUndefined (ThingGroupDescription), attributePayload :: NullOrUndefined (AttributePayload) }) -> ThingGroupProperties
```

Constructs ThingGroupProperties's fields from required parameters

#### `ThingId`

``` purescript
newtype ThingId
  = ThingId String
```

##### Instances
``` purescript
Newtype ThingId _
Generic ThingId _
Show ThingId
Decode ThingId
Encode ThingId
```

#### `ThingIndexingConfiguration`

``` purescript
newtype ThingIndexingConfiguration
  = ThingIndexingConfiguration { thingIndexingMode :: NullOrUndefined (ThingIndexingMode) }
```

<p>Thing indexing configuration.</p>

##### Instances
``` purescript
Newtype ThingIndexingConfiguration _
Generic ThingIndexingConfiguration _
Show ThingIndexingConfiguration
Decode ThingIndexingConfiguration
Encode ThingIndexingConfiguration
```

#### `newThingIndexingConfiguration`

``` purescript
newThingIndexingConfiguration :: ThingIndexingConfiguration
```

Constructs ThingIndexingConfiguration from required parameters

#### `newThingIndexingConfiguration'`

``` purescript
newThingIndexingConfiguration' :: ({ thingIndexingMode :: NullOrUndefined (ThingIndexingMode) } -> { thingIndexingMode :: NullOrUndefined (ThingIndexingMode) }) -> ThingIndexingConfiguration
```

Constructs ThingIndexingConfiguration's fields from required parameters

#### `ThingIndexingMode`

``` purescript
newtype ThingIndexingMode
  = ThingIndexingMode String
```

##### Instances
``` purescript
Newtype ThingIndexingMode _
Generic ThingIndexingMode _
Show ThingIndexingMode
Decode ThingIndexingMode
Encode ThingIndexingMode
```

#### `ThingName`

``` purescript
newtype ThingName
  = ThingName String
```

##### Instances
``` purescript
Newtype ThingName _
Generic ThingName _
Show ThingName
Decode ThingName
Encode ThingName
```

#### `ThingNameList`

``` purescript
newtype ThingNameList
  = ThingNameList (Array ThingName)
```

##### Instances
``` purescript
Newtype ThingNameList _
Generic ThingNameList _
Show ThingNameList
Decode ThingNameList
Encode ThingNameList
```

#### `ThingTypeArn`

``` purescript
newtype ThingTypeArn
  = ThingTypeArn String
```

##### Instances
``` purescript
Newtype ThingTypeArn _
Generic ThingTypeArn _
Show ThingTypeArn
Decode ThingTypeArn
Encode ThingTypeArn
```

#### `ThingTypeDefinition`

``` purescript
newtype ThingTypeDefinition
  = ThingTypeDefinition { thingTypeName :: NullOrUndefined (ThingTypeName), thingTypeArn :: NullOrUndefined (ThingTypeArn), thingTypeProperties :: NullOrUndefined (ThingTypeProperties), thingTypeMetadata :: NullOrUndefined (ThingTypeMetadata) }
```

<p>The definition of the thing type, including thing type name and description.</p>

##### Instances
``` purescript
Newtype ThingTypeDefinition _
Generic ThingTypeDefinition _
Show ThingTypeDefinition
Decode ThingTypeDefinition
Encode ThingTypeDefinition
```

#### `newThingTypeDefinition`

``` purescript
newThingTypeDefinition :: ThingTypeDefinition
```

Constructs ThingTypeDefinition from required parameters

#### `newThingTypeDefinition'`

``` purescript
newThingTypeDefinition' :: ({ thingTypeName :: NullOrUndefined (ThingTypeName), thingTypeArn :: NullOrUndefined (ThingTypeArn), thingTypeProperties :: NullOrUndefined (ThingTypeProperties), thingTypeMetadata :: NullOrUndefined (ThingTypeMetadata) } -> { thingTypeName :: NullOrUndefined (ThingTypeName), thingTypeArn :: NullOrUndefined (ThingTypeArn), thingTypeProperties :: NullOrUndefined (ThingTypeProperties), thingTypeMetadata :: NullOrUndefined (ThingTypeMetadata) }) -> ThingTypeDefinition
```

Constructs ThingTypeDefinition's fields from required parameters

#### `ThingTypeDescription`

``` purescript
newtype ThingTypeDescription
  = ThingTypeDescription String
```

##### Instances
``` purescript
Newtype ThingTypeDescription _
Generic ThingTypeDescription _
Show ThingTypeDescription
Decode ThingTypeDescription
Encode ThingTypeDescription
```

#### `ThingTypeId`

``` purescript
newtype ThingTypeId
  = ThingTypeId String
```

##### Instances
``` purescript
Newtype ThingTypeId _
Generic ThingTypeId _
Show ThingTypeId
Decode ThingTypeId
Encode ThingTypeId
```

#### `ThingTypeList`

``` purescript
newtype ThingTypeList
  = ThingTypeList (Array ThingTypeDefinition)
```

##### Instances
``` purescript
Newtype ThingTypeList _
Generic ThingTypeList _
Show ThingTypeList
Decode ThingTypeList
Encode ThingTypeList
```

#### `ThingTypeMetadata`

``` purescript
newtype ThingTypeMetadata
  = ThingTypeMetadata { deprecated :: NullOrUndefined (Boolean), deprecationDate :: NullOrUndefined (DeprecationDate), creationDate :: NullOrUndefined (CreationDate) }
```

<p>The ThingTypeMetadata contains additional information about the thing type including: creation date and time, a value indicating whether the thing type is deprecated, and a date and time when time was deprecated.</p>

##### Instances
``` purescript
Newtype ThingTypeMetadata _
Generic ThingTypeMetadata _
Show ThingTypeMetadata
Decode ThingTypeMetadata
Encode ThingTypeMetadata
```

#### `newThingTypeMetadata`

``` purescript
newThingTypeMetadata :: ThingTypeMetadata
```

Constructs ThingTypeMetadata from required parameters

#### `newThingTypeMetadata'`

``` purescript
newThingTypeMetadata' :: ({ deprecated :: NullOrUndefined (Boolean), deprecationDate :: NullOrUndefined (DeprecationDate), creationDate :: NullOrUndefined (CreationDate) } -> { deprecated :: NullOrUndefined (Boolean), deprecationDate :: NullOrUndefined (DeprecationDate), creationDate :: NullOrUndefined (CreationDate) }) -> ThingTypeMetadata
```

Constructs ThingTypeMetadata's fields from required parameters

#### `ThingTypeName`

``` purescript
newtype ThingTypeName
  = ThingTypeName String
```

##### Instances
``` purescript
Newtype ThingTypeName _
Generic ThingTypeName _
Show ThingTypeName
Decode ThingTypeName
Encode ThingTypeName
```

#### `ThingTypeProperties`

``` purescript
newtype ThingTypeProperties
  = ThingTypeProperties { thingTypeDescription :: NullOrUndefined (ThingTypeDescription), searchableAttributes :: NullOrUndefined (SearchableAttributes) }
```

<p>The ThingTypeProperties contains information about the thing type including: a thing type description, and a list of searchable thing attribute names.</p>

##### Instances
``` purescript
Newtype ThingTypeProperties _
Generic ThingTypeProperties _
Show ThingTypeProperties
Decode ThingTypeProperties
Encode ThingTypeProperties
```

#### `newThingTypeProperties`

``` purescript
newThingTypeProperties :: ThingTypeProperties
```

Constructs ThingTypeProperties from required parameters

#### `newThingTypeProperties'`

``` purescript
newThingTypeProperties' :: ({ thingTypeDescription :: NullOrUndefined (ThingTypeDescription), searchableAttributes :: NullOrUndefined (SearchableAttributes) } -> { thingTypeDescription :: NullOrUndefined (ThingTypeDescription), searchableAttributes :: NullOrUndefined (SearchableAttributes) }) -> ThingTypeProperties
```

Constructs ThingTypeProperties's fields from required parameters

#### `ThrottlingException`

``` purescript
newtype ThrottlingException
  = ThrottlingException { message :: NullOrUndefined (ErrorMessage') }
```

<p>The rate exceeds the limit.</p>

##### Instances
``` purescript
Newtype ThrottlingException _
Generic ThrottlingException _
Show ThrottlingException
Decode ThrottlingException
Encode ThrottlingException
```

#### `newThrottlingException`

``` purescript
newThrottlingException :: ThrottlingException
```

Constructs ThrottlingException from required parameters

#### `newThrottlingException'`

``` purescript
newThrottlingException' :: ({ message :: NullOrUndefined (ErrorMessage') } -> { message :: NullOrUndefined (ErrorMessage') }) -> ThrottlingException
```

Constructs ThrottlingException's fields from required parameters

#### `Token`

``` purescript
newtype Token
  = Token String
```

##### Instances
``` purescript
Newtype Token _
Generic Token _
Show Token
Decode Token
Encode Token
```

#### `TokenKeyName`

``` purescript
newtype TokenKeyName
  = TokenKeyName String
```

##### Instances
``` purescript
Newtype TokenKeyName _
Generic TokenKeyName _
Show TokenKeyName
Decode TokenKeyName
Encode TokenKeyName
```

#### `TokenSignature`

``` purescript
newtype TokenSignature
  = TokenSignature String
```

##### Instances
``` purescript
Newtype TokenSignature _
Generic TokenSignature _
Show TokenSignature
Decode TokenSignature
Encode TokenSignature
```

#### `Topic`

``` purescript
newtype Topic
  = Topic String
```

##### Instances
``` purescript
Newtype Topic _
Generic Topic _
Show Topic
Decode Topic
Encode Topic
```

#### `TopicPattern`

``` purescript
newtype TopicPattern
  = TopicPattern String
```

##### Instances
``` purescript
Newtype TopicPattern _
Generic TopicPattern _
Show TopicPattern
Decode TopicPattern
Encode TopicPattern
```

#### `TopicRule`

``` purescript
newtype TopicRule
  = TopicRule { ruleName :: NullOrUndefined (RuleName), sql :: NullOrUndefined (SQL), description :: NullOrUndefined (Description), createdAt :: NullOrUndefined (CreatedAtDate), actions :: NullOrUndefined (ActionList), ruleDisabled :: NullOrUndefined (IsDisabled), awsIotSqlVersion :: NullOrUndefined (AwsIotSqlVersion), errorAction :: NullOrUndefined (Action) }
```

<p>Describes a rule.</p>

##### Instances
``` purescript
Newtype TopicRule _
Generic TopicRule _
Show TopicRule
Decode TopicRule
Encode TopicRule
```

#### `newTopicRule`

``` purescript
newTopicRule :: TopicRule
```

Constructs TopicRule from required parameters

#### `newTopicRule'`

``` purescript
newTopicRule' :: ({ ruleName :: NullOrUndefined (RuleName), sql :: NullOrUndefined (SQL), description :: NullOrUndefined (Description), createdAt :: NullOrUndefined (CreatedAtDate), actions :: NullOrUndefined (ActionList), ruleDisabled :: NullOrUndefined (IsDisabled), awsIotSqlVersion :: NullOrUndefined (AwsIotSqlVersion), errorAction :: NullOrUndefined (Action) } -> { ruleName :: NullOrUndefined (RuleName), sql :: NullOrUndefined (SQL), description :: NullOrUndefined (Description), createdAt :: NullOrUndefined (CreatedAtDate), actions :: NullOrUndefined (ActionList), ruleDisabled :: NullOrUndefined (IsDisabled), awsIotSqlVersion :: NullOrUndefined (AwsIotSqlVersion), errorAction :: NullOrUndefined (Action) }) -> TopicRule
```

Constructs TopicRule's fields from required parameters

#### `TopicRuleList`

``` purescript
newtype TopicRuleList
  = TopicRuleList (Array TopicRuleListItem)
```

##### Instances
``` purescript
Newtype TopicRuleList _
Generic TopicRuleList _
Show TopicRuleList
Decode TopicRuleList
Encode TopicRuleList
```

#### `TopicRuleListItem`

``` purescript
newtype TopicRuleListItem
  = TopicRuleListItem { ruleArn :: NullOrUndefined (RuleArn), ruleName :: NullOrUndefined (RuleName), topicPattern :: NullOrUndefined (TopicPattern), createdAt :: NullOrUndefined (CreatedAtDate), ruleDisabled :: NullOrUndefined (IsDisabled) }
```

<p>Describes a rule.</p>

##### Instances
``` purescript
Newtype TopicRuleListItem _
Generic TopicRuleListItem _
Show TopicRuleListItem
Decode TopicRuleListItem
Encode TopicRuleListItem
```

#### `newTopicRuleListItem`

``` purescript
newTopicRuleListItem :: TopicRuleListItem
```

Constructs TopicRuleListItem from required parameters

#### `newTopicRuleListItem'`

``` purescript
newTopicRuleListItem' :: ({ ruleArn :: NullOrUndefined (RuleArn), ruleName :: NullOrUndefined (RuleName), topicPattern :: NullOrUndefined (TopicPattern), createdAt :: NullOrUndefined (CreatedAtDate), ruleDisabled :: NullOrUndefined (IsDisabled) } -> { ruleArn :: NullOrUndefined (RuleArn), ruleName :: NullOrUndefined (RuleName), topicPattern :: NullOrUndefined (TopicPattern), createdAt :: NullOrUndefined (CreatedAtDate), ruleDisabled :: NullOrUndefined (IsDisabled) }) -> TopicRuleListItem
```

Constructs TopicRuleListItem's fields from required parameters

#### `TopicRulePayload`

``` purescript
newtype TopicRulePayload
  = TopicRulePayload { sql :: SQL, description :: NullOrUndefined (Description), actions :: ActionList, ruleDisabled :: NullOrUndefined (IsDisabled), awsIotSqlVersion :: NullOrUndefined (AwsIotSqlVersion), errorAction :: NullOrUndefined (Action) }
```

<p>Describes a rule.</p>

##### Instances
``` purescript
Newtype TopicRulePayload _
Generic TopicRulePayload _
Show TopicRulePayload
Decode TopicRulePayload
Encode TopicRulePayload
```

#### `newTopicRulePayload`

``` purescript
newTopicRulePayload :: ActionList -> SQL -> TopicRulePayload
```

Constructs TopicRulePayload from required parameters

#### `newTopicRulePayload'`

``` purescript
newTopicRulePayload' :: ActionList -> SQL -> ({ sql :: SQL, description :: NullOrUndefined (Description), actions :: ActionList, ruleDisabled :: NullOrUndefined (IsDisabled), awsIotSqlVersion :: NullOrUndefined (AwsIotSqlVersion), errorAction :: NullOrUndefined (Action) } -> { sql :: SQL, description :: NullOrUndefined (Description), actions :: ActionList, ruleDisabled :: NullOrUndefined (IsDisabled), awsIotSqlVersion :: NullOrUndefined (AwsIotSqlVersion), errorAction :: NullOrUndefined (Action) }) -> TopicRulePayload
```

Constructs TopicRulePayload's fields from required parameters

#### `TransferAlreadyCompletedException`

``` purescript
newtype TransferAlreadyCompletedException
  = TransferAlreadyCompletedException { message :: NullOrUndefined (ErrorMessage') }
```

<p>You can't revert the certificate transfer because the transfer is already complete.</p>

##### Instances
``` purescript
Newtype TransferAlreadyCompletedException _
Generic TransferAlreadyCompletedException _
Show TransferAlreadyCompletedException
Decode TransferAlreadyCompletedException
Encode TransferAlreadyCompletedException
```

#### `newTransferAlreadyCompletedException`

``` purescript
newTransferAlreadyCompletedException :: TransferAlreadyCompletedException
```

Constructs TransferAlreadyCompletedException from required parameters

#### `newTransferAlreadyCompletedException'`

``` purescript
newTransferAlreadyCompletedException' :: ({ message :: NullOrUndefined (ErrorMessage') } -> { message :: NullOrUndefined (ErrorMessage') }) -> TransferAlreadyCompletedException
```

Constructs TransferAlreadyCompletedException's fields from required parameters

#### `TransferCertificateRequest`

``` purescript
newtype TransferCertificateRequest
  = TransferCertificateRequest { certificateId :: CertificateId, targetAwsAccount :: AwsAccountId, transferMessage :: NullOrUndefined (Message) }
```

<p>The input for the TransferCertificate operation.</p>

##### Instances
``` purescript
Newtype TransferCertificateRequest _
Generic TransferCertificateRequest _
Show TransferCertificateRequest
Decode TransferCertificateRequest
Encode TransferCertificateRequest
```

#### `newTransferCertificateRequest`

``` purescript
newTransferCertificateRequest :: CertificateId -> AwsAccountId -> TransferCertificateRequest
```

Constructs TransferCertificateRequest from required parameters

#### `newTransferCertificateRequest'`

``` purescript
newTransferCertificateRequest' :: CertificateId -> AwsAccountId -> ({ certificateId :: CertificateId, targetAwsAccount :: AwsAccountId, transferMessage :: NullOrUndefined (Message) } -> { certificateId :: CertificateId, targetAwsAccount :: AwsAccountId, transferMessage :: NullOrUndefined (Message) }) -> TransferCertificateRequest
```

Constructs TransferCertificateRequest's fields from required parameters

#### `TransferCertificateResponse`

``` purescript
newtype TransferCertificateResponse
  = TransferCertificateResponse { transferredCertificateArn :: NullOrUndefined (CertificateArn) }
```

<p>The output from the TransferCertificate operation.</p>

##### Instances
``` purescript
Newtype TransferCertificateResponse _
Generic TransferCertificateResponse _
Show TransferCertificateResponse
Decode TransferCertificateResponse
Encode TransferCertificateResponse
```

#### `newTransferCertificateResponse`

``` purescript
newTransferCertificateResponse :: TransferCertificateResponse
```

Constructs TransferCertificateResponse from required parameters

#### `newTransferCertificateResponse'`

``` purescript
newTransferCertificateResponse' :: ({ transferredCertificateArn :: NullOrUndefined (CertificateArn) } -> { transferredCertificateArn :: NullOrUndefined (CertificateArn) }) -> TransferCertificateResponse
```

Constructs TransferCertificateResponse's fields from required parameters

#### `TransferConflictException`

``` purescript
newtype TransferConflictException
  = TransferConflictException { message :: NullOrUndefined (ErrorMessage') }
```

<p>You can't transfer the certificate because authorization policies are still attached.</p>

##### Instances
``` purescript
Newtype TransferConflictException _
Generic TransferConflictException _
Show TransferConflictException
Decode TransferConflictException
Encode TransferConflictException
```

#### `newTransferConflictException`

``` purescript
newTransferConflictException :: TransferConflictException
```

Constructs TransferConflictException from required parameters

#### `newTransferConflictException'`

``` purescript
newTransferConflictException' :: ({ message :: NullOrUndefined (ErrorMessage') } -> { message :: NullOrUndefined (ErrorMessage') }) -> TransferConflictException
```

Constructs TransferConflictException's fields from required parameters

#### `TransferData`

``` purescript
newtype TransferData
  = TransferData { transferMessage :: NullOrUndefined (Message), rejectReason :: NullOrUndefined (Message), transferDate :: NullOrUndefined (DateType), acceptDate :: NullOrUndefined (DateType), rejectDate :: NullOrUndefined (DateType) }
```

<p>Data used to transfer a certificate to an AWS account.</p>

##### Instances
``` purescript
Newtype TransferData _
Generic TransferData _
Show TransferData
Decode TransferData
Encode TransferData
```

#### `newTransferData`

``` purescript
newTransferData :: TransferData
```

Constructs TransferData from required parameters

#### `newTransferData'`

``` purescript
newTransferData' :: ({ transferMessage :: NullOrUndefined (Message), rejectReason :: NullOrUndefined (Message), transferDate :: NullOrUndefined (DateType), acceptDate :: NullOrUndefined (DateType), rejectDate :: NullOrUndefined (DateType) } -> { transferMessage :: NullOrUndefined (Message), rejectReason :: NullOrUndefined (Message), transferDate :: NullOrUndefined (DateType), acceptDate :: NullOrUndefined (DateType), rejectDate :: NullOrUndefined (DateType) }) -> TransferData
```

Constructs TransferData's fields from required parameters

#### `UnauthorizedException`

``` purescript
newtype UnauthorizedException
  = UnauthorizedException { message :: NullOrUndefined (ErrorMessage') }
```

<p>You are not authorized to perform this operation.</p>

##### Instances
``` purescript
Newtype UnauthorizedException _
Generic UnauthorizedException _
Show UnauthorizedException
Decode UnauthorizedException
Encode UnauthorizedException
```

#### `newUnauthorizedException`

``` purescript
newUnauthorizedException :: UnauthorizedException
```

Constructs UnauthorizedException from required parameters

#### `newUnauthorizedException'`

``` purescript
newUnauthorizedException' :: ({ message :: NullOrUndefined (ErrorMessage') } -> { message :: NullOrUndefined (ErrorMessage') }) -> UnauthorizedException
```

Constructs UnauthorizedException's fields from required parameters

#### `UndoDeprecate`

``` purescript
newtype UndoDeprecate
  = UndoDeprecate Boolean
```

##### Instances
``` purescript
Newtype UndoDeprecate _
Generic UndoDeprecate _
Show UndoDeprecate
Decode UndoDeprecate
Encode UndoDeprecate
```

#### `UpdateAuthorizerRequest`

``` purescript
newtype UpdateAuthorizerRequest
  = UpdateAuthorizerRequest { authorizerName :: AuthorizerName, authorizerFunctionArn :: NullOrUndefined (AuthorizerFunctionArn), tokenKeyName :: NullOrUndefined (TokenKeyName), tokenSigningPublicKeys :: NullOrUndefined (PublicKeyMap), status :: NullOrUndefined (AuthorizerStatus) }
```

##### Instances
``` purescript
Newtype UpdateAuthorizerRequest _
Generic UpdateAuthorizerRequest _
Show UpdateAuthorizerRequest
Decode UpdateAuthorizerRequest
Encode UpdateAuthorizerRequest
```

#### `newUpdateAuthorizerRequest`

``` purescript
newUpdateAuthorizerRequest :: AuthorizerName -> UpdateAuthorizerRequest
```

Constructs UpdateAuthorizerRequest from required parameters

#### `newUpdateAuthorizerRequest'`

``` purescript
newUpdateAuthorizerRequest' :: AuthorizerName -> ({ authorizerName :: AuthorizerName, authorizerFunctionArn :: NullOrUndefined (AuthorizerFunctionArn), tokenKeyName :: NullOrUndefined (TokenKeyName), tokenSigningPublicKeys :: NullOrUndefined (PublicKeyMap), status :: NullOrUndefined (AuthorizerStatus) } -> { authorizerName :: AuthorizerName, authorizerFunctionArn :: NullOrUndefined (AuthorizerFunctionArn), tokenKeyName :: NullOrUndefined (TokenKeyName), tokenSigningPublicKeys :: NullOrUndefined (PublicKeyMap), status :: NullOrUndefined (AuthorizerStatus) }) -> UpdateAuthorizerRequest
```

Constructs UpdateAuthorizerRequest's fields from required parameters

#### `UpdateAuthorizerResponse`

``` purescript
newtype UpdateAuthorizerResponse
  = UpdateAuthorizerResponse { authorizerName :: NullOrUndefined (AuthorizerName), authorizerArn :: NullOrUndefined (AuthorizerArn) }
```

##### Instances
``` purescript
Newtype UpdateAuthorizerResponse _
Generic UpdateAuthorizerResponse _
Show UpdateAuthorizerResponse
Decode UpdateAuthorizerResponse
Encode UpdateAuthorizerResponse
```

#### `newUpdateAuthorizerResponse`

``` purescript
newUpdateAuthorizerResponse :: UpdateAuthorizerResponse
```

Constructs UpdateAuthorizerResponse from required parameters

#### `newUpdateAuthorizerResponse'`

``` purescript
newUpdateAuthorizerResponse' :: ({ authorizerName :: NullOrUndefined (AuthorizerName), authorizerArn :: NullOrUndefined (AuthorizerArn) } -> { authorizerName :: NullOrUndefined (AuthorizerName), authorizerArn :: NullOrUndefined (AuthorizerArn) }) -> UpdateAuthorizerResponse
```

Constructs UpdateAuthorizerResponse's fields from required parameters

#### `UpdateCACertificateRequest`

``` purescript
newtype UpdateCACertificateRequest
  = UpdateCACertificateRequest { certificateId :: CertificateId, newStatus :: NullOrUndefined (CACertificateStatus), newAutoRegistrationStatus :: NullOrUndefined (AutoRegistrationStatus), registrationConfig :: NullOrUndefined (RegistrationConfig), removeAutoRegistration :: NullOrUndefined (RemoveAutoRegistration) }
```

<p>The input to the UpdateCACertificate operation.</p>

##### Instances
``` purescript
Newtype UpdateCACertificateRequest _
Generic UpdateCACertificateRequest _
Show UpdateCACertificateRequest
Decode UpdateCACertificateRequest
Encode UpdateCACertificateRequest
```

#### `newUpdateCACertificateRequest`

``` purescript
newUpdateCACertificateRequest :: CertificateId -> UpdateCACertificateRequest
```

Constructs UpdateCACertificateRequest from required parameters

#### `newUpdateCACertificateRequest'`

``` purescript
newUpdateCACertificateRequest' :: CertificateId -> ({ certificateId :: CertificateId, newStatus :: NullOrUndefined (CACertificateStatus), newAutoRegistrationStatus :: NullOrUndefined (AutoRegistrationStatus), registrationConfig :: NullOrUndefined (RegistrationConfig), removeAutoRegistration :: NullOrUndefined (RemoveAutoRegistration) } -> { certificateId :: CertificateId, newStatus :: NullOrUndefined (CACertificateStatus), newAutoRegistrationStatus :: NullOrUndefined (AutoRegistrationStatus), registrationConfig :: NullOrUndefined (RegistrationConfig), removeAutoRegistration :: NullOrUndefined (RemoveAutoRegistration) }) -> UpdateCACertificateRequest
```

Constructs UpdateCACertificateRequest's fields from required parameters

#### `UpdateCertificateRequest`

``` purescript
newtype UpdateCertificateRequest
  = UpdateCertificateRequest { certificateId :: CertificateId, newStatus :: CertificateStatus }
```

<p>The input for the UpdateCertificate operation.</p>

##### Instances
``` purescript
Newtype UpdateCertificateRequest _
Generic UpdateCertificateRequest _
Show UpdateCertificateRequest
Decode UpdateCertificateRequest
Encode UpdateCertificateRequest
```

#### `newUpdateCertificateRequest`

``` purescript
newUpdateCertificateRequest :: CertificateId -> CertificateStatus -> UpdateCertificateRequest
```

Constructs UpdateCertificateRequest from required parameters

#### `newUpdateCertificateRequest'`

``` purescript
newUpdateCertificateRequest' :: CertificateId -> CertificateStatus -> ({ certificateId :: CertificateId, newStatus :: CertificateStatus } -> { certificateId :: CertificateId, newStatus :: CertificateStatus }) -> UpdateCertificateRequest
```

Constructs UpdateCertificateRequest's fields from required parameters

#### `UpdateEventConfigurationsRequest`

``` purescript
newtype UpdateEventConfigurationsRequest
  = UpdateEventConfigurationsRequest { eventConfigurations :: NullOrUndefined (EventConfigurations) }
```

##### Instances
``` purescript
Newtype UpdateEventConfigurationsRequest _
Generic UpdateEventConfigurationsRequest _
Show UpdateEventConfigurationsRequest
Decode UpdateEventConfigurationsRequest
Encode UpdateEventConfigurationsRequest
```

#### `newUpdateEventConfigurationsRequest`

``` purescript
newUpdateEventConfigurationsRequest :: UpdateEventConfigurationsRequest
```

Constructs UpdateEventConfigurationsRequest from required parameters

#### `newUpdateEventConfigurationsRequest'`

``` purescript
newUpdateEventConfigurationsRequest' :: ({ eventConfigurations :: NullOrUndefined (EventConfigurations) } -> { eventConfigurations :: NullOrUndefined (EventConfigurations) }) -> UpdateEventConfigurationsRequest
```

Constructs UpdateEventConfigurationsRequest's fields from required parameters

#### `UpdateEventConfigurationsResponse`

``` purescript
newtype UpdateEventConfigurationsResponse
  = UpdateEventConfigurationsResponse NoArguments
```

##### Instances
``` purescript
Newtype UpdateEventConfigurationsResponse _
Generic UpdateEventConfigurationsResponse _
Show UpdateEventConfigurationsResponse
Decode UpdateEventConfigurationsResponse
Encode UpdateEventConfigurationsResponse
```

#### `UpdateIndexingConfigurationRequest`

``` purescript
newtype UpdateIndexingConfigurationRequest
  = UpdateIndexingConfigurationRequest { thingIndexingConfiguration :: NullOrUndefined (ThingIndexingConfiguration) }
```

##### Instances
``` purescript
Newtype UpdateIndexingConfigurationRequest _
Generic UpdateIndexingConfigurationRequest _
Show UpdateIndexingConfigurationRequest
Decode UpdateIndexingConfigurationRequest
Encode UpdateIndexingConfigurationRequest
```

#### `newUpdateIndexingConfigurationRequest`

``` purescript
newUpdateIndexingConfigurationRequest :: UpdateIndexingConfigurationRequest
```

Constructs UpdateIndexingConfigurationRequest from required parameters

#### `newUpdateIndexingConfigurationRequest'`

``` purescript
newUpdateIndexingConfigurationRequest' :: ({ thingIndexingConfiguration :: NullOrUndefined (ThingIndexingConfiguration) } -> { thingIndexingConfiguration :: NullOrUndefined (ThingIndexingConfiguration) }) -> UpdateIndexingConfigurationRequest
```

Constructs UpdateIndexingConfigurationRequest's fields from required parameters

#### `UpdateIndexingConfigurationResponse`

``` purescript
newtype UpdateIndexingConfigurationResponse
  = UpdateIndexingConfigurationResponse NoArguments
```

##### Instances
``` purescript
Newtype UpdateIndexingConfigurationResponse _
Generic UpdateIndexingConfigurationResponse _
Show UpdateIndexingConfigurationResponse
Decode UpdateIndexingConfigurationResponse
Encode UpdateIndexingConfigurationResponse
```

#### `UpdateRoleAliasRequest`

``` purescript
newtype UpdateRoleAliasRequest
  = UpdateRoleAliasRequest { roleAlias :: RoleAlias, roleArn :: NullOrUndefined (RoleArn), credentialDurationSeconds :: NullOrUndefined (CredentialDurationSeconds) }
```

##### Instances
``` purescript
Newtype UpdateRoleAliasRequest _
Generic UpdateRoleAliasRequest _
Show UpdateRoleAliasRequest
Decode UpdateRoleAliasRequest
Encode UpdateRoleAliasRequest
```

#### `newUpdateRoleAliasRequest`

``` purescript
newUpdateRoleAliasRequest :: RoleAlias -> UpdateRoleAliasRequest
```

Constructs UpdateRoleAliasRequest from required parameters

#### `newUpdateRoleAliasRequest'`

``` purescript
newUpdateRoleAliasRequest' :: RoleAlias -> ({ roleAlias :: RoleAlias, roleArn :: NullOrUndefined (RoleArn), credentialDurationSeconds :: NullOrUndefined (CredentialDurationSeconds) } -> { roleAlias :: RoleAlias, roleArn :: NullOrUndefined (RoleArn), credentialDurationSeconds :: NullOrUndefined (CredentialDurationSeconds) }) -> UpdateRoleAliasRequest
```

Constructs UpdateRoleAliasRequest's fields from required parameters

#### `UpdateRoleAliasResponse`

``` purescript
newtype UpdateRoleAliasResponse
  = UpdateRoleAliasResponse { roleAlias :: NullOrUndefined (RoleAlias), roleAliasArn :: NullOrUndefined (RoleAliasArn) }
```

##### Instances
``` purescript
Newtype UpdateRoleAliasResponse _
Generic UpdateRoleAliasResponse _
Show UpdateRoleAliasResponse
Decode UpdateRoleAliasResponse
Encode UpdateRoleAliasResponse
```

#### `newUpdateRoleAliasResponse`

``` purescript
newUpdateRoleAliasResponse :: UpdateRoleAliasResponse
```

Constructs UpdateRoleAliasResponse from required parameters

#### `newUpdateRoleAliasResponse'`

``` purescript
newUpdateRoleAliasResponse' :: ({ roleAlias :: NullOrUndefined (RoleAlias), roleAliasArn :: NullOrUndefined (RoleAliasArn) } -> { roleAlias :: NullOrUndefined (RoleAlias), roleAliasArn :: NullOrUndefined (RoleAliasArn) }) -> UpdateRoleAliasResponse
```

Constructs UpdateRoleAliasResponse's fields from required parameters

#### `UpdateStreamRequest`

``` purescript
newtype UpdateStreamRequest
  = UpdateStreamRequest { streamId :: StreamId, description :: NullOrUndefined (StreamDescription), files :: NullOrUndefined (StreamFiles), roleArn :: NullOrUndefined (RoleArn) }
```

##### Instances
``` purescript
Newtype UpdateStreamRequest _
Generic UpdateStreamRequest _
Show UpdateStreamRequest
Decode UpdateStreamRequest
Encode UpdateStreamRequest
```

#### `newUpdateStreamRequest`

``` purescript
newUpdateStreamRequest :: StreamId -> UpdateStreamRequest
```

Constructs UpdateStreamRequest from required parameters

#### `newUpdateStreamRequest'`

``` purescript
newUpdateStreamRequest' :: StreamId -> ({ streamId :: StreamId, description :: NullOrUndefined (StreamDescription), files :: NullOrUndefined (StreamFiles), roleArn :: NullOrUndefined (RoleArn) } -> { streamId :: StreamId, description :: NullOrUndefined (StreamDescription), files :: NullOrUndefined (StreamFiles), roleArn :: NullOrUndefined (RoleArn) }) -> UpdateStreamRequest
```

Constructs UpdateStreamRequest's fields from required parameters

#### `UpdateStreamResponse`

``` purescript
newtype UpdateStreamResponse
  = UpdateStreamResponse { streamId :: NullOrUndefined (StreamId), streamArn :: NullOrUndefined (StreamArn), description :: NullOrUndefined (StreamDescription), streamVersion :: NullOrUndefined (StreamVersion) }
```

##### Instances
``` purescript
Newtype UpdateStreamResponse _
Generic UpdateStreamResponse _
Show UpdateStreamResponse
Decode UpdateStreamResponse
Encode UpdateStreamResponse
```

#### `newUpdateStreamResponse`

``` purescript
newUpdateStreamResponse :: UpdateStreamResponse
```

Constructs UpdateStreamResponse from required parameters

#### `newUpdateStreamResponse'`

``` purescript
newUpdateStreamResponse' :: ({ streamId :: NullOrUndefined (StreamId), streamArn :: NullOrUndefined (StreamArn), description :: NullOrUndefined (StreamDescription), streamVersion :: NullOrUndefined (StreamVersion) } -> { streamId :: NullOrUndefined (StreamId), streamArn :: NullOrUndefined (StreamArn), description :: NullOrUndefined (StreamDescription), streamVersion :: NullOrUndefined (StreamVersion) }) -> UpdateStreamResponse
```

Constructs UpdateStreamResponse's fields from required parameters

#### `UpdateThingGroupRequest`

``` purescript
newtype UpdateThingGroupRequest
  = UpdateThingGroupRequest { thingGroupName :: ThingGroupName, thingGroupProperties :: ThingGroupProperties, expectedVersion :: NullOrUndefined (OptionalVersion) }
```

##### Instances
``` purescript
Newtype UpdateThingGroupRequest _
Generic UpdateThingGroupRequest _
Show UpdateThingGroupRequest
Decode UpdateThingGroupRequest
Encode UpdateThingGroupRequest
```

#### `newUpdateThingGroupRequest`

``` purescript
newUpdateThingGroupRequest :: ThingGroupName -> ThingGroupProperties -> UpdateThingGroupRequest
```

Constructs UpdateThingGroupRequest from required parameters

#### `newUpdateThingGroupRequest'`

``` purescript
newUpdateThingGroupRequest' :: ThingGroupName -> ThingGroupProperties -> ({ thingGroupName :: ThingGroupName, thingGroupProperties :: ThingGroupProperties, expectedVersion :: NullOrUndefined (OptionalVersion) } -> { thingGroupName :: ThingGroupName, thingGroupProperties :: ThingGroupProperties, expectedVersion :: NullOrUndefined (OptionalVersion) }) -> UpdateThingGroupRequest
```

Constructs UpdateThingGroupRequest's fields from required parameters

#### `UpdateThingGroupResponse`

``` purescript
newtype UpdateThingGroupResponse
  = UpdateThingGroupResponse { version :: NullOrUndefined (Version) }
```

##### Instances
``` purescript
Newtype UpdateThingGroupResponse _
Generic UpdateThingGroupResponse _
Show UpdateThingGroupResponse
Decode UpdateThingGroupResponse
Encode UpdateThingGroupResponse
```

#### `newUpdateThingGroupResponse`

``` purescript
newUpdateThingGroupResponse :: UpdateThingGroupResponse
```

Constructs UpdateThingGroupResponse from required parameters

#### `newUpdateThingGroupResponse'`

``` purescript
newUpdateThingGroupResponse' :: ({ version :: NullOrUndefined (Version) } -> { version :: NullOrUndefined (Version) }) -> UpdateThingGroupResponse
```

Constructs UpdateThingGroupResponse's fields from required parameters

#### `UpdateThingGroupsForThingRequest`

``` purescript
newtype UpdateThingGroupsForThingRequest
  = UpdateThingGroupsForThingRequest { thingName :: NullOrUndefined (ThingName), thingGroupsToAdd :: NullOrUndefined (ThingGroupList), thingGroupsToRemove :: NullOrUndefined (ThingGroupList) }
```

##### Instances
``` purescript
Newtype UpdateThingGroupsForThingRequest _
Generic UpdateThingGroupsForThingRequest _
Show UpdateThingGroupsForThingRequest
Decode UpdateThingGroupsForThingRequest
Encode UpdateThingGroupsForThingRequest
```

#### `newUpdateThingGroupsForThingRequest`

``` purescript
newUpdateThingGroupsForThingRequest :: UpdateThingGroupsForThingRequest
```

Constructs UpdateThingGroupsForThingRequest from required parameters

#### `newUpdateThingGroupsForThingRequest'`

``` purescript
newUpdateThingGroupsForThingRequest' :: ({ thingName :: NullOrUndefined (ThingName), thingGroupsToAdd :: NullOrUndefined (ThingGroupList), thingGroupsToRemove :: NullOrUndefined (ThingGroupList) } -> { thingName :: NullOrUndefined (ThingName), thingGroupsToAdd :: NullOrUndefined (ThingGroupList), thingGroupsToRemove :: NullOrUndefined (ThingGroupList) }) -> UpdateThingGroupsForThingRequest
```

Constructs UpdateThingGroupsForThingRequest's fields from required parameters

#### `UpdateThingGroupsForThingResponse`

``` purescript
newtype UpdateThingGroupsForThingResponse
  = UpdateThingGroupsForThingResponse NoArguments
```

##### Instances
``` purescript
Newtype UpdateThingGroupsForThingResponse _
Generic UpdateThingGroupsForThingResponse _
Show UpdateThingGroupsForThingResponse
Decode UpdateThingGroupsForThingResponse
Encode UpdateThingGroupsForThingResponse
```

#### `UpdateThingRequest`

``` purescript
newtype UpdateThingRequest
  = UpdateThingRequest { thingName :: ThingName, thingTypeName :: NullOrUndefined (ThingTypeName), attributePayload :: NullOrUndefined (AttributePayload), expectedVersion :: NullOrUndefined (OptionalVersion), removeThingType :: NullOrUndefined (RemoveThingType) }
```

<p>The input for the UpdateThing operation.</p>

##### Instances
``` purescript
Newtype UpdateThingRequest _
Generic UpdateThingRequest _
Show UpdateThingRequest
Decode UpdateThingRequest
Encode UpdateThingRequest
```

#### `newUpdateThingRequest`

``` purescript
newUpdateThingRequest :: ThingName -> UpdateThingRequest
```

Constructs UpdateThingRequest from required parameters

#### `newUpdateThingRequest'`

``` purescript
newUpdateThingRequest' :: ThingName -> ({ thingName :: ThingName, thingTypeName :: NullOrUndefined (ThingTypeName), attributePayload :: NullOrUndefined (AttributePayload), expectedVersion :: NullOrUndefined (OptionalVersion), removeThingType :: NullOrUndefined (RemoveThingType) } -> { thingName :: ThingName, thingTypeName :: NullOrUndefined (ThingTypeName), attributePayload :: NullOrUndefined (AttributePayload), expectedVersion :: NullOrUndefined (OptionalVersion), removeThingType :: NullOrUndefined (RemoveThingType) }) -> UpdateThingRequest
```

Constructs UpdateThingRequest's fields from required parameters

#### `UpdateThingResponse`

``` purescript
newtype UpdateThingResponse
  = UpdateThingResponse NoArguments
```

<p>The output from the UpdateThing operation.</p>

##### Instances
``` purescript
Newtype UpdateThingResponse _
Generic UpdateThingResponse _
Show UpdateThingResponse
Decode UpdateThingResponse
Encode UpdateThingResponse
```

#### `UseBase64`

``` purescript
newtype UseBase64
  = UseBase64 Boolean
```

##### Instances
``` purescript
Newtype UseBase64 _
Generic UseBase64 _
Show UseBase64
Decode UseBase64
Encode UseBase64
```

#### `Value`

``` purescript
newtype Value
  = Value String
```

##### Instances
``` purescript
Newtype Value _
Generic Value _
Show Value
Decode Value
Encode Value
```

#### `Version`

``` purescript
newtype Version
  = Version Number
```

##### Instances
``` purescript
Newtype Version _
Generic Version _
Show Version
Decode Version
Encode Version
```

#### `VersionConflictException`

``` purescript
newtype VersionConflictException
  = VersionConflictException { message :: NullOrUndefined (ErrorMessage') }
```

<p>An exception thrown when the version of a thing passed to a command is different than the version specified with the --version parameter.</p>

##### Instances
``` purescript
Newtype VersionConflictException _
Generic VersionConflictException _
Show VersionConflictException
Decode VersionConflictException
Encode VersionConflictException
```

#### `newVersionConflictException`

``` purescript
newVersionConflictException :: VersionConflictException
```

Constructs VersionConflictException from required parameters

#### `newVersionConflictException'`

``` purescript
newVersionConflictException' :: ({ message :: NullOrUndefined (ErrorMessage') } -> { message :: NullOrUndefined (ErrorMessage') }) -> VersionConflictException
```

Constructs VersionConflictException's fields from required parameters

#### `VersionsLimitExceededException`

``` purescript
newtype VersionsLimitExceededException
  = VersionsLimitExceededException { message :: NullOrUndefined (ErrorMessage') }
```

<p>The number of policy versions exceeds the limit.</p>

##### Instances
``` purescript
Newtype VersionsLimitExceededException _
Generic VersionsLimitExceededException _
Show VersionsLimitExceededException
Decode VersionsLimitExceededException
Encode VersionsLimitExceededException
```

#### `newVersionsLimitExceededException`

``` purescript
newVersionsLimitExceededException :: VersionsLimitExceededException
```

Constructs VersionsLimitExceededException from required parameters

#### `newVersionsLimitExceededException'`

``` purescript
newVersionsLimitExceededException' :: ({ message :: NullOrUndefined (ErrorMessage') } -> { message :: NullOrUndefined (ErrorMessage') }) -> VersionsLimitExceededException
```

Constructs VersionsLimitExceededException's fields from required parameters

#### `ErrorMessage'`

``` purescript
newtype ErrorMessage'
  = ErrorMessage' String
```

##### Instances
``` purescript
Newtype ErrorMessage' _
Generic ErrorMessage' _
Show ErrorMessage'
Decode ErrorMessage'
Encode ErrorMessage'
```

#### `ResourceArn'`

``` purescript
newtype ResourceArn'
  = ResourceArn' String
```

##### Instances
``` purescript
Newtype ResourceArn' _
Generic ResourceArn' _
Show ResourceArn'
Decode ResourceArn'
Encode ResourceArn'
```

#### `ResourceId'`

``` purescript
newtype ResourceId'
  = ResourceId' String
```

##### Instances
``` purescript
Newtype ResourceId' _
Generic ResourceId' _
Show ResourceId'
Decode ResourceId'
Encode ResourceId'
```


