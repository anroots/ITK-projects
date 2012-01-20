using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Eksam
{
    /// <summary>
    /// C# Exam
    /// A 3D vector class with x, y, z coordinates
    /// Extends and overrides the more generic Vektor class
    /// @author Ando Roots
    /// </summary>
    public class Vektor3D : Vektor
    {
        /// <summary>
        /// The z component
        /// </summary>
        public double z = 0;

        /// <summary>
        /// Constructor for a null-vector
        /// </summary>
        public Vektor3D()
        {

        }

        /// <summary>
        /// Default constructor
        /// </summary>
        /// <param name="a">The x component</param>
        /// <param name="b">The y component</param>
        /// <param name="c">The z component</param>
        public Vektor3D(double a, double b, double c)
        {
            x = a;
            y = b;
            z = c;
        }

        /// <summary>
        /// Check whether the current vector is a null-vector
        /// </summary>
        /// <returns></returns>
        public override bool Empty()
        {
            return base.Empty() && z == 0;
        }

        /// <summary>
        /// Override the + operator
        /// </summary>
        /// <param name="a"></param>
        /// <param name="b"></param>
        /// <returns></returns>
        public static Vektor3D operator +(Vektor3D a, Vektor3D b)
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
            return new Vektor3D(a.x + b.x, a.y + b.y, a.z + b.z);
        }

        /// <summary>
        /// Override the - operator
        /// </summary>
        /// <param name="a"></param>
        /// <param name="b"></param>
        /// <returns></returns>
        public static Vektor3D operator -(Vektor3D a, Vektor3D b)
        {
            // Create a dummy vector when a is null
            if (a == null)
            {
                a = new Vektor3D();
            }

            // Nothing to subtract
            if (b == null || b.Empty())
            {
                return a;
            }

            return new Vektor3D(a.x - b.x, a.y - b.y, a.z - b.z);
        }

        /// <summary>
        /// Calculate vector length
        /// </summary>
        /// <returns>The scalar length of the vector</returns>
        public override double Length()
        {
            return Math.Sqrt(x * x + y * y+z*z);
        }

        /// <summary>
        /// Compare two vectors in terms of vector length
        /// </summary>
        /// <param name="a"></param>
        /// <param name="b"></param>
        /// <returns></returns>
        public static bool operator ==(Vektor3D x, Vektor3D y)
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

            // Compare vector components
            return x.x == y.x && x.y == y.y && x.z == y.z;
        }

        /// <summary>
        /// Compare two vectors in terms of vector length
        /// </summary>
        /// <param name="x"></param>
        /// <param name="y"></param>
        /// <returns></returns>
        public static bool operator !=(Vektor3D x, Vektor3D y)
        {
            return !(x == y);
        }

        /// <summary>
        /// Override the Equals method
        /// </summary>
        /// <param name="obj"></param>
        /// <returns></returns>
        public override bool Equals(Object obj)
        {
            if (!(obj is Vektor3D))
            {
                return false;
            }
            return this == (Vektor3D)obj;
        }

        /// <summary>
        /// Override the GetHashCode method
        /// </summary>
        /// <returns></returns>
        public override int GetHashCode()
        {
            return (int)(x * 2 + y * 3 + z*4);
        }

        /// <summary>
        /// Override the ToString method
        /// </summary>
        /// <returns></returns>
        public override string ToString()
        {
            return "(" + x.ToString() + ", " + y.ToString() + ", " + z.ToString() + ")";
        }
    }
}
