using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml;
using System.Xml.Linq;

namespace WebApplication1
{
    public class countryInfo {
        public string id;
        public string twoLetter;
        public double TBS;
    }
    public partial class Contact : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            List<countryInfo> countries = new List<countryInfo>();

            string CONT = "http://api.worldbank.org/countries?format=xml&per_page=300";
            string CONT1 = HttpGet(CONT);
            XElement root = XElement.Load(CONT);

            XNamespace wb = XNamespace.Get("http://www.worldbank.org");
            var Test = root.Descendants(wb +"country").Select(a=> new {id = a.Attributes("id").First().Value,twoLetter = a.Descendants(wb + "iso2Code").First().Value});


            string TBSMort = "http://api.worldbank.org/countries/indicators/SH.TBS.MORT?format=xml&per_page=3000&date=2007:2015";
            string TBUSMort1=HttpGet(TBSMort);

            XElement TBSroot = XElement.Load(TBSMort);
            var TBS = TBSroot.Descendants(wb + "data")
                .Where(a => a.Descendants(wb + "value")
                    .Any(b => b.Value != string.Empty))
                    .Select(a => new { twoLetter = a.Descendants(wb + "country").Attributes("id").First().Value,
                        date  = Int32.Parse(a.Descendants(wb + "date").First().Value), 
                        TB =decimal.Parse(a.Descendants(wb + "value").First().Value) });

            var TBS2 = TBS.GroupBy(x => x.twoLetter,
                         (key, xs) => xs.OrderByDescending(x => x.date)
                                        .First()
                                        );

            var query = from c in Test
                        join o in TBS2 on c.twoLetter equals o.twoLetter
                        select new { c.id, o.TB };

            var file = new System.IO.StreamWriter(HttpRuntime.AppDomainAppPath + "Content/sp.pop.totl.csv");
            file.WriteLine("id,fillKey");
            foreach (var q in query)
            {
                file.Write(q.id + ",");
                if (q.TB < 10)
                {
                    file.WriteLine("1");
                }
                else if (q.TB < 20)
                {
                    file.WriteLine("2");
                }
                else if (q.TB < 50)
                {
                    file.WriteLine("3");
                }
                else { file.WriteLine("4");
                };


            }

           // var file = new System.IO.StreamWriter(HttpRuntime.AppDomainAppPath+"Data/TBSMortData.xml");
           // file.WriteLine(TBUSMort1);

            file.Close();

            //string TBSPrev = "http://api.worldbank.org/countries/indicators/SH.TBS.PREV?format=xml&per_page=100&date=2005:2015";
            //string TBUSPrev1 = HttpGet(TBSPrev);
            //var file = new System.IO.StreamWriter(HttpRuntime.AppDomainAppPath + "Data/TBSPrevData.xml");
            //file.WriteLine(TBUSPrev1);

            //file.Close();

            //string STAMalr = "http://api.worldbank.org/countries/indicators/SH.STA.MALR?format=xml&per_page=100&date=2005:2015";
            //string STAMalr1 = HttpGet(STAMalr);
            //file = new System.IO.StreamWriter(HttpRuntime.AppDomainAppPath + "Data/STAMalrData.xml");
            //file.WriteLine(STAMalr1);

            //file.Close();

            //string H2OSafezs = "http://api.worldbank.org/countries/indicators/SH.H2O.SAFE.ZS?format=xml&per_page=100&date=2005:2015";
            //string H2OSafezs1 = HttpGet(H2OSafezs);
            //file = new System.IO.StreamWriter(HttpRuntime.AppDomainAppPath + "Data/H2OSafezsData.xml");
            //file.WriteLine(H2OSafezs1);

            //file.Close();

            //string STAAcsn = "http://api.worldbank.org/countries/indicators/SH.STA.ACSN?format=xml&per_page=100&date=2005:2015";
            //string STAAcsn1 = HttpGet(STAAcsn);
            //file = new System.IO.StreamWriter(HttpRuntime.AppDomainAppPath + "Data/STAAcsnData.xml");
            //file.WriteLine(STAAcsn1);

            //file.Close();

            //string IMMIbcg = "http://api.worldbank.org/countries/indicators/SH.IMM.IBCG?format=xml&per_page=100&date=2005:2015";
            //string IMMIbcg1 = HttpGet(IMMIbcg);
            //file = new System.IO.StreamWriter(HttpRuntime.AppDomainAppPath + "Data/IMMIbcgData.xml");
            //file.WriteLine(IMMIbcg1);

            //file.Close();

            //string IMMIdpt = "http://api.worldbank.org/countries/indicators/SH.IMM.IDPT?format=xml&per_page=100&date=2005:2015";
            //string IMMIdpt1 = HttpGet(IMMIdpt);
            //file = new System.IO.StreamWriter(HttpRuntime.AppDomainAppPath + "Data/IMMIdptData.xml");
            //file.WriteLine(IMMIdpt1);

            //file.Close();

            //string IMMHepb = "http://api.worldbank.org/countries/indicators/SH.IMM.HEPB?format=xml&per_page=100&date=2005:2015";
            //string IMMHepb1 = HttpGet(IMMHepb);
            //file = new System.IO.StreamWriter(HttpRuntime.AppDomainAppPath + "Data/IMMHepbData.xml");
            //file.WriteLine(IMMHepb1);

            //file.Close();

            //string IMMHib3 = "http://api.worldbank.org/countries/indicators/SH.IMM.HIB3?format=xml&per_page=100&date=2005:2015";
            //string IMMHib31 = HttpGet(IMMHib3);
            //file = new System.IO.StreamWriter(HttpRuntime.AppDomainAppPath + "Data/IMMHib3Data.xml");
            //file.WriteLine(IMMHib31);

            //file.Close();

            //string IMMPol3 = "http://api.worldbank.org/countries/indicators/SH.IMM.POL3?format=xml&per_page=100&date=2005:2015";
            //string IMMPol31 = HttpGet(IMMPol3);
            //file = new System.IO.StreamWriter(HttpRuntime.AppDomainAppPath + "Data/IMMPol3Data.xml");
            //file.WriteLine(IMMPol31);

            //file.Close();

            //string IMMMeas = "http://api.worldbank.org/countries/indicators/SH.IMM.MEAS?format=xml&per_page=100&date=2005:2015";
            //string IMMMeas1 = HttpGet(IMMMeas);
            //file = new System.IO.StreamWriter(HttpRuntime.AppDomainAppPath + "Data/IMMMeasData.xml");
            //file.WriteLine(IMMMeas1);

            //file.Close();
        }
        static string HttpGet(string url)
        {
            HttpWebRequest req = WebRequest.Create(url)
                                 as HttpWebRequest;
            string result = null;
            using (HttpWebResponse resp = req.GetResponse()
                                          as HttpWebResponse)
            {
                StreamReader reader =
                    new StreamReader(resp.GetResponseStream());
                result = reader.ReadToEnd();
            }
            return result;
        }
    }
}