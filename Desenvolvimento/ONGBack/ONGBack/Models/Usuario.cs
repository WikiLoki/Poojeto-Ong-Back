using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Threading.Tasks;

namespace ONGBack.Models
{
    public class Usuario
    {
        public int UsuarioID { get; set; }

        [Required(ErrorMessage = "Campo obrigatorio")]
        public string CPF { get; set; }

        [Required(ErrorMessage = "Campo obrigatorio")]
        public string Nome { get; set; }

        [Required(ErrorMessage = "Campo obrigatorio")]
        public string Email { get; set; }

        [Required(ErrorMessage = "Campo obrigatorio")]
        public string Senha { get; set; }

        [Required(ErrorMessage = "Campo obrigatorio")]
        public string Telefone { get; set; }

        [Required(ErrorMessage = "Campo obrigatorio")]
    }
}
