// RUN: %dxc -Tcs_6_6 -verify %s


[numthreads(1, 1, 1)]
void main() 
{
	Texture2D t1 = ResourceDescriptorHeap[0];
	SamplerState s1 = SamplerDescriptorHeap[0];
	
	Texture2D t2 = ResourceDescriptorHeap[0][1]; // expected-error{{type 'const .Resource' does not provide a subscript operator}}
	SamplerState s2 = SamplerDescriptorHeap[0][1][2]; // expected-error{{type 'const .Sampler' does not provide a subscript operator}}
}