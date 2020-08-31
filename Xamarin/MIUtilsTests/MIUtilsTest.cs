
using System;
using NUnit.Framework;
using UIKit;
using Binding;

namespace MIUtilsTests
{
    [TestFixture]
    public class MIUtilsTests
    {
        [Test]
        public void CreateBadgedIcon()
        {
            UIImage icon = new UIImage("closed.png");
            MPBadgedIconConfiguration config = new MPBadgedIconConfiguration(icon, "test");
            UIImage badged = MPBadgedIcon.BadgedIcon(config);
            Assert.NotNull(badged);
        }

    }
}
