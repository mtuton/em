.class public Lorg/mozilla/intl/chardet/nsEUCSampler;
.super Ljava/lang/Object;
.source "nsEUCSampler.java"


# instance fields
.field public mFirstByteCnt:[I

.field public mFirstByteFreq:[F

.field public mSecondByteCnt:[I

.field public mSecondByteFreq:[F

.field mState:I

.field mThreshold:I

.field mTotal:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/16 v1, 0x5e

    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 109
    iput v2, p0, Lorg/mozilla/intl/chardet/nsEUCSampler;->mTotal:I

    .line 111
    const/16 v0, 0xc8

    iput v0, p0, Lorg/mozilla/intl/chardet/nsEUCSampler;->mThreshold:I

    .line 113
    iput v2, p0, Lorg/mozilla/intl/chardet/nsEUCSampler;->mState:I

    .line 115
    new-array v0, v1, [I

    iput-object v0, p0, Lorg/mozilla/intl/chardet/nsEUCSampler;->mFirstByteCnt:[I

    .line 117
    new-array v0, v1, [I

    iput-object v0, p0, Lorg/mozilla/intl/chardet/nsEUCSampler;->mSecondByteCnt:[I

    .line 119
    new-array v0, v1, [F

    iput-object v0, p0, Lorg/mozilla/intl/chardet/nsEUCSampler;->mFirstByteFreq:[F

    .line 121
    new-array v0, v1, [F

    iput-object v0, p0, Lorg/mozilla/intl/chardet/nsEUCSampler;->mSecondByteFreq:[F

    .line 127
    invoke-virtual {p0}, Lorg/mozilla/intl/chardet/nsEUCSampler;->Reset()V

    .line 129
    return-void
.end method


# virtual methods
.method CalFreq()V
    .locals 4

    .prologue
    .line 259
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/16 v1, 0x5e

    if-ge v0, v1, :cond_0

    .line 261
    iget-object v1, p0, Lorg/mozilla/intl/chardet/nsEUCSampler;->mFirstByteFreq:[F

    iget-object v2, p0, Lorg/mozilla/intl/chardet/nsEUCSampler;->mFirstByteCnt:[I

    aget v2, v2, v0

    int-to-float v2, v2

    iget v3, p0, Lorg/mozilla/intl/chardet/nsEUCSampler;->mTotal:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    aput v2, v1, v0

    .line 263
    iget-object v1, p0, Lorg/mozilla/intl/chardet/nsEUCSampler;->mSecondByteFreq:[F

    iget-object v2, p0, Lorg/mozilla/intl/chardet/nsEUCSampler;->mSecondByteCnt:[I

    aget v2, v2, v0

    int-to-float v2, v2

    iget v3, p0, Lorg/mozilla/intl/chardet/nsEUCSampler;->mTotal:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    aput v2, v1, v0

    .line 259
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 267
    :cond_0
    return-void
.end method

.method EnoughData()Z
    .locals 2

    .prologue
    .line 147
    iget v0, p0, Lorg/mozilla/intl/chardet/nsEUCSampler;->mTotal:I

    iget v1, p0, Lorg/mozilla/intl/chardet/nsEUCSampler;->mThreshold:I

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method GetScore([FF[FF)F
    .locals 2
    .parameter "aFirstByteFreq"
    .parameter "aFirstByteWeight"
    .parameter "aSecondByteFreq"
    .parameter "aSecondByteWeight"

    .prologue
    .line 277
    iget-object v0, p0, Lorg/mozilla/intl/chardet/nsEUCSampler;->mFirstByteFreq:[F

    invoke-virtual {p0, p1, v0}, Lorg/mozilla/intl/chardet/nsEUCSampler;->GetScore([F[F)F

    move-result v0

    mul-float/2addr v0, p2

    iget-object v1, p0, Lorg/mozilla/intl/chardet/nsEUCSampler;->mSecondByteFreq:[F

    invoke-virtual {p0, p3, v1}, Lorg/mozilla/intl/chardet/nsEUCSampler;->GetScore([F[F)F

    move-result v1

    mul-float/2addr v1, p4

    add-float/2addr v0, v1

    return v0
.end method

.method GetScore([F[F)F
    .locals 5
    .parameter "array1"
    .parameter "array2"

    .prologue
    .line 289
    const/4 v2, 0x0

    .line 293
    .local v2, sum:F
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/16 v3, 0x5e

    if-ge v0, v3, :cond_0

    .line 295
    aget v3, p1, v0

    aget v4, p2, v0

    sub-float v1, v3, v4

    .line 297
    .local v1, s:F
    mul-float v3, v1, v1

    add-float/2addr v2, v3

    .line 293
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 301
    .end local v1           #s:F
    :cond_0
    float-to-double v3, v2

    invoke-static {v3, v4}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v3

    double-to-float v3, v3

    const/high16 v4, 0x42bc

    div-float/2addr v3, v4

    return v3
.end method

.method GetSomeData()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 151
    iget v0, p0, Lorg/mozilla/intl/chardet/nsEUCSampler;->mTotal:I

    if-le v0, v1, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public Reset()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 135
    iput v3, p0, Lorg/mozilla/intl/chardet/nsEUCSampler;->mTotal:I

    .line 137
    iput v3, p0, Lorg/mozilla/intl/chardet/nsEUCSampler;->mState:I

    .line 139
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/16 v1, 0x5e

    if-ge v0, v1, :cond_0

    .line 141
    iget-object v1, p0, Lorg/mozilla/intl/chardet/nsEUCSampler;->mFirstByteCnt:[I

    iget-object v2, p0, Lorg/mozilla/intl/chardet/nsEUCSampler;->mSecondByteCnt:[I

    aput v3, v2, v0

    aput v3, v1, v0

    .line 139
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 143
    :cond_0
    return-void
.end method

.method Sample([BI)Z
    .locals 9
    .parameter "aIn"
    .parameter "aLen"

    .prologue
    const/16 v8, 0xff

    const/4 v7, 0x0

    const/16 v6, 0xa1

    const/4 v5, 0x1

    .line 159
    iget v2, p0, Lorg/mozilla/intl/chardet/nsEUCSampler;->mState:I

    if-ne v2, v5, :cond_0

    move v2, v7

    .line 249
    :goto_0
    return v2

    .line 165
    :cond_0
    const/4 v1, 0x0

    .line 177
    .local v1, p:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, p2, :cond_7

    iget v2, p0, Lorg/mozilla/intl/chardet/nsEUCSampler;->mState:I

    if-eq v5, v2, :cond_7

    .line 181
    iget v2, p0, Lorg/mozilla/intl/chardet/nsEUCSampler;->mState:I

    packed-switch v2, :pswitch_data_0

    .line 243
    iput v5, p0, Lorg/mozilla/intl/chardet/nsEUCSampler;->mState:I

    .line 177
    :cond_1
    :goto_2
    :pswitch_0
    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 185
    :pswitch_1
    aget-byte v2, p1, v1

    and-int/lit16 v2, v2, 0x80

    if-eqz v2, :cond_1

    .line 189
    aget-byte v2, p1, v1

    and-int/lit16 v2, v2, 0xff

    if-eq v8, v2, :cond_2

    aget-byte v2, p1, v1

    and-int/lit16 v2, v2, 0xff

    if-le v6, v2, :cond_3

    .line 191
    :cond_2
    iput v5, p0, Lorg/mozilla/intl/chardet/nsEUCSampler;->mState:I

    goto :goto_2

    .line 195
    :cond_3
    iget v2, p0, Lorg/mozilla/intl/chardet/nsEUCSampler;->mTotal:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lorg/mozilla/intl/chardet/nsEUCSampler;->mTotal:I

    .line 197
    iget-object v2, p0, Lorg/mozilla/intl/chardet/nsEUCSampler;->mFirstByteCnt:[I

    aget-byte v3, p1, v1

    and-int/lit16 v3, v3, 0xff

    sub-int/2addr v3, v6

    aget v4, v2, v3

    add-int/lit8 v4, v4, 0x1

    aput v4, v2, v3

    .line 199
    const/4 v2, 0x2

    iput v2, p0, Lorg/mozilla/intl/chardet/nsEUCSampler;->mState:I

    goto :goto_2

    .line 213
    :pswitch_2
    aget-byte v2, p1, v1

    and-int/lit16 v2, v2, 0x80

    if-eqz v2, :cond_6

    .line 217
    aget-byte v2, p1, v1

    and-int/lit16 v2, v2, 0xff

    if-eq v8, v2, :cond_4

    aget-byte v2, p1, v1

    and-int/lit16 v2, v2, 0xff

    if-le v6, v2, :cond_5

    .line 221
    :cond_4
    iput v5, p0, Lorg/mozilla/intl/chardet/nsEUCSampler;->mState:I

    goto :goto_2

    .line 225
    :cond_5
    iget v2, p0, Lorg/mozilla/intl/chardet/nsEUCSampler;->mTotal:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lorg/mozilla/intl/chardet/nsEUCSampler;->mTotal:I

    .line 227
    iget-object v2, p0, Lorg/mozilla/intl/chardet/nsEUCSampler;->mSecondByteCnt:[I

    aget-byte v3, p1, v1

    and-int/lit16 v3, v3, 0xff

    sub-int/2addr v3, v6

    aget v4, v2, v3

    add-int/lit8 v4, v4, 0x1

    aput v4, v2, v3

    .line 229
    iput v7, p0, Lorg/mozilla/intl/chardet/nsEUCSampler;->mState:I

    goto :goto_2

    .line 235
    :cond_6
    iput v5, p0, Lorg/mozilla/intl/chardet/nsEUCSampler;->mState:I

    goto :goto_2

    .line 249
    :cond_7
    iget v2, p0, Lorg/mozilla/intl/chardet/nsEUCSampler;->mState:I

    if-eq v5, v2, :cond_8

    move v2, v5

    goto :goto_0

    :cond_8
    move v2, v7

    goto :goto_0

    .line 181
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
