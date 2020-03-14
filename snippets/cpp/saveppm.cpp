#include <fstream>

// Saves an image of width x height pixels, where a pixel is 32 bit RGBA as a PPM file
static void savePPM(const char* filename, const unsigned char* pixels, int width, int height)
{
    std::ofstream fs(filename);
    fs << "P6" << std::endl;
    fs << width << ' ' << height << std::endl;
    fs << 255 << std::endl;
    auto end = pixels + 4 * width * height;
    for (auto ptr = pixels; ptr != end; ptr += 4) {
        fs.write(reinterpret_cast<const char*>(ptr), 3);
    }
}
