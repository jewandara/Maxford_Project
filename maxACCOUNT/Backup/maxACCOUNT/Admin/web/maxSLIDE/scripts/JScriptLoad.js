function preview(img, selection) {
    if (!selection.width || !selection.height)
        return;
    var img = document.getElementById('<%=maxSlideImageUpLoadedOrgnImage.ClientID%>');
    var ImgWidth = img.naturalWidth;
    var ImgHeight = img.naturalHeight;
    var ImageResio = ImgWidth / ImgHeight;
    var scaleX1 = parseInt((selection.x1 * ImgWidth) / 1000);
    var scaleX2 = parseInt((selection.x2 * ImgWidth) / 1000);
    var scaleY1 = parseInt((selection.y1 * ImgHeight) / (1000 / ImageResio));
    var scaleY2 = parseInt((selection.y2 * ImgHeight) / (1000 / ImageResio));
    $('#<%=X1.ClientID%>').val(scaleX1);
    $('#<%=Y1.ClientID%>').val(scaleY1);
    $('#<%=x2.ClientID%>').val(selection.x2);
    $('#<%=y2.ClientID%>').val(selection.y2);
    $('#<%=W1.ClientID%>').val(scaleX2 - scaleX1);
    $('#<%=H1.ClientID%>').val(scaleY2 - scaleY1);
}
$(function () {
    $('#<%=maxSlideImageUpLoadedOrgnImage.ClientID%>').imgAreaSelect({
        aspectRatio: '100:43',
        handles: true,
        fadeSpeed: 500,
        onSelectChange: preview
    });
});