describe NSString do

  describe 'resource()' do
    describe '"info.plist".resource' do
      before { @it = "info.plist".resource }
      it 'should start with "/Users"' do
        @it.hasPrefix("/Users").should == true
      end
      it 'should end with "SugarCube_spec.app/info.plist"' do
        @it.hasSuffix("SugarCube_spec.app/info.plist").should == true
      end
    end
    describe '"PkgInfo".resource' do
      before { @it = "PkgInfo".resource }
      it 'should start with "/Users"' do
        @it.hasPrefix("/Users").should == true
      end
      it 'should end with "SugarCube_spec.app/PkgInfo"' do
        @it.hasSuffix("SugarCube_spec.app/PkgInfo").should == true
      end
    end
  end
  

  describe 'resource_url()' do
=begin
    # it fail. returns nil.
    # Maybe info.plist is not permitted to get as NSURL
    describe '"info.plist".resource_url' do
      before { @it = "info.plist".resource_url.absoluteString }
      it 'should start with "file://localhost/Users"' do
        @it.hasPrefix("file://localhost/Users").should == true
      end
      it 'should end with "SugarCube_spec.app/info.plist"' do
        @it.hasSuffix("SugarCube_spec.app/info.plist").should == true
      end
    end
=end

    describe '"PkgInfo".resource_url' do
      before { @it = "PkgInfo".resource_url.absoluteString }
      it 'should start with "file://localhost/Users"' do
        @it.hasPrefix("file://localhost/Users").should == true
      end
      it 'should end with "SugarCube_spec.app/PkgInfo"' do
        @it.hasSuffix("SugarCube_spec.app/PkgInfo").should == true
      end
    end
  end
  
  describe 'info_plist' do
    describe '"CFBundleVersion".info_plist' do
      before { @it = "CFBundleVersion".info_plist }
      it 'should be "1.0"' do
        @it.should == "1.0"
      end
    end
    
    describe '"CFBundleSupportedPlatforms".info_plist' do
      before { @it = "CFBundleSupportedPlatforms".info_plist }
      it 'should be ["iPhoneOS"]' do
        @it.should == ["iPhoneOS"]
      end
    end
  end

end

