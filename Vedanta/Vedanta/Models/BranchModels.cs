using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel;
namespace Vedanta.Models
{
    [MetadataType(typeof(BranchesMetaData))]
    public partial class Branches
    {
        public class BranchesMetaData
        {
            [Required]
            [DataType(DataType.Text)]
            [DisplayName("Branch Code")]
            public string BranchCode { get; set; }

            [Required]
            [DataType(DataType.Text)]
            [DisplayName("Branch Name")]
            public string BranchName { get; set; }


            [DataType(DataType.Text)]
            [DisplayName("Regional Office")]
            public string RegionalOfficeId { get; set; }


            [DataType(DataType.Text)]
            [DisplayName("Zonal Office")]
            public string ZonalOfficeId { get; set; }

            [Required]
            [DataType(DataType.Text)]
            [DisplayName("Street Address")]
            public string Address1 { get; set; }


            [DataType(DataType.Text)]
            [DisplayName("Address Line 2")]
            public string Address2 { get; set; }

            [Required]
            [DataType(DataType.Text)]
            [DisplayName("City")]
            public string City { get; set; }

            [Required]
            [DataType(DataType.Text)]
            [DisplayName("State")]
            public string StateId { get; set; }


            [DataType(DataType.Text)]
            [DisplayName("Country")]
            public string CountryId { get; set; }

            [DataType(DataType.Text)]
            [DisplayName("Zip Code")]
            public string PIN { get; set; }


            [DataType(DataType.Text)]
            [DisplayName("Phone")]
            public string Phones { get; set; }


            [DataType(DataType.Text)]
            [DisplayName("Fax")]
            public string Fax { get; set; }

            [DataType(DataType.Text)]
            [DisplayName("Email")]
            public string Email { get; set; }

            [DataType(DataType.Text)]
            [DisplayName("Remarks")]
            public string Remarks { get; set; }

        }
    }

    public class BranchModels
    {
        public static int AddBranch(Branches newBr)
        {
            using (VedantaEntities ve = new VedantaEntities())
            {
                Branches oldBr = ve.Branches.FirstOrDefault(e => e.BranchCode == newBr.BranchCode && e.ClientId == newBr.ClientId);
                if (oldBr == null)
                {
                    newBr.IsActive = true;
                    ve.AddToBranches(newBr);
                    return ve.SaveChanges();
                }
                else
                {
                    return -1;
                }
            }
        }

        public static int UpdateBranchDetails(Branches newBr)
        {
            using (VedantaEntities ve = new VedantaEntities())
            {

                Branches oldBr = ve.Branches.FirstOrDefault(e => e.Id == newBr.Id);
                if (oldBr != null)
                {
                    oldBr.BranchTypeId = newBr.BranchTypeId;
                    oldBr.BranchCode = newBr.BranchCode;
                    oldBr.BranchName = newBr.BranchName;
                    oldBr.Address1 = newBr.Address1;
                    oldBr.Address2 = newBr.Address2;
                    oldBr.City = newBr.City;
                    oldBr.PIN = newBr.PIN;
                    oldBr.StateId = newBr.StateId;
                    oldBr.CountryId = newBr.CountryId;
                    oldBr.Phones = newBr.Phones;
                    oldBr.Email = newBr.Email;
                    oldBr.Fax = newBr.Fax;

                    if (newBr.RegionalOfficeId != null)
                        oldBr.RegionalOfficeId = newBr.RegionalOfficeId;
                    if (newBr.ZonalOfficeId != null)
                        oldBr.ZonalOfficeId = newBr.ZonalOfficeId;
                    oldBr.CreatedDate = newBr.CreatedDate;
                    oldBr.IsActive = newBr.IsActive;
                    oldBr.LastUpdatedDate = DateTime.Now.Date;
                    oldBr.Remarks = newBr.Remarks;

                    oldBr.Logo = newBr.Logo;
                    oldBr.ContentType = newBr.ContentType;
                    return ve.SaveChanges();
                }
                else
                {
                    return -1;
                }
            }
        }

        public static int CloseBranch(Branches newBr)
        {
            using (VedantaEntities ve = new VedantaEntities())
            {
                Branches oldBr = ve.Branches.FirstOrDefault(e => e.Id == newBr.Id);
                if (oldBr != null)
                {
                    oldBr.IsActive = newBr.IsActive;
                    oldBr.LastUpdatedDate = DateTime.Now.Date;
                    oldBr.Remarks = newBr.Remarks;
                    oldBr.ClosingDate = newBr.ClosingDate;
                    return ve.SaveChanges();
                }
                else
                {
                    return -1;
                }
            }
        }

        public static int ActivateBranch(int id, bool isActivating = false)
        {
            using (VedantaEntities ve = new VedantaEntities())
            {
                Branches oldBr = ve.Branches.FirstOrDefault(e => e.Id == id);
                if (oldBr != null)
                {
                    oldBr.IsActive = isActivating;
                    oldBr.LastUpdatedDate = DateTime.Now.Date;
                    return ve.SaveChanges();
                }
                else
                {
                    return -1;
                }
            }
        }

        public static List<vw_Branches> GetBranchesList()
        {
            using (VedantaEntities ve = new VedantaEntities())
            {
                return (from br in ve.vw_Branches
                        select br).ToList();

            }
        }

        public static List<vw_Branches> GetBranchesList(int clientId)
        {
            using (VedantaEntities ve = new VedantaEntities())
            {
                return (from br in ve.vw_Branches
                        where br.ClientId == clientId
                        select br).ToList();

            }
        }

        public static List<vw_Branches> GetBranchesList(int clientId, int regionId)
        {
            using (VedantaEntities ve = new VedantaEntities())
            {
                return (from br in ve.vw_Branches
                        where br.RegionalOfficeId == regionId &&
                        br.IsRegionalOfficeActive == true && br.IsZonalOfficeActive == true
                        select br).ToList();

            }
        }

        public static List<vw_Branches> GetBranchesList(int clientId, int zoneId, int regionId)
        {
            using (VedantaEntities ve = new VedantaEntities())
            {
                return (from br in ve.vw_Branches
                        where br.ZonalOfficeId == zoneId && br.RegionalOfficeId == regionId &&
                        br.IsRegionalOfficeActive == true && br.IsZonalOfficeActive == true
                        select br).ToList();

            }
        }

        public static vw_Branches GetBranchDetailsById(int branchId)
        {
            using (VedantaEntities ve = new VedantaEntities())
            {
                return ve.vw_Branches.FirstOrDefault(br => br.Id == branchId);

            }
        }

        public static Branches GetBranchById(int branchId)
        {
            using (VedantaEntities ve = new VedantaEntities())
            {
                return ve.Branches.FirstOrDefault(br => br.Id == branchId);
            }
        }
    }
}