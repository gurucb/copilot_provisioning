param resourceGroup string
param location string = 'westus'
param aihubname string = 'aihub'
param aihubfriendlyname string = 'myaihub'
param aihubdescription string = 'My AI Hub'


resource aihub 'Microsoft.MachineLearningServices/workspaces@2023-10-01' = {
  name: aihubname
  location: location
  identity:{type: 'SystemAssigned'}
  properties: {
    friendlyName: aihubfriendlyname
    description: aihubdescription
  }
  kind: 'hub'
} 
