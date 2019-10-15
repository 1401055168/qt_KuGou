#-------------------------------------------------
#
# Project created by QtCreator 2016-06-14T12:16:34
#
#-------------------------------------------------

QT       += core gui sql network multimedia ##webkitwidgets
greaterThan(QT_MAJOR_VERSION, 4): QT += widgets

CONFIG += C++11
INCLUDEPATH+=$$PWD/threadFiles \
             $$PWD/dataBase \
             $$PWD/deskTopLrc

INCLUDEPATH +=$$PWD trayIconMenu
include(trayIconMenu/trayiconmenu.pri)

INCLUDEPATH +=$$PWD tableWidgetFiles
include(tableWidgetFiles/tablewidgetplaylist.pri)

INCLUDEPATH +=$$PWD PlayCore
include(PlayCore/player.pri)

INCLUDEPATH +=$$PWD netWork
include(netWork/network.pri)

INCLUDEPATH +=$$PWD topWidget
include(topWidget/topwidget.pri)

INCLUDEPATH +=$$PWD middleWidget
include(middleWidget/middlewidget.pri)

INCLUDEPATH +=$$PWD bottomWidget
include(bottomWidget/bottomwidget.pri)

INCLUDEPATH +=$$PWD otherWidget
include(otherWidget/otherWidget.pri)

INCLUDEPATH +=$$PWD absFiles
include(absFiles/absFiles.pri)

INCLUDEPATH +=$$PWD mainWindows
include(mainWindows/mainWindows.pri)

SOURCES +=$$PWD/singleApplication/qsingleapplication.cpp \
         $$PWD/dataBase/myDataBase.cpp \
         $$PWD/deskTopLrc/deskTopLrcWidget.cpp \
    PlayCore/FFmpegPlayer-ori.cpp \
    PlayCore/FFmpegPlayer-succ.cpp \
    PlayCore/FFmpegPlayer-v1.1.cpp \
    PlayCore/myPlayer.cpp


HEADERS +=$$PWD/singleApplication/qsingleapplication.h \
          $$PWD/dataBase/myDataBase.h \
          $$PWD/deskTopLrc/deskTopLrcWidget.h \
    PlayCore/include/libavcodec/avcodec.h \
    PlayCore/include/libavcodec/avdct.h \
    PlayCore/include/libavcodec/avfft.h \
    PlayCore/include/libavcodec/d3d11va.h \
    PlayCore/include/libavcodec/dirac.h \
    PlayCore/include/libavcodec/dv_profile.h \
    PlayCore/include/libavcodec/dxva2.h \
    PlayCore/include/libavcodec/jni.h \
    PlayCore/include/libavcodec/mediacodec.h \
    PlayCore/include/libavcodec/qsv.h \
    PlayCore/include/libavcodec/vaapi.h \
    PlayCore/include/libavcodec/vda.h \
    PlayCore/include/libavcodec/vdpau.h \
    PlayCore/include/libavcodec/version.h \
    PlayCore/include/libavcodec/videotoolbox.h \
    PlayCore/include/libavcodec/vorbis_parser.h \
    PlayCore/include/libavcodec/xvmc.h \
    PlayCore/include/libavdevice/avdevice.h \
    PlayCore/include/libavdevice/version.h \
    PlayCore/include/libavfilter/avfilter.h \
    PlayCore/include/libavfilter/avfiltergraph.h \
    PlayCore/include/libavfilter/buffersink.h \
    PlayCore/include/libavfilter/buffersrc.h \
    PlayCore/include/libavfilter/version.h \
    PlayCore/include/libavformat/avformat.h \
    PlayCore/include/libavformat/avio.h \
    PlayCore/include/libavformat/config.h \
    PlayCore/include/libavformat/version.h \
    PlayCore/include/libavutil/adler32.h \
    PlayCore/include/libavutil/aes.h \
    PlayCore/include/libavutil/aes_ctr.h \
    PlayCore/include/libavutil/attributes.h \
    PlayCore/include/libavutil/audio_fifo.h \
    PlayCore/include/libavutil/avassert.h \
    PlayCore/include/libavutil/avconfig.h \
    PlayCore/include/libavutil/avstring.h \
    PlayCore/include/libavutil/avutil.h \
    PlayCore/include/libavutil/base64.h \
    PlayCore/include/libavutil/blowfish.h \
    PlayCore/include/libavutil/bprint.h \
    PlayCore/include/libavutil/bswap.h \
    PlayCore/include/libavutil/buffer.h \
    PlayCore/include/libavutil/camellia.h \
    PlayCore/include/libavutil/cast5.h \
    PlayCore/include/libavutil/channel_layout.h \
    PlayCore/include/libavutil/common.h \
    PlayCore/include/libavutil/cpu.h \
    PlayCore/include/libavutil/crc.h \
    PlayCore/include/libavutil/des.h \
    PlayCore/include/libavutil/dict.h \
    PlayCore/include/libavutil/display.h \
    PlayCore/include/libavutil/downmix_info.h \
    PlayCore/include/libavutil/error.h \
    PlayCore/include/libavutil/eval.h \
    PlayCore/include/libavutil/ffversion.h \
    PlayCore/include/libavutil/fifo.h \
    PlayCore/include/libavutil/file.h \
    PlayCore/include/libavutil/frame.h \
    PlayCore/include/libavutil/hash.h \
    PlayCore/include/libavutil/hmac.h \
    PlayCore/include/libavutil/hwcontext.h \
    PlayCore/include/libavutil/hwcontext_cuda.h \
    PlayCore/include/libavutil/hwcontext_dxva2.h \
    PlayCore/include/libavutil/hwcontext_qsv.h \
    PlayCore/include/libavutil/hwcontext_vaapi.h \
    PlayCore/include/libavutil/hwcontext_vdpau.h \
    PlayCore/include/libavutil/imgutils.h \
    PlayCore/include/libavutil/intfloat.h \
    PlayCore/include/libavutil/intreadwrite.h \
    PlayCore/include/libavutil/lfg.h \
    PlayCore/include/libavutil/log.h \
    PlayCore/include/libavutil/lzo.h \
    PlayCore/include/libavutil/macros.h \
    PlayCore/include/libavutil/mastering_display_metadata.h \
    PlayCore/include/libavutil/mathematics.h \
    PlayCore/include/libavutil/md5.h \
    PlayCore/include/libavutil/mem.h \
    PlayCore/include/libavutil/motion_vector.h \
    PlayCore/include/libavutil/murmur3.h \
    PlayCore/include/libavutil/opt.h \
    PlayCore/include/libavutil/parseutils.h \
    PlayCore/include/libavutil/pixdesc.h \
    PlayCore/include/libavutil/pixelutils.h \
    PlayCore/include/libavutil/pixfmt.h \
    PlayCore/include/libavutil/random_seed.h \
    PlayCore/include/libavutil/rational.h \
    PlayCore/include/libavutil/rc4.h \
    PlayCore/include/libavutil/replaygain.h \
    PlayCore/include/libavutil/ripemd.h \
    PlayCore/include/libavutil/samplefmt.h \
    PlayCore/include/libavutil/sha.h \
    PlayCore/include/libavutil/sha512.h \
    PlayCore/include/libavutil/stereo3d.h \
    PlayCore/include/libavutil/tea.h \
    PlayCore/include/libavutil/threadmessage.h \
    PlayCore/include/libavutil/time.h \
    PlayCore/include/libavutil/timecode.h \
    PlayCore/include/libavutil/timestamp.h \
    PlayCore/include/libavutil/tree.h \
    PlayCore/include/libavutil/twofish.h \
    PlayCore/include/libavutil/version.h \
    PlayCore/include/libavutil/xtea.h \
    PlayCore/include/libpostproc/postprocess.h \
    PlayCore/include/libpostproc/version.h \
    PlayCore/include/libswresample/swresample.h \
    PlayCore/include/libswresample/version.h \
    PlayCore/include/libswscale/swscale.h \
    PlayCore/include/libswscale/version.h \
    PlayCore/include/SDL2/begin_code.h \
    PlayCore/include/SDL2/close_code.h \
    PlayCore/include/SDL2/SDL.h \
    PlayCore/include/SDL2/SDL_assert.h \
    PlayCore/include/SDL2/SDL_atomic.h \
    PlayCore/include/SDL2/SDL_audio.h \
    PlayCore/include/SDL2/SDL_bits.h \
    PlayCore/include/SDL2/SDL_blendmode.h \
    PlayCore/include/SDL2/SDL_clipboard.h \
    PlayCore/include/SDL2/SDL_config.h \
    PlayCore/include/SDL2/SDL_cpuinfo.h \
    PlayCore/include/SDL2/SDL_endian.h \
    PlayCore/include/SDL2/SDL_error.h \
    PlayCore/include/SDL2/SDL_events.h \
    PlayCore/include/SDL2/SDL_filesystem.h \
    PlayCore/include/SDL2/SDL_gamecontroller.h \
    PlayCore/include/SDL2/SDL_gesture.h \
    PlayCore/include/SDL2/SDL_haptic.h \
    PlayCore/include/SDL2/SDL_hints.h \
    PlayCore/include/SDL2/SDL_joystick.h \
    PlayCore/include/SDL2/SDL_keyboard.h \
    PlayCore/include/SDL2/SDL_keycode.h \
    PlayCore/include/SDL2/SDL_loadso.h \
    PlayCore/include/SDL2/SDL_log.h \
    PlayCore/include/SDL2/SDL_main.h \
    PlayCore/include/SDL2/SDL_messagebox.h \
    PlayCore/include/SDL2/SDL_mouse.h \
    PlayCore/include/SDL2/SDL_mutex.h \
    PlayCore/include/SDL2/SDL_name.h \
    PlayCore/include/SDL2/SDL_opengl.h \
    PlayCore/include/SDL2/SDL_opengles.h \
    PlayCore/include/SDL2/SDL_opengles2.h \
    PlayCore/include/SDL2/SDL_pixels.h \
    PlayCore/include/SDL2/SDL_platform.h \
    PlayCore/include/SDL2/SDL_power.h \
    PlayCore/include/SDL2/SDL_quit.h \
    PlayCore/include/SDL2/SDL_rect.h \
    PlayCore/include/SDL2/SDL_render.h \
    PlayCore/include/SDL2/SDL_revision.h \
    PlayCore/include/SDL2/SDL_rwops.h \
    PlayCore/include/SDL2/SDL_scancode.h \
    PlayCore/include/SDL2/SDL_shape.h \
    PlayCore/include/SDL2/SDL_stdinc.h \
    PlayCore/include/SDL2/SDL_surface.h \
    PlayCore/include/SDL2/SDL_system.h \
    PlayCore/include/SDL2/SDL_syswm.h \
    PlayCore/include/SDL2/SDL_test.h \
    PlayCore/include/SDL2/SDL_test_assert.h \
    PlayCore/include/SDL2/SDL_test_common.h \
    PlayCore/include/SDL2/SDL_test_compare.h \
    PlayCore/include/SDL2/SDL_test_crc32.h \
    PlayCore/include/SDL2/SDL_test_font.h \
    PlayCore/include/SDL2/SDL_test_fuzzer.h \
    PlayCore/include/SDL2/SDL_test_harness.h \
    PlayCore/include/SDL2/SDL_test_images.h \
    PlayCore/include/SDL2/SDL_test_log.h \
    PlayCore/include/SDL2/SDL_test_md5.h \
    PlayCore/include/SDL2/SDL_test_random.h \
    PlayCore/include/SDL2/SDL_thread.h \
    PlayCore/include/SDL2/SDL_timer.h \
    PlayCore/include/SDL2/SDL_touch.h \
    PlayCore/include/SDL2/SDL_types.h \
    PlayCore/include/SDL2/SDL_version.h \
    PlayCore/include/SDL2/SDL_video.h \
    PlayCore/FFmpegPlayer-ori.h \
    PlayCore/FFmpegPlayer-succ.h \
    PlayCore/FFmpegPlayer-v1.1.h \
    PlayCore/myPlayer.h

RESOURCES += \
    res_topwidget.qrc \
    res_middlewidget.qrc \
    res_main.qrc \
    res_traymenu.qrc\
    res_bottomwidget.qrc

RC_FILE = image/main/kwgou.rc

DISTFILES += \
    avcodec-57.dll \
    avformat-57.dll \
    avutil-55.dll \
    SDL2.dll \
    swresample-2.dll \
    swscale-4.dll \
    zlib1.dll

