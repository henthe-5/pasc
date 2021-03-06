// use crate::pcd8544::Pcd8544;

// use hal::spi::{Spi, Pins};
// use hal::stm32::SPI1;
// type Buffer = [u8; 504];

// static RUST_LOGO: &'static Buffer = include_bytes!("logo.bin");

// fn empty_buffer() -> Buffer {
//     [0u8; 504]
// }

// pub fn demo(pcd8544: &mut Pcd8544,  spi: &mut Spi<SPI1, (hal::gpio::gpioa::PA5<hal::gpio::Alternate<hal::gpio::AF5>>, hal::spi::NoMiso, hal::gpio::gpioa::PA7<hal::gpio::Alternate<hal::gpio::AF5>>)>) {
    
//         for _ in 0..25 {
//             pcd8544.draw_buffer(spi, RUST_LOGO);
//         }

//         run_shader(pcd8544, 0..75, spi, deform_1_z);

//         for _ in 0..25 {
//             pcd8544.draw_buffer(spi, RUST_LOGO);
//         }

//         run_optimized_mandelbrot(pcd8544, spi);

//         for _ in 0..500 {
//             pcd8544.draw_buffer(spi, RUST_LOGO);
//         }
//     }

// pub fn apply_shader<F: Fn(i32, i32, i32) -> bool>(buffer: &mut Buffer, t: i32, f: F) {
//     for col in 0..84 {
//         for row in 0..6 {
//             let x = col as i32 - 42;
//             let mut byte = 0x00;
//             for bit in 0..8 {
//                 let y = 8 * (row as i32 - 3) + bit;
//                 byte += (f(x, y, t) as u8) << bit;
//             }
//             buffer[6 * col + row] = byte;
//         }
//     }
// }

// pub fn run_shader<F: Fn(i32, i32, i32) -> bool>(
//     pcd8544: &mut Pcd8544,
//     t_range: ::core::ops::Range<i32>,
//     spi: &mut Spi<SPI1, (hal::gpio::gpioa::PA5<hal::gpio::Alternate<hal::gpio::AF5>>, hal::spi::NoMiso, hal::gpio::gpioa::PA7<hal::gpio::Alternate<hal::gpio::AF5>>)>,
//     f: F,
// ) -> Buffer {
//     let mut buffer = empty_buffer();
//     for t in t_range {
//         apply_shader(&mut buffer, t, &f);
//         pcd8544.draw_buffer(spi, &buffer);
//     }
//     buffer
// }

// pub fn run_optimized_mandelbrot(pcd8544: &mut Pcd8544, spi: &mut Spi<SPI1, (hal::gpio::gpioa::PA5<hal::gpio::Alternate<hal::gpio::AF5>>, hal::spi::NoMiso, hal::gpio::gpioa::PA7<hal::gpio::Alternate<hal::gpio::AF5>>)>) {
//     let mut buffer = empty_buffer();
//     for t in 0..32 {
//         for col in 0..84 {
//             let x = col as i32 - 42;
//             let mut pixels = [false; 25];

//             for y in 0..25 {
//                 pixels[y] = mandelbrot_zoom(x, y as i32, t);
//             }

//             for row in 0..3 {
//                 let base = 1 + (2 - row) * 8;
//                 let mut byte = 0;
//                 for bit in 0..8 {
//                     byte += (pixels[base + bit] as u8) << (7 - bit);
//                 }
//                 buffer[6 * col + row] = byte;
//             }
//             for row in 3..6 {
//                 let base = (row - 3) * 8;
//                 let mut byte = 0;
//                 for bit in 0..8 {
//                     byte += (pixels[base + bit] as u8) << bit;
//                 }
//                 buffer[6 * col + row] = byte;
//             }
//         }
//         pcd8544.draw_buffer(spi, &buffer);
//     }
// }

// pub fn mandelbrot_zoom(px: i32, py: i32, t: i32) -> bool {
//     let max_t = 32;
//     if t >= max_t {
//         return true;
//     }

//     let zoom: i32 = max_t - t;
//     let cx = zoom * px / 2 - 280;
//     let cy = zoom * py / 2;

//     // optimizations: bulb 1 and 2
//     let q = (cx - 64).pow(2) + cy.pow(2);
//     if q == 0 || q / 256 + cx - 64 < 64 * cy * cy / q {
//         return true;
//     }

//     if (cx + 256).pow(2) + cy * cy < 4096 {
//         return true;
//     }

//     let mut x: i32 = 0;
//     let mut y: i32 = 0;

//     // TODO: would be nicer to make this depend on max_t
//     let iterations = match t {
//         0...7 => 15,
//         8...27 => 10 + t,
//         _ => 50,
//     };
//     for _ in 0..iterations {
//         if (x * x + y * y) > 4 << 16 {
//             return false;
//         }

//         let xtemp = (x * x - y * y).wrapping_shr(8) + cx;
//         y = (2 * x * y).wrapping_shr(8) + cy;
//         x = xtemp;
//     }
//     true
// }

// pub fn deform_1_z(px: i32, py: i32, t: i32) -> bool {
//     let r2 =
//         1 + ((0x1400000 + sin(90 + t * 4)).wrapping_shr(13) * (px * px + py * py)).wrapping_shr(8);

//     let x = px.wrapping_shl(16) / r2 + t.wrapping_shl(2);
//     let y = py.wrapping_shl(16) / r2 + t.wrapping_shl(2);

//     if (x & 0x80) + (y & 0x80) & 0x80 > 0 {
//         return true;
//     }
//     false
// }

// pub fn interference(px: i32, py: i32, t: i32) -> bool {
//     // aspect ratio correction
//     let x = px;
//     let y = py;

//     let x1 = sin(13 * t + 49).wrapping_shr(20);
//     let y1 = (5 * sin(7 * t - 15)).wrapping_shr(22);

//     let x2 = (-3 * sin(11 * t + 120)).wrapping_shr(21);
//     let y2 = -y1;

//     let c1 = distance(x - x1, y - y1).wrapping_shr(3) % 2 == 0;
//     let c2 = distance(x - x2, y - y2).wrapping_shr(3) % 2 == 0;

//     c1 ^ c2
// }

// // lookup of sine(degrees) << 24
// static SINE_LUT: [i32; 91] = [
//     0, 292802, 585516, 878051, 1170319, 1462230, 1753696, 2044628, 2334937, 2624534, 2913332,
//     3201243, 3488179, 3774052, 4058775, 4342263, 4624427, 4905183, 5184444, 5462127, 5738145,
//     6012416, 6284855, 6555380, 6823908, 7090357, 7354647, 7616696, 7876425, 8133755, 8388607,
//     8640905, 8890569, 9137526, 9381700, 9623015, 9861400, 10096780, 10329085, 10558244, 10784186,
//     11006844, 11226148, 11442033, 11654433, 11863283, 12068519, 12270079, 12467901, 12661925,
//     12852093, 13038345, 13220626, 13398880, 13573052, 13743090, 13908942, 14070557, 14227886,
//     14380880, 14529495, 14673683, 14813402, 14948608, 15079261, 15205321, 15326749, 15443508,
//     15555563, 15662880, 15765426, 15863169, 15956080, 16044131, 16127295, 16205546, 16278860,
//     16347217, 16410593, 16468971, 16522332, 16570660, 16613941, 16652161, 16685308, 16713373,
//     16736347, 16754223, 16766995, 16774660, 16777216,
// ];

// fn sin(deg: i32) -> i32 {
//     match deg {
//         0...90 => SINE_LUT[deg as usize],
//         91...180 => SINE_LUT[(180 - deg) as usize],
//         181...270 => -SINE_LUT[(deg - 180) as usize],
//         271...360 => -SINE_LUT[(360 - deg) as usize],
//         _ => sin(deg.signum() * deg % 360),
//     }
// }

// fn distance(dx: i32, dy: i32) -> i32 {
//     match dx * dx + dy * dy {
//         0 => 0,
//         1...2 => 1,
//         3...6 => 2,
//         7...12 => 3,
//         13...20 => 4,
//         21...30 => 5,
//         31...42 => 6,
//         43...56 => 7,
//         57...72 => 8,
//         73...90 => 9,
//         91...110 => 10,
//         111...132 => 11,
//         133...156 => 12,
//         157...182 => 13,
//         183...210 => 14,
//         211...240 => 15,
//         241...272 => 16,
//         273...306 => 17,
//         307...342 => 18,
//         343...380 => 19,
//         381...420 => 20,
//         421...462 => 21,
//         463...506 => 22,
//         507...552 => 23,
//         553...600 => 24,
//         601...650 => 25,
//         651...702 => 26,
//         703...756 => 27,
//         757...812 => 28,
//         813...870 => 29,
//         871...930 => 30,
//         931...992 => 31,
//         993...1056 => 32,
//         1057...1122 => 33,
//         1123...1190 => 34,
//         1191...1260 => 35,
//         1261...1332 => 36,
//         1333...1406 => 37,
//         1407...1482 => 38,
//         1483...1560 => 39,
//         1561...1640 => 40,
//         1641...1722 => 41,
//         1723...1806 => 42,
//         1807...1892 => 43,
//         1893...1980 => 44,
//         1981...2070 => 45,
//         2071...2162 => 46,
//         2163...2256 => 47,
//         2257...2352 => 48,
//         2353...2450 => 49,
//         2451...2550 => 50,
//         2551...2652 => 51,
//         2653...2756 => 52,
//         2757...2862 => 53,
//         2863...2970 => 54,
//         2971...3080 => 55,
//         3081...3192 => 56,
//         3193...3306 => 57,
//         3307...3422 => 58,
//         3423...3540 => 59,
//         3541...3660 => 60,
//         3661...3782 => 61,
//         3783...3906 => 62,
//         3907...4032 => 63,
//         4033...4160 => 64,
//         4161...4290 => 65,
//         4291...4422 => 66,
//         4423...4556 => 67,
//         4557...4692 => 68,
//         4693...4830 => 69,
//         4831...4970 => 70,
//         4971...5112 => 71,
//         5113...5256 => 72,
//         5257...5402 => 73,
//         5403...5550 => 74,
//         5551...5700 => 75,
//         5701...5852 => 76,
//         5853...6006 => 77,
//         6007...6162 => 78,
//         6163...6320 => 79,
//         6321...6480 => 80,
//         6481...6642 => 81,
//         6643...6806 => 82,
//         6807...6972 => 83,
//         6973...7140 => 84,
//         7141...7310 => 85,
//         7311...7482 => 86,
//         7483...7656 => 87,
//         7657...7832 => 88,
//         7833...8010 => 89,
//         8011...8190 => 90,
//         8191...8372 => 91,
//         8373...8556 => 92,
//         8557...8742 => 93,
//         8743...8930 => 94,
//         8931...9120 => 95,
//         9121...9312 => 96,
//         9313...9506 => 97,
//         9507...9702 => 98,
//         9703...9900 => 99,
//         _ => 100,
//     }
// }
