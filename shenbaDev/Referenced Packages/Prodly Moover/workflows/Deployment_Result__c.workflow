<?xml version="1.0" encoding="UTF-8"?>
<Workflow xmlns="http://soap.sforce.com/2006/04/metadata">
    <alerts>
        <fullName>Notify_Deployment_Failed_Alert</fullName>
        <description>Notify Deployment Failed Alert</description>
        <protected>false</protected>
        <recipients>
            <type>owner</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>Prodly_Moover_Email_Templates/Notify_Deployment_Failed_Template</template>
    </alerts>
    <alerts>
        <fullName>Notify_Deployment_Started_Alert</fullName>
        <description>Notify Deployment Started Alert</description>
        <protected>false</protected>
        <recipients>
            <type>owner</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>Prodly_Moover_Email_Templates/Notify_Deployment_Started_Template</template>
    </alerts>
    <alerts>
        <fullName>Notify_Deployment_Succeeded_Alert</fullName>
        <description>Notify Deployment Succeeded Alert</description>
        <protected>false</protected>
        <recipients>
            <type>owner</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>Prodly_Moover_Email_Templates/Notify_Deployment_Succeeded_Template</template>
    </alerts>
    <rules>
        <fullName>Deployment Failed Workflow</fullName>
        <actions>
            <name>Notify_Deployment_Failed_Alert</name>
            <type>Alert</type>
        </actions>
        <active>true</active>
        <booleanFilter>1 AND 2</booleanFilter>
        <criteriaItems>
            <field>Deployment_Result__c.Status__c</field>
            <operation>equals</operation>
            <value>Finished</value>
        </criteriaItems>
        <criteriaItems>
            <field>Deployment_Result__c.Result__c</field>
            <operation>equals</operation>
            <value>Failure</value>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Deployment Started Workflow</fullName>
        <actions>
            <name>Notify_Deployment_Started_Alert</name>
            <type>Alert</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Deployment_Result__c.Status__c</field>
            <operation>equals</operation>
            <value>Started</value>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Deployment Succeeded Workflow</fullName>
        <actions>
            <name>Notify_Deployment_Succeeded_Alert</name>
            <type>Alert</type>
        </actions>
        <active>true</active>
        <booleanFilter>1 AND 2</booleanFilter>
        <criteriaItems>
            <field>Deployment_Result__c.Status__c</field>
            <operation>equals</operation>
            <value>Finished</value>
        </criteriaItems>
        <criteriaItems>
            <field>Deployment_Result__c.Result__c</field>
            <operation>equals</operation>
            <value>Success</value>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
</Workflow>
