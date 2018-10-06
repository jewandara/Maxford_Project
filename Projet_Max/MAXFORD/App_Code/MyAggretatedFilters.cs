using System;
using System.Collections.Generic;
using System.Web;
using System.Drawing;
using CodeCarvings.Piczard;
using CodeCarvings.Piczard.Processing;
using CodeCarvings.Piczard.Filters.Colors;
using CodeCarvings.Piczard.Filters.Watermarks;

[Serializable]
public class MyAggretatedFilters : ImageProcessingFilter
{

    #region Constructors

    public MyAggretatedFilters(string text)
	{
        this.Text = text;
    }

    public MyAggretatedFilters()
        : this(String.Empty)
    {
    }

    #endregion

    #region Overriedes

    protected override void LoadImageProcessingActions(ImageProcessingActionLoadArgs args)
    {
        // Filter #1
        args.LoadImageProcessingActions(new FixedCropConstraint(300, 200));

        // Filter #2
        TextWatermark watermark = new TextWatermark(this.Text, ContentAlignment.TopCenter);
        watermark.Font.Size = 12;
        watermark.ForeColor = Color.Black;
        args.LoadImageProcessingActions(watermark);

        // Filter #3
        args.LoadImageProcessingActions(DefaultColorFilters.Sepia);
    }

    protected override void Apply(ImageProcessingActionExecuteArgs args)
    {
        // This is only a container for multiple filters
        throw new Exception("Cannot invoke the Apply method.");
    }

    #endregion

    #region Propertites

    public string Text {get; set;}

    #endregion

}
