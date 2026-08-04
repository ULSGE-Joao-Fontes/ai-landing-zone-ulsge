using '../../../main.bicep'

// ============================================================================
// HR Chat Agent - Key Vault + Foundry (if enabled) - Generated from Notebook
// ============================================================================

param apim = {
  subscriptionId: '4b43f3e7-891b-4993-a2a2-ef99978c1bc9'
  resourceGroupName: 'rg-ai-landing-zone'
  name: 'apim-rfp01l3nqbka6rod5a'
}

param keyVault = {
  subscriptionId: 'REPLACE'
  resourceGroupName: 'REPLACE'
  name: 'REPLACE'
}

param useTargetAzureKeyVault = false

param useCase = {
  businessUnit: 'it'
  useCaseName: 'foundry'
  environment: 'prod'
}

param apiNameMapping = {
  LLM: ['universal-llm-api', 'azure-openai-api', 'unified-ai-api']
}

param services = [
  {
    code: 'LLM'
    endpointSecretName: 'IT-LLM-ENDPOINT'
    apiKeySecretName: 'IT-LLM-KEY'
    policyXml: loadTextContent('ai-product-policy.xml')
  }
]

param productTerms = ''

// Azure AI Foundry Integration
param useTargetFoundry = true

param foundry = {
  subscriptionId: '4b43f3e7-891b-4993-a2a2-ef99978c1bc9'
  resourceGroupName: 'RG-Application-LZ'
  accountName: 'foundry-agentsa2uu'
  projectName: 'prj-foundry-agentsa2uu'
}

param foundryConfig = {
  connectionNamePrefix: ''
  deploymentInPath: 'false'
  isSharedToAll: false
  inferenceAPIVersion: ''
  deploymentAPIVersion: ''
  staticModels: []
  listModelsEndpoint: ''
  getModelEndpoint: ''
  deploymentProvider: ''
  customHeaders: {}
  authConfig: {}
}

