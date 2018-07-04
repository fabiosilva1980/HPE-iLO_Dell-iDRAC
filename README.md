# HPE-iLO_Dell-iDRAC

Teste de acesso para usuários "padrão" em um parque de servidores com HPE-iLO e/ou Dell-iDRAC.

Obs. lembrando que as regras de firewall para acesso a determinadas vlans devem ser liberadas (entrada/saida), as portas 
informadas pelos fabricantes são:

#### DELL
	iDRAC FUNCTION           SOCKET TYPE PORT NUMBER 
	---------------------- ----------- -----------
	Secure Shell (SSH)         TCP        22
	Remote Console/Telnet      TCP        23
	Web Server Non-SSL         TCP        80
	Web Server SSL             TCP        443
	SNMP                       UDP        161
	Virtual Media Server       TCP        3668
	Remote racadm server       TCP        5869
	Console Redirection        TCP        5900 - 5901
 
 #### HPE
	 ILO FUNCTION           SOCKET TYPE PORT NUMBER 
	---------------------- ----------- -----------
	Secure Shell (SSH)         TCP        22
	Remote Console/Telnet      TCP        23
	Web Server Non-SSL         TCP        80
	Web Server SSL             TCP        443
	Terminal Services          TCP        3389
	Virtual Media              TCP        17988
	Shared Remote Console      TCP        9300
	Console Replay             TCP        17990
	Raw Serial Data            TCP        3002
	
	
