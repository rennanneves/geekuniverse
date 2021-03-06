package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import modelo.Categoria;
import util.DBUtil;

public class CategoriaDao {
	
	public int cadastrar(Categoria categoria){
		Connection conexao = null;
		int retorno = 0;
		String sql = "INSERT INTO categoria(nome, status) values(?, ?) ";
		
		try{
			conexao = ConexaoFabrica.getConnection();
			
			PreparedStatement ps = conexao.prepareStatement(sql);
			
			ps.setString(1, categoria.getNome());
			ps.setInt(2, categoria.getStatus());
			
			retorno = ps.executeUpdate();
			
		} catch (SQLException e){
			e.printStackTrace();
		}catch (Exception e) {
			e.printStackTrace();
		}  finally{
			DBUtil.fechar(conexao);
		}
		return retorno;
	}
	
	public List<Categoria> listar(){
		Connection conexao = null;
		
		List<Categoria> listaDeCategorias = new ArrayList<Categoria>();
		Categoria categoria = null;
		
		String sql = "SELECT * FROM categoria";
		
		try{
			conexao = ConexaoFabrica.getConnection();
			
			PreparedStatement ps = conexao.prepareStatement(sql);
						
			ResultSet rs = ps.executeQuery();
			
			while(rs.next()){
				categoria = new Categoria();
				categoria.setId(rs.getInt("id"));
				categoria.setNome(rs.getString("nome"));
				categoria.setStatus(rs.getInt("status"));
				
				listaDeCategorias.add(categoria);
			}			
		} catch (SQLException e){
			e.printStackTrace();
		} catch (Exception e) {
			e.printStackTrace();
		} finally{
			DBUtil.fechar(conexao);
		}
		return listaDeCategorias;
	}
	
	public List<Categoria> listarAtivas(){
		Connection conexao = null;
		
		List<Categoria> listaDeCategorias = new ArrayList<Categoria>();
		Categoria categoria = null;
		
		String sql = "SELECT * FROM categoria where status = 1";
		
		try{
			conexao = ConexaoFabrica.getConnection();
			
			PreparedStatement ps = conexao.prepareStatement(sql);
						
			ResultSet rs = ps.executeQuery();
			
			while(rs.next()){
				categoria = new Categoria();
				categoria.setId(rs.getInt("id"));
				categoria.setNome(rs.getString("nome"));
				categoria.setStatus(rs.getInt("status"));
				
				listaDeCategorias.add(categoria);
			}			
		} catch (SQLException e){
			e.printStackTrace();
		} catch (Exception e) {
			e.printStackTrace();
		} finally{
			DBUtil.fechar(conexao);
		}
		return listaDeCategorias;
	}
	
	
	
	public boolean excluir(int registro){
		Connection conexao = null;
		
		String sql = "DELETE FROM categoria WHERE id = ?";
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
			return false;
		}catch (Exception e) {
			e.printStackTrace();
			return false;
		} 
		return retorno;
	}
	
	public boolean atualizar(Categoria categoria) {
		
		Connection conexao = null;
	        try {
	        	conexao = ConexaoFabrica.getConnection();
	        	
	            String query = "UPDATE categoria SET nome = ?, status = ? WHERE id = ?";

				PreparedStatement pstm = conexao.prepareStatement(query);

	            pstm.setString( 1, categoria.getNome());
	            pstm.setInt(2, categoria.getStatus());
	            pstm.setInt( 3, categoria.getId());
	         
	            pstm.executeUpdate();
	            pstm.close();

	        } catch (SQLException e) {
	            e.printStackTrace();
	            return false;
	        }catch (Exception e) {
				e.printStackTrace();
				return false;
			} 
	        return true;
	    }
	
	public static Categoria buscarPorId(int id){
		Connection conexao = null;
		
		Categoria categoria = null;
		
		String sql = "SELECT * FROM categoria where id = ?";
		
		try{
			conexao = ConexaoFabrica.getConnection();
			
			PreparedStatement ps = conexao.prepareStatement(sql);
			ps.setInt(1, id);			
			ResultSet rs = ps.executeQuery();
			
			rs.next();
				categoria = new Categoria();
				categoria.setId(rs.getInt("id"));
				categoria.setNome(rs.getString("nome"));
				categoria.setStatus(rs.getInt("status"));
				
			
		} catch (SQLException e){
			e.printStackTrace();
		} catch (Exception e) {
			e.printStackTrace();
		} finally{
			DBUtil.fechar(conexao);
		}
		return categoria;
	}
	
	public List<Categoria> listarLivros(){
		Connection conexao = null;
		
		List<Categoria> listaDeCategorias = new ArrayList<Categoria>();
		Categoria categoria = null;
		
		String sql = "SELECT * FROM categoria where nome = ? limit 4";
		
		try{
			conexao = ConexaoFabrica.getConnection();
			
			PreparedStatement ps = conexao.prepareStatement(sql);
			ps.setString(1, "Livro");
			ResultSet rs = ps.executeQuery();
			
			while(rs.next()){
				categoria = new Categoria();
				categoria.setId(rs.getInt("id"));
				categoria.setNome(rs.getString("nome"));
				categoria.setStatus(rs.getInt("status"));
				
				listaDeCategorias.add(categoria);
			}			
		} catch (SQLException e){
			e.printStackTrace();
		} catch (Exception e) {
			e.printStackTrace();
		} finally{
			DBUtil.fechar(conexao);
		}
		return listaDeCategorias;
	}
	public List<Categoria> listarQuadrinhos(){
		Connection conexao = null;
		
		List<Categoria> listaDeCategorias = new ArrayList<Categoria>();
		Categoria categoria = null;
		
		String sql = "SELECT * FROM categoria where nome = ? limit 4";
		
		try{
			conexao = ConexaoFabrica.getConnection();
			
			PreparedStatement ps = conexao.prepareStatement(sql);
			ps.setString(1, "Quadrinho");
			ResultSet rs = ps.executeQuery();
			
			while(rs.next()){
				categoria = new Categoria();
				categoria.setId(rs.getInt("id"));
				categoria.setNome(rs.getString("nome"));
				categoria.setStatus(rs.getInt("status"));
				
				listaDeCategorias.add(categoria);
			}			
		} catch (SQLException e){
			e.printStackTrace();
		} catch (Exception e) {
			e.printStackTrace();
		} finally{
			DBUtil.fechar(conexao);
		}
		return listaDeCategorias;
	}
	
	public List<Categoria> listarActionFigures(){
		Connection conexao = null;
		
		List<Categoria> listaDeCategorias = new ArrayList<Categoria>();
		Categoria categoria = null;
		
		String sql = "SELECT * FROM categoria where nome = ? limit 4";
		
		try{
			conexao = ConexaoFabrica.getConnection();
			
			PreparedStatement ps = conexao.prepareStatement(sql);
			ps.setString(1, "Action Figure	");
			ResultSet rs = ps.executeQuery();
			
			while(rs.next()){
				categoria = new Categoria();
				categoria.setId(rs.getInt("id"));
				categoria.setNome(rs.getString("nome"));
				categoria.setStatus(rs.getInt("status"));
				
				listaDeCategorias.add(categoria);
			}			
		} catch (SQLException e){
			e.printStackTrace();
		} catch (Exception e) {
			e.printStackTrace();
		} finally{
			DBUtil.fechar(conexao);
		}
		return listaDeCategorias;
	}
}