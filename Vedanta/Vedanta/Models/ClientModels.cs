using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace Vedanta.Models
{
    public class ClientModels
    {
        #region Client
        public static List<vw_ClientList> GetClients()
        {
            try
            {

                using (VedantaEntities ve = new VedantaEntities())
                {
                    // Client List 
                    return (from clients in ve.vw_ClientList
                            select clients).ToList();
                }
            }
            catch
            {
                return null;
            }
        }

        public static Clients GetClientById(int clientId)
        {
            try
            {

                using (VedantaEntities ve = new VedantaEntities())
                {
                    return ve.Clients.FirstOrDefault(cl => cl.Id == clientId);

                }
            }
            catch
            {
                return null;
            }
        }

        public static vw_ClientList GetClientDetailsById(int clientId)
        {
            try
            {

                using (VedantaEntities ve = new VedantaEntities())
                {
                    return ve.vw_ClientList.FirstOrDefault(cl => cl.Id == clientId);

                }
            }
            catch
            {
                return null;
            }
        }

        public static int CreateClient(Clients client)
        {

            try
            {
                using (VedantaEntities ve = new VedantaEntities())
                {
                    ve.AddToClients(client);
                    return ve.SaveChanges();
                }
            }
            catch (Exception)
            {
                return 0;
            }
        }

        public class ClientName
        {
            int _clientId;

            public int ClientId
            {
                get { return _clientId; }
                set { _clientId = value; }
            }
            string _name;

            public string Name
            {
                get { return _name; }
                set { _name = value; }
            }

        }

        public static SelectList GetClientNameList()
        {
            try
            {

                using (VedantaEntities ve = new VedantaEntities())
                {

                    // List of all clients
                    List<ClientName> clientList =
                   (from client in ve.Clients
                    select new ClientName { ClientId = client.Id, Name = client.Name }).ToList();
                    return new SelectList(clientList, "ClientId", "Name");

                }
            }
            catch
            {
                return null;
            }
        }


        public static int UpdateClient(int id, Clients client, bool isAdmin = false)
        {
            try
            {
                using (VedantaEntities ve = new VedantaEntities())
                {
                    Clients updated = ve.Clients.FirstOrDefault(cl => cl.Id == id);
                    if (updated != null)
                    {
                        updated.Name = client.Name;
                        updated.Lane = client.Lane;
                        updated.Street = client.Street;
                        updated.City = client.City;
                        updated.StateId = client.StateId;
                        updated.Zip = client.Zip;
                        updated.Phone1 = client.Phone1;
                        updated.Phone2 = client.Phone2;
                        updated.Cell = client.Cell;
                        updated.Email = client.Email;
                        updated.Website = client.Website;
                        updated.LastUpdated = DateTime.Now;
                        updated.Logo = client.Logo;
                        updated.ContentType = updated.ContentType;
                        if (isAdmin)
                        {
                            updated.CreateDate = client.CreateDate;
                            updated.ContractStartDate = client.ContractStartDate;
                            updated.ContractEndDate = client.ContractEndDate;
                        }
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


        public static int ActivateClient(int id, bool isActive = false)
        {
            try
            {
                using (VedantaEntities ve = new VedantaEntities())
                {
                    Clients updated = ve.Clients.FirstOrDefault(cl => cl.Id == id);
                    if (updated != null)
                    {

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
        #endregion

        #region ClientRepresentative
        public static List<ClientRepresentatives> GetClientRepresentatives(int? clientId)
        {
            try
            {

                using (VedantaEntities ve = new VedantaEntities())
                {
                    if (clientId != null)
                    {
                        // Client Representative List of Selected ClientId
                        return (from clientrepresentatives in ve.ClientRepresentatives
                                where clientrepresentatives.ClientId == clientId
                                select clientrepresentatives).ToList();
                    }
                    // Client Representative List for all clients
                    return (from clientrepresentatives in ve.ClientRepresentatives
                            select clientrepresentatives).ToList();

                }
            }
            catch
            {
                return null;
            }
        }

        public static int CreateClientRepresentatives(ClientRepresentatives clientRepresentative)
        {

            try
            {
                using (VedantaEntities ve = new VedantaEntities())
                {
                    ve.AddToClientRepresentatives(clientRepresentative);
                    return ve.SaveChanges();
                }
            }
            catch (Exception)
            {
                return 0;
            }
        }

        #endregion //ClientRepresentative

        #region ClientSettings
        public static List<ClientSettings> GetClientSettingsList()
        {
            try
            {

                using (VedantaEntities ve = new VedantaEntities())
                {

                    // Client List 
                    return (from clients in ve.ClientSettings
                            select clients).ToList();

                }
            }
            catch
            {
                return null;
            }
        }

        public static ClientSettings GetClientSettingsByClientId(int clientId)
        {
            try
            {

                using (VedantaEntities ve = new VedantaEntities())
                {
                    return ve.ClientSettings.FirstOrDefault(cl => cl.ClientId == clientId);

                }
            }
            catch
            {
                return null;
            }
        }

        public static int SaveClientSettings(ClientSettings clientSetting)
        {
            try
            {
                using (VedantaEntities ve = new VedantaEntities())
                {
                    ClientSettings oldSetting = ve.ClientSettings.FirstOrDefault(cl => cl.ClientId == clientSetting.ClientId);
                    if (oldSetting != null)
                    {
                        //updating the existing settings
                        oldSetting.IsEducationServiceAvailable = clientSetting.IsEducationServiceAvailable;
                        oldSetting.IsAssetServiceAvailable = clientSetting.IsAssetServiceAvailable;
                        oldSetting.IsBusServiceAvailable = clientSetting.IsBusServiceAvailable;
                        oldSetting.IsCerificateServiceAvailable = clientSetting.IsCerificateServiceAvailable;
                        oldSetting.IsDebtorCreditotsServiceAvailable = clientSetting.IsDebtorCreditotsServiceAvailable;
                        oldSetting.IsDemoClassServiceAvailable = clientSetting.IsDemoClassServiceAvailable;
                        oldSetting.IsEnquiryServiceAvailable = clientSetting.IsEnquiryServiceAvailable;
                        oldSetting.IsHostelServiceAvailable = clientSetting.IsHostelServiceAvailable;
                        oldSetting.IsJobServiceAvailable = clientSetting.IsJobServiceAvailable;
                        oldSetting.IsOfficeExpenseServiceAvailable = clientSetting.IsOfficeExpenseServiceAvailable;
                        oldSetting.IsSMSServiceAvailable = clientSetting.IsSMSServiceAvailable;
                        oldSetting.IsStudyMaterialServiceAvailable = clientSetting.IsStudyMaterialServiceAvailable;
                        oldSetting.MaximumNumberOfCourseBrandsPerSchool = clientSetting.MaximumNumberOfCourseBrandsPerSchool;
                        oldSetting.MaximumNumberOfUsersPerSchool = clientSetting.MaximumNumberOfUsersPerSchool;
                        oldSetting.SMSurl = clientSetting.SMSurl;
                        oldSetting.SMSUserId = clientSetting.SMSUserId;
                        oldSetting.SMSPwd = clientSetting.SMSPwd;
                        return ve.SaveChanges();
                    }
                    else
                    {
                        //create new settings 
                        ve.AddToClientSettings(clientSetting);
                        return ve.SaveChanges();
                    }
                }
            }
            catch
            {
                return 0;
            }
        }
        #endregion //ClientSettings
    }
}