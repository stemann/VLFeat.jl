using Test
using TestImages
using VLFeat

@testset "vl_sift with float descriptors on lena_gray_256" begin
  lena = TestImages.testimage("lena_gray_256")
  (f,d) = VLFeat.vl_sift(lena; floatDescriptors=true)
  @testset "Dimensions of features and descriptors" begin
    @test size(f,1) == 4
    @test size(d,1) == 128
  end
  @testset "Number of features and descriptors" begin
    @test size(f,2) >= 196
    @test size(d,2) >= 196
  end
end
