
# ----------------------------------------------------------------------------------
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# Code generated by Microsoft (R) AutoRest Code Generator.Changes may cause incorrect behavior and will be lost if the code
# is regenerated.
# ----------------------------------------------------------------------------------

<#
.Synopsis
Create an in-memory object for ConfluentSchemaRegistry.
.Description
Create an in-memory object for ConfluentSchemaRegistry.

.Outputs
Microsoft.Azure.PowerShell.Cmdlets.ServiceLinker.Models.Api20220501.ConfluentSchemaRegistry
.Link
https://learn.microsoft.com/powershell/module/az.ServiceLinker/new-azservicelinkerconfluentschemaregistryobject
#>
function New-AzServiceLinkerConfluentSchemaRegistryObject {
    [OutputType('Microsoft.Azure.PowerShell.Cmdlets.ServiceLinker.Models.Api20220501.ConfluentSchemaRegistry')]
    [CmdletBinding(PositionalBinding=$false)]
    Param(

        [Parameter(Mandatory, HelpMessage="The endpoint of service.")]
        [string]
        $Endpoint,
        [Parameter(DontShow, HelpMessage="The target service type.")]
        [Microsoft.Azure.PowerShell.Cmdlets.ServiceLinker.Runtime.DefaultInfo(Script='"ConfluentSchemaRegistry"')]
        [ArgumentCompleter([Microsoft.Azure.PowerShell.Cmdlets.ServiceLinker.Support.TargetServiceType])]
        [Microsoft.Azure.PowerShell.Cmdlets.ServiceLinker.Support.TargetServiceType]
        $Type
    )

    process {
        $Object = [Microsoft.Azure.PowerShell.Cmdlets.ServiceLinker.Models.Api20220501.ConfluentSchemaRegistry]::New()

        if ($PSBoundParameters.ContainsKey('Endpoint')) {
            if($Endpoint -notmatch "https://.*\.confluent\.cloud"){
                Throw "Confluent schema registry endpoint is not valid, e.g. https://xxxx.westus2.azure.confluent.cloud"
            }
    
            $Object.Endpoint = $Endpoint
        }
        if ($PSBoundParameters.ContainsKey('Type')) {
            $Object.Type = $Type
        }
        return $Object
    }
}

