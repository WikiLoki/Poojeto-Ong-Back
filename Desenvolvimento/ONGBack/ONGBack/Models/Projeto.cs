using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Threading.Tasks;

namespace ONGBack.Models
{
    public class Projeto
    {
        public int ProjetoID { get; set; }

        [Required(ErrorMessage = "Campo obrigatorio")]
        public string NomeProjeto { get; set; }

        [Required(ErrorMessage = "Campo obrigatorio")]
        public DateTime DataExecução { get; set; }

        [Required(ErrorMessage = "Campo obrigatorio")]
        public string Atividades { get; set; }

        [Required(ErrorMessage = "Campo obrigatorio")]
        public string Cidade { get; set; }

        [Required(ErrorMessage = "Campo obrigatorio")]
        public string Local { get; set; }

        [Required(ErrorMessage = "Campo obrigatorio")]
        public int ONG { get; set; }

        [Required(ErrorMessage = "Campo obrigatorio")]
        public string Telefone { get; set; }

        [Required(ErrorMessage = "Campo obrigatorio")]
    }
}
