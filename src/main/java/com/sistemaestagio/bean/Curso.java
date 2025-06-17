package com.sistemaestagio.bean;

public class Curso {
	private int id;
	private String nome;
	private String instituicao;
	private int semestre;
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getNome() {
		return nome;
	}
	public void setNome(String nome) {
		this.nome = nome;
	}
	public String getInstituicao() {
	    return instituicao;
	}

	public void setInstituicao(String instituicao) {
	    this.instituicao = instituicao;
	}

	public int getSemestre() {
	    return semestre;
	}

	public void setSemestre(int semestre) {
	    this.semestre = semestre;
	}

}
