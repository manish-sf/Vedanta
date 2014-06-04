using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace Vedanta.Models
{
    public enum MessageType
    {
        None = 0,
        Success,
        Faild,
        Information,
        Error
    }

    public enum PaymentTypes
    {
        Expense = 1,
        Income
    }

    public class ApplicationMessages
    {
        public string MessageText;
        public MessageType Message_Type;
        public ApplicationMessages()
        {
            this.MessageText = string.Empty;
            this.Message_Type = 0;
        }

        public ApplicationMessages(string msgText, MessageType msgType)
        {
            this.MessageText = msgText;
            this.Message_Type = msgType;
        }

    }

    public class Utilities
    {
        public static int IndiaCountryCode = GetDefaultCountryCode(); //for India;

        public static int GetDefaultCountryCode()
        {
            using (VedantaEntities islObject = new VedantaEntities())
            {
                int defaultCountryCode = 0;
                defaultCountryCode = islObject.Countries.FirstOrDefault(cn => cn.Name == "India").Id;
                return defaultCountryCode;
            }
        }

        public class CountryNameList
        {
            int _countryId;
            public int CountryId
            {
                get { return _countryId; }
                set { _countryId = value; }
            }
            string _Name;

            public string Name
            {
                get { return _Name; }
                set { _Name = value; }
            }

        }

        public static SelectList GetCountryList()
        {
            try
            {

                using (VedantaEntities islObject = new VedantaEntities())
                {
                    // List of all coutries
                    List<CountryNameList> countryList =
                   (from country in islObject.Countries
                    select new CountryNameList { CountryId = country.Id, Name = country.Name }).ToList();
                    return new SelectList(countryList, "CountryId", "Name", IndiaCountryCode);

                }
            }
            catch
            {
                return null;
            }
        }


        public class StateNameList
        {
            int _stateId;

            public int StateId
            {
                get { return _stateId; }
                set { _stateId = value; }
            }
            string _name;

            public string Name
            {
                get { return _name; }
                set { _name = value; }
            }
        }

        public static SelectList GetStateList(int? countryId)
        {
            try
            {
                using (VedantaEntities islObject = new VedantaEntities())
                {
                    List<StateNameList> stateList = null;

                    if (countryId != null)
                    {
                        // List of States for given country
                        stateList =
                       (from state in islObject.States
                        where state.CountryId == countryId
                        select new StateNameList { StateId = state.Id, Name = state.Name }).ToList();
                        return new SelectList(stateList, "StateId", "Name");
                    }
                    else
                    {
                        // List of all States
                        stateList =
                       (from state in islObject.States
                        select new StateNameList { StateId = state.Id, Name = state.Name }).ToList();
                        return new SelectList(stateList, "StateId", "Name");
                    }
                }
            }
            catch
            {
                return null;
            }
        }


        public class CourseNameList
        {
            int _id;

            public int Id
            {
                get { return _id; }
                set { _id = value; }
            }
            string _courseName;

            public string CourseName
            {
                get { return _courseName; }
                set { _courseName = value; }
            }

        }


        public static SelectList GetCourseNameList()
        {
            try
            {
                using (VedantaEntities islObject = new VedantaEntities())
                {
                    // List of all courses
                    List<CourseNameList> courseList = (from course in islObject.Courses
                                                       select new CourseNameList { Id = course.Id, CourseName = course.CourseName }).ToList();
                    return new SelectList(courseList, "Id", "CourseName");

                }
            }
            catch
            {
                return null;
            }
        }

        public static SelectList GetCourseNameList(int clientId)
        {
            try
            {
                using (VedantaEntities islObject = new VedantaEntities())
                {
                    // List of all courses
                    List<CourseNameList> courseList =
                        (from course in islObject.Courses
                         where course.ClientId == clientId
                         select new CourseNameList { Id = course.Id, CourseName = course.CourseName }).ToList();
                    return new SelectList(courseList, "Id", "CourseName");

                }
            }
            catch
            {
                return null;
            }
        }

        public static SelectList GetCourseNameList(int clientId, int branchId)
        {
            try
            {
                using (VedantaEntities islObject = new VedantaEntities())
                {
                    // List of all courses
                    List<CourseNameList> courseList =
                    (from course in islObject.vw_Courses
                     where course.ClientId == clientId && course.BranchId == branchId
                     select new CourseNameList { Id = course.Id, CourseName = course.CourseName }).ToList();
                    return new SelectList(courseList, "Id", "CourseName");
                }
            }
            catch
            {
                return null;
            }
        }

        public class BatchNameList
        {
            int _batchId;

            public int BatchId
            {
                get { return _batchId; }
                set { _batchId = value; }
            }
            string _batchName;

            public string BatchName
            {
                get { return _batchName; }
                set { _batchName = value; }
            }

        }

        public static SelectList GetBatchNameList(int clientId)
        {
            try
            {
                using (VedantaEntities islObject = new VedantaEntities())
                {
                    // List of all Batchs
                    List<BatchNameList> batchList =
                   (from batch in islObject.vw_BatchList
                    where batch.ClientId == clientId
                    select new BatchNameList { BatchId = batch.Id, BatchName = batch.BatchName }).ToList();
                    return new SelectList(batchList, "BatchId", "BatchName");
                }
            }
            catch
            {
                return null;
            }
        }

        public static SelectList GetBatchNameList(int clientId, int branchId)
        {
            try
            {
                using (VedantaEntities islObject = new VedantaEntities())
                {
                    // List of all Batchs
                    List<BatchNameList> batchList =
                   (from batch in islObject.vw_BatchList
                    where batch.ClientId == clientId && batch.BranchId == branchId
                    select new BatchNameList { BatchId = batch.Id, BatchName = batch.BatchName }).ToList();
                    return new SelectList(batchList, "BatchId", "BatchName");

                }
            }
            catch
            {
                return null;
            }
        }

        public class GenderNameList
        {
            int _id;

            public int Id
            {
                get { return _id; }
                set { _id = value; }
            }

            string _genderName;

            public string GenderName
            {
                get { return _genderName; }
                set { _genderName = value; }
            }
        }

        public static SelectList GetGenderNameList()
        {
            try
            {
                using (VedantaEntities islObject = new VedantaEntities())
                {
                    List<GenderNameList> genderList = new List<GenderNameList>();
                    // List of all States
                    genderList =
                   (from gender in islObject.Genders
                    select new GenderNameList { Id = gender.Id, GenderName = gender.Gender }).ToList();
                    return new SelectList(genderList, "Id", "GenderName");
                }
            }
            catch
            {
                return null;
            }
        }


        public class MaritalStatusList
        {
            int _id;

            public int Id
            {
                get { return _id; }
                set { _id = value; }
            }

            string _maritalStatusName;

            public string MaritalStatusName
            {
                get { return _maritalStatusName; }
                set { _maritalStatusName = value; }
            }

        }

        public static SelectList GetMaritalStatusList()
        {
            try
            {
                using (VedantaEntities islObject = new VedantaEntities())
                {
                    List<MaritalStatusList> maritalstatusList = new List<MaritalStatusList>();
                    // List of all States
                    maritalstatusList =
                   (from maritalStatus in islObject.MaritalStatus
                    select new MaritalStatusList { Id = maritalStatus.Id, MaritalStatusName = maritalStatus.MaritalStatusName }).ToList();
                    return new SelectList(maritalstatusList, "Id", "MaritalStatusName");
                }
            }
            catch
            {
                return null;
            }
        }


        public class QualificationNameList
        {
            int _id;

            public int Id
            {
                get { return _id; }
                set { _id = value; }
            }

            string _qualification;

            public string Qualification
            {
                get { return _qualification; }
                set { _qualification = value; }
            }


        }

        public static SelectList GetQualificationList()
        {
            try
            {
                using (VedantaEntities islObject = new VedantaEntities())
                {
                    List<QualificationNameList> qualificationList = null;
                    // List of all States
                    qualificationList =
                   (from qualification in islObject.Qualifications
                    select new QualificationNameList { Id = qualification.Id, Qualification = qualification.Qualification }).ToList();
                    return new SelectList(qualificationList, "Id", "Qualification");
                }
            }
            catch
            {
                return null;
            }
        }

        public class BranchNames
        {
            int _branchId;

            public int BranchId
            {
                get { return _branchId; }
                set { _branchId = value; }
            }
            string _branchName;

            public string BranchName
            {
                get { return _branchName; }
                set { _branchName = value; }
            }
        }

        public class BranchTypes
        {
            int _id;

            public int Id
            {
                get { return _id; }
                set { _id = value; }
            }
            string _type;

            public string Type
            {
                get { return _type; }
                set { _type = value; }
            }
        }

        public class RegionNames
        {
            int _regionId;

            public int RegionId
            {
                get { return _regionId; }
                set { _regionId = value; }
            }
            string _regionName;

            public string RegionName
            {
                get { return _regionName; }
                set { _regionName = value; }
            }

        }

        public class ZoneNames
        {
            int _zoneId;

            public int ZoneId
            {
                get { return _zoneId; }
                set { _zoneId = value; }
            }
            string _zoneName;

            public string ZoneName
            {
                get { return _zoneName; }
                set { _zoneName = value; }
            }
        }

        public static SelectList GetBranchTypeList()
        {
            using (VedantaEntities ve = new VedantaEntities())
            {
                List<BranchTypes> brList = (from br in ve.BranchTypes
                                            select new BranchTypes { Id = br.Id, Type = br.Type }
                                            ).ToList();

                return new SelectList(brList, "Id", "Type");
            }
        }

        public static SelectList GetBlankBranchNameList()
        {
            using (VedantaEntities ve = new VedantaEntities())
            {
                List<BranchNames> brList = (from br in ve.Branches
                                            where br.Id == 0
                                            select new BranchNames { BranchId = br.Id, BranchName = br.BranchName }
                                            ).ToList();

                return new SelectList(brList, "BranchId", "BranchName");
            }
        }
        public static SelectList GetBranchNameList()
        {
            using (VedantaEntities ve = new VedantaEntities())
            {
                List<BranchNames> brList = (from br in ve.Branches
                                            select new BranchNames { BranchId = br.Id, BranchName = br.BranchName }
                                            ).ToList();

                return new SelectList(brList, "BranchId", "BranchName");
            }
        }
        /// <summary>
        /// Get BranchNames List
        /// </summary>
        /// <returns>BranchId,Name</returns>
        public static SelectList GetBranchNameList(int clientId)
        {
            using (VedantaEntities ve = new VedantaEntities())
            {
                List<BranchNames> brList = (from br in ve.Branches
                                            where br.ClientId == clientId
                                            select new BranchNames { BranchId = br.Id, BranchName = br.BranchName }
                                            ).ToList();

                return new SelectList(brList, "BranchId", "BranchName");
            }
        }

        /// <summary>
        /// Get BranchNames List By regionId
        /// </summary>
        /// <param name="regionId"></param>
        /// <returns>BranchId,Name</returns>
        public static SelectList GetBranchNameList(int clientId, int regionId)
        {
            using (VedantaEntities ve = new VedantaEntities())
            {
                List<BranchNames> brList = (from br in ve.Branches
                                            where br.RegionalOfficeId == regionId
                                            select new BranchNames { BranchId = br.Id, BranchName = br.BranchName }
                                            ).ToList();

                return new SelectList(brList, "BranchId", "BranchName");
            }
        }

        /// <summary>
        /// GetBranchNames List By ZoneId and regionId
        /// </summary>
        /// <param name="zoneId"></param>
        /// <param name="regionId"></param>
        /// <returns>BranchId,Name</returns>
        public static SelectList GetBranchNameList(int clientId, int zoneId, int? regionId)
        {
            using (VedantaEntities ve = new VedantaEntities())
            {
                List<BranchNames> brList = null;
                if (regionId != null)
                {
                    brList = (from br in ve.Branches
                              where br.ZonalOfficeId == zoneId && br.RegionalOfficeId == regionId
                              select new BranchNames { BranchId = br.Id, BranchName = br.BranchName }
                                                ).ToList();
                    return new SelectList(brList, "BranchId", "BranchName");
                }
                else
                {
                    brList = (from br in ve.Branches
                              where br.ZonalOfficeId == zoneId
                              select new BranchNames { BranchId = br.Id, BranchName = br.BranchName }
                                               ).ToList();
                    return new SelectList(brList, "BranchId", "BranchName");
                }
            }
        }
        public class BranchRegionZones
        {
            int? _regionId;

            public int? RegionId
            {
                get { return _regionId; }
                set { _regionId = value; }
            }
            int? _zoneId;

            public int? ZoneId
            {
                get { return _zoneId; }
                set { _zoneId = value; }
            }

            public BranchRegionZones()
            {
                this.ZoneId = 0;
                this.RegionId = 0;
            }
        }

        public static BranchRegionZones GetRegionAndZoneByBranchId(int branchId)
        {
            using (VedantaEntities ve = new VedantaEntities())
            {
                BranchRegionZones brz = new BranchRegionZones();
                Branches brn = ve.Branches.FirstOrDefault(br => br.Id == branchId);
                if (brn != null)
                {
                    brz.RegionId = brn.RegionalOfficeId;
                    brz.ZoneId = brn.ZonalOfficeId;
                }
                return brz;
            }
        }

        public static int GetRegionZoneId(int regionId)
        {
            using (VedantaEntities ve = new VedantaEntities())
            {

                RegionalOffices rn = ve.RegionalOffices.FirstOrDefault(br => br.Id == regionId);
                int zoneId = (rn != null ? rn.ZonalOfficeId.Value : 0);
                return zoneId;
            }
        }

        public static SelectList GetRegionNameListByZoneId(int? zoneId)
        {
            using (VedantaEntities ve = new VedantaEntities())
            {
                List<RegionNames> rList = null;

                rList = (from r in ve.vw_RegionalOffices
                         where r.ZonalOfficeId == zoneId
                         select new RegionNames { RegionId = r.Id, RegionName = r.RegionName }
                                            ).ToList();

                return new SelectList(rList, "RegionId", "RegionName");

            }
        }
        public static SelectList GetRegionNameList(int clientId, int? zoneId)
        {
            using (VedantaEntities ve = new VedantaEntities())
            {
                List<RegionNames> rList = null;
                if (zoneId != null)
                {
                    rList = (from r in ve.vw_RegionalOffices
                             where r.ZonalOfficeId == zoneId && r.ClientId == clientId
                             select new RegionNames { RegionId = r.Id, RegionName = r.RegionName }
                                                ).ToList();

                    return new SelectList(rList, "RegionId", "RegionName");
                }
                else
                {
                    rList = (from r in ve.vw_RegionalOffices
                             where r.ClientId == clientId
                             select new RegionNames { RegionId = r.Id, RegionName = r.RegionName }
                                               ).ToList();

                    return new SelectList(rList, "RegionId", "RegionName");
                }
            }
        }

        public static SelectList GetZoneNameList(int clientId)
        {
            using (VedantaEntities ve = new VedantaEntities())
            {
                List<ZoneNames> zList = (from z in ve.ZonalOfices
                                         where z.ClientId == clientId
                                         select new ZoneNames { ZoneId = z.Id, ZoneName = z.ZoneName }
                                            ).ToList();

                return new SelectList(zList, "ZoneId", "ZoneName");
            }
        }


        public class EmployeeRankNames
        {
            int _rankId;

            public int RankId
            {
                get { return _rankId; }
                set { _rankId = value; }
            }
            string _rankName;

            public string RankName
            {
                get { return _rankName; }
                set { _rankName = value; }
            }
        }

        public static SelectList GetEmployeeRankNameList()
        {
            using (VedantaEntities ve = new VedantaEntities())
            {
                List<EmployeeRankNames> rnkList = (from rnk in ve.EmployeeRanks
                                                   select new EmployeeRankNames { RankId = rnk.Id, RankName = rnk.RankName }
                                            ).ToList();

                return new SelectList(rnkList, "RankId", "RankName");
            }
        }

        public class ComputerInterestNames
        {
            int _id;

            public int Id
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

        }
        public static SelectList GetComputerInterestNameList()
        {
            try
            {
                using (VedantaEntities islObject = new VedantaEntities())
                {
                    // List of all Batchs
                    List<ComputerInterestNames> interestList =
                   (from interest in islObject.ComputerInterests
                    select new ComputerInterestNames { Id = interest.Id, Name = interest.InterestName }).ToList();
                    return new SelectList(interestList, "Id", "Name");

                }
            }
            catch
            {
                return null;
            }
        }

        public class ComputerKnowledgeLevelNames
        {
            int _id;

            public int Id
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

        }

        public static SelectList GetComputerKnowledgeLevelNameList()
        {
            try
            {
                using (VedantaEntities islObject = new VedantaEntities())
                {
                    // List of all Batchs
                    List<ComputerKnowledgeLevelNames> levelList =
                   (from levels in islObject.ComputerKnowledgeLevels
                    select new ComputerKnowledgeLevelNames { Id = levels.Id, Name = levels.LevelName }).ToList();
                    return new SelectList(levelList, "Id", "Name");

                }
            }
            catch
            {
                return null;
            }
        }

        public class HowToKnowAboutUsNames
        {
            int _id;

            public int Id
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
        }

        public static SelectList GetHowToKnowAboutUsNamesList()
        {
            try
            {
                using (VedantaEntities islObject = new VedantaEntities())
                {
                    // List of all Batchs
                    List<HowToKnowAboutUsNames> hkauList =
                   (from hkau in islObject.HowToKnowAboutUs
                    select new HowToKnowAboutUsNames { Id = hkau.Id, Name = hkau.TypeName }).ToList();
                    return new SelectList(hkauList, "Id", "Name");

                }
            }
            catch
            {
                return null;
            }
        }

        public class OccupationNames
        {
            int _id;

            public int Id
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
        }

        public static SelectList GetOccupationNamesList()
        {
            try
            {
                using (VedantaEntities islObject = new VedantaEntities())
                {
                    // List of all Batchs
                    List<OccupationNames> oList =
                   (from oc in islObject.Occupations
                    select new OccupationNames { Id = oc.Id, Name = oc.Name }).ToList();
                    return new SelectList(oList, "Id", "Name");

                }
            }
            catch
            {
                return null;
            }
        }


        public static SelectList GetYesNoList()
        {
            try
            {
                using (VedantaEntities islObject = new VedantaEntities())
                {
                    List<SelectListItem> YesNoList = new List<SelectListItem>();

                    SelectListItem li = new SelectListItem();
                    li.Value = "True";
                    li.Text = "Yes";
                    YesNoList.Add(li);

                    SelectListItem li2 = new SelectListItem();
                    li2.Value = "False";
                    li2.Text = "No";
                    YesNoList.Add(li2);

                    return new SelectList(YesNoList, "Value", "Text");

                }
            }
            catch
            {
                return null;
            }
        }

        public class FamilyIncomeSlotNames
        {
            int _id;

            public int Id
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
        }

        public static SelectList GetFamilyIncomeSlotList()
        {
            try
            {
                using (VedantaEntities islObject = new VedantaEntities())
                {
                    // List of all Batchs
                    List<FamilyIncomeSlotNames> slotList =
                   (from slot in islObject.FamilyIncomeSlots
                    select new FamilyIncomeSlotNames { Id = slot.Id, Name = slot.IncomeSlot }).ToList();
                    return new SelectList(slotList, "Id", "Name");

                }
            }
            catch
            {
                return null;
            }
        }

        public static Courses GetCourseFeeByCourseId(int courseId)
        {
            try
            {
                using (VedantaEntities islObject = new VedantaEntities())
                {
                    return islObject.Courses.FirstOrDefault(c => c.Id == courseId);
                }
            }
            catch
            {
                return null;
            }

        }

        public class PaymentModeNames
        {
            int _id;

            public int Id
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
        }

        public static SelectList GetPaymentModesNameList()
        {
            try
            {
                using (VedantaEntities islObject = new VedantaEntities())
                {
                    // List of all Batchs
                    List<PaymentModeNames> modeList =
                   (from mode in islObject.PaymentModes
                    select new PaymentModeNames { Id = mode.Id, Name = mode.Mode }).ToList();
                    return new SelectList(modeList, "Id", "Name");

                }
            }
            catch
            {
                return null;
            }
        }

        public class PaymentHeadNames
        {
            int _id;

            public int Id
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
        }

        public static SelectList GetPaymentHeadsNameList()
        {
            try
            {
                using (VedantaEntities islObject = new VedantaEntities())
                {
                    // List of all Batchs
                    List<PaymentHeadNames> headList =
                   (from head in islObject.PaymentHeads
                    select new PaymentHeadNames { Id = head.Id, Name = head.PaymentHead }).ToList();
                    return new SelectList(headList, "Id", "Name");

                }
            }
            catch
            {
                return null;
            }
        }

        public class NationalityNames
        {
            int _id;

            public int Id
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
        }

        public static SelectList GetNationalityNameList()
        {
            try
            {
                using (VedantaEntities islObject = new VedantaEntities())
                {
                    // List of all Batchs
                    List<NationalityNames> nationalityList =
                   (from nationality in islObject.Nationality
                    select new NationalityNames { Id = nationality.Id, Name = nationality.Name }).ToList();
                    return new SelectList(nationalityList, "Id", "Name");

                }
            }
            catch
            {
                return null;
            }
        }


        public class ReligionNames
        {
            int _id;

            public int Id
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
        }

        public static SelectList GetReligionNameList()
        {
            try
            {
                using (VedantaEntities islObject = new VedantaEntities())
                {
                    // List of all Batchs
                    List<ReligionNames> religionList =
                   (from religion in islObject.Religions
                    select new ReligionNames { Id = religion.Id, Name = religion.Name }).ToList();
                    return new SelectList(religionList, "Id", "Name");

                }
            }
            catch
            {
                return null;
            }
        }


        public class ExpenseHeadNameList
        {
            int expenseHeadId;

            public int ExpenseHeadId
            {
                get { return expenseHeadId; }
                set { expenseHeadId = value; }
            }


            string _ac_Name;

            public string Ac_Name
            {
                get { return _ac_Name; }
                set { _ac_Name = value; }
            }
        }

        /// <summary>
        /// expenseType=1 for Expense and 2=Income
        /// </summary>
        /// <param name="expenseType"></param>
        /// <returns></returns>
        public static SelectList GetExpenseHeadNameList(int clientId, int paymentType)
        {
            try
            {
                using (VedantaEntities islObject = new VedantaEntities())
                {
                    List<ExpenseHeadNameList> expenseHeadList = null;
                    // List of all Ledgers(ExpenseHeads)
                    expenseHeadList =
                   (from expenseHead in islObject.EXPENSESHEAD
                    where expenseHead.LedgerTypeId == paymentType && expenseHead.ClientId == clientId
                    select new ExpenseHeadNameList { ExpenseHeadId = expenseHead.Id, Ac_Name = expenseHead.NAME }).ToList();
                    return new SelectList(expenseHeadList, "ExpenseHeadId", "AC_Name");

                }
            }
            catch
            {
                return null;
            }
        }

        public class LedgerTypeNameList
        {
            int _id;

            public int Id
            {
                get { return _id; }
                set { _id = value; }
            }

            string _type;

            public string Type
            {
                get { return _type; }
                set { _type = value; }
            }

        }

        public static SelectList GetLedgerNameList(int selectedId = 0)
        {
            try
            {
                using (VedantaEntities islObject = new VedantaEntities())
                {
                    List<LedgerTypeNameList> ledgerTypeList = null;
                    // List of all LegderTypes
                    ledgerTypeList =
                   (from ledgerType in islObject.LedgerTypes
                    select new LedgerTypeNameList { Id = ledgerType.Id, Type = ledgerType.Type }).ToList();
                    return new SelectList(ledgerTypeList, "Id", "Type", selectedId);
                }
            }
            catch
            {
                return null;
            }
        }

        public class BusinessTypeList
        {
            int _businessTypeId;

            public int BusinessTypeId
            {
                get { return _businessTypeId; }
                set { _businessTypeId = value; }
            }

            string _Name;

            public string Name
            {
                get { return _Name; }
                set { _Name = value; }
            }

        }

        public static SelectList GetBusinessTypeList()
        {
            try
            {
                using (VedantaEntities islObject = new VedantaEntities())
                {
                    // List of all coutries
                    List<BusinessTypeList> businessTypeList =
                   (from businessType in islObject.BusinessTypes
                    select new BusinessTypeList { BusinessTypeId = businessType.Id, Name = businessType.Name }).ToList();
                    return new SelectList(businessTypeList, "BusinessTypeId", "Name");

                }
            }
            catch
            {
                return null;
            }
        }

        public class CourseBrandNameList
        {
            int _courseBrandId;

            public int CourseBrandId
            {
                get { return _courseBrandId; }
                set { _courseBrandId = value; }
            }


            string _Name;

            public string Name
            {
                get { return _Name; }
                set { _Name = value; }
            }


        }

        public static SelectList GetCourseBrandNameList(int clientId, int? branchId)
        {
            try
            {
                using (VedantaEntities ve = new VedantaEntities())
                {
                    // List of all coutries
                    List<CourseBrandNameList> brandList = null;
                    if (branchId != null)
                    {
                        brandList = (from brand in ve.vw_CourseBrands
                                     where brand.ClientId == clientId && brand.BranchId == branchId
                                     select new CourseBrandNameList { CourseBrandId = brand.Id, Name = brand.Name }).ToList();
                        return new SelectList(brandList, "CourseBrandId", "Name");
                    }

                    brandList = (from brand in ve.vw_CourseBrands
                                 where brand.ClientId == clientId
                                 select new CourseBrandNameList { CourseBrandId = brand.Id, Name = brand.Name }).ToList();
                    return new SelectList(brandList, "CourseBrandId", "Name");

                }
            }
            catch
            {
                return null;
            }
        }


        #region NumbertoWords
        public static string NumberToWords(int number)
        {
            if (number == 0)
                return "zero";

            if (number < 0)
                return "minus " + NumberToWords(Math.Abs(number));

            string words = "";
            if ((number / 10000000) > 0)
            {
                words += NumberToWords(number / 10000000) + " crore ";
                number %= 10000000;
            }

            if ((number / 100000) > 0)
            {
                words += NumberToWords(number / 100000) + " lakh ";
                number %= 100000;
            }

            if ((number / 1000) > 0)
            {
                words += NumberToWords(number / 1000) + " thousand ";
                number %= 1000;
            }

            if ((number / 100) > 0)
            {
                words += NumberToWords(number / 100) + " hundred ";
                number %= 100;
            }

            if (number > 0)
            {
                if (words != "")
                    words += "and ";

                var unitsMap = new[] { "zero", "one", "two", "three", "four", "five", "six", "seven", "eight", "nine", "ten", "eleven", "twelve", "thirteen", "fourteen", "fifteen", "sixteen", "seventeen", "eighteen", "nineteen" };
                var tensMap = new[] { "zero", "ten", "twenty", "thirty", "forty", "fifty", "sixty", "seventy", "eighty", "ninety" };

                if (number < 20)
                    words += unitsMap[number];
                else
                {
                    words += tensMap[number / 10];
                    if ((number % 10) > 0)
                        words += "-" + unitsMap[number % 10];
                }
            }
            return words.ToUpper();
        }

        #endregion
    }
}