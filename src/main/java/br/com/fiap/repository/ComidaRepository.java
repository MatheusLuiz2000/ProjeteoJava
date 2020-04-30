package br.com.fiap.repository;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import br.com.fiap.model.ComidaModel;;

public class ComidaRepository {
	
	private static Map<Long, ComidaModel> comidas;
	
	public ComidaRepository() {
		comidas = new HashMap<Long, ComidaModel>();
		
		ArrayList<String> moquecaIngredientes = new ArrayList<String>();
			
		moquecaIngredientes.add("1 kg de peixe cação ou garoupa em postas");
		moquecaIngredientes.add("2 kg de peixe cação ou garoupa em postas");
		moquecaIngredientes.add("3 kg de peixe cação ou garoupa em postas");
		moquecaIngredientes.add("4 kg de peixe cação ou garoupa em postas");
		moquecaIngredientes.add("5 kg de peixe cação ou garoupa em postas");
		 
		comidas.put(1L, new ComidaModel(
				1L,
				"Moqueca de peixe", 
				"Moqueca de peixe é um prato maravilhoso para qualquer época do ano, como na sexta-feira santa e no verão. Separamos para você duas receitas de moqueca de peixe: moqueca de peixe com tilápia e moqueca de peixe com leite de coco.",
				12.00,
				"Brasil",
				500.00,
				"Saudável",
				"https://www.saboravida.com.br/wp-content/uploads/2019/09/comidas-tipicas-brasileiras-ganham-destaque-no-salao-do-artesanato-em-sao-paulo.jpg",
				"https://www.saboravida.com.br/wp-content/uploads/2019/09/comidas-tipicas-brasileiras-ganham-destaque-no-salao-do-artesanato-em-sao-paulo.jpg",
				"https://www.saboravida.com.br/wp-content/uploads/2019/09/comidas-tipicas-brasileiras-ganham-destaque-no-salao-do-artesanato-em-sao-paulo.jpg",
				moquecaIngredientes));
		
		comidas.put(2L, new ComidaModel(
				2L,
				"Moqueca de peixe",
				"Moqueca de peixe é um prato maravilhoso para qualquer época do ano, como na sexta-feira santa e no verão. Separamos para você duas receitas de moqueca de peixe: moqueca de peixe com tilápia e moqueca de peixe com leite de coco.",
				12.00,
				"Brasil",
				500.00,
				"Saudável",
				"https://www.saboravida.com.br/wp-content/uploads/2019/09/comidas-tipicas-brasileiras-ganham-destaque-no-salao-do-artesanato-em-sao-paulo.jpg",
				"https://www.saboravida.com.br/wp-content/uploads/2019/09/comidas-tipicas-brasileiras-ganham-destaque-no-salao-do-artesanato-em-sao-paulo.jpg",
				"https://www.saboravida.com.br/wp-content/uploads/2019/09/comidas-tipicas-brasileiras-ganham-destaque-no-salao-do-artesanato-em-sao-paulo.jpg",
				moquecaIngredientes));
		comidas.put(3L, new ComidaModel(
				3L,
				"Moqueca de peixe",
				"Moqueca de peixe é um prato maravilhoso para qualquer época do ano, como na sexta-feira santa e no verão. Separamos para você duas receitas de moqueca de peixe: moqueca de peixe com tilápia e moqueca de peixe com leite de coco.",
				12.00,
				"Brasil",
				500.00,
				"Saudável",
				"https://www.saboravida.com.br/wp-content/uploads/2019/09/comidas-tipicas-brasileiras-ganham-destaque-no-salao-do-artesanato-em-sao-paulo.jpg",
				"https://www.saboravida.com.br/wp-content/uploads/2019/09/comidas-tipicas-brasileiras-ganham-destaque-no-salao-do-artesanato-em-sao-paulo.jpg",
				"https://www.saboravida.com.br/wp-content/uploads/2019/09/comidas-tipicas-brasileiras-ganham-destaque-no-salao-do-artesanato-em-sao-paulo.jpg",
				moquecaIngredientes));
	}

	
	public List<ComidaModel> findAll() {
		return new ArrayList<ComidaModel>(comidas.values());
	}
	
	public ComidaModel findById(long id) {
		return comidas.get(id);
	}
	
	public void save(ComidaModel comida) {
		ArrayList<String> moquecaIngredientesAdicionar = new ArrayList<String>();
		Long newId = (long) (comidas.size() + 1);
		
		comida.setId(newId);
		List<String> ingredientesNaoFormatado = comida.getMyList();
		
		String ingredienteArray = ingredientesNaoFormatado.get(0);
		
		String[] ingredientesItens = ingredienteArray.split("\n");
		
		System.out.println(comida.getTotal_calorias());
		for (String item : ingredientesItens) {
			moquecaIngredientesAdicionar.add(item);
		}
		
		comida.setMyList(moquecaIngredientesAdicionar);
		
		System.out.println(comida.getFoto());
		
		comidas.put(newId, comida);
	}
	
	public void update(ComidaModel comida) {
		ArrayList<String> moquecaIngredientesAdicionar = new ArrayList<String>();
		
		List<String> ingredientesNaoFormatado = comida.getMyList();
		
		String ingredienteArray = ingredientesNaoFormatado.get(0);
		
		String[] ingredientesItens = ingredienteArray.split("\n");
		
		for (String item : ingredientesItens) {
			moquecaIngredientesAdicionar.add(item);
		}
		
		comida.setMyList(moquecaIngredientesAdicionar);
		
		System.out.println(comida.getFoto());
		
		System.out.println(comida.getId());
		comidas.put(comida.getId(),comida);
	}
	
	public void deleteById(long id) {
		comidas.remove(id);
	}


	
	
}
