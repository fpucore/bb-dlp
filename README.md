 <h1>
 <img src="https://www.qanonsec.com/images/i.php?/upload/2026/10/26/20261026032335-d674bb29-sm.png" alt="sexy-anime" /><br>🔥 bb-dlp: Blackbox-hwm Video & Audio Ripper
 </h1>

Version: 8.2.5

Ecosystem: **GNU Operating System / H-Linux**, and the **Blackbox-hwm** workspace.

**bb-dlp** is an advanced, highly optimized, next-generation terminal-native media ripper built for the Blackbox-hwm 
environment, but easily adapted for any Linux-based environment.

It is a multi-engine processing and works by using the yt-dlp binaries in a streamlined, strictly contained 
interface, introducing advanced memory management, interactive terminal thumbnails, and extensive, natively 
compiled audio encoding pipelines.

Version 8.0.0 introduced **The Pirate Bay Edition** of the NEXT-GEN (V2) engine, which replaces standard file 
copying with a peerless local torrent pipeline:

  - On-The-Fly Metadata: Dynamically generates trackerless .torrent files for items in the RAM buffer.
  - Loopback WebSeed Seeding: Spins up a temporary local stream server for zero-latency seeding.
  - Guaranteed Integrity: Executes aria2c to transfer files with full SHA-1 piece verification and block hashing.

bb-dlp is an advanced tool for pirates - Think yt-dlp on steroids!

## Unique Core Features

  * Multi-Engine Processing: Processing engine selection, supporting NEXT-GEN (default [bb-dlp-bin]), STORMY [yt-dlp-nightly], and PURE [yt-dlp-stable] backends.
  * Smart procedural memory management
  * Slipstream Buffer Architecture: Eliminates immediate disk I/O thrashing through active RAM staging, transfering to the disk post completion of rip.
  * Dual-Pipeline MP3 Encoding: Dual MP3 encoding pipeline through GStreamer+lamemp3enc and LAME 4.0 or FFmpeg+libmp3lame and LAME 4.0.
  * Lossless & Niche Audio Support: Native conversion pipelines for FLAC, AIFF (libsndfile or ffmpeg), APE (Monkey's Audio), MPC (Musepack), and OFR (OptimFROG).
  * Native Terminal Thumbnails: Interactively fetches and renders media thumbnails directly in the terminal before ripping. Supports PNG (default+fallback), JPG, WebP, QOI, AVIF, HEIF, JXL and BPG rendering via viu, chafa and bpgview.

## Dependencies

Please ensure you are running GNU Operating System / H-Linux with the core packages:

  * **Hash**
  * **H-Linux Human Command Layer**
  * **H-Linux environment library**
  * **sh2c** can be found here > *New repository coming soon!*
  * **aria2c** (for NEXT-GEN V2 engine)
  $ **tpb-local daemon** (Optional: NEXT-GEN (V2) engine)

Also, ensure the following packages are available on your system:

Core: **bb-dlp-bin**, **yt-dlp-nightly**, **yt-dlp-stable**, and **deno**

Audio Engines: **ffmpeg**, **gstreamer**, and **LAME 4.0**

Niche Audio Encoders: **libsndfile**, **mac** (Monkey's Audio), **muse-tools** (Musepack), and **optimfrog-bin**

Thumbnail Processing: **cwebp**, **qoiconv**, **avifenc**, **imagemagick**, **heif-enc**, **viu**, **chafa**, and **bpgview**

**bpgview** can be found here > https://www.github.com/fpucore/bpg

## Getting Started, Compile & Basic Usage 

Before doing anything, compile the **bb-dlp-updater.sh** source file with **sh2c** to create an executable updater binary > **bb-dlp-updater** (saved > $HOME).

Now execute the **bb-dlp-updater** binary to source the latest engine binary.

Compile the **bb-dlp.hash** source file with **sh2c** to create an executable program binary > **bb-dlp** (saved > $HOME).

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
