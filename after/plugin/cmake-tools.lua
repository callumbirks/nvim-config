require('cmake-tools').setup {
    cmake_generate_options = { "-DCMAKE_EXPORT_COMPILE_COMMANDS=1" },
    cmake_soft_link_compile_commands = true,
    cmake_build_directory = 'build',
}
