package br.com.fiap.controller;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import br.com.fiap.model.ComidaModel;
import br.com.fiap.repository.ComidaRepository;

@Controller
public class ComidaController {

	private ComidaRepository repository = new ComidaRepository();

	// Busca
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String findAll(Model model) {

		List<ComidaModel> comidas = repository.findAll();
		model.addAttribute("comidas", comidas);

		return "comidas";
	}
	
	@RequestMapping(value = "/adicionarComida", method = RequestMethod.GET)  
	public String openSave() {
		return "adicionarComida";
	}
//
	@RequestMapping(value = "/comida/adicionar", method = RequestMethod.POST)
	public String save(ComidaModel ComidaModel, RedirectAttributes redirectAttributes) {
		repository.save(ComidaModel);
		
		redirectAttributes.addFlashAttribute("messageCriar", "Comida Deliciosa criada com sucesso!");
		
		return "redirect:/";
	}
//	
	@RequestMapping(value = "/comida/editar/{id}", method = RequestMethod.GET)
	public String openUpdate(@PathVariable("id") long id, Model model) {
	
	ComidaModel comidaFound = repository.findById(id);
		model.addAttribute("comida", comidaFound);

		model.addAttribute("comida", repository.findById(id));
		
		return "editarComida";
	}

	@RequestMapping(value = "/comida/salvarEditar", method = RequestMethod.POST)
	public String update(ComidaModel comida, Model model,RedirectAttributes redirectAttributes) {
		
		repository.update(comida);
		
		List<ComidaModel> comidaDeliciosas = repository.findAll();
		model.addAttribute("comidas", comidaDeliciosas);
		
		model.addAttribute("comidas", repository.findAll());
		
		redirectAttributes.addFlashAttribute("messageEditar", "Comida Deliciosa foi editada com sucesso para uma mais deliciosa ainda!!!!");
		
		return "redirect:/";		
	}
	
	@RequestMapping(value = "/comida/deletar/{id}", method = RequestMethod.DELETE)
	public String delete(@PathVariable("id") long id, RedirectAttributes redirectAttributes) {
		repository.deleteById(id);
					
		redirectAttributes.addFlashAttribute("messageDeletar", "Comida deliciosa foi excluida :( Que pena ;/ ");
	
		return "redirect:/";
	}

}
