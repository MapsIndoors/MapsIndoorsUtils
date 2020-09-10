using System;
using NUnit.Framework;
using Com.Mapspeople.Mapsindoorsutils;
using Android.Graphics;

namespace MIUtilsTestsAndroid
{
    [TestFixture]
    public class TestsSample
    {

        [SetUp]
        public void Setup() { }


        [TearDown]
        public void Tear() { }

        [Test]
        public void Pass()
        {

            Bitmap bitmap = Bitmap.CreateBitmap(60, 60, Bitmap.Config.Argb8888);

            Canvas canvas = new Canvas(bitmap);

            Paint p = new Paint();
            p.Color = Color.Blue;

            canvas.DrawCircle(30, 30, 30, p);

            Config config = new ConfigBuilder(bitmap, "2").Build();

            Bitmap badged = BadgedIcon.InvokeBadgedIcon(config);

            Assert.NotNull(badged);
        }
    }
}
