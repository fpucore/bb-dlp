# bb-dlp: Blackbox-hwm Video & Audio Ripper

Version: 7.1.0

Ecosystem: GNU Operating System / H-Linux and the Blackbox-hwm workspace.

**bb-dlp** is a highly optimized, terminal-native media ripper built for the Blackbox-hwm environment, but 
easily adapted for any Linux-based environment.

It is a multi-engine processing and works by using the yt-dlp binaries in a streamlined, strictly contained 
interface, introducing advanced memory management, interactive terminal thumbnails, and extensive, 
natively compiled audio encoding pipelines.

bb-dlp is an advanced tool for pirates - Think yt-dlp on steroids!

## Unique Core Features

  * Multi-Engine Processing: Processing engine selection, supporting NEXT-GEN (default [bb-dlp-bin]), STORMY [yt-dlp-nightly], and PURE [yt-dlp-stable] backends.
  * Slipstream Buffer Architecture: Eliminates immediate disk I/O thrashing through active RAM staging, transfering to the disk post completion of rip.
  * Dual-Pipeline MP3 Encoding: Dual MP3 encoding pipeline through GStreamer+lamemp3enc and LAME 4.0 or FFmpeg+libmp3lame and LAME 4.0.
  * Lossless & Niche Audio Support: Native conversion pipelines for FLAC, AIFF (libsndfile or ffmpeg), APE (Monkey's Audio), MPC (Musepack), and OFR (OptimFROG).
  * Native Terminal Thumbnails: Interactively fetches and renders media thumbnails directly in the terminal before ripping. Supports PNG (default+fallback), WebP, QOI, AVIF, and HEIF rendering via viu and chafa.

## Dependencies

Please ensure the following packages are available on your system:

Core: **bb-dlp-bin**, **yt-dlp-nightly**, **yt-dlp-stable**, and **deno**

Audio Engines: **ffmpeg**, **gstreamer**, and **LAME 4.0**

Niche Audio Encoders: **libsndfile**, **mac** (Monkey's Audio), **muse-tools** (Musepack), and **optimfrog-bin**

Thumbnail Processing: **cwebp**, **qoiconv**, **avifenc**, **imagemagick**, **heif-enc**, **viu**, and **chafa**

## Basic Usage Prompts

By default, bb-dlp rips media at the highest available quality to **$HOME/Blackbox-hwm/Downloads**

### Standard Video Rip (Highest Quality)

```bash
> bb-dlp https://www.youtube.com/watch?v=...
```

### Specific Video Resolutions

```bash
> bb-dlp --video-high https://www.youtube.com/watch?v=...   # Up to 1080p

> bb-dlp --video-medium https://www.youtube.com/watch?v=... # Up to 720p

> bb-dlp --video-low https://www.youtube.com/watch?v=...    # Up to 480p
```

### Audio Ripping (Default MP3: GStreamer + LAME 4.0)

```bash
> bb-dlp --audio https://www.youtube.com/watch?v=...
```

### Specific Audio Codecs

```bash
> bb-dlp --audio-flac https://www.youtube.com/watch?v=...

> bb-dlp --audio-opus https://www.youtube.com/watch?v=...

> bb-dlp --audio-ape https://www.youtube.com/watch?v=...

> bb-dlp --audio-mpc https://www.youtube.com/watch?v=...

> bb-dlp --audio-ofr https://www.youtube.com/watch?v=...
```

### Batch & Playlist Execution

```bash
> bb-dlp --playlist https://www.youtube.com/playlist?list=...

> bb-dlp --batch udis.txt
```

## Logging & Updates

Logs: All execution errors and engine initializations are logged by default to **$HOME/Blackbox-hwm/bb-dlp.log**.

Updates: Execute **bb-dlp --update** to trigger the internal **bb-dlp-updater** tool.

## License

This software is dedicated to the public domain under the Unlicense. 

It is free to copy, modify, publish, use, compile, sell, or distribute. 

Third-party binaries (yt-dlp, GStreamer, FFmpeg) remain under their respective licenses.
