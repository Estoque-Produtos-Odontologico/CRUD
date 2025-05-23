/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */

/**
 *
 * @author valen
 */
public class Produto {
    private int produtoID;
    private int categoria;
    private String codigo;
    private String descrição;
    private int quantidade;
    private double preco_unitário;
    
    public int getProdutoId () { return produtoID;}
    public void setProdutoID (int produtoID){ this.produtoID = produtoID; }
    
    public int getCategoria () { return categoria;}
    public void setCategoria (int categoria){ this.categoria = categoria; }
    
    public String getCodigo () { return codigo;}
    public void setCodigo (String codigo){ this.codigo = codigo; }
    
    public String getDescrição () { return descrição;}
    public void setDescrição ( String descrição) { this.descrição = descrição; }
    
    public int getQuantidade() { return quantidade;}
    public void setQuantidade (int quantidade){ this.quantidade = quantidade; }
    
    public double getPreco_unitário() { return preco_unitário;}
    public void setPreco_unitário (int preco_unitário){ this.preco_unitário = preco_unitário; }
    
    
      
}
