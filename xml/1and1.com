<clientConfig version="1.1">
  <emailProvider id="1und1.de">
    <!-- employees -->
    <domain>1and1.de</domain>
    <!-- DSL customers -->
    <domain>online.de</domain>
    <domain>onlinehome.de</domain>
    <domain>sofortstart.de</domain>
    <domain>sofort-start.de</domain>
    <domain>sofortsurf.de</domain>
    <domain>sofort-surf.de</domain>
    <domain>go4more.de</domain>
    <!-- Hosting customers, MX servers -->
    <domain>kundenserver.de</domain>
    <domain>schlund.de</domain>
    <domain>1and1.com</domain>
    <domain>1and1.fr</domain>
    <domain>1and1.co.uk</domain>
    <domain>1and1.es</domain>

    <displayName>1&amp;1</displayName>
    <displayShortName>1&amp;1</displayShortName>
    <incomingServer type="imap">
      <hostname>imap.1und1.de</hostname>
      <port>993</port>
      <socketType>SSL</socketType>
      <authentication>password-cleartext</authentication>
      <username>%EMAILADDRESS%</username>
    </incomingServer>
    <incomingServer type="imap">
      <hostname>imap.1und1.de</hostname>
      <port>143</port>
      <socketType>STARTTLS</socketType>
      <authentication>password-cleartext</authentication>
      <username>%EMAILADDRESS%</username>
    </incomingServer>
    <incomingServer type="pop3">
      <hostname>pop.1und1.de</hostname>
      <port>995</port>
      <socketType>SSL</socketType>
      <authentication>password-cleartext</authentication>
      <username>%EMAILADDRESS%</username>
    </incomingServer>
    <incomingServer type="pop3">
      <hostname>pop.1und1.de</hostname>
      <port>110</port>
      <socketType>STARTTLS</socketType>
      <authentication>password-cleartext</authentication>
      <username>%EMAILADDRESS%</username>
    </incomingServer>
    <outgoingServer type="smtp">
      <hostname>smtp.1und1.de</hostname>
      <port>587</port>
      <socketType>STARTTLS</socketType>
      <authentication>password-cleartext</authentication>
      <username>%EMAILADDRESS%</username>
    </outgoingServer>
    <documentation url="http://hilfe-center.1und1.de/access/search/go.php?t=e698123"/>
    <!--
        Kundenservice: +49-721-96-00
        Presse: +49-2602-96-1276 <presse@1und1.de>
      -->
  </emailProvider>
  <webMail>
    <loginPage url="https://webmailer.1und1.de/"/>
    <loginPageInfo url="https://webmailer.1und1.de/">
      <username>%EMAILADDRESS%</username>
      <usernameField id="emaillogin.Username"/>
      <passwordField id="emaillogin.Password"/>
      <loginButton id="save"/>
    </loginPageInfo>
  </webMail>
</clientConfig>
