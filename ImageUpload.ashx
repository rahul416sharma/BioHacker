<%@ WebHandler Language="C#" Class="UploadHandler" %>

using System;
using System.Web;
using System.IO;
using System.Drawing;
using System.Drawing.Drawing2D;
public class UploadHandler : IHttpHandler {

    public void ProcessRequest (HttpContext context) {
        //string path = context.Request["path"];
        //FileInfo fn = new FileInfo(path);
        //fn.CopyTo(context.Server.MapPath("Image/"+fn.Name));
        //context.Response.Write(fn.Name+":"+fn.Extension);

        if (context.Request.Files.Count > 0)
        {
            HttpFileCollection files = context.Request.Files;
            for (int i = 0; i < files.Count; i++)
            {
                HttpPostedFile file = files[i];
                string _fileExt = System.IO.Path.GetExtension(file.FileName);
                if (_fileExt.ToLower() == ".jpg" || _fileExt.ToLower() == ".jpeg" || _fileExt.ToLower() == ".png"||_fileExt.ToLower() == ".pdf"||_fileExt.ToLower() == ".HEIC"||_fileExt.ToLower() == ".heic")
                {
                    if (file.ContentLength < 9000000)
                    {
                            string fname,path,fileNames;
                        if (HttpContext.Current.Request.Browser.Browser.ToUpper() == "IE" || HttpContext.Current.Request.Browser.Browser.ToUpper() == "INTERNETEXPLORER")
                        {
                            string[] testfiles = file.FileName.Split(new char[] { '\\' });
                            fname = testfiles[testfiles.Length - 1];
                        }

                        else
                        {
                            Random rnd = new Random();
                            //fname = file.FileName;
                            fname = rnd.Next(99, 99999) + file.FileName.Replace(' ', '-');
                        }

                        fileNames = Path.Combine(context.Server.MapPath("ServiceImage/"), fname);
                        path = Path.Combine(("ServiceImage/"), fname);

                        file.SaveAs(fileNames);
                        context.Response.Write(path);
                    }
                    else
                    {
                        context.Response.Write("Image Size is not correct");
                    }
                }
                else
                {
                    context.Response.Write("Image Format is not correct");
                }
            }
        }
        //context.Response.ContentType = "text/plain";

    }

    public bool IsReusable {
        get {
            return false;
        }
    }

}