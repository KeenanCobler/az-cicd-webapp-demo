param location string = resourceGroup().location
param appName string = 'flask${uniqueString(resourceGroup().id)}'
param sku string = 'f1' // Free tier for testing purposes

var storageAccountName = toLower('stor${uniqueString(resourceGroup().id)}')

resource storage 'Microsoft.Storage/storageAccounts@2022-09-01' = {
  name: storageAccountName
  location: location
  sku: {
    name: 'Standard_LRS'
  }
  kind: 'StorageV2'
}

resource appServicePlan 'Microsoft.Web/serverfarms@2022-03-01' = {
  name: '${appName}-plan'
  location: location
  sku: {
    name: sku
    tier: 'free'
  }
  kind: 'linux'
  properties: {
    reserved: true
  }
}

resource appService 'Microsoft.Web/sites@2022-03-01' = {
  name: appName
  location: location
  properties: {
    serverFarmId: appServicePlan.id
    siteConfig: {
      linuxFxVersion: 'PYTHON|3.11'
    }
    httpsOnly: true
  }
}

output appUrl string = 'https://${appService.name}.azurewebsites.net'
