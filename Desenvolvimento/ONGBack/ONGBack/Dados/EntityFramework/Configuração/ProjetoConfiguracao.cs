using ONGBack.Models;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Metadata.Builders;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;


namespace ONGBack.Dados.EntityFramework.Configuração
{
    public class ProjetoConfiguracao : IEntityTypeConfiguration<Projeto>
    {
        public void Configure(EntityTypeBuilder<Projeto> builder)
        {
            builder.ToTable("Projeto", "ONGBack");
            builder.HasKey("ProjetoID");
            builder.Property(t => t.ProjetoID).HasColumnName("ProjetoID").HasColumnType("int").IsRequired();
            builder.Property(t => t.NomeProjeto).HasColumnName("NomeProjeto").HasColumnType("varchar(100)").IsRequired();
            builder.Property(t => t.DataExecução).HasColumnName("DataExecução").HasColumnType("datetime").IsRequired();
            builder.Property(t => t.Atividades).HasColumnName("Atividades").HasColumnType("varchar(200)").IsRequired();
            builder.Property(t => t.Cidade).HasColumnName("Cidade").HasColumnType("varchar(100)").IsRequired();
            builder.Property(t => t.Local).HasColumnName("Local").HasColumnType("varchar(100)").IsRequired();
            builder.Property(t => t.ONGID).HasColumnName("ONGID").HasColumnType("varchar(100)").IsRequired();
        }
    }
}
