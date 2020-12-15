using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Metadata.Builders;
using ONGBack.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace ONGBack.Dados.EntityFramework.Configuração
{
    public class UsuarioConfiguracao : IEntityTypeConfiguration<Usuario>
    {
        public void Configure(EntityTypeBuilder<Usuario> builder)
        {
            builder.ToTable("Usuario", "ONGBack");
            builder.HasKey("UsuarioID");
            builder.Property(t => t.UsuarioID).HasColumnName("UsuarioID").HasColumnType("int").IsRequired();
            builder.Property(t => t.CPF).HasColumnName("CPF").HasColumnType("varchar(11)").IsRequired();
            builder.Property(t => t.Nome).HasColumnName("Nome").HasColumnType("varchar(100)").IsRequired();
            builder.Property(t => t.Email).HasColumnName("Email").HasColumnType("varchar(100)").IsRequired();
            builder.Property(t => t.Senha).HasColumnName("Senha").HasColumnType("varchar(100)").IsRequired();
            builder.Property(t => t.Telefone).HasColumnName("Telefone").HasColumnType("varchar(100)").IsRequired();
            builder.Property(t => t.ONGID).HasColumnName("ONGID").HasColumnType("varchar(100)").IsRequired();
        }
    }
}
