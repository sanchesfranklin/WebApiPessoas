using System;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Metadata;

#nullable disable

namespace Web_Api.Models
{
    public partial class AppDbContext : DbContext
    {
        public AppDbContext()
        {
        }

        public AppDbContext(DbContextOptions<AppDbContext> options)
            : base(options)
        {
        }

        public virtual DbSet<Pessoa> Pessoas { get; set; }
        public virtual DbSet<Pessoas2> Pessoas2s { get; set; }

        protected override void OnConfiguring(DbContextOptionsBuilder optionsBuilder)
        {
            if (!optionsBuilder.IsConfigured)
            {
                optionsBuilder.UseSqlServer("Data Source=DESKTOP-P6I5DHK\\SQLEXPRESS;Initial Catalog=Teste;Trusted_Connection=True;");
            }
        }

        protected override void OnModelCreating(ModelBuilder modelBuilder)
        {
            modelBuilder.HasAnnotation("Relational:Collation", "Latin1_General_CI_AS");

            modelBuilder.Entity<Pessoa>(entity =>
            {
                entity.HasKey(e => e.IdPessoa)
                    .HasName("PK__Pessoas__83D303D07A6C1DD8");

                entity.HasIndex(e => e.Cpf, "IX_Cpf")
                    .IsUnique();

                entity.HasIndex(e => e.DataNascimento, "indice_dataNascimento");

                entity.HasIndex(e => e.Nome, "indice_nome");

                entity.Property(e => e.IdPessoa).HasColumnName("idPessoa");

                entity.Property(e => e.Cpf)
                    .HasMaxLength(11)
                    .IsUnicode(false)
                    .HasColumnName("cpf")
                    .IsFixedLength(true);

                entity.Property(e => e.DataNascimento)
                    .HasColumnType("datetime")
                    .HasColumnName("dataNascimento");

                entity.Property(e => e.Nome)
                    .HasMaxLength(50)
                    .IsUnicode(false)
                    .HasColumnName("nome");

                entity.Property(e => e.NomeMae)
                    .HasMaxLength(50)
                    .IsUnicode(false)
                    .HasColumnName("nomeMae");

                entity.Property(e => e.NomePai)
                    .HasMaxLength(50)
                    .IsUnicode(false)
                    .HasColumnName("nomePai");

                entity.Property(e => e.Observacoes)
                    .HasMaxLength(200)
                    .IsUnicode(false)
                    .HasColumnName("observacoes");

                entity.Property(e => e.Salario)
                    .HasColumnType("decimal(18, 0)")
                    .HasColumnName("salario");
            });

            modelBuilder.Entity<Pessoas2>(entity =>
            {
                entity.HasKey(e => e.IdNome)
                    .HasName("PK__Pessoas2__4B2D009D93C022A3");

                entity.ToTable("Pessoas2");

                entity.Property(e => e.Cpf)
                    .HasMaxLength(11)
                    .IsUnicode(false)
                    .IsFixedLength(true);

                entity.Property(e => e.Nome)
                    .HasMaxLength(50)
                    .IsUnicode(false);
            });

            OnModelCreatingPartial(modelBuilder);
        }

        partial void OnModelCreatingPartial(ModelBuilder modelBuilder);
    }
}
