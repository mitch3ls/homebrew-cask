cask 'sip' do
  if MacOS.version <= :sierra
    version '1.1.6'
    sha256 'bb170a54090aab5703388a3e7a22e9cf4e4d98e84f5658893e1e6f9677b9a51e'
  else
    version '2.1.1'
    sha256 '748f4e7330d3e3014928866c5198045387fcee3399843a780cfa1f1c93fa68b3'
  end

  url "https://sipapp.io/updates/v#{version.major}/sip-#{version}.zip"
  appcast "https://sipapp.io/updates/v#{version.major}/sip.xml"
  name 'Sip'
  homepage 'https://sipapp.io/'

  depends_on macos: '>= :sierra'

  app 'Sip.app'

  zap trash: [
               '~/Library/Application Support/Sip',
               '~/Library/Application Support/io.sipapp.Sip-paddle',
               '~/Library/Caches/io.sipapp.Sip-paddle',
               '~/Library/Cookies/io.sipapp.Sip-paddle.binarycookies',
               '~/Library/Preferences/io.sipapp.Sip-paddle.plist',
               '~/Library/Saved Application State/io.sipapp.Sip-paddle.savedState',
             ]
end
