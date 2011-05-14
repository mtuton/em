.class public Lcom/android/email/MediaFile;
.super Ljava/lang/Object;
.source "MediaFile.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/email/MediaFile$MediaFileType;
    }
.end annotation


# static fields
.field public static final FILE_ICON_DEFAULT_LARGE:I = 0x0

.field public static final FILE_ICON_DEFAULT_SMALL:I = 0x0

.field public static final FILE_TYPE_3GPP:I = 0x17

.field public static final FILE_TYPE_3GPP2:I = 0x18

.field public static final FILE_TYPE_AAC:I = 0x8

.field public static final FILE_TYPE_AMR:I = 0x4

.field public static final FILE_TYPE_APK:I = 0x64

.field public static final FILE_TYPE_ASF:I = 0x1b

.field public static final FILE_TYPE_AVI:I = 0x1c

.field public static final FILE_TYPE_AWB:I = 0x5

.field public static final FILE_TYPE_BMP:I = 0x36

.field public static final FILE_TYPE_DCF:I = 0x57

.field public static final FILE_TYPE_DIVX:I = 0x1d

.field public static final FILE_TYPE_DOC:I = 0x52

.field public static final FILE_TYPE_FLV:I = 0x1e

.field public static final FILE_TYPE_GIF:I = 0x34

.field public static final FILE_TYPE_IMY:I = 0xd

.field public static final FILE_TYPE_JAD:I = 0x6e

.field public static final FILE_TYPE_JAR:I = 0x6f

.field public static final FILE_TYPE_JPEG:I = 0x33

.field public static final FILE_TYPE_M3U:I = 0x47

.field public static final FILE_TYPE_M4A:I = 0x2

.field public static final FILE_TYPE_M4V:I = 0x16

.field public static final FILE_TYPE_MID:I = 0xb

.field public static final FILE_TYPE_MKV:I = 0x1f

.field public static final FILE_TYPE_MP3:I = 0x1

.field public static final FILE_TYPE_MP4:I = 0x15

.field public static final FILE_TYPE_MPG:I = 0x1a

.field public static final FILE_TYPE_ODF:I = 0x58

.field public static final FILE_TYPE_OGG:I = 0x7

.field public static final FILE_TYPE_PDF:I = 0x51

.field public static final FILE_TYPE_PLS:I = 0x48

.field public static final FILE_TYPE_PNG:I = 0x35

.field public static final FILE_TYPE_PPT:I = 0x54

.field public static final FILE_TYPE_QSS:I = 0x56

.field public static final FILE_TYPE_SDP:I = 0x20

.field public static final FILE_TYPE_SMF:I = 0xc

.field public static final FILE_TYPE_SVG:I = 0x5b

.field public static final FILE_TYPE_SWF:I = 0x5a

.field public static final FILE_TYPE_TXT:I = 0x55

.field public static final FILE_TYPE_VCF:I = 0x79

.field public static final FILE_TYPE_VCS:I = 0x78

.field public static final FILE_TYPE_VNT:I = 0x7a

.field public static final FILE_TYPE_WAV:I = 0x3

.field public static final FILE_TYPE_WBMP:I = 0x37

.field public static final FILE_TYPE_WMA:I = 0x6

.field public static final FILE_TYPE_WMV:I = 0x19

.field public static final FILE_TYPE_WPL:I = 0x49

.field public static final FILE_TYPE_XLS:I = 0x53

.field private static final FIRST_AUDIO_FILE_TYPE:I = 0x1

.field private static final FIRST_DOCUMENT_FILE_TYPE:I = 0x51

.field private static final FIRST_DRM_FILE_TYPE:I = 0x57

.field private static final FIRST_FLASH_FILE_TYPE:I = 0x5a

.field private static final FIRST_IMAGE_FILE_TYPE:I = 0x33

.field private static final FIRST_INSTALL_FILE_TYPE:I = 0x64

.field private static final FIRST_JAVA_FILE_TYPE:I = 0x6e

.field private static final FIRST_MIDI_FILE_TYPE:I = 0xb

.field private static final FIRST_PLAYLIST_FILE_TYPE:I = 0x47

.field private static final FIRST_VIDEO_FILE_TYPE:I = 0x15

.field private static final LAST_AUDIO_FILE_TYPE:I = 0x8

.field private static final LAST_DOCUMENT_FILE_TYPE:I = 0x55

.field private static final LAST_DRM_FILE_TYPE:I = 0x58

.field private static final LAST_FLASH_FILE_TYPE:I = 0x5b

.field private static final LAST_IMAGE_FILE_TYPE:I = 0x37

.field private static final LAST_INSTALL_FILE_TYPE:I = 0x64

.field private static final LAST_JAVA_FILE_TYPE:I = 0x6f

.field private static final LAST_MIDI_FILE_TYPE:I = 0xd

.field private static final LAST_PLAYLIST_FILE_TYPE:I = 0x49

.field private static final LAST_SLIDE_FILE_TYPE:I = 0x56

.field private static final LAST_VIDEO_FILE_TYPE:I = 0x1d

.field public static final UNKNOWN_STRING:Ljava/lang/String; = "<unknown>"

.field public static sFileExtensions:Ljava/lang/String;

.field private static sFileTypeMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/email/MediaFile$MediaFileType;",
            ">;"
        }
    .end annotation
.end field

.field private static sMimeType:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sMimeTypeMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 12

    .prologue
    const/16 v11, 0x33

    const/16 v8, 0xb

    const/4 v4, 0x0

    const-string v10, "JPEG"

    const-string v9, "audio/midi"

    .line 138
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/email/MediaFile;->sFileTypeMap:Ljava/util/HashMap;

    .line 139
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/email/MediaFile;->sMimeTypeMap:Ljava/util/HashMap;

    .line 140
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/email/MediaFile;->sMimeType:Ljava/util/HashMap;

    .line 151
    const-string v0, "MP3"

    const/4 v1, 0x1

    const-string v2, "audio/mpeg"

    const-string v3, "Mpeg"

    move v5, v4

    invoke-static/range {v0 .. v5}, Lcom/android/email/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;II)V

    .line 152
    const-string v0, "M4A"

    const/4 v1, 0x2

    const-string v2, "audio/mp4"

    const-string v3, "M4A"

    move v5, v4

    invoke-static/range {v0 .. v5}, Lcom/android/email/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;II)V

    .line 153
    const-string v0, "WAV"

    const/4 v1, 0x3

    const-string v2, "audio/x-wav"

    const-string v3, "WAVE"

    move v5, v4

    invoke-static/range {v0 .. v5}, Lcom/android/email/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;II)V

    .line 154
    const-string v0, "AMR"

    const/4 v1, 0x4

    const-string v2, "audio/amr"

    const-string v3, "AMR"

    move v5, v4

    invoke-static/range {v0 .. v5}, Lcom/android/email/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;II)V

    .line 155
    const-string v0, "AWB"

    const/4 v1, 0x5

    const-string v2, "audio/amr-wb"

    const-string v3, "AWB"

    move v5, v4

    invoke-static/range {v0 .. v5}, Lcom/android/email/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;II)V

    .line 156
    const-string v0, "WMA"

    const/4 v1, 0x6

    const-string v2, "audio/x-ms-wma"

    const-string v3, "WMA"

    move v5, v4

    invoke-static/range {v0 .. v5}, Lcom/android/email/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;II)V

    .line 157
    const-string v0, "OGG"

    const/4 v1, 0x7

    const-string v2, "audio/ogg"

    const-string v3, "OGG"

    move v5, v4

    invoke-static/range {v0 .. v5}, Lcom/android/email/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;II)V

    .line 158
    const-string v0, "AAC"

    const/16 v1, 0x8

    const-string v2, "audio/aac"

    const-string v3, "AAC"

    move v5, v4

    invoke-static/range {v0 .. v5}, Lcom/android/email/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;II)V

    .line 160
    const-string v0, "MID"

    const-string v1, "audio/midi"

    const-string v3, "MIDI"

    move v1, v8

    move-object v2, v9

    move v5, v4

    invoke-static/range {v0 .. v5}, Lcom/android/email/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;II)V

    .line 161
    const-string v0, "XMF"

    const-string v1, "audio/midi"

    const-string v3, "XMF"

    move v1, v8

    move-object v2, v9

    move v5, v4

    invoke-static/range {v0 .. v5}, Lcom/android/email/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;II)V

    .line 162
    const-string v0, "MXMF"

    const-string v1, "audio/midi"

    const-string v3, "MXMF"

    move v1, v8

    move-object v2, v9

    move v5, v4

    invoke-static/range {v0 .. v5}, Lcom/android/email/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;II)V

    .line 163
    const-string v0, "RTTTL"

    const-string v1, "audio/midi"

    const-string v3, "RTTTL"

    move v1, v8

    move-object v2, v9

    move v5, v4

    invoke-static/range {v0 .. v5}, Lcom/android/email/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;II)V

    .line 164
    const-string v0, "SMF"

    const/16 v1, 0xc

    const-string v2, "audio/sp-midi"

    const-string v3, "SMF"

    move v5, v4

    invoke-static/range {v0 .. v5}, Lcom/android/email/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;II)V

    .line 165
    const-string v0, "IMY"

    const/16 v1, 0xd

    const-string v2, "audio/imelody"

    const-string v3, "IMY"

    move v5, v4

    invoke-static/range {v0 .. v5}, Lcom/android/email/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;II)V

    .line 166
    const-string v0, "MIDI"

    const-string v1, "audio/midi"

    const-string v3, "MIDI"

    move v1, v8

    move-object v2, v9

    move v5, v4

    invoke-static/range {v0 .. v5}, Lcom/android/email/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;II)V

    .line 168
    const-string v0, "MPEG"

    const/16 v1, 0x1a

    const-string v2, "video/mpeg"

    const-string v3, "MPEG"

    move v5, v4

    invoke-static/range {v0 .. v5}, Lcom/android/email/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;II)V

    .line 169
    const-string v0, "MPG"

    const/16 v1, 0x1a

    const-string v2, "video/mpeg"

    const-string v3, "MPEG"

    move v5, v4

    invoke-static/range {v0 .. v5}, Lcom/android/email/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;II)V

    .line 170
    const-string v0, "MP4"

    const/16 v1, 0x15

    const-string v2, "video/mp4"

    const-string v3, "MP4"

    move v5, v4

    invoke-static/range {v0 .. v5}, Lcom/android/email/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;II)V

    .line 171
    const-string v0, "M4V"

    const/16 v1, 0x16

    const-string v2, "video/mp4"

    const-string v3, "M4V"

    move v5, v4

    invoke-static/range {v0 .. v5}, Lcom/android/email/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;II)V

    .line 172
    const-string v0, "3GP"

    const/16 v1, 0x17

    const-string v2, "video/3gpp"

    const-string v3, "3GP"

    move v5, v4

    invoke-static/range {v0 .. v5}, Lcom/android/email/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;II)V

    .line 173
    const-string v0, "3GPP"

    const/16 v1, 0x17

    const-string v2, "video/3gpp"

    const-string v3, "3GPP"

    move v5, v4

    invoke-static/range {v0 .. v5}, Lcom/android/email/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;II)V

    .line 174
    const-string v0, "3G2"

    const/16 v1, 0x18

    const-string v2, "video/3gpp2"

    const-string v3, "3G2"

    move v5, v4

    invoke-static/range {v0 .. v5}, Lcom/android/email/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;II)V

    .line 175
    const-string v0, "3GPP2"

    const/16 v1, 0x18

    const-string v2, "video/3gpp2"

    const-string v3, "3GPP2"

    move v5, v4

    invoke-static/range {v0 .. v5}, Lcom/android/email/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;II)V

    .line 176
    const-string v0, "WMV"

    const/16 v1, 0x19

    const-string v2, "video/x-ms-wmv"

    const-string v3, "WMV"

    move v5, v4

    invoke-static/range {v0 .. v5}, Lcom/android/email/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;II)V

    .line 177
    const-string v0, "ASF"

    const/16 v1, 0x1b

    const-string v2, "video/x-ms-asf"

    const-string v3, "ASF"

    move v5, v4

    invoke-static/range {v0 .. v5}, Lcom/android/email/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;II)V

    .line 178
    const-string v0, "AVI"

    const/16 v1, 0x1c

    const-string v2, "video/avi"

    const-string v3, "AVI"

    move v5, v4

    invoke-static/range {v0 .. v5}, Lcom/android/email/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;II)V

    .line 179
    const-string v0, "DIVX"

    const/16 v1, 0x1d

    const-string v2, "video/divx"

    const-string v3, "DIVX"

    move v5, v4

    invoke-static/range {v0 .. v5}, Lcom/android/email/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;II)V

    .line 180
    const-string v0, "FLV"

    const/16 v1, 0x1e

    const-string v2, "video/flv"

    const-string v3, "FLV"

    move v5, v4

    invoke-static/range {v0 .. v5}, Lcom/android/email/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;II)V

    .line 181
    const-string v0, "MKV"

    const/16 v1, 0x1f

    const-string v2, "video/mkv"

    const-string v3, "MKV"

    move v5, v4

    invoke-static/range {v0 .. v5}, Lcom/android/email/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;II)V

    .line 182
    const-string v0, "SDP"

    const/16 v1, 0x20

    const-string v2, "application/sdp"

    const-string v3, "SDP"

    move v5, v4

    invoke-static/range {v0 .. v5}, Lcom/android/email/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;II)V

    .line 184
    const-string v0, "JPG"

    const-string v2, "image/jpeg"

    const-string v1, "JPEG"

    move v1, v11

    move-object v3, v10

    move v5, v4

    invoke-static/range {v0 .. v5}, Lcom/android/email/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;II)V

    .line 185
    const-string v0, "JPEG"

    const-string v2, "image/jpeg"

    const-string v0, "JPEG"

    move-object v0, v10

    move v1, v11

    move-object v3, v10

    move v5, v4

    invoke-static/range {v0 .. v5}, Lcom/android/email/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;II)V

    .line 186
    const-string v0, "MY5"

    const-string v2, "image/vnd.tmo.my5"

    const-string v1, "JPEG"

    move v1, v11

    move-object v3, v10

    move v5, v4

    invoke-static/range {v0 .. v5}, Lcom/android/email/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;II)V

    .line 187
    const-string v0, "GIF"

    const/16 v1, 0x34

    const-string v2, "image/gif"

    const-string v3, "GIF"

    move v5, v4

    invoke-static/range {v0 .. v5}, Lcom/android/email/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;II)V

    .line 188
    const-string v0, "PNG"

    const/16 v1, 0x35

    const-string v2, "image/png"

    const-string v3, "PNG"

    move v5, v4

    invoke-static/range {v0 .. v5}, Lcom/android/email/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;II)V

    .line 189
    const-string v0, "BMP"

    const/16 v1, 0x36

    const-string v2, "image/x-ms-bmp"

    const-string v3, "Microsoft BMP"

    move v5, v4

    invoke-static/range {v0 .. v5}, Lcom/android/email/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;II)V

    .line 190
    const-string v0, "WBMP"

    const/16 v1, 0x37

    const-string v2, "image/vnd.wap.wbmp"

    const-string v3, "Wireless BMP"

    move v5, v4

    invoke-static/range {v0 .. v5}, Lcom/android/email/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;II)V

    .line 192
    const-string v0, "QSS"

    const/16 v1, 0x56

    const-string v2, "slide/qss"

    const-string v3, "QSS"

    move v5, v4

    invoke-static/range {v0 .. v5}, Lcom/android/email/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;II)V

    .line 194
    const-string v0, "M3U"

    const/16 v1, 0x47

    const-string v2, "audio/x-mpegurl"

    const-string v3, "M3U"

    move v5, v4

    invoke-static/range {v0 .. v5}, Lcom/android/email/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;II)V

    .line 195
    const-string v0, "PLS"

    const/16 v1, 0x48

    const-string v2, "audio/x-scpls"

    const-string v3, "WPL"

    move v5, v4

    invoke-static/range {v0 .. v5}, Lcom/android/email/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;II)V

    .line 196
    const-string v0, "WPL"

    const/16 v1, 0x49

    const-string v2, "application/vnd.ms-wpl"

    const-string v3, " "

    move v5, v4

    invoke-static/range {v0 .. v5}, Lcom/android/email/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;II)V

    .line 198
    const-string v0, "PDF"

    const/16 v1, 0x51

    const-string v2, "application/pdf"

    const-string v3, "Acrobat PDF"

    move v5, v4

    invoke-static/range {v0 .. v5}, Lcom/android/email/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;II)V

    .line 199
    const-string v0, "DOC"

    const/16 v1, 0x52

    const-string v2, "application/msword"

    const-string v3, "Microsoft Office WORD"

    move v5, v4

    invoke-static/range {v0 .. v5}, Lcom/android/email/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;II)V

    .line 200
    const-string v0, "DOCX"

    const/16 v1, 0x52

    const-string v2, "application/msword"

    const-string v3, "Microsoft Office WORD"

    move v5, v4

    invoke-static/range {v0 .. v5}, Lcom/android/email/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;II)V

    .line 201
    const-string v0, "XLS"

    const/16 v1, 0x53

    const-string v2, "application/vnd.ms-excel"

    const-string v3, "Microsoft Office Excel"

    move v5, v4

    invoke-static/range {v0 .. v5}, Lcom/android/email/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;II)V

    .line 202
    const-string v0, "XLSX"

    const/16 v1, 0x53

    const-string v2, "application/vnd.ms-excel"

    const-string v3, "Microsoft Office Excel"

    move v5, v4

    invoke-static/range {v0 .. v5}, Lcom/android/email/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;II)V

    .line 203
    const-string v0, "PPT"

    const/16 v1, 0x54

    const-string v2, "application/vnd.ms-powerpoint"

    const-string v3, "Microsoft Office PowerPoint"

    move v5, v4

    invoke-static/range {v0 .. v5}, Lcom/android/email/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;II)V

    .line 204
    const-string v0, "PPTX"

    const/16 v1, 0x54

    const-string v2, "application/vnd.ms-powerpoint"

    const-string v3, "Microsoft Office PowerPoint"

    move v5, v4

    invoke-static/range {v0 .. v5}, Lcom/android/email/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;II)V

    .line 205
    const-string v0, "TXT"

    const/16 v1, 0x55

    const-string v2, "text/plain"

    const-string v3, "Text Document"

    move v5, v4

    invoke-static/range {v0 .. v5}, Lcom/android/email/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;II)V

    .line 207
    const-string v0, "SWF"

    const/16 v1, 0x5a

    const-string v2, "application/x-shockwave-flash"

    const-string v3, "SWF"

    move v5, v4

    invoke-static/range {v0 .. v5}, Lcom/android/email/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;II)V

    .line 208
    const-string v0, "SVG"

    const/16 v1, 0x5b

    const-string v2, "image/svg+xml"

    const-string v3, "SVG"

    move v5, v4

    invoke-static/range {v0 .. v5}, Lcom/android/email/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;II)V

    .line 210
    const-string v0, "DCF"

    const/16 v1, 0x57

    const-string v2, "application/vnd.oma.drm.content"

    const-string v3, "DRM Content"

    move v5, v4

    invoke-static/range {v0 .. v5}, Lcom/android/email/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;II)V

    .line 211
    const-string v0, "ODF"

    const/16 v1, 0x58

    const-string v2, "application/vnd.oma.drm.content"

    const-string v3, "DRM Content"

    move v5, v4

    invoke-static/range {v0 .. v5}, Lcom/android/email/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;II)V

    .line 213
    const-string v0, "APK"

    const/16 v1, 0x64

    const-string v2, "application/apk"

    const-string v3, "Android package install file"

    move v5, v4

    invoke-static/range {v0 .. v5}, Lcom/android/email/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;II)V

    .line 215
    const-string v0, "JAD"

    const/16 v1, 0x6e

    const-string v2, "text/vnd.sun.j2me.app-descriptor "

    const-string v3, "JAD"

    move v5, v4

    invoke-static/range {v0 .. v5}, Lcom/android/email/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;II)V

    .line 216
    const-string v0, "JAR"

    const/16 v1, 0x6f

    const-string v2, "application/java-archive "

    const-string v3, "JAR"

    move v5, v4

    invoke-static/range {v0 .. v5}, Lcom/android/email/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;II)V

    .line 218
    const-string v0, "VCS"

    const/16 v1, 0x78

    const-string v2, "text/x-vCalendar"

    const-string v3, "VCS"

    move v5, v4

    invoke-static/range {v0 .. v5}, Lcom/android/email/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;II)V

    .line 219
    const-string v0, "VCF"

    const/16 v1, 0x79

    const-string v2, "text/x-vcard"

    const-string v3, "VCF"

    move v5, v4

    invoke-static/range {v0 .. v5}, Lcom/android/email/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;II)V

    .line 220
    const-string v0, "VNT"

    const/16 v1, 0x7a

    const-string v2, "text/x-vnote"

    const-string v3, "VNT"

    move v5, v4

    invoke-static/range {v0 .. v5}, Lcom/android/email/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;II)V

    .line 223
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 224
    .local v6, builder:Ljava/lang/StringBuilder;
    sget-object v0, Lcom/android/email/MediaFile;->sFileTypeMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .line 226
    .local v7, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 227
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 228
    const/16 v0, 0x2c

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 230
    :cond_0
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 232
    :cond_1
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/email/MediaFile;->sFileExtensions:Ljava/lang/String;

    .line 233
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 121
    return-void
.end method

.method static addFileType(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;II)V
    .locals 7
    .parameter "extension"
    .parameter "fileType"
    .parameter "mimeType"
    .parameter "desc"
    .parameter "iconSmall"
    .parameter "iconLarge"

    .prologue
    .line 143
    sget-object v6, Lcom/android/email/MediaFile;->sFileTypeMap:Ljava/util/HashMap;

    new-instance v0, Lcom/android/email/MediaFile$MediaFileType;

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/android/email/MediaFile$MediaFileType;-><init>(ILjava/lang/String;Ljava/lang/String;II)V

    invoke-virtual {v6, p0, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    sget-object v0, Lcom/android/email/MediaFile;->sMimeTypeMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    sget-object v0, Lcom/android/email/MediaFile;->sMimeType:Ljava/util/HashMap;

    invoke-virtual {v0, p0, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    return-void
.end method

.method public static getDescription(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "path"

    .prologue
    .line 313
    invoke-static {p0}, Lcom/android/email/MediaFile;->getFileType(Ljava/lang/String;)Lcom/android/email/MediaFile$MediaFileType;

    move-result-object v0

    .line 314
    .local v0, mediaType:Lcom/android/email/MediaFile$MediaFileType;
    if-nez v0, :cond_0

    const-string v1, ""

    :goto_0
    return-object v1

    :cond_0
    iget-object v1, v0, Lcom/android/email/MediaFile$MediaFileType;->description:Ljava/lang/String;

    goto :goto_0
.end method

.method public static getFileType(Ljava/lang/String;)Lcom/android/email/MediaFile$MediaFileType;
    .locals 3
    .parameter "path"

    .prologue
    .line 274
    const-string v1, "."

    invoke-virtual {p0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    .line 275
    .local v0, lastDot:I
    if-gez v0, :cond_0

    const/4 v1, 0x0

    .line 276
    .end local p0
    :goto_0
    return-object v1

    .restart local p0
    :cond_0
    sget-object v1, Lcom/android/email/MediaFile;->sFileTypeMap:Ljava/util/HashMap;

    add-int/lit8 v2, v0, 0x1

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/email/MediaFile$MediaFileType;

    move-object v1, p0

    goto :goto_0
.end method

.method public static getFileTypeForMimeType(Ljava/lang/String;)I
    .locals 2
    .parameter "mimeType"

    .prologue
    .line 336
    sget-object v1, Lcom/android/email/MediaFile;->sMimeTypeMap:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 337
    .local v0, value:Ljava/lang/Integer;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_0
.end method

.method public static getFileTypeInt(Ljava/lang/String;)I
    .locals 2
    .parameter "path"

    .prologue
    .line 280
    invoke-static {p0}, Lcom/android/email/MediaFile;->getFileType(Ljava/lang/String;)Lcom/android/email/MediaFile$MediaFileType;

    move-result-object v0

    .line 281
    .local v0, mediaType:Lcom/android/email/MediaFile$MediaFileType;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    iget v1, v0, Lcom/android/email/MediaFile$MediaFileType;->fileType:I

    goto :goto_0
.end method

.method public static getLargeIcon(Ljava/lang/String;)I
    .locals 2
    .parameter "path"

    .prologue
    .line 323
    invoke-static {p0}, Lcom/android/email/MediaFile;->getFileType(Ljava/lang/String;)Lcom/android/email/MediaFile$MediaFileType;

    move-result-object v0

    .line 324
    .local v0, mediaType:Lcom/android/email/MediaFile$MediaFileType;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    iget v1, v0, Lcom/android/email/MediaFile$MediaFileType;->iconLarge:I

    goto :goto_0
.end method

.method public static getLargeIconDrawable(Ljava/io/File;Landroid/app/Activity;)Landroid/graphics/drawable/Drawable;
    .locals 2
    .parameter "path"
    .parameter "context"

    .prologue
    .line 332
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/email/MediaFile;->getLargeIcon(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public static getMimeType(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "path"

    .prologue
    .line 285
    invoke-static {p0}, Lcom/android/email/MediaFile;->getFileType(Ljava/lang/String;)Lcom/android/email/MediaFile$MediaFileType;

    move-result-object v0

    .line 303
    .local v0, mediaType:Lcom/android/email/MediaFile$MediaFileType;
    if-nez v0, :cond_0

    const-string v1, ""

    :goto_0
    return-object v1

    :cond_0
    iget-object v1, v0, Lcom/android/email/MediaFile$MediaFileType;->mimeType:Ljava/lang/String;

    goto :goto_0
.end method

.method public static getMimeTypeForExtention(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "extention"

    .prologue
    .line 341
    sget-object v0, Lcom/android/email/MediaFile;->sMimeType:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public static getShareMimeType(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "path"

    .prologue
    .line 307
    invoke-static {p0}, Lcom/android/email/MediaFile;->getFileType(Ljava/lang/String;)Lcom/android/email/MediaFile$MediaFileType;

    move-result-object v0

    .line 309
    .local v0, mediaType:Lcom/android/email/MediaFile$MediaFileType;
    if-nez v0, :cond_0

    const-string v1, "application/*"

    :goto_0
    return-object v1

    :cond_0
    iget-object v1, v0, Lcom/android/email/MediaFile$MediaFileType;->mimeType:Ljava/lang/String;

    goto :goto_0
.end method

.method public static getSmallIcon(Ljava/lang/String;)I
    .locals 2
    .parameter "path"

    .prologue
    .line 318
    invoke-static {p0}, Lcom/android/email/MediaFile;->getFileType(Ljava/lang/String;)Lcom/android/email/MediaFile$MediaFileType;

    move-result-object v0

    .line 319
    .local v0, mediaType:Lcom/android/email/MediaFile$MediaFileType;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    iget v1, v0, Lcom/android/email/MediaFile$MediaFileType;->iconSmall:I

    goto :goto_0
.end method

.method public static getSmallIconDrawable(Ljava/io/File;Landroid/app/Activity;)Landroid/graphics/drawable/Drawable;
    .locals 2
    .parameter "path"
    .parameter "context"

    .prologue
    .line 328
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/email/MediaFile;->getSmallIcon(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public static isAudioFileType(I)Z
    .locals 2
    .parameter "fileType"

    .prologue
    const/4 v1, 0x1

    .line 238
    if-lt p0, v1, :cond_0

    const/16 v0, 0x8

    if-le p0, v0, :cond_1

    :cond_0
    const/16 v0, 0xb

    if-lt p0, v0, :cond_2

    const/16 v0, 0xd

    if-gt p0, v0, :cond_2

    :cond_1
    move v0, v1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isDocumentFileType(I)Z
    .locals 1
    .parameter "fileType"

    .prologue
    .line 254
    const/16 v0, 0x51

    if-lt p0, v0, :cond_0

    const/16 v0, 0x55

    if-gt p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isDrmFileType(I)Z
    .locals 1
    .parameter "fileType"

    .prologue
    .line 270
    const/16 v0, 0x57

    if-lt p0, v0, :cond_0

    const/16 v0, 0x58

    if-gt p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isFlashFileType(I)Z
    .locals 1
    .parameter "fileType"

    .prologue
    .line 258
    const/16 v0, 0x5a

    if-lt p0, v0, :cond_0

    const/16 v0, 0x5b

    if-gt p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isImageFileType(I)Z
    .locals 1
    .parameter "fileType"

    .prologue
    .line 246
    const/16 v0, 0x33

    if-lt p0, v0, :cond_0

    const/16 v0, 0x37

    if-gt p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isInstallFileType(I)Z
    .locals 1
    .parameter "fileType"

    .prologue
    const/16 v0, 0x64

    .line 262
    if-lt p0, v0, :cond_0

    if-gt p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isJavaFileType(I)Z
    .locals 1
    .parameter "fileType"

    .prologue
    .line 266
    const/16 v0, 0x6e

    if-lt p0, v0, :cond_0

    const/16 v0, 0x6f

    if-gt p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isPlayListFileType(I)Z
    .locals 1
    .parameter "fileType"

    .prologue
    .line 250
    const/16 v0, 0x47

    if-lt p0, v0, :cond_0

    const/16 v0, 0x49

    if-gt p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isVideoFileType(I)Z
    .locals 1
    .parameter "fileType"

    .prologue
    .line 242
    const/16 v0, 0x15

    if-lt p0, v0, :cond_0

    const/16 v0, 0x1d

    if-gt p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
