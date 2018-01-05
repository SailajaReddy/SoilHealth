using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;
using VHMS_BE;
using VHMS_DL;

namespace VHMS_BL
{
    public class Feedback_BAL
    {
        Feedback_DAL objDL = new Feedback_DAL();
        public DataTable GetPatientDtlsForFeedback_ByVisitDateBAL(string RegNo, DateTime VisitDate,string UserId, string ConnKey)
        {
            return objDL.GetPatientDtlsForFeedback_ByVisitDateDAL(RegNo, VisitDate,UserId, ConnKey);
        }
        public void InsertFeedbackDtlsBAL(FeedbackBE objBE,string UserId, string ConnKey)
        {
            objDL.InsertFeedbackDtlsDAL(objBE, UserId, ConnKey);
        }
        public void CloseFeedbackBAL(FeedbackBE objBE, string UserId, string ConnKey)
        {
            objDL.CloseFeedbackDAL(objBE, UserId, ConnKey);
        }
    }
}
