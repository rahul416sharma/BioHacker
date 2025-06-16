using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;


namespace Property
{
 
	public class Category
	{
		public string Id { get; set; }
		public string CategoryName { get; set; }
		public string Status { get; set; }
	}
	public class SubCategory
	{
		public string Id { get; set; }
		public string SubCategoryName { get; set; }
		public string CategoryId { get; set; }
		public string CategoryName { get; set; }
		public string Isactive { get; set; }
		public string Status { get; set; }
	}
	public class Detail
	{
		public string Id { get; set; }
		public string CatId { get; set; }
		public string SubCatId { get; set; }
		public string CategoryName { get; set; }
		public string SubCategoryName { get; set; }
		public string Title { get; set; }
		public string SubTitle { get; set; }
		public string Description { get; set; }
		public string Image { get; set; }
		public string Status { get; set; }
		public string InsDate { get; set; }
		public string SeoTitle { get; set; }
		public string SeoDescription { get; set; }
		public string SeoKeywords { get; set; }
	}
	public class ddlSubCategory
	{
		public string Id { get; set; }
		public string SubCatName { get; set; }
	}
	public class CourseDetail
	{
		public string Id { get; set; }
		public string CourseName { get; set; }
		public string CourseType { get; set; }
		public string CourseDuration { get; set; }
		public string CourseFeeType { get; set; }
		public string CourseFee { get; set; }
		public string CourseImage { get; set; }
		public string CourseDescription { get; set; }
		public string IsActive { get; set; }
		public string Status { get; set; }
		public string CatId { get; set; }
		public string CatName { get; set; }
		public string CatSubId { get; set; }
		public string CatSubName { get; set; }
		public string CourseStatus { get; set; }
		public string PopularCourseId { get; set; }

	}
	public class StudentDetail
	{
		public string Id { get; set; }
		public string BranchId { get; set; }
		public string BranchName { get; set; }
		public string CourseId { get; set; }
		public string CourseName { get; set; }
		public string MonthTime { get; set; }
		public string mspSessionStartDate { get; set; }
		public string mspSessionEndDate { get; set; }
		public string SessionStartDate { get; set; }
		public string SessionEndDate { get; set; }
		public string InsDate { get; set; }
		public string Name { get; set; }
		public string FatherName { get; set; }
		public string MotherName { get; set; }
		public string Email { get; set; }
		public string MobileNo { get; set; }
		public string DOB { get; set; }
		public string Address { get; set; }
		public string StateId { get; set; }
		public string StateName { get; set; }
		public string DistrictId { get; set; }
		public string DistrictName { get; set; }
		public string CityId { get; set; }
		public string CityName { get; set; }
		public string CategoryId { get; set; }
		public string CategoryName { get; set; }
		public string Gender { get; set; }
		public string Photos { get; set; }
		public string DocumentsImage { get; set; }
	}
	public class ViewBranch
	{
		public string Id { get; set; }
		public string Name { get; set; }
	}

	public class ViewEnquiry
	{
		public string Id { get; set; }
		public string Name { get; set; }
		public string Email { get; set; }
		public string MobileNo { get; set; }
		public string Description { get; set; }
		public string InsDate { get; set; }
	}
	public class ViewStuent
	{
		public string Id { get; set; }
		public string StudentCode { get; set; }
		public string Name { get; set; }
		public string FatherName { get; set; }
		public string Dob { get; set; }
		public string Mobile_No { get; set; }
		public string BranchId { get; set; }
		public string BrnachName { get; set; }
		public string CourseId { get; set; }
		public string CourseName { get; set; }
		public string Photo { get; set; }
		public string DocumentImage { get; set; }

	}
	public class ViewStudentDetail
	{
		public string Id { get; set; }
		public string BranchId { get; set; }
		public string CourseId { get; set; }
		public string SessionId { get; set; }
		public string StudentName { get; set; }
		public string StudentFatherName { get; set; }
		public string StudentMotherName { get; set; }
		public string Email { get; set; }
		public string MobileNo { get; set; }
		public string Dob { get; set; }
		public string Address { get; set; }
		public string StudentStateId { get; set; }
		public string StudentDistrictId { get; set; }
		public string StudentCityId { get; set; }
		public string StudentCategoryId { get; set; }
		public string StudentGender { get; set; }
		public string StudentImage { get; set; }
		public string StudentDocumentImage { get; set; }
		public string AadharNo { get; set; }
	}
	public class Subject
	{
		public string Id { get; set; }
		public string SubjectName { get; set; }
	}
	public class CourseWiseSubject
	{
		public string SubjectId { get; set; }
		public string cwsId { get; set; }
		public string CourseId { get; set; }
		public string CourseName { get; set; }
		public string Code { get; set; }
		public string SubjectName { get; set; }
		public string Year { get; set; }
		public string YearStatus { get; set; }
		//public string TheoryMinMarks { get; set; }
		//public string PracticalMaxMarks { get; set; }
		//public string PracticalMinMarks { get; set; }
		//public string AssessmentMinMarks { get; set; }
		//public string AssessmentMaxMarks { get; set; }
		//public string TotalMarks { get; set; }
		public string OrderNo { get; set; }
	}
	public class StudentMarks
	{
		public string Id { get; set; }
		public string SubjectName { get; set; }
		public string StudentName { get; set; }
		public string FatherName { get; set; }
		public string CourseName { get; set; }
		public string ObtainMarks { get; set; }
		public string BranchId { get; set; }
		public string StudentId { get; set; }
		public string Practical { get; set; }
	}
	public class MasterSession
	{
        public string SessionId { get; set; }
        public string SessionName { get; set; }
        public string SessionStartDate { get; set; }
        public string SessionPrefix { get; set; }
        public string SessionNumber { get; set; }
        public string SessionStatus { get; set; }
        public string SessionSDate { get; set; }
        public string SessionPrintDays { get; set; }
        public string ShowToWeb { get; set; }
        public string SessionShowToWeb { get; set; }

    }
    public class ViewStuentDetail
    {
        public string Id { get; set; }
        public string Name { get; set; }
        public string FatherName { get; set; }
        public string MotherName { get; set; }
        public string Dob { get; set; }
        public string Email { get; set; }
        public string Mobile_No { get; set; }
        public string Address { get; set; }
        public string Gender { get; set; }
        public string BrnachName { get; set; }
        public string CourseName { get; set; }
        public string Photo { get; set; }
        public string DocumentImage { get; set; }
        public string State { get; set; }
        public string District { get; set; }
        public string City { get; set; }
        public string SessionName { get; set; }
        public string CategoryName { get; set; }

    }
	public class VerifyStudent
	{
        public string Id { get; set; }
        public string UniqueId { get; set; }
        public string StudentName { get; set; }
        public string FatherName { get; set; }
        public string MotherName { get; set; }
        public string StudentImage { get; set; }
        public string CourseName { get; set; }
        public string BatchName { get; set; }
        public string BranchName { get; set; }
        public string Remark { get; set; }
        public string StudentCode { get; set; }
        public string RegistrationNo { get; set; }
        public string AadharNo { get; set; }
        public string DOB { get; set; }
        public string CourseDuration { get; set; }
    }
    public class BranchDetail
	{
        public string BranchId { get; set; }
        public string BranchName { get; set; }
        public string BranchAddress { get; set; }
        public string BranchMobileNo { get; set; }
        public string BranchEmail { get; set; }
        public string BranchLogo { get; set; }
        public string BranchType { get; set; }
        public string BranchStateId { get; set; }
        public string BranchStateName { get; set; }
        public string BranchDistrictId { get; set; }
        public string BranchDistrictName { get; set; }
        public string BranchCityId { get; set; }
        public string BranchCityName { get; set; }
        public string BranchStatus { get; set; }
        public string UserName { get; set; }
        public string Password { get; set; }
        public string TcId { get; set; }
        public string BranchPersonName { get; set; }
        public string PersonImg { get;  set; }
    }
    public class ViewBrnachEnquiry
    {
        public string Id { get; set; }
        public string Name { get; set; }
        public string PersonName { get; set; }
        public string Email { get; set; }
        public string MobileNo { get; set; }
        public string Address { get; set; }
        public string InsDate { get; set; }
    }
	public class ViewCourseWeb
	{
        public string SubCourseId { get; set; }
        public string SubCatName { get; set; }
    }
    public class BranchData    
	{
        public string Srno { get; set; }
        public string TcId { get; set; }
        public string BranchName { get; set; }
        public string BranchPersonName { get; set; }
        public string BranchAddress { get; set; }
        public string BranchMobileNo { get; set; }
        public string BranchStateName { get; set; }
        public string BranchCityName { get; set; }
        public string PersonImg { get; set; }
    }
}