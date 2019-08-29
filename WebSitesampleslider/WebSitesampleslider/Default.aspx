<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div><script runat="Server" type="text/C#">
        [System.Web.Services.WebMethod]
        [System.Web.Script.Services.ScriptMethod]
        public static AjaxControlToolkit.Slide[] GetSlides()
        {
            return new AjaxControlToolkit.Slide[] { 
            new AjaxControlToolkit.Slide("images/1.jpg", "Blue Hills", "Go Blue", "images/Blue hills.jpg"),
            new AjaxControlToolkit.Slide("images/2.jpg", "Sunset", "Setting sun", "images/Sunset.jpg"),
            new AjaxControlToolkit.Slide("images/3.jpg", "Winter", "Wintery...", "images/Winter.jpg"),
            new AjaxControlToolkit.Slide("images/4.jpg", "Water lillies", "Lillies in the water", "images/Water lilies.jpg"),
            new AjaxControlToolkit.Slide("images/5.jpg", "Sedona", "Portrait style picture", "images/VerticalPicture.jpg")};
        }
    </script>
            <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
 <div style="text-align:center">
            <asp:Label runat="Server" ID="imageTitle" CssClass="slideTitle"/><br />
            <asp:Image ID="Image1" runat="server" 
                Height="300"
                Width="400"
                Style="border: 1px solid black;"                 
                AlternateText="Blue Hills image" />
            <asp:Label runat="server" ID="imageDescription" CssClass="slideDescription"></asp:Label><br /><br />
            <asp:Button runat="Server" ID="prevButton" Text="Prev" Font-Size="Larger" />
            <asp:Button runat="Server" ID="playButton" Text="Play" Font-Size="Larger" />
            <asp:Button runat="Server" ID="nextButton" Text="Next" Font-Size="Larger" />
            <ajaxToolkit:SlideShowExtender ID="slideshowextend1" runat="server" 
                TargetControlID="Image1"
                SlideShowServiceMethod="GetSlides" 
                AutoPlay="true" 
                ImageTitleLabelID="imageTitle"
                ImageDescriptionLabelID="imageDescription"
                NextButtonID="nextButton" 
                PlayButtonText="Play" 
                StopButtonText="Stop"
                PreviousButtonID="prevButton" 
                PlayButtonID="playButton" 
                Loop="true" SlideShowAnimationType="SlideRight" />
        </div>
        </div>
    </form>
</body>
</html>
