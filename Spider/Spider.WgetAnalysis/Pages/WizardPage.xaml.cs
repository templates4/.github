namespace Spider.WgetAnalysis.Pages;

public partial class WizardPage : ContentPage
{
	public WizardPage()
	{
		InitializeComponent();
        AttributeGrid.Loaded += AttributeGrid_Loaded;
	}

    private void AttributeGrid_Loaded(object sender, EventArgs e)
    {
        throw new NotImplementedException();
    }
}
