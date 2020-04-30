package br.com.fiap.model;

import java.util.ArrayList;
import java.util.List;

public class ComidaModel {

	private Long id;
	
	private String nome;
	
	private String descricao;
	
	private double preco;
	
	private String pais_origem;
	
	private double total_calorias;
	
	private String tipo;
	
	private String foto;
	
	private String foto2;
	
	private String foto3;
	
	private List<String> myList = new ArrayList<>();
	

	public ComidaModel(Long id, String nome, String descricao, double preco, String pais_origem, double total_calorias,
			String tipo, String foto, String foto2, String foto3, List<String> myList) {
		super();
		this.id = id;
		this.nome = nome;
		this.descricao = descricao;
		this.preco = preco;
		this.pais_origem = pais_origem;
		this.total_calorias = total_calorias;
		this.tipo = tipo;
		this.foto = foto;
		this.foto2 = foto2;
		this.foto3 = foto3;
		this.myList = myList;
	}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getNome() {
		return nome;
	}

	public void setNome(String nome) {
		this.nome = nome;
	}

	public String getDescricao() {
		return descricao;
	}

	public void setDescricao(String descricao) {
		this.descricao = descricao;
	}

	public double getPreco() {
		return preco;
	}

	public void setPreco(double preco) {
		this.preco = preco;
	}

	public String getPais_origem() {
		return pais_origem;
	}

	public void setPais_origem(String pais_origem) {
		this.pais_origem = pais_origem;
	}

	public double getTotal_calorias() {
		return total_calorias;
	}

	public void setTotal_calorias(double total_calorias) {
		this.total_calorias = total_calorias;
	}

	public String getTipo() {
		return tipo;
	}

	public void setTipo(String tipo) {
		this.tipo = tipo;
	}

	public String getFoto() {
		return foto;
	}

	public void setFoto(String foto) {
		this.foto = foto;
	}

	public String getFoto2() {
		return foto2;
	}

	public void setFoto2(String foto2) {
		this.foto2 = foto2;
	}

	public String getFoto3() {
		return foto3;
	}

	public void setFoto3(String foto3) {
		this.foto3 = foto3;
	}

	public List<String> getMyList() {
		return myList;
	}

	public void setMyList(List<String> myList) {
		this.myList = myList;
	}

	
	
}
