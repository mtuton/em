.class public Lorg/mozilla/intl/chardet/EUCTWStatistics;
.super Lorg/mozilla/intl/chardet/nsEUCStatistics;
.source "EUCTWStatistics.java"


# static fields
.field static mFirstByteFreq:[F

.field static mFirstByteMean:F

.field static mFirstByteStdDev:F

.field static mFirstByteWeight:F

.field static mSecondByteFreq:[F

.field static mSecondByteMean:F

.field static mSecondByteStdDev:F

.field static mSecondByteWeight:F


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/16 v2, 0x5e

    const v1, 0x3c2e4b02

    .line 149
    invoke-direct {p0}, Lorg/mozilla/intl/chardet/nsEUCStatistics;-><init>()V

    .line 153
    new-array v0, v2, [F

    fill-array-data v0, :array_0

    sput-object v0, Lorg/mozilla/intl/chardet/EUCTWStatistics;->mFirstByteFreq:[F

    .line 347
    const v0, 0x3c88a698

    sput v0, Lorg/mozilla/intl/chardet/EUCTWStatistics;->mFirstByteStdDev:F

    .line 349
    sput v1, Lorg/mozilla/intl/chardet/EUCTWStatistics;->mFirstByteMean:F

    .line 351
    const v0, 0x3f37317f

    sput v0, Lorg/mozilla/intl/chardet/EUCTWStatistics;->mFirstByteWeight:F

    .line 355
    new-array v0, v2, [F

    fill-array-data v0, :array_1

    sput-object v0, Lorg/mozilla/intl/chardet/EUCTWStatistics;->mSecondByteFreq:[F

    .line 549
    const v0, 0x3bd94079

    sput v0, Lorg/mozilla/intl/chardet/EUCTWStatistics;->mSecondByteStdDev:F

    .line 551
    sput v1, Lorg/mozilla/intl/chardet/EUCTWStatistics;->mSecondByteMean:F

    .line 553
    const v0, 0x3e919d02

    sput v0, Lorg/mozilla/intl/chardet/EUCTWStatistics;->mSecondByteWeight:F

    .line 555
    return-void

    .line 153
    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x38t 0x4ct 0xf4t 0x3dt
        0x45t 0xf2t 0x55t 0x3dt
        0x77t 0xbdt 0x34t 0x3dt
        0xf3t 0x3t 0x57t 0x3dt
        0xeet 0x7t 0x3ct 0x3dt
        0x94t 0xf5t 0x9bt 0x3ct
        0x5t 0xfat 0x4t 0x3dt
        0x6ft 0xet 0xd7t 0x3ct
        0x92t 0xe9t 0xd0t 0x3ct
        0xd6t 0xc4t 0x82t 0x3ct
        0xe6t 0x2t 0x57t 0x3dt
        0xc2t 0xbet 0x9dt 0x3ct
        0x2et 0x1t 0x78t 0x3ct
        0xd8t 0x2dt 0x2t 0x3dt
        0x88t 0x4bt 0x8et 0x3ct
        0xbbt 0x80t 0x97t 0x3ct
        0x49t 0x2et 0x7ft 0x3ct
        0xc3t 0x28t 0x88t 0x3ct
        0xcct 0xect 0xf3t 0x3bt
        0x16t 0xbet 0x3et 0x3ct
        0xeft 0xfft 0x63t 0x3ct
        0x56t 0xf3t 0x9ct 0x3ct
        0xaat 0xb7t 0x86t 0x3ct
        0x7bt 0xa1t 0x0t 0x3ct
        0xb2t 0x84t 0x35t 0x3ct
        0x25t 0x1ft 0xbbt 0x3ct
        0x3dt 0x2at 0x7et 0x3ct
        0x74t 0x61t 0x24t 0x3ct
        0x53t 0x5t 0x23t 0x3ct
        0x77t 0x86t 0x29t 0x3ct
        0xf7t 0xadt 0x56t 0x3ct
        0xa6t 0xd6t 0x7bt 0x3ct
        0x30t 0xd5t 0x4ct 0x3ct
        0xb0t 0xa9t 0xf3t 0x3bt
        0x51t 0x87t 0x95t 0x3ct
        0x4bt 0x92t 0x67t 0x3ct
        0xaat 0xeet 0x11t 0x3ct
        0xc2t 0x4et 0xb1t 0x3bt
        0x7dt 0xcbt 0x1ct 0x3ct
        0x25t 0xcat 0x5et 0x3ct
        0x66t 0x9ft 0xc7t 0x3bt
        0x32t 0xc7t 0xf2t 0x3bt
        0x5ft 0x26t 0xat 0x3ct
        0x25t 0x94t 0xbet 0x3bt
        0x8ct 0x2ct 0x19t 0x3ct
        0x77t 0x4et 0xb3t 0x3bt
        0x52t 0xf2t 0xeat 0x3bt
        0x79t 0x23t 0xf3t 0x3bt
        0xeft 0x3ct 0x71t 0x3bt
        0x7ft 0x83t 0xf6t 0x3bt
        0x7ct 0xft 0x97t 0x3bt
        0x7et 0xa7t 0xc9t 0x3bt
        0x1ft 0x6at 0x5bt 0x3bt
        0xcct 0x43t 0xa6t 0x3bt
        0x56t 0xdt 0xc2t 0x3bt
        0xbft 0x29t 0xact 0x3bt
        0x76t 0x6bt 0x99t 0x3bt
        0xb7t 0x2at 0x9t 0x3bt
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    .line 355
    :array_1
    .array-data 0x4
        0xe6t 0x4t 0xedt 0x3ct
        0x6et 0x4dt 0x3at 0x3ct
        0xa4t 0x17t 0x35t 0x3ct
        0x6at 0xfat 0xect 0x3bt
        0x59t 0xfct 0x26t 0x3ct
        0x93t 0x1et 0x86t 0x3bt
        0xeat 0x76t 0x76t 0x3ct
        0x76t 0x8bt 0x40t 0x3ct
        0xf1t 0x64t 0xb7t 0x3ct
        0x19t 0xcat 0x9t 0x3ct
        0xb2t 0xf2t 0x4bt 0x3ct
        0x11t 0xe0t 0xf4t 0x3bt
        0x50t 0x89t 0x6bt 0x3bt
        0x46t 0xeet 0xe9t 0x3bt
        0x57t 0xedt 0x9at 0x3ct
        0xe7t 0x53t 0xc7t 0x3bt
        0x5et 0x66t 0x58t 0x3bt
        0xd1t 0x5ct 0x27t 0x3ct
        0x20t 0x8t 0x10t 0x3ct
        0x93t 0x8at 0xc6t 0x3ct
        0xct 0x21t 0x67t 0x3ct
        0x3et 0x25t 0x67t 0x3ct
        0xeat 0xcdt 0x28t 0x3ct
        0x30t 0x62t 0x1ft 0x3ct
        0x88t 0xet 0x1t 0x3ct
        0x71t 0x3ct 0x1ft 0x3ct
        0x1bt 0x49t 0x2t 0x3ct
        0xeat 0x42t 0xact 0x3ct
        0xf0t 0xdft 0xbct 0x3bt
        0xfet 0xat 0x19t 0x3ct
        0x51t 0xf9t 0xd7t 0x3bt
        0x1at 0x14t 0x4dt 0x3ct
        0xf3t 0x4t 0xc2t 0x3bt
        0x3dt 0x29t 0x13t 0x3ct
        0x3et 0xb4t 0xft 0x3ct
        0x7bt 0xbft 0x51t 0x3ct
        0xe4t 0x2et 0xc2t 0x3bt
        0xe2t 0xact 0x8t 0x3ct
        0x7dt 0x3et 0x4at 0x3bt
        0x3ft 0x3bt 0xe0t 0x3bt
        0x18t 0x40t 0xf8t 0x3bt
        0xact 0x1ft 0x9bt 0x3bt
        0xaet 0x61t 0x86t 0x3ct
        0x75t 0x3at 0x10t 0x3ct
        0x3at 0x3ct 0x4t 0x3ct
        0xaat 0x46t 0xaft 0x3bt
        0x68t 0x58t 0xct 0x3ct
        0x41t 0x9at 0x31t 0x3ct
        0x7at 0x54t 0x7ct 0x3ct
        0xc5t 0xadt 0x2t 0x3dt
        0x9et 0xct 0xet 0x3ct
        0x6at 0x12t 0x3ct 0x3ct
        0xe9t 0x2ct 0x33t 0x3ct
        0x7t 0x98t 0xf9t 0x3bt
        0xc4t 0x5ft 0x13t 0x3ct
        0x95t 0xf0t 0x4t 0x3ct
        0x49t 0xdat 0xdt 0x3ct
        0x0t 0x72t 0xc2t 0x3bt
        0xdet 0x3et 0x2bt 0x3ct
        0x54t 0xc8t 0x15t 0x3ct
        0x1ft 0x14t 0x94t 0x3bt
        0x4dt 0xa0t 0x8t 0x3ct
        0x3ct 0xf9t 0xf4t 0x3bt
        0xc0t 0x42t 0xe6t 0x3bt
        0x5dt 0x6dt 0xc5t 0x3bt
        0x4dt 0x9et 0xb2t 0x3ct
        0xbet 0xa3t 0xc6t 0x3ct
        0x3bt 0x36t 0x82t 0x3ct
        0x8dt 0xf0t 0x76t 0x3bt
        0x44t 0xa4t 0x26t 0x3ct
        0x66t 0xf4t 0x23t 0x3ct
        0xa0t 0xc1t 0x26t 0x3ct
        0xd5t 0x3ft 0x8t 0x3ct
        0xf8t 0xdet 0xdft 0x3bt
        0x1at 0x89t 0xd0t 0x3bt
        0x22t 0xc4t 0x15t 0x3ct
        0x7et 0xe1t 0x15t 0x3ct
        0x63t 0xeft 0x45t 0x3ct
        0xf0t 0x32t 0x43t 0x3ct
        0xbft 0x46t 0x92t 0x3bt
        0x31t 0x96t 0x69t 0x3ct
        0x1et 0x54t 0xe2t 0x3bt
        0x15t 0x2t 0x39t 0x3ct
        0x2at 0x8dt 0x98t 0x3ct
        0x62t 0x83t 0x5t 0x3ct
        0x96t 0xe9t 0x97t 0x3bt
        0x7at 0xa9t 0xd8t 0x3bt
        0xd4t 0xd2t 0x5ct 0x3ct
        0xf3t 0xaat 0x4et 0x3ct
        0x52t 0xeft 0xa9t 0x3bt
        0x7et 0xc6t 0x45t 0x3dt
        0xc1t 0x58t 0xdft 0x3bt
        0x62t 0xf4t 0xdct 0x3bt
        0xcft 0x10t 0xet 0x3ct
    .end array-data
.end method


# virtual methods
.method public mFirstByteFreq()[F
    .locals 1

    .prologue
    .line 131
    sget-object v0, Lorg/mozilla/intl/chardet/EUCTWStatistics;->mFirstByteFreq:[F

    return-object v0
.end method

.method public mFirstByteWeight()F
    .locals 1

    .prologue
    .line 137
    sget v0, Lorg/mozilla/intl/chardet/EUCTWStatistics;->mFirstByteWeight:F

    return v0
.end method

.method public mSecondByteFreq()[F
    .locals 1

    .prologue
    .line 139
    sget-object v0, Lorg/mozilla/intl/chardet/EUCTWStatistics;->mSecondByteFreq:[F

    return-object v0
.end method

.method public mSecondByteWeight()F
    .locals 1

    .prologue
    .line 145
    sget v0, Lorg/mozilla/intl/chardet/EUCTWStatistics;->mSecondByteWeight:F

    return v0
.end method
