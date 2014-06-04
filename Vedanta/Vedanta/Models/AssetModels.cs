using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Vedanta.Models
{
    public class AssetModels
    {
        public static int CreateAsset(Assets asset)
        {
            try
            {
                using (VedantaEntities ve = new VedantaEntities())
                {
                    ve.AddToAssets(asset);
                    return ve.SaveChanges();
                }
            }
            catch (Exception)
            {
                return 0;
            }
        }

        public static int UpdateAsset(int id, Assets asset)
        {
            try
            {
                using (VedantaEntities ve = new VedantaEntities())
                {
                    Assets updated = ve.Assets.FirstOrDefault(jc => jc.Id == id);
                    if (updated != null)
                    {
                        updated.Code = asset.Code;
                        updated.Name = asset.Name;
                        updated.PurchasedDate = asset.PurchasedDate;
                        updated.LastRepaireDate = asset.LastRepaireDate;
                        updated.LastAuditDate = asset.LastAuditDate;
                        updated.IsWorking = asset.IsWorking;
                        updated.BranchId = asset.BranchId;
                        updated.WarrantyExpiryDate = asset.WarrantyExpiryDate;
                        updated.AMC_Reporesntative = asset.AMC_Reporesntative;
                        updated.AMC_Phone = asset.AMC_Phone;
                        updated.AMC_Email = asset.AMC_Email;
                        updated.AMC_Address = asset.AMC_Address;
                        return ve.SaveChanges();
                    }
                }
            }
            catch
            {
                return 0;
            }
            return 0;
        }


        public static List<vw_AssetList> GetAssets(int clientId, int? branchId)
        {
            try
            {
                using (VedantaEntities ve = new VedantaEntities())
                {
                    //Asset list of Branch
                    if (branchId != null)
                    {
                        return ve.vw_AssetList.Where(al => al.ClientId == clientId && al.BranchId == branchId).ToList();
                    }
                    else
                    {
                        //all assets list
                        return ve.vw_AssetList.Where(al => al.ClientId == clientId).ToList();
                    }
                }
            }
            catch
            {
                return null;
            }
        }

        public static Assets GetAssetDetailsById(int Id)
        {
            try
            {
                using (VedantaEntities ve = new VedantaEntities())
                {
                    return ve.Assets.FirstOrDefault(ast => ast.Id == Id);
                }
            }
            catch
            {
                return null;
            }
        }
    }
}