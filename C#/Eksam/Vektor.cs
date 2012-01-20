using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Eksam
{
    /// <summary>
    /// C# Exam
    /// Vector class
    /// @author Ando Roots 2012
    /// </summary>
    public class Vektor
    {
        /// <summary>
        /// The x component
        /// </summary>
        public double x = 0;

        /// <summary>
        /// The y component
        /// </summary>
        public double y = 0;

        /// <summary>
        /// Constructor for null-vector
        /// </summary>
        public Vektor()
        {

        }

        /// <summary>
        /// Default constructor for a 2-dimensional vector
        /// </summary>
        /// <param name="a">Length in x-direction</param>
        /// <param name="b">Length in y-direction</param>
        public Vektor(double a, double b)
        {
            x = a;
            y = b;
        }

        /// <summary>
        /// Check whether the current vector is a null-vector
        /// </summary>
        /// <returns>True if x & y length is 0</returns>
        public virtual bool Empty()
        {
            return x == 0 && y == 0;
        }

        /// <summary>
        /// Overload the + operator to work with two Vectors
        /// </summary>
        /// <param name="a"></param>
        /// <param name="b"></param>
        /// <returns>The sum of two Vektor objects</returns>
        public static Vektor operator +(Vektor a, Vektor b)
        {
            // Both inputs are null
            if (a == null && b == null)
            {
                return null;
            }

            // Vector b is a null vector
            if (b == null || b.Empty())
            {
                return a;
            }

            // Vector a is a null vector
            if (a == null || a.Empty())
            {
                return b;
            }

            // Neither vector is a null vector
            return new Vektor(a.x + b.x, a.y + b.y);
        }

        /// <summary>
        /// Subtract vector b from vector a
        /// </summary>
        /// <param name="a"></param>
        /// <param name="b"></param>
        /// <returns>a-b</returns>
        public static Vektor operator -(Vektor a, Vektor b)
        {
            // Create a dummy vector when a is null
            if (a == null)
            {
                a = new Vektor();
            }

            // Nothing to subtract
            if (b == null || b.Empty())
            {
                return a;
            }

            return new Vektor(a.x - b.x, a.y - b.y);
        }

        /// <summary>
        /// Calculate vector length
        /// </summary>
        /// <returns>The scalar length of the vector</returns>
        public virtual double Length()
        {
            return Math.Sqrt(x * x + y * y);
        }

        /// <summary>
        /// Compare two vectors in terms of vector length
        /// </summary>
        /// <param name="a"></param>
        /// <param name="b"></param>
        /// <returns></returns>
        public static bool operator >(Vektor x, Vektor y)
        {
            // Both vectors are null references
            if (x == null && y == null)
            {
                return true;
            }

            // One of the vectors is a null reference
            if (x == null || y == null)
            {
                return false;
            }

            // Compare by length
            return x.Length() > y.Length();
        }

        /// <summary>
        /// Compare two vectors in terms of vector length
        /// </summary>
        /// <param name="a"></param>
        /// <param name="b"></param>
        /// <returns></returns>
        public static bool operator <(Vektor x, Vektor y)
        {
            // Both vectors are null references
            if (x == null && y == null)
            {
                return true;
            }

            // One of the vectors is a null reference
            if (x == null || y == null)
            {
                return false;
            }

            // Compare by length
            return x.Length() < y.Length();
        }

        /// <summary>
        /// Compare two vectors in terms of vector length
        /// </summary>
        /// <param name="a"></param>
        /// <param name="b"></param>
        /// <returns></returns>
        public static bool operator ==(Vektor x, Vektor y)
        {
            // Both vectors are null references
            if ((object)x == null && (object)y == null)
            {
                return true;
            }

            // One of the vectors is a null reference
            if ((object)x == null || (object)y == null)
            {
                return false;
            }

            // Test for equality
            return x.x == y.x && x.y == y.y;
        }

        /// <summary>
        /// Compare two vectors in terms of vector length
        /// </summary>
        /// <param name="x"></param>
        /// <param name="y"></param>
        /// <returns></returns>
        public static bool operator !=(Vektor x, Vektor y)
        {
            return !(x == y);
        }

        /// <summary>
        /// Override the Equals method to work with Vektor
        /// </summary>
        /// <param name="obj"></param>
        /// <returns></returns>
        public override bool Equals(Object obj)
        {
            if (!(obj is Vektor))
            {
                return false;
            }
            return this == (Vektor)obj;
        }

        /// <summary>
        /// Override the GetHashCode method to work with Vektor
        /// </summary>
        /// <returns></returns>
        public override int GetHashCode()
        {
            return (int)(x*2 + y*3);
        }

        /// <summary>
        /// Override the ToString method to work with Vektor
        /// </summary>
        /// <returns></returns>
        public override string ToString()
        {
            return "(" + x.ToString() + ", " + y.ToString() + ")";
        }
    }
}
