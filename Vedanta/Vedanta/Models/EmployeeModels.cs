using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.ComponentModel.DataAnnotations;
using System.Globalization;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.Web.Security;

namespace Vedanta.Models
{
    [MetadataType(typeof(EmployeeMetaData))]
    public partial class Employees
    {
        public class EmployeeMetaData
        {
            [Required]
            [DataType(DataType.Text)]
            [DisplayName("Employee Id")]
            public string EmployeeId { get; set; }

            [Required]
            [DataType(DataType.Text)]
            [DisplayName("Employee Rank")]
            public string EmployeesRankId { get; set; }


            [DataType(DataType.Text)]
            [DisplayName("Branch Name")]
            public string BranchId { get; set; }


            [DataType(DataType.Text)]
            [DisplayName("Regional Office")]
            public string RegionId { get; set; }


            [DataType(DataType.Text)]
            [DisplayName("Zonal Office")]
            public string ZoneId { get; set; }


            [Required]
            [DataType(DataType.Text)]
            [DisplayName("First Name")]
            public string FirstName { get; set; }


            [DataType(DataType.Text)]
            [DisplayName("Middle Name")]
            public string MiddleName { get; set; }

            [Required]
            [DataType(DataType.Text)]
            [DisplayName("Last Name")]
            public string LastName { get; set; }

            [Required]
            [DataType(DataType.Text)]
            [DisplayName("Gender")]
            public string Gender { get; set; }

            [Required]
            [DataType(DataType.Text)]
            [DisplayName("Marital Status")]
            public string MaritalStatusId { get; set; }


            [DataType(DataType.Date)]
            [DisplayName("Date Of Birth")]
            public string DOB { get; set; }


            [DataType(DataType.Text)]
            [DisplayName("Father/Guardian Name")]
            public string FatherName { get; set; }

            [DataType(DataType.Text)]
            [DisplayName("Mother Name")]
            public string MotherName { get; set; }

            [Required]
            [DataType(DataType.Text)]
            [DisplayName("Street Address")]
            public string Street { get; set; }


            [DataType(DataType.Text)]
            [DisplayName("Address Line 2")]
            public string Street2 { get; set; }

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
            public string Zip { get; set; }


            [DataType(DataType.Text)]
            [DisplayName("Phone")]
            public string Phone { get; set; }


            [DataType(DataType.Text)]
            [DisplayName("Mobile")]
            public string Mobile { get; set; }

            [DataType(DataType.Text)]
            [DisplayName("Email")]
            public string Email { get; set; }


            [DataType(DataType.Text)]
            [DisplayName("PAN")]
            public string PAN { get; set; }


            [DataType(DataType.Text)]
            [DisplayName("Passport No.")]
            public string PassportNo { get; set; }

            [DataType(DataType.Text)]
            [DisplayName("Aadhar Number")]
            public string UIDNo { get; set; }

            [Required]
            [DataType(DataType.Text)]
            [DisplayName("Highest Qualification")]
            public string QualificationId { get; set; }
        }
    }

    public class EmployeeModels
    {
        public static int AddEmployee(Employees emp)
        {
            using (VedantaEntities ve = new VedantaEntities())
            {
                Employees oldEmp = ve.Employees.FirstOrDefault(e => emp.EmployeeId.Equals(e.EmployeeId));
                if (oldEmp == null)
                {
                    if (emp.BranchId != null)
                    {
                        Utilities.BranchRegionZones brz = Utilities.GetRegionAndZoneByBranchId(emp.BranchId.Value);
                        if (brz != null && brz.ZoneId > 0 && brz.RegionId > 0)
                        {
                            emp.RegionId = brz.RegionId;
                            emp.ZoneId = brz.ZoneId;
                        }
                    }
                    if (emp.RegionId != null)
                    {
                        emp.ZoneId = Utilities.GetRegionZoneId(emp.RegionId.Value);
                    }
                    emp.IsActive = true;
                    emp.CreatedDate = DateTime.Now.Date;
                    ve.AddToEmployees(emp);
                    return ve.SaveChanges();
                }
                else
                {
                    return -1;
                }
            }
        }

        public static int UpdateEmployee(Employees emp)
        {
            using (VedantaEntities ve = new VedantaEntities())
            {
                if (emp != null)
                {
                    var oldEmp = ve.Employees.FirstOrDefault(e => emp.EmployeeId.Equals(e.EmployeeId));
                    if (oldEmp != null)
                    {
                        if (emp.IsActive == null)
                        {
                            emp.IsActive = oldEmp.IsActive;
                            emp.LastUpdated = DateTime.Now.Date;
                        }
                        ve.ApplyCurrentValues(oldEmp.GetType().Name, emp);
                        return ve.SaveChanges();
                    }
                    //var clientWithNewValue = entity.Clients.FirstOrDefault(c => c.Id == oldClient.Id);
                }
                return 0;
            }
        }

        public static int DeleteEmployee(string empId)
        {
            using (VedantaEntities ve = new VedantaEntities())
            {
                Employees oldEmp = ve.Employees.FirstOrDefault(e => empId.Equals(e.EmployeeId, StringComparison.OrdinalIgnoreCase));
                if (oldEmp != null)
                {
                    oldEmp.IsActive = false;
                    return ve.SaveChanges();
                }
                return 0;
            }
        }

        public static int DeleteEmployee(int clientId, string empId)
        {
            using (VedantaEntities ve = new VedantaEntities())
            {
                Employees oldEmp = ve.Employees.FirstOrDefault(e => empId.Equals(e.EmployeeId, StringComparison.OrdinalIgnoreCase));
                if (oldEmp != null)
                {
                    oldEmp.IsActive = false;
                    return ve.SaveChanges();
                }
                return 0;
            }
        }

        public static List<vw_Employees> GetEmployeesList()
        {
            using (VedantaEntities ve = new VedantaEntities())
            {
                return (from empl in ve.vw_Employees
                        where empl.IsActive == true
                        select empl).ToList();

            }
        }

        public static List<vw_Employees> GetEmployeesList(int clientId)
        {
            using (VedantaEntities ve = new VedantaEntities())
            {
                return (from empl in ve.vw_Employees
                        where empl.IsActive == true && empl.ClientId == clientId
                        select empl).ToList();

            }
        }


        public static List<vw_Employees> GetEmployeesList(int clientId, int branchId)
        {
            using (VedantaEntities ve = new VedantaEntities())
            {
                return (from empl in ve.vw_Employees
                        where empl.IsActive == true && empl.ClientId == clientId && empl.BranchId == branchId
                        select empl).ToList();

            }
        }

        public static List<vw_Employees> GetEmployeesList(string searchText, int? clientId, int? branchId)
        {
            using (VedantaEntities ve = new VedantaEntities())
            {
                List<vw_Employees> evar = new List<vw_Employees>();

                if (clientId == null && branchId == null)
                    evar = (from empls in ve.vw_Employees
                            where (empls.EmployeeId.StartsWith(searchText)
                             || empls.FirstName.StartsWith(searchText)
                             || empls.LastName.StartsWith(searchText)
                             || empls.City.StartsWith(searchText)
                             || empls.BranchName.StartsWith(searchText)
                             || empls.BranchCode.StartsWith(searchText)
                             || empls.RankName.StartsWith(searchText)
                             || empls.State.StartsWith(searchText)
                             )
                            select empls).ToList();
                else
                {
                    if (branchId == null)
                        evar = (from empls in ve.vw_Employees
                                where empls.ClientId == clientId &&
                                (empls.EmployeeId.StartsWith(searchText)
                                 || empls.FirstName.StartsWith(searchText)
                                 || empls.LastName.StartsWith(searchText)
                                 || empls.City.StartsWith(searchText)
                                 || empls.BranchName.StartsWith(searchText)
                                 || empls.BranchCode.StartsWith(searchText)
                                 || empls.RankName.StartsWith(searchText)
                                 || empls.State.StartsWith(searchText)
                                 )
                                select empls).ToList();
                    else
                        evar = (from empls in ve.vw_Employees
                                where empls.ClientId == clientId && empls.BranchId == branchId &&
                                (empls.EmployeeId.StartsWith(searchText)
                                 || empls.FirstName.StartsWith(searchText)
                                 || empls.LastName.StartsWith(searchText)
                                 || empls.City.StartsWith(searchText)
                                 || empls.BranchName.StartsWith(searchText)
                                 || empls.BranchCode.StartsWith(searchText)
                                 || empls.RankName.StartsWith(searchText)
                                 || empls.State.StartsWith(searchText)
                                 )
                                select empls).ToList();

                }

                return evar;

            }
        }

        public class SearchedEmployees
        {
            string _id;

            public string Id
            {
                get { return _id; }
                set { _id = value; }
            }
            string _name;

            public string Name
            {
                get { return _name; }
                set { _name = value; }
            }

            string _city;

            public string City
            {
                get { return _city; }
                set { _city = value; }
            }
            string _state;

            public string State
            {
                get { return _state; }
                set { _state = value; }
            }
            string _branch;

            public string Branch
            {
                get { return _branch; }
                set { _branch = value; }
            }
            string _designation;

            public string Designation
            {
                get { return _designation; }
                set { _designation = value; }
            }

        }

        public static List<SearchedEmployees> GetSearchedEmployeesList(string searchText)
        {
            using (VedantaEntities ve = new VedantaEntities())
            {
                List<SearchedEmployees> empAll =
                    (from empls in ve.vw_Employees
                     where (
                     empls.EmployeeId.StartsWith(searchText)
                         || empls.FirstName.StartsWith(searchText)
                         || empls.LastName.StartsWith(searchText)
                         || empls.City.StartsWith(searchText)
                         || empls.BranchName.StartsWith(searchText)
                         || empls.BranchCode.StartsWith(searchText)
                         || empls.RankName.StartsWith(searchText)
                         || empls.State.StartsWith(searchText)
                         )
                     select new SearchedEmployees
                     {
                         Name = (empls.FirstName + " " + (empls.MiddleName ?? string.Empty) + " " + (empls.LastName ?? string.Empty)),
                         Id = empls.EmployeeId,
                         City = empls.City,
                         State = empls.State,
                         Branch = empls.BranchName,
                         Designation = empls.RankName
                     }).ToList();

                return empAll;
            }
        }



        public static SearchedEmployees GetEmployeeDetailsById(string empId)
        {
            using (VedantaEntities ve = new VedantaEntities())
            {
                SearchedEmployees emp =
                    (from empls in ve.vw_Employees
                     where empls.IsActive == true &&
                     empls.EmployeeId.Equals(empId)
                     select new SearchedEmployees
                     {
                         Name = (empls.FirstName + " " + (empls.MiddleName ?? string.Empty) + " " + (empls.LastName ?? string.Empty)),
                         Id = empls.EmployeeId,
                         City = empls.City,
                         State = empls.State,
                         Branch = empls.BranchName,
                         Designation = empls.RankName
                     }).FirstOrDefault();

                return emp;
            }
        }

        public static Employees GetEmployeeById(string empId)
        {
            using (VedantaEntities ve = new VedantaEntities())
            {
                return ve.Employees.FirstOrDefault(em => empId.Equals(em.EmployeeId, StringComparison.OrdinalIgnoreCase));
            }
        }

    }
}