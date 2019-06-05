using System;
using System.Collections;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;
using Newtonsoft.Json;

namespace SchoolTimeTable_WPF.Windows
{
    /// <summary>
    /// Логика взаимодействия для SecondStep.xaml
    /// </summary>
    public partial class SecondStep : UserControl
    {
        public delegate void ReloadList();
        public event ReloadList Reload;

        public delegate void ChangeProgress();
        public event ChangeProgress Increase;
        public event ChangeProgress Decrease;

        SingletonSchedule schedule;
        Appointment a;
        private int n;
        private int i = 1;

        public SecondStep()
        {
            InitializeComponent();
            schedule = SingletonSchedule.GetInstance();
        }

        private void button1_Click(object sender, RoutedEventArgs e)
        {
            if (Reload != null)
                Reload();

            if (Decrease != null)
                Decrease();
        }

        private void button2_Click(object sender, RoutedEventArgs e)
        {
            if (className.Text != "")
            {
                errorLabel.Visibility = Visibility.Hidden;
                schedule.Input.Records[i - 1].ClassName += className.Text;

                if (i < n)
                {
                    schedule.Input.Records[i].Appointments = new List<Appointment>();
                    LoadClassNumber(i);
                    i++;
                }

                else
                {
                    string serialized = JsonConvert.SerializeObject(schedule.Input);

                    if (Increase != null)
                        Increase();
                }
            }
            
            else
            {
                errorLabel.Visibility = Visibility.Visible;
            }
        }

        private void button3_Click(object sender, RoutedEventArgs e)
        {
            SaveAttachment(i);

            tb_subject.Text = "";
            tb_teacher.Text = "";
            iud_hours.Value = 1;
        }

        public void SaveAttachment(int index)
        {
            Appointment a = new Appointment();
            a.Subject = tb_subject.Text;
            a.Teacher = tb_teacher.Text;
            a.NumOfHours = iud_hours.Value ?? 0;

            dg_attachments.Items.Add(a);

            schedule.Input.Records[i - 1].Appointments.Add(a);
        }

        public void LoadClassNumber(int position)
        {
            classNumber.Text = schedule.Input.Records[position].ClassName.ToString();
            tb_subject.Text = "";
            tb_teacher.Text = "";
            iud_hours.Value = 1;
            className.Text = "";
            
            while (dg_attachments.Items.Count > 0)
            {
                dg_attachments.Items.RemoveAt(0);
            }
        }

        public void SetN(int n)
        {
            schedule.Input.Records[0].Appointments = new List<Appointment>();
            this.n = n;
        }
    }
}
