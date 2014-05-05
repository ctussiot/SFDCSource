/**
 * Copyright (c) 2012, FinancialForce.com, inc
 * All rights reserved.
 *
 * Redistribution and use in source and binary forms, with or without modification, 
 *   are permitted provided that the following conditions are met:
 *
 * - Redistributions of source code must retain the above copyright notice, 
 *      this list of conditions and the following disclaimer.
 * - Redistributions in binary form must reproduce the above copyright notice, 
 *      this list of conditions and the following disclaimer in the documentation 
 *      and/or other materials provided with the distribution.
 * - Neither the name of the FinancialForce.com, inc nor the names of its contributors 
 *      may be used to endorse or promote products derived from this software without 
 *      specific prior written permission.
 *
 * THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" AND 
 *  ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES 
 *  OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL 
 *  THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, 
 *  EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS
 *  OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY
 *  OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE)
 *  ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
**/

public with sharing class MetadataDeployController 
{
	public String ZipData { get; set; }	
	
	public MetadataService.AsyncResult AsyncResult {get; private set;}
	
	public String getPackageXml()
	{
		return '<?xml version="1.0" encoding="UTF-8"?>' + 
			'<Package xmlns="http://soap.sforce.com/2006/04/metadata">' + 
    			'<types>' + 
        			'<members>HelloWorld</members>' +
        			'<name>ApexClass</name>' + 
    			'</types>' + 
    			'<version>26.0</version>' + 
			'</Package>';		
	}
		public String getPackageXml2()
	{
		return '<?xml version="1.0" encoding="UTF-8"?>' + 
			'<Package xmlns="http://soap.sforce.com/2006/04/metadata">' + 
    			'<types>' + 
        			'<members>Case</members>' +
        			'<name>CustomObject</name>' + 
    			'</types>' + 
    			'<version>27.0</version>' + 
			'</Package>';		
	}
	
	public String getCaseMetadata()
	{
		return '<?xml version="1.0" encoding="UTF-8"?>' +
			'<ApexClass xmlns="http://soap.sforce.com/2006/04/metadata">' +
			    '<apiVersion>28.0</apiVersion>' + 
			    '<status>Active</status>' +
			'</ApexClass>';		
	}
	
	public String getHelloWorldMetadata()
	{
		return '<?xml version="1.0" encoding="UTF-8"?>' +
			'<ApexClass xmlns="http://soap.sforce.com/2006/04/metadata">' +
			    '<apiVersion>28.0</apiVersion>' + 
			    '<status>Active</status>' +
			'</ApexClass>';		
	}
	
	public String getCase()	
	{
				return '<?xml version="1.0" encoding="UTF-8"?>' +
'<CustomObject xmlns="http://soap.sforce.com/2006/04/metadata">' +
    '<actionOverrides>' +
        '<actionName>Accept</actionName>' +
        '<type>Default</type>' +
    '</actionOverrides>' +
    '<actionOverrides>' +
        '<actionName>ChangeStatus</actionName>' +
        '<type>Default</type>' +
    '</actionOverrides>' +
    '<actionOverrides>' +
        '<actionName>Clone</actionName>' +
        '<type>Default</type>' +
    '</actionOverrides>' +
    '<actionOverrides>' +
        '<actionName>CloneAsChild</actionName>' +
        '<type>Default</type>' +
    '</actionOverrides>' +
    '<actionOverrides>' +
        '<actionName>CloseCase</actionName>' +
        '<type>Default</type>' +
    '</actionOverrides>' +
    '<actionOverrides>' +
        '<actionName>Delete</actionName>' +
        '<type>Default</type>' +
    '</actionOverrides>' +
    '<actionOverrides>' +
        '<actionName>Edit</actionName>' +
        '<type>Default</type>' +
    '</actionOverrides>' +
    '<actionOverrides>' +
        '<actionName>List</actionName>' +
        '<type>Default</type>' +
    '</actionOverrides>' +
    '<actionOverrides>' +
        '<actionName>MassClose</actionName>' +
        '<type>Default</type>' +
    '</actionOverrides>' +
    '<actionOverrides>' +
        '<actionName>NewCase</actionName>' +
        '<type>Default</type>' +
    '</actionOverrides>' +
    '<actionOverrides>' +
        '<actionName>Tab</actionName>' +
        '<type>Default</type>' +
    '</actionOverrides>' +
    '<actionOverrides>' +
        '<actionName>View</actionName>' +
        '<type>Default</type>' +
    '</actionOverrides>' +
    '<businessProcesses>' +
        '<fullName>Support process 1</fullName>' +
        '<isActive>true</isActive>' +
        '<values>' +
            '<fullName>New</fullName>' +
            '<default>true</default>' +
        '</values>' +
        '<values>' +
            '<fullName>Assigned</fullName>' +
            '<default>false</default>' +
        '</values>' +
        '<values>' +
            '<fullName>Verified</fullName>' +
            '<default>false</default>' +
        '</values>' +
        '<values>' +
            '<fullName>Solution Identified</fullName>' +
            '<default>false</default>' +
        '</values>' +
        '<values>' +
            '<fullName>Solution Communicated</fullName>' +
            '<default>false</default>' +
        '</values>' +
        '<values>' +
            '<fullName>Rework the Case</fullName>' +
            '<default>false</default>' +
        '</values>' +
        '<values>' +
            '<fullName>Closed</fullName>' +
            '<default>false</default>' +
        '</values>' +
    '</businessProcesses>' +
    '<enableFeeds>true</enableFeeds>' +
    '<fields>' +
        '<fullName>AccountId</fullName>' +
        '<type>Lookup</type>' +
    '</fields>' +
    '<fields>' +
        '<fullName>AssetId</fullName>' +
        '<type>Lookup</type>' +
    '</fields>' +
    '<fields>' +
        '<fullName>BusinessHoursId</fullName>' +
        '<type>Lookup</type>' +
    '</fields>' +
    '<fields>' +
        '<fullName>ContactId</fullName>' +
        '<type>Lookup</type>' +
    '</fields>' +
    '<fields>' +
        '<fullName>EngineeringReqNumber__c</fullName>' +
        '<externalId>false</externalId>' +
        '<label>Engineering Req Number</label>' +
        '<length>12</length>' +
        '<required>false</required>' +
        '<trackFeedHistory>false</trackFeedHistory>' +
        '<trackHistory>false</trackHistory>' +
        '<type>Text</type>'+
        '<unique>false</unique>' +
    '</fields>' +
    '<fields>' +
        '<fullName>Origin</fullName>' +
        '<picklist>' +
            '<picklistValues>' +
                '<fullName>Phone</fullName>' +
                '<default>false</default>' +
            '</picklistValues>' +
            '<picklistValues>' +
                '<fullName>Email</fullName>' +
                '<default>false</default>' +
            '</picklistValues>' +
            '<picklistValues>' +
                '<fullName>Web</fullName>' +
                '<default>false</default>' +
            '</picklistValues>' +
            '<sorted>false</sorted>' +
        '</picklist>' +
        '<type>Picklist</type>' +
    '</fields>' +
    '<fields>' +
        '<fullName>OwnerId</fullName>' +
        '<type>Lookup</type>' +
    '</fields>' +
    '<fields>' +
        '<fullName>ParentId</fullName>' +
        '<type>Lookup</type>' +
    '</fields>' +
    '<fields>' +
        '<fullName>PotentialLiability__c</fullName>' +
        '<externalId>false</externalId>' +
        '<label>Potential Liability</label>' +
        '<picklist>' +
            '<picklistValues>' +
                '<fullName>No</fullName>' +
                '<default>false</default>' +
            '</picklistValues>' +
            '<picklistValues>' +
                '<fullName>Yes</fullName>' +
                '<default>false</default>' +
            '</picklistValues>' +
            '<sorted>false</sorted>' +
        '</picklist>' +
        '<trackFeedHistory>false</trackFeedHistory>' +
        '<trackHistory>false</trackHistory>' +
        '<type>Picklist</type>' +
    '</fields>' +
    '<fields>' +
        '<fullName>Priority</fullName>' +
        '<picklist>' +
            '<picklistValues>' +
                '<fullName>High</fullName>' +
                '<default>false</default>' +
            '</picklistValues>' +
            '<picklistValues>' +
                '<fullName>Medium</fullName>' +
                '<default>true</default>' +
            '</picklistValues>' +
            '<picklistValues>' +
                '<fullName>Low</fullName>' +
                '<default>false</default>' +
            '</picklistValues>' +
            '<sorted>false</sorted>' +
        '</picklist>' +
        '<type>Picklist</type>' +
    '</fields>' +
    '<fields>' +
        '<fullName>Product__c</fullName>' +
        '<externalId>false</externalId>' +
        '<label>Product</label>' +
        '<picklist>' +
            '<picklistValues>' +
                '<fullName>GC1040</fullName>' +
                '<default>false</default>' +
            '</picklistValues>' +
            '<picklistValues>' +
                '<fullName>GC1060</fullName>' +
                '<default>false</default>' +
            '</picklistValues>' +
            '<picklistValues>' +
                '<fullName>GC3020</fullName>' +
                '<default>false</default>' +
            '</picklistValues>' +
            '<picklistValues>' +
                '<fullName>GC3040</fullName>' +
                '<default>false</default>' +
            '</picklistValues>' +
            '<picklistValues>' +
                '<fullName>GC3060</fullName>' +
                '<default>false</default>' +
            '</picklistValues>' +
            '<picklistValues>' +
                '<fullName>GC5020</fullName>' +
                '<default>false</default>' +
            '</picklistValues>' +
            '<picklistValues>' +
                '<fullName>GC5040</fullName>' +
                '<default>false</default>' +
            '</picklistValues>' +
            '<picklistValues>' +
                '<fullName>GC5060</fullName>' +
                '<default>false</default>' +
            '</picklistValues>' +
            '<picklistValues>' +
                '<fullName>GC1020</fullName>' +
                '<default>false</default>' +
            '</picklistValues>' +
            '<sorted>false</sorted>' +
        '</picklist>' +
        '<trackFeedHistory>false</trackFeedHistory>' +
        '<trackHistory>false</trackHistory>' +
        '<type>Picklist</type>' +
    '</fields>' +
    '<fields>' +
        '<fullName>Reason</fullName>' +
        '<picklist>' +
            '<picklistValues>' +
                '<fullName>Installation</fullName>' +
                '<cssExposed>false</cssExposed>' +
                '<default>false</default>' +
            '</picklistValues>' +
            '<picklistValues>' +
                '<fullName>Equipment Complexity</fullName>' +
                '<cssExposed>false</cssExposed>' +
                '<default>false</default>' +
            '</picklistValues>' +
            '<picklistValues>' +
                '<fullName>Performance</fullName>' +
                '<cssExposed>false</cssExposed>' +
                '<default>false</default>' +
            '</picklistValues>' +
            '<picklistValues>' +
                '<fullName>Breakdown</fullName>' +
                '<cssExposed>false</cssExposed>' +
                '<default>false</default>' +
            '</picklistValues>' +
            '<picklistValues>' +
                '<fullName>Equipment Design</fullName>' +
                '<cssExposed>false</cssExposed>' +
                '<default>false</default>' +
            '</picklistValues>' +
            '<picklistValues>' +
                '<fullName>Feedback</fullName>' +
                '<cssExposed>false</cssExposed>' +
                '<default>false</default>' +
            '</picklistValues>' +
            '<picklistValues>' +
                '<fullName>Other</fullName>' +
                '<cssExposed>false</cssExposed>' +
                '<default>false</default>' +
            '</picklistValues>' +
            '<sorted>false</sorted>' +
        '</picklist>' +
        '<type>Picklist</type>' +
    '</fields>' +
    '<fields>' +
        '<fullName>SLAViolation__c</fullName>' +
        '<externalId>false</externalId>' +
        '<label>SLA Violation</label>' +
        '<picklist>' +
            '<picklistValues>' +
                '<fullName>No</fullName>' +
                '<default>false</default>' +
            '</picklistValues>' +
            '<picklistValues>' +
                '<fullName>Yes</fullName>' +
                '<default>false</default>' +
            '</picklistValues>' +
            '<sorted>false</sorted>' +
        '</picklist>' +
        '<trackFeedHistory>false</trackFeedHistory>' +
        '<trackHistory>false</trackHistory>' +
        '<type>Picklist</type>' +
    '</fields>' +
    '<fields>' +
        '<fullName>Status</fullName>' +
        '<picklist>' +
            '<picklistValues>' +
                '<fullName>New</fullName>' +
                '<closed>false</closed>' +
                '<default>true</default>' +
            '</picklistValues>' +
            '<picklistValues>' +
                '<fullName>Working</fullName>' +
                '<closed>false</closed>' +
                '<default>false</default>' +
            '</picklistValues>' +
            '<picklistValues>' +
                '<fullName>Escalated</fullName>' +
                '<closed>false</closed>' +
                '<default>false</default>' +
            '</picklistValues>' +
            '<picklistValues>' +
                '<fullName>Closed</fullName>' +
                '<closed>true</closed>' +
                '<default>false</default>' +
            '</picklistValues>' +
            '<picklistValues>' +
                '<fullName>Assigned</fullName>' +
                '<closed>false</closed>' +
                '<default>false</default>' +
            '</picklistValues>' +
            '<picklistValues>' +
                '<fullName>Verified</fullName>' +
                '<closed>false</closed>' +
                '<default>false</default>' +
            '</picklistValues>' +
            '<picklistValues>' +
                '<fullName>Solution Identified</fullName>' +
                '<closed>false</closed>' +
                '<default>false</default>' +
            '</picklistValues>' +
            '<picklistValues>' +
                '<fullName>Solution Communicated</fullName>' +
                '<closed>false</closed>' +
                '<default>false</default>' +
            '</picklistValues>' +
            '<picklistValues>' +
                '<fullName>Rework the Case</fullName>' +
                '<closed>false</closed>' +
                '<default>false</default>' +
            '</picklistValues>' +
            '<sorted>false</sorted>' +
        '</picklist>' +
        '<type>Picklist</type>' +
    '</fields>' +
    '<fields>' +
        '<fullName>Type</fullName>' +
        '<picklist>' +
            '<picklistValues>' +
                '<fullName>Mechanical</fullName>' +
                '<default>false</default>' +
            '</picklistValues>' +
            '<picklistValues>' +
                '<fullName>Electrical</fullName>' +
                '<default>false</default>' +
            '</picklistValues>' +
            '<picklistValues>' +
                '<fullName>Electronic</fullName>' +
                '<default>false</default>' +
            '</picklistValues>' +
            '<picklistValues>' +
                '<fullName>Structural</fullName>' +
                '<default>false</default>' +
            '</picklistValues>' +
            '<picklistValues>' +
                '<fullName>Other</fullName>' +
                '<default>false</default>' +
            '</picklistValues>' +
            '<sorted>false</sorted>' +
        '</picklist>' +
        '<type>Picklist</type>' +
    '</fields>' +
    '<listViews>' +
        '<fullName>AllClosedCases</fullName>' +
        '<columns>CASES.CASE_NUMBER</columns>' +
        '<columns>NAME</columns>' +
        '<columns>CASES.SUBJECT</columns>' +
        '<columns>CASES.STATUS</columns>' +
        '<columns>CASES.PRIORITY</columns>' +
        '<columns>CASES.CREATED_DATE</columns>' +
        '<columns>CORE.USERS.ALIAS</columns>' +
        '<filterScope>Everything</filterScope>' +
        '<filters>' +
            '<field>CASES.CLOSED</field>' +
            '<operation>equals</operation>' +
            '<value>1</value>' +
        '</filters>' +
        '<label>All Closed Cases</label>' +
    '</listViews>' +
    '<listViews>' +
        '<fullName>AllOpenCases</fullName>' +
        '<filterScope>Everything</filterScope>' +
        '<filters>' +
            '<field>CASES.CLOSED</field>' +
            '<operation>equals</operation>' +
            '<value>0</value>' +
        '</filters>' +
        '<label>All Open Cases</label>' +
    '</listViews>' +
    '<listViews>' +
        '<fullName>MyCases</fullName>' +
        '<filterScope>Mine</filterScope>' +
        '<label>My Cases</label>' +
    '</listViews>' +
    '<listViews>' +
        '<fullName>MyOpenCases</fullName>' +
        '<filterScope>Mine</filterScope>' +
        '<filters>' +
            '<field>CASES.CLOSED</field>' +
            '<operation>equals</operation>' +
            '<value>0</value>' +
        '</filters>' +
        '<label>My Open Cases</label>' +
    '</listViews>' +
    '<searchLayouts>' +
       '<customTabListAdditionalFields>CASES.CASE_NUMBER</customTabListAdditionalFields>' +
        '<customTabListAdditionalFields>CASES.SUBJECT</customTabListAdditionalFields>' +
        '<customTabListAdditionalFields>CASES.CREATED_DATE</customTabListAdditionalFields>' +
        '<customTabListAdditionalFields>CASES.PRIORITY</customTabListAdditionalFields>' +
        '<lookupDialogsAdditionalFields>CASES.CASE_NUMBER</lookupDialogsAdditionalFields>' +
        '<lookupDialogsAdditionalFields>CASES.SUBJECT</lookupDialogsAdditionalFields>' +
        '<lookupDialogsAdditionalFields>ACCOUNT.NAME</lookupDialogsAdditionalFields>' +
        '<lookupDialogsAdditionalFields>CASES.STATUS</lookupDialogsAdditionalFields>' +
        '<lookupPhoneDialogsAdditionalFields>CASES.CASE_NUMBER</lookupPhoneDialogsAdditionalFields>' +
        '<lookupPhoneDialogsAdditionalFields>CASES.SUBJECT</lookupPhoneDialogsAdditionalFields>' +
        '<lookupPhoneDialogsAdditionalFields>ACCOUNT.NAME</lookupPhoneDialogsAdditionalFields>' +
        '<lookupPhoneDialogsAdditionalFields>CASES.STATUS</lookupPhoneDialogsAdditionalFields>' +
        '<searchResultsAdditionalFields>CASES.CASE_NUMBER</searchResultsAdditionalFields>' +
        '<searchResultsAdditionalFields>CASES.SUBJECT</searchResultsAdditionalFields>' +
        '<searchResultsAdditionalFields>CASES.STATUS</searchResultsAdditionalFields>' +
        '<searchResultsAdditionalFields>CASES.CREATED_DATE</searchResultsAdditionalFields>' +
        '<searchResultsAdditionalFields>CORE.USERS.ALIAS</searchResultsAdditionalFields>' +
    '</searchLayouts>' +
    '<validationRules>' +
        '<fullName>Control_New_to_Assigned</fullName>' +
        '<active>true</active>' +
        '<errorConditionFormula>false</errorConditionFormula>' +
        '<errorMessage>false</errorMessage>' +
    '</validationRules>' +
    '<validationRules>' +
        '<fullName>Control_Assigned_to_Verified</fullName>' +
        '<active>true</active>' +
        '<errorConditionFormula>false</errorConditionFormula>' +
        '<errorMessage>false</errorMessage>' +
    '</validationRules>' +
    '<validationRules>' +
        '<fullName>Control_Verified_to_Identified</fullName>' +
        '<active>true</active>' +
        '<errorConditionFormula>false</errorConditionFormula>' +
        '<errorMessage>false</errorMessage>' +
    '</validationRules>' +
    '<validationRules>' +
        '<fullName>Control_Identified_to_Communicated</fullName>' +
        '<active>true</active>' +
        '<errorConditionFormula>false</errorConditionFormula>' +
        '<errorMessage>false</errorMessage>' +
    '</validationRules>' +
    '<validationRules>' +
        '<fullName>Control_Communicated_to_Closed</fullName>' +
        '<active>true</active>' +
        '<errorConditionFormula>false</errorConditionFormula>' +
        '<errorMessage>false</errorMessage>' +
    '</validationRules>' +
    '<validationRules>' +
        '<fullName>Control_Communicated_to_Identified</fullName>' +
        '<active>true</active>' +
        '<errorConditionFormula>false</errorConditionFormula>' +
        '<errorMessage>false</errorMessage>' +
    '</validationRules>' +
    '<webLinks>' +
        '<fullName>UpsellCrosssellOpportunity</fullName>' +
        '<availability>online</availability>' +
        '<displayType>link</displayType>' +
        '<encodingKey>UTF-8</encodingKey>' +
        '<hasMenubar>true</hasMenubar>' +
        '<hasScrollbars>true</hasScrollbars>' +
        '<hasToolbar>true</hasToolbar>' +
        '<height>600</height>' +
        '<isResizable>true</isResizable>' +
        '<linkType>url</linkType>' +
        '<masterLabel>Up-sell / Cross-sell Opportunity</masterLabel>' +
        '<openType>newWindow</openType>' +
        '<position>none</position>' +
        '<protected>false</protected>' +
        '<showsLocation>true</showsLocation>' +
        '<showsStatus>true</showsStatus>' +
        '<url>https://na1.salesforce.com/opp/oppedit.jsp?accid={!Account_ID}&amp;opp3=Up-sell+/+Cross-sell&amp;opp5=Existing+Customer&amp;opp6=Customer+Support</url>' +
    '</webLinks>' +
'</CustomObject>' ;

	}
	
	public String getHelloWorld()	
	{
		return 'public class HelloWorld' + 
			'{' + 
				'public static void helloWorld()' +
				'{' + 
					'System.debug(\' Hello World\');' +
				'}' +
			'}';
	}
	
	public PageReference deployZip()
	{
		ApexPages.addMessage(new ApexPages.Message(ApexPages.Severity.Info, 'Deploying...'));

		// Deploy zip file posted back from the page action function				
		MetadataService.MetadataPort service = createService();
		MetadataService.DeployOptions deployOptions = new MetadataService.DeployOptions();
        deployOptions.allowMissingFiles = false;
        deployOptions.autoUpdatePackage = false;
        deployOptions.checkOnly = false;
        deployOptions.ignoreWarnings = false;
        deployOptions.performRetrieve = false;
        deployOptions.purgeOnDelete = false;
        deployOptions.rollbackOnError = true;
        deployOptions.runAllTests = false;
        deployOptions.runTests = null;
        deployOptions.singlePackage = true;		
		AsyncResult = service.deploy(ZipData, DeployOptions);				
		return null;
	}	
	
	public PageReference checkAsyncRequest()
	{	
		// Check the status of the retrieve request
		MetadataService.MetadataPort service = createService();
		MetadataService.AsyncResult[] aysncResults = service.checkStatus(new String[] { AsyncResult.Id });
		if(aysncResults[0].done)
		{
			// Errors?
			if(aysncResults[0].state == 'Error')
			{
			 	ApexPages.addMessage(new ApexPages.Message(ApexPages.Severity.Info, aysncResults[0].message));
				AsyncResult = null;				
			}
			else
			{
				ApexPages.addMessage(new ApexPages.Message(ApexPages.Severity.Info, 'Deployment complete'));

				// Deployment errors?
				MetadataService.DeployResult deployResult = service.checkDeployStatus(AsyncResult.Id);
				for(MetadataService.DeployMessage deployMessage : deployResult.messages)
					if(deployMessage.problem!=null)
						ApexPages.addMessage(
							new ApexPages.Message(ApexPages.Severity.Error, 
								deployMessage.fileName + 
									' (Line: ' + deployMessage.lineNumber + ': Column:' + deployMessage.columnNumber + ') : ' + 
										deployMessage.problem));
				AsyncResult = null;
			}
		}
		else
		{
			ApexPages.addMessage(new ApexPages.Message(ApexPages.Severity.Info, 'Deploying...'));
		}	
		return null;
	}
	
	private static MetadataService.MetadataPort createService()
	{ 
		MetadataService.MetadataPort service = new MetadataService.MetadataPort();
		service.SessionHeader = new MetadataService.SessionHeader_element();
		service.SessionHeader.sessionId = UserInfo.getSessionId();
		return service;		
	}		
}