namespace BuildingDemo.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("Building")]
    public partial class Building
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public Building()
        {
            Appointments = new HashSet<Appointment>();
        }

        [StringLength(20)]
        public string ID { get; set; }

        public int BuildingTypeID { get; set; }

        [StringLength(50)]
        public string Address { get; set; }

        public int? NumFloors { get; set; }

        public int? YearBuild { get; set; }

        public bool? IsOccupied { get; set; }

        [Column(TypeName = "date")]
        public DateTime? PurchaseDate { get; set; }

        public double? PurchasePrice { get; set; }

        public int CustomerID { get; set; }

        public DateTime? CreateDate { get; set; }

        [Column(TypeName = "text")]
        public string Image { get; set; }

        public int? Bed { get; set; }

        public int? Bath { get; set; }

        [StringLength(50)]
        public string Name { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Appointment> Appointments { get; set; }

        public virtual BuildingType BuildingType { get; set; }

        public virtual Customer Customer { get; set; }
    }
}
