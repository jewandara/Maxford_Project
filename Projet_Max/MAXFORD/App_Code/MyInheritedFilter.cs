﻿using System;
using System.Collections.Generic;
using System.Web;
using System.Drawing;

using CodeCarvings.Piczard;
using CodeCarvings.Piczard.Processing;
using CodeCarvings.Piczard.Filters.Watermarks;

[Serializable]
public class MyInheritedFilter  : TextWatermark
{

    #region Constructors

    public MyInheritedFilter(string text)
        : base(text)
    {
    }

    public MyInheritedFilter()
        : this("")
	{
    }

    #endregion

    #region Overriedes

    protected override void ApplyTextWatermark(ImageProcessingActionExecuteArgs args, Graphics g)
    {
        // Draw a filled rectangle
        int rectangleWidth = 14;
        using (Brush brush = new SolidBrush(Color.FromArgb(220, Color.Red)))
        {
            g.FillRectangle(brush, new Rectangle(args.Image.Size.Width - rectangleWidth, 0, rectangleWidth, args.Image.Size.Height));
        }

        using (System.Drawing.Drawing2D.Matrix transform = g.Transform)
        {
            using (StringFormat stringFormat = new StringFormat())
            {
                // Vertical text (bottom -> top)
                stringFormat.FormatFlags = StringFormatFlags.DirectionVertical;
                transform.RotateAt(180F, new PointF(args.Image.Size.Width / 2, args.Image.Size.Height / 2));
                g.Transform = transform;

                // Align: top left, +2px displacement 
                // (because of the matrix transformation we have to use inverted values)
                base.ContentAlignment = ContentAlignment.MiddleLeft;
                base.ContentDisplacement = new Point(-2, -2);

                base.ForeColor = Color.White;
                base.Font.Size = 10;

                // Draw the string by invoking the base Apply method
                base.StringFormat = stringFormat;
                base.ApplyTextWatermark(args, g);
                base.StringFormat = null;
            }
        }
    }

    #endregion

}
