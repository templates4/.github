using System.Runtime.InteropServices;

namespace Spider.WgetAnalysis;

public partial class MainPage : ContentPage
{
	
	


    public MainPage()
	{
		InitializeComponent();
	}

    public void OnWizardClicked(object sender, EventArgs e)
	{

        
	}
    
 
    

public void WizardBtn_Cancel(object sender, EventArgs e)
    {
		cancellation = new CancellationToken(true);
        WizardBtn.Clicked -= WizardBtn_Cancel;

    }
}



