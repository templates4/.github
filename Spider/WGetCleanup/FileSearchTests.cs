using NUnit.Framework;
using System.IO;
using System.Text;
using System.Threading.Tasks;

namespace WGetCleanup;

[TestFixture]
public class FileSearchTests
{
    private const string RootDirectory = "/Users/owner/vsphere-k8s/.github/workflows/www.justice.gov";

    [Test]
    public async Task TestFileSearchForHtmlAsync()
    {
        // Arrange
        bool isHtmlFound = false;

        // Act
        await SearchForHtmlFilesAsync(RootDirectory, isHtmlFound);

        // Assert
        Assert.IsTrue(isHtmlFound, "HTML files were not found in the directory.");
    }

    private async Task SearchForHtmlFilesAsync(string directory, bool isHtmlFound)
    {
        foreach (string file in Directory.GetFiles(directory))
        {
            if ((await ReadFileContentAsync(file, 256)).Contains("html"))
            {
                isHtmlFound = true;
                return;
            }
        }

        foreach (string subdirectory in Directory.GetDirectories(directory))
        {
            await SearchForHtmlFilesAsync(subdirectory, isHtmlFound);
            if (isHtmlFound)
                return;
        }
    }

    private async Task<string> ReadFileContentAsync(string filePath, int maxLength)
    {
        using (FileStream fileStream = new FileStream(filePath, FileMode.Open, FileAccess.Read))
        {
            int length = (int)Math.Min(fileStream.Length, maxLength);
            byte[] buffer = new byte[length];
            await fileStream.ReadAsync(buffer, 0, length);
            return Encoding.Default.GetString(buffer);
        }
    }
}
