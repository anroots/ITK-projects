using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;


namespace Eksam
{
    /// <summary>
    /// Interaction logic for MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        public MainWindow()
        {
            InitializeComponent();
        }


        

        /// <summary>
        /// Tests for Vector3D class
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        private void btnVector3D_Click(object sender, RoutedEventArgs e)
        {
            System.Diagnostics.Stopwatch watch = new System.Diagnostics.Stopwatch();
            watch.Start();

            txtVector3D.Text = "Starting test suite for the Vektor3D class.\r\n\r\n";

            // Sample data
            List<Eksam.Vektor3D> vectors = new List<Vektor3D>{
                new Vektor3D(),
                new Vektor3D(1,1,1),
                new Vektor3D(0,-1,0),
                new Vektor3D(2.2, 1.2, 3.1),
                new Vektor3D(10,4,3),
                null
            };

            // Go over all defined operations and input combinations
            foreach (Vektor3D vector in vectors)
            {
                foreach (Vektor3D secondVector in vectors)
                {
                    txtVector3D.Text += vector + " + " + secondVector + " = " + (vector + secondVector) + "\r\n";
                    txtVector3D.Text += vector + " - " + secondVector + " = " + (vector - secondVector) + "\r\n";
                    txtVector3D.Text += vector + " == " + secondVector + " ... " + (vector == secondVector) + "\r\n";
                    txtVector3D.Text += vector + vector + " (length " + (vector == null ? 0 : vector.Length()) + ") > " + secondVector + " (length " + (secondVector == null ? 0 : secondVector.Length()) + ")" + " ... " + (vector > secondVector) + "\r\n";
                    txtVector3D.Text += vector + vector + " (length " + (vector == null ? 0 : vector.Length()) + ") < " + secondVector + " (length " + (secondVector == null ? 0 : secondVector.Length()) + ")" + " ... " + (vector < secondVector) + "\r\n";
                }
            }

            watch.Stop();
            double elapsed = watch.ElapsedMilliseconds;
            txtVector3D.Text += "\r\nTest suite finished, time elapsed: " + elapsed + "ms.";
        }

        /// <summary>
        /// Tests for Vektor class
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        private void btnVector_Click(object sender, RoutedEventArgs e)
        {
            System.Diagnostics.Stopwatch watch = new System.Diagnostics.Stopwatch();
            watch.Start();
            txtVector.Text = "Starting test suite for the Vektor class.\r\n\r\n";

            // Sample data
            List<Eksam.Vektor> vectors = new List<Vektor>{
                new Vektor(),
                new Vektor(1,1),
                new Vektor(0,1),
                new Vektor(2.2, 1.2),
                new Vektor(10,-4),
                null
            };


            // Go over all defined operations and input combinations
            foreach (Vektor vector in vectors)
            {
                foreach (Vektor secondVector in vectors)
                {
                    txtVector.Text += vector + " + " + secondVector + " = " + (vector + secondVector) + "\r\n";
                    txtVector.Text += vector + " - " + secondVector + " = " + (vector - secondVector) + "\r\n";
                    txtVector.Text += vector + " == " + secondVector + " ... " + (vector == secondVector) + "\r\n";
                    txtVector.Text += vector + vector + " (length " + (vector == null ? 0 : vector.Length()) + ") > " + secondVector + " (length " + (secondVector == null ? 0 : secondVector.Length()) + ")" + " ... " + (vector > secondVector) + "\r\n";
                    txtVector.Text += vector + vector + " (length " + (vector == null ? 0 : vector.Length()) + ") < " + secondVector + " (length " + (secondVector == null ? 0 : secondVector.Length()) + ")" + " ... " + (vector < secondVector) + "\r\n";
                }
            }

            watch.Stop();
            double elapsed = watch.ElapsedMilliseconds;
            txtVector.Text += "\r\nTest suite finished, time elapsed: "+elapsed+"ms.";
        }

    }
}
