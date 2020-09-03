<%

Function OpenDb()
		
		'Altere a conexão para ser compatível o seu BD 
		
			'driver= {nome do seu drive de BD}	 'não precisa alterar se for rodar no mesmo descrito
			'server= numero do servidor
			'Uid= usuario login
			'driver= usuario senha
			
			Set conexao = Server.CreateObject("ADODB.Connection")
			conexao.ConnectionString = "driver={SQL Server};" & _
			"server=tcp:serverexpressrace.database.windows.net,1433;" & _
			"database=EXPRESS_RACE;" & _
			"Uid=camila_teste;" & _
			"Pwd=Powerfull@1331;"		
			conexao.CommandTimeout = 6000
			conexao.open
			
			
end function

function FechaDB()
	
	conexao.Close()
	set conexao = nothing

end function

	Response.CodePage = 65001
	Response.charset = "UTF-8"
%>



