using Microsoft.EntityFrameworkCore;
using ONGBack.Dados.EntityFramework.Configuração;
using ONGBack.Models;

namespace ONGBack.Dados.EntityFramework.Comum
{
    public class Contexto : DbContext
    {
        public DbSet<Usuario> Usuario { get; set; }
        public DbSet<Projeto> Projeto { get; set; }

        protected override void OnModelCreating(ModelBuilder modelBuilder)
        {
            modelBuilder.ApplyConfiguration(new UsuarioConfiguracao());
            modelBuilder.ApplyConfiguration(new ProjetoConfiguracao());

            base.OnModelCreating(modelBuilder);
        }

        protected override void OnConfiguring(DbContextOptionsBuilder optionsBuilder)
        {
            optionsBuilder.UseSqlServer(@"
                Data source = 201.62.57.93;
                database = dbPICC_20202;
                user id = laboratorio;
                password = @laboratorio*;
            ");

        }
    }
}
