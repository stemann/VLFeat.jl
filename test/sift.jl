using FactCheck
using TestImages
using VLFeat

facts("vl_sift with float descriptors on lena_gray_256") do
  lena = TestImages.testimage("lena_gray_256")
  (f,d) = VLFeat.vl_sift(lena; floatDescriptors=true)
  context("Dimensions of features and descriptors") do
    @fact size(f,1) --> 4
    @fact size(d,1) --> 128
  end
  context("Number of features and descriptors") do
    @fact size(f,2) --> greater_than_or_equal(196)
    @fact size(d,2) --> greater_than_or_equal(196)
  end
end

FactCheck.exitstatus()
