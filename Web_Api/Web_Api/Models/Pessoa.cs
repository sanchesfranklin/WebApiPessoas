using System;
using System.Collections.Generic;

#nullable disable

namespace Web_Api.Models
{
    public partial class Pessoa
    {
        public int IdPessoa { get; set; }
        public string Nome { get; set; }
        public DateTime? DataNascimento { get; set; }
        public decimal? Salario { get; set; }
        public string Observacoes { get; set; }
        public string NomeMae { get; set; }
        public string NomePai { get; set; }
        public string Cpf { get; set; }
    }
}
