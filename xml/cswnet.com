<clientConfig version="1.1">
  <emailProvider id="centurytel.net">
    <domain>centurytel.net</domain>
    <domain>clds.net</domain>
    <domain>coastalnow.net</domain>
    <domain>cochill.net</domain>
    <domain>cswnet.com</domain>
    <domain>emadisonriver.com</domain>
    <domain>emadisonriver.net</domain>
    <domain>gallatinriver.net</domain>
    <domain>grics.net</domain>
    <domain>gulftel.com</domain>
    <domain>madisonriver.biz</domain>
    <domain>mebtel.net</domain>
    <displayName>CenturyTel.net</displayName>
    <displayShortName>CenturyTel</displayShortName>
    <incomingServer type="pop3">
      <hostname>pop.centurytel.net</hostname>
      <port>995</port>
      <socketType>SSL</socketType>
      <authentication>password-cleartext</authentication>
      <username>%EMAILADDRESS%</username>
      <pop3>
        <leaveMessagesOnServer>true</leaveMessagesOnServer>
        <!-- CenturyLink recommended setting. (see documentation link)-->
      </pop3>
    </incomingServer>
    <outgoingServer type="smtp">
      <hostname>smtpauth.centurytel.net</hostname>
      <port>587</port>
      <socketType>STARTTLS</socketType>
      <authentication>password-cleartext</authentication>
      <username>%EMAILADDRESS%</username>
    </outgoingServer>
    <!--
        SERVER LIMITS
            Email size limit:           20MB
            Send To limit:              100 contacts
            Webmail send limit:         300 per hour
            SMTP send limit:            500 per hour
            IP-based email send limit:  300 per day

			"Email Size Limit" refers to the size of a single email, and "Sent To Limits" 
			 include the To, CC and Bcc fields in emails. These limits are the same whether 
			 you're using webmail or SMTP.
      -->
    <documentation url="http://www.centurylink.com/help/index.php?assetid=239">
      <descr lang="en">CenturyLink | How to set up your email to go through POP3 and SMTP</descr>
    </documentation>
    <documentation url="http://www.centurylink.com/help/index.php?assetid=239#other">
      <descr lang="en">CenturyLink | How to set up your email to go through POP3 and SMTP #Other POP3 and SMTP Settings</descr>
    </documentation>
  </emailProvider>
</clientConfig>
