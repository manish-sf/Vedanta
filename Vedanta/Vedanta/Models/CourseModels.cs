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
    [MetadataType(typeof(CoursesMetaData))]
    public partial class Courses
    {
        public class CoursesMetaData
        {

            [Required]
            [DataType(DataType.Text)]
            [DisplayName("Course Code")]
            public string CourseCode { get; set; }

            [Required]
            [DataType(DataType.Text)]
            [DisplayName("Name")]
            public string CourseName { get; set; }

            [Required]
            [DataType(DataType.Text)]
            [DisplayName("Course Fees")]
            public string CourseFees { get; set; }

            [Required]
            [DataType(DataType.Currency)]
            [DisplayName("Total Installment Amount")]
            public string TotalInstallmentAmount { get; set; }

            [Required]
            [DataType(DataType.Text)]
            [DisplayName("Duration (In Months)")]
            public string Duration_In_Months { get; set; }

            [Required]
            [DataType(DataType.Text)]
            [DisplayName("Fast Track Duration (In Months)")]
            public string FastTrackDuration { get; set; }

            [Required]
            [DataType(DataType.Currency)]
            [DisplayName("Minimum Down Payment")]
            public string MinimumDownPayment { get; set; }

            [Required]
            [DataType(DataType.Currency)]
            [DisplayName("Maximum Discount Amount")]
            public string MaximumDiscountAmount { get; set; }


            [Required]
            [DataType(DataType.Text)]
            [DisplayName("Maximum Number Of Installments")]
            public string MaximumNumberOfInstallments { get; set; }

            [Required]
            [DataType(DataType.Currency)]
            [DisplayName("Installment Amount")]
            public string InstallmentAmount { get; set; }

        }
    }

    public class CourseModels
    {
        public static int CreateCourse(Courses course)
        {

            try
            {
                using (VedantaEntities islObject = new VedantaEntities())
                {
                    Courses oldCourse = islObject.Courses.FirstOrDefault(c => c.ClientId == course.ClientId && c.CourseBrandId == course.CourseBrandId && course.CourseCode.Equals(c.CourseCode, StringComparison.OrdinalIgnoreCase));
                    if (oldCourse == null)
                    {
                        islObject.AddToCourses(course);
                        return islObject.SaveChanges();
                    }
                    else
                        return 0;
                }
            }
            catch (Exception)
            {
                return 0;
            }

        }

        public static int UpdateCourse(int id, Courses course)
        {
            try
            {
                using (VedantaEntities islObject = new VedantaEntities())
                {
                    Courses updated = islObject.Courses.FirstOrDefault(jc => jc.Id == id);
                    if (updated != null)
                    {
                        updated.CourseName = course.CourseName;
                        updated.Duration_In_Months = course.Duration_In_Months;
                        updated.FastTrackDuration = course.FastTrackDuration;
                        updated.CourseFees = course.CourseFees;
                        updated.MinimumDownPayment = course.MinimumDownPayment;
                        updated.MaximumDiscountAmount = course.MaximumDiscountAmount;
                        updated.MaximumNumberOfInstallments = course.MaximumNumberOfInstallments;
                        updated.InstallmentAmount = course.InstallmentAmount;
                        updated.CourseCode = course.CourseCode;
                        updated.TotalInstallmentAmount = course.TotalInstallmentAmount;
                        return islObject.SaveChanges();
                    }
                }
            }
            catch
            {
                return 0;
            }
            return 0;
        }

        public static Courses GetCourseDetailsById(int CourseId)
        {
            try
            {

                using (VedantaEntities islObject = new VedantaEntities())
                {
                    return islObject.Courses.FirstOrDefault(c => c.Id == CourseId);

                }
            }
            catch
            {
                return null;
            }
        }

        public static List<vw_Courses> GetCourses(int? clientId)
        {
            try
            {

                using (VedantaEntities islObject = new VedantaEntities())
                {
                    if (clientId != null)
                    {
                        // Course List of Selected school
                        return (from courses in islObject.vw_Courses
                                where courses.ClientId == (int)clientId
                                select courses).ToList();
                    }
                    else
                    {
                        // Course List of all schools
                        return (from courses in islObject.vw_Courses
                                select courses).ToList();
                    }
                }
            }
            catch
            {
                return null;
            }
        }

        public static List<vw_Courses> GetCourses(int clientId, int? schoolId)
        {
            try
            {

                using (VedantaEntities islObject = new VedantaEntities())
                {
                    if (schoolId != null)
                    {
                        // Course List of Selected school
                        return (from courses in islObject.vw_Courses
                                where courses.ClientId == clientId && courses.BranchId == (int)schoolId
                                select courses).ToList();
                    }
                    else
                    {
                        // Course List of all schools
                        return (from courses in islObject.vw_Courses
                                where courses.ClientId == clientId
                                select courses).ToList();
                    }

                }
            }
            catch
            {
                return null;
            }
        }

        public static List<vw_Courses> GetCourses(int clientId, int courseBrandId, int? schoolId)
        {
            try
            {

                using (VedantaEntities islObject = new VedantaEntities())
                {
                    if (schoolId != null)
                    {
                        // Course List of Selected school
                        return (from courses in islObject.vw_Courses
                                where courses.ClientId == clientId && courses.CourseBrandId == courseBrandId && courses.BranchId == (int)schoolId
                                select courses).ToList();
                    }
                    else
                    {
                        // Course List of all schools
                        return (from courses in islObject.vw_Courses
                                where courses.ClientId == clientId && courses.CourseBrandId == courseBrandId
                                select courses).ToList();
                    }

                }
            }
            catch
            {
                return null;
            }
        }

        public static Batches GetBatchDetailsById(int id)
        {
            using (VedantaEntities ve = new VedantaEntities())
            {
                return ve.Batches.FirstOrDefault(b => b.Id == id);
            }
        }

        public static List<vw_BatchList> GetBatchList()
        {
            using (VedantaEntities ve = new VedantaEntities())
            {

                return ve.vw_BatchList.ToList();
            }
        }

        public static List<vw_BatchList> GetBatchList(int clientId)
        {
            using (VedantaEntities ve = new VedantaEntities())
            {
                if (clientId != null)
                    return ve.vw_BatchList.Where(bt => bt.ClientId == (int)clientId).ToList();
                else
                    return ve.vw_BatchList.ToList();
            }
        }

        public static List<vw_BatchList> GetBatchList(int clientId, int branchId)
        {
            using (VedantaEntities ve = new VedantaEntities())
            {
                return ve.vw_BatchList.Where(bt => bt.ClientId == clientId && bt.BranchId == branchId).ToList();
            }
        }

        public static int CreateNewBatch(Batches newBatch)
        {
            try
            {
                using (VedantaEntities ve = new VedantaEntities())
                {
                    ve.AddToBatches(newBatch);
                    return ve.SaveChanges();
                }
            }
            catch (Exception)
            {
                return 0;
            }
        }

        public static int UpdateBatch(Batches batch)
        {
            using (VedantaEntities ve = new VedantaEntities())
            {
                //Batches oldBatch = ve.Batches.FirstOrDefault(bt => bt.Id != batch.Id && !bt.BatchCode.Equals(batch.BatchCode, StringComparison.OrdinalIgnoreCase));
                //if (oldBatch == null)
                //{
                Batches currentBatch = ve.Batches.FirstOrDefault(bt => bt.Id == batch.Id);
                if (currentBatch != null)
                {
                    currentBatch.BatchCode = batch.BatchCode;
                    currentBatch.BatchStartTime = batch.BatchStartTime;
                    currentBatch.BatchEndTime = batch.BatchEndTime;
                    currentBatch.BatchName = batch.BatchName;
                    currentBatch.StudentStrength = batch.StudentStrength;
                    int result = ve.SaveChanges();
                    if (result > 0)
                        return result;

                }

                //}
                return 0;
            }

        }

        public static int CreateCourseBrand(CourseBrands courseBrand)
        {

            try
            {
                using (VedantaEntities ve = new VedantaEntities())
                {
                    CourseBrands oldBrand = ve.CourseBrands.FirstOrDefault(cb => cb.BranchId == courseBrand.BranchId && courseBrand.Name.Equals(cb.Name, StringComparison.OrdinalIgnoreCase));
                    if (oldBrand == null)
                    {
                        ve.AddToCourseBrands(courseBrand);
                        return ve.SaveChanges();
                    }
                    else
                        return 0;
                }
            }
            catch (Exception)
            {
                return 0;
            }

        }


        public static List<vw_CourseBrands> GetCourseBrands(int clientId, int? branchId)
        {
            try
            {

                using (VedantaEntities ve = new VedantaEntities())
                {
                    if (branchId != null)
                    {
                        // Course List of Selected school
                        return (from courseBrands in ve.vw_CourseBrands
                                where courseBrands.ClientId == clientId && courseBrands.BranchId == (int)branchId
                                select courseBrands).ToList();
                    }
                    else
                    {
                        // Course List of all schools
                        return (from courseBrands in ve.vw_CourseBrands
                                where courseBrands.ClientId == clientId
                                select courseBrands).ToList();
                    }

                }
            }
            catch
            {
                return null;
            }
        }



    }
}