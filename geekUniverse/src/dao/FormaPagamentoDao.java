package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import modelo.FormaPagamento;
import util.DBUtil;

public class FormaPagamentoDao {
	
	public int cadastrar(FormaPagamento pagamento){
		Connection conexao = null;
		int retorno = 0;
		String sql = "INSERT INTO formaPagamento(tipoPagamento, parcelas, valor) values(?, ?, ?) ";
		
		try{
			conexao = ConexaoFabrica.getConnection();
			
			PreparedStatement ps = conexao.prepareStatement(sql);
			
			ps.setString(1, pagamento.getTipoPagamento());
			ps.setInt(2, pagamento.getParcelas());
			ps.setDouble(3, pagamento.getValor());
			
			retorno = ps.executeUpdate();
			
		} catch (SQLException e){
			e.printStackTrace();
		} finally{
			DBUtil.fechar(conexao);
		}
		return retorno;
	}
	
	public List<FormaPagamento> listar(){
		Connection conexao = null;
		
		List<FormaPagamento> listaDeFormaPagamento = new ArrayList<FormaPagamento>();
		FormaPagamento pagamento = null;
		
		String sql = "SELECT * FROM formaPagamento";
		
		try{
			conexao = ConexaoFabrica.getConnection();
			
			PreparedStatement ps = conexao.prepareStatement(sql);
						
			ResultSet rs = ps.executeQuery();
			
			while(rs.next()){
				pagamento = new FormaPagamento();
				pagamento.setId(rs.getInt("id"));
				pagamento.setTipoPagamento(rs.getString("tipoPagamento"));
				pagamento.setParcelas(rs.getInt("parcelas"));
				pagamento.setValor(rs.getDouble("valor"));
				
				listaDeFormaPagamento.add(pagamento);
			}			
		} catch (SQLException e){
			e.printStackTrace();
		} finally{
			DBUtil.fechar(conexao);
		}
		return listaDeFormaPagamento;
	}		
	
	
	public boolean excluir(int registro){
		Connection conexao = null;
		
		String sql = "DELETE FROM formaPagamento WHERE id = ?";
		boolean retorno = false;
		
		try{
			int r = 0; 
			conexao = ConexaoFabrica.getConnection();
			
			PreparedStatement ps = conexao.prepareStatement(sql);
			ps.setInt(1, registro);
			r = ps.executeUpdate();
			
			if(r > 0)
				retorno = true;
									
		} catch (SQLException e){
			e.printStackTrace();
		}
		return retorno;
	}
	
	public boolean atualizar(FormaPagamento pagamento) {
		
		Connection conexao = null;
	        try {
	        	conexao = ConexaoFabrica.getConnection();
	        	
	            String query = "UPDATE formaPagamento SET tipoPagamento = ?, parcelas = ?, preco = ? WHERE id = ?";

				PreparedStatement pstm = conexao.prepareStatement(query);

	            pstm.setString( 1, pagamento.getTipoPagamento());
	            pstm.setInt( 2, pagamento.getParcelas());
	            pstm.setDouble( 3, pagamento.getValor());
	         
	            pstm.executeUpdate();
	            pstm.close();

	        } catch (SQLException e) {
	            e.printStackTrace();
	        }
	        return true;
	    }
}