using Test
using TestImages
using VLFeat

@testset "vl_sift on cameraman image" begin
  cameraman_image = TestImages.testimage("cameraman")
  @testset "without float descriptors" begin
    (f,d) = VLFeat.vl_sift(cameraman_image)
    @testset "Dimensions of features and descriptors" begin
      @test size(f,1) == 4
      @test size(d,1) == 128
    end
    @testset "Number of features and descriptors" begin
      @test size(f,2) >= 196
      @test size(d,2) >= 196
    end
  end
  @testset "with float descriptors" begin
    (f,d) = VLFeat.vl_sift(cameraman_image; floatDescriptors=true)
    @testset "Dimensions of features and descriptors" begin
      @test size(f,1) == 4
      @test size(d,1) == 128
    end
    @testset "Number of features and descriptors" begin
      @test size(f,2) >= 196
      @test size(d,2) >= 196
    end
  end
end
