.class public Lorg/mozilla/intl/chardet/nsUTF8Verifier;
.super Lorg/mozilla/intl/chardet/nsVerifier;
.source "nsUTF8Verifier.java"


# static fields
.field static cclass:[I

.field static charset:Ljava/lang/String;

.field static stFactor:I

.field static states:[I


# direct methods
.method public constructor <init>()V
    .locals 8

    .prologue
    const v7, 0x66666666

    const v6, 0x44444444

    const/16 v5, 0x10

    const v4, 0x55555555

    const v3, 0x11111111

    .line 143
    invoke-direct {p0}, Lorg/mozilla/intl/chardet/nsVerifier;-><init>()V

    .line 147
    const/16 v0, 0x20

    new-array v0, v0, [I

    sput-object v0, Lorg/mozilla/intl/chardet/nsUTF8Verifier;->cclass:[I

    .line 151
    sget-object v0, Lorg/mozilla/intl/chardet/nsUTF8Verifier;->cclass:[I

    const/4 v1, 0x0

    aput v3, v0, v1

    .line 153
    sget-object v0, Lorg/mozilla/intl/chardet/nsUTF8Verifier;->cclass:[I

    const/4 v1, 0x1

    const v2, 0x111111

    aput v2, v0, v1

    .line 155
    sget-object v0, Lorg/mozilla/intl/chardet/nsUTF8Verifier;->cclass:[I

    const/4 v1, 0x2

    aput v3, v0, v1

    .line 157
    sget-object v0, Lorg/mozilla/intl/chardet/nsUTF8Verifier;->cclass:[I

    const/4 v1, 0x3

    const v2, 0x11110111

    aput v2, v0, v1

    .line 159
    sget-object v0, Lorg/mozilla/intl/chardet/nsUTF8Verifier;->cclass:[I

    const/4 v1, 0x4

    aput v3, v0, v1

    .line 161
    sget-object v0, Lorg/mozilla/intl/chardet/nsUTF8Verifier;->cclass:[I

    const/4 v1, 0x5

    aput v3, v0, v1

    .line 163
    sget-object v0, Lorg/mozilla/intl/chardet/nsUTF8Verifier;->cclass:[I

    const/4 v1, 0x6

    aput v3, v0, v1

    .line 165
    sget-object v0, Lorg/mozilla/intl/chardet/nsUTF8Verifier;->cclass:[I

    const/4 v1, 0x7

    aput v3, v0, v1

    .line 167
    sget-object v0, Lorg/mozilla/intl/chardet/nsUTF8Verifier;->cclass:[I

    const/16 v1, 0x8

    aput v3, v0, v1

    .line 169
    sget-object v0, Lorg/mozilla/intl/chardet/nsUTF8Verifier;->cclass:[I

    const/16 v1, 0x9

    aput v3, v0, v1

    .line 171
    sget-object v0, Lorg/mozilla/intl/chardet/nsUTF8Verifier;->cclass:[I

    const/16 v1, 0xa

    aput v3, v0, v1

    .line 173
    sget-object v0, Lorg/mozilla/intl/chardet/nsUTF8Verifier;->cclass:[I

    const/16 v1, 0xb

    aput v3, v0, v1

    .line 175
    sget-object v0, Lorg/mozilla/intl/chardet/nsUTF8Verifier;->cclass:[I

    const/16 v1, 0xc

    aput v3, v0, v1

    .line 177
    sget-object v0, Lorg/mozilla/intl/chardet/nsUTF8Verifier;->cclass:[I

    const/16 v1, 0xd

    aput v3, v0, v1

    .line 179
    sget-object v0, Lorg/mozilla/intl/chardet/nsUTF8Verifier;->cclass:[I

    const/16 v1, 0xe

    aput v3, v0, v1

    .line 181
    sget-object v0, Lorg/mozilla/intl/chardet/nsUTF8Verifier;->cclass:[I

    const/16 v1, 0xf

    aput v3, v0, v1

    .line 183
    sget-object v0, Lorg/mozilla/intl/chardet/nsUTF8Verifier;->cclass:[I

    const v1, 0x33332222

    aput v1, v0, v5

    .line 185
    sget-object v0, Lorg/mozilla/intl/chardet/nsUTF8Verifier;->cclass:[I

    const/16 v1, 0x11

    aput v6, v0, v1

    .line 187
    sget-object v0, Lorg/mozilla/intl/chardet/nsUTF8Verifier;->cclass:[I

    const/16 v1, 0x12

    aput v6, v0, v1

    .line 189
    sget-object v0, Lorg/mozilla/intl/chardet/nsUTF8Verifier;->cclass:[I

    const/16 v1, 0x13

    aput v6, v0, v1

    .line 191
    sget-object v0, Lorg/mozilla/intl/chardet/nsUTF8Verifier;->cclass:[I

    const/16 v1, 0x14

    aput v4, v0, v1

    .line 193
    sget-object v0, Lorg/mozilla/intl/chardet/nsUTF8Verifier;->cclass:[I

    const/16 v1, 0x15

    aput v4, v0, v1

    .line 195
    sget-object v0, Lorg/mozilla/intl/chardet/nsUTF8Verifier;->cclass:[I

    const/16 v1, 0x16

    aput v4, v0, v1

    .line 197
    sget-object v0, Lorg/mozilla/intl/chardet/nsUTF8Verifier;->cclass:[I

    const/16 v1, 0x17

    aput v4, v0, v1

    .line 199
    sget-object v0, Lorg/mozilla/intl/chardet/nsUTF8Verifier;->cclass:[I

    const/16 v1, 0x18

    const v2, 0x66666600

    aput v2, v0, v1

    .line 201
    sget-object v0, Lorg/mozilla/intl/chardet/nsUTF8Verifier;->cclass:[I

    const/16 v1, 0x19

    aput v7, v0, v1

    .line 203
    sget-object v0, Lorg/mozilla/intl/chardet/nsUTF8Verifier;->cclass:[I

    const/16 v1, 0x1a

    aput v7, v0, v1

    .line 205
    sget-object v0, Lorg/mozilla/intl/chardet/nsUTF8Verifier;->cclass:[I

    const/16 v1, 0x1b

    aput v7, v0, v1

    .line 207
    sget-object v0, Lorg/mozilla/intl/chardet/nsUTF8Verifier;->cclass:[I

    const/16 v1, 0x1c

    const v2, -0x77777779

    aput v2, v0, v1

    .line 209
    sget-object v0, Lorg/mozilla/intl/chardet/nsUTF8Verifier;->cclass:[I

    const/16 v1, 0x1d

    const v2, -0x77677778

    aput v2, v0, v1

    .line 211
    sget-object v0, Lorg/mozilla/intl/chardet/nsUTF8Verifier;->cclass:[I

    const/16 v1, 0x1e

    const v2, -0x44444446

    aput v2, v0, v1

    .line 213
    sget-object v0, Lorg/mozilla/intl/chardet/nsUTF8Verifier;->cclass:[I

    const/16 v1, 0x1f

    const v2, 0xfedddc

    aput v2, v0, v1

    .line 221
    const/16 v0, 0x1a

    new-array v0, v0, [I

    sput-object v0, Lorg/mozilla/intl/chardet/nsUTF8Verifier;->states:[I

    .line 225
    sget-object v0, Lorg/mozilla/intl/chardet/nsUTF8Verifier;->states:[I

    const/4 v1, 0x0

    const v2, -0x53eeeeff

    aput v2, v0, v1

    .line 227
    sget-object v0, Lorg/mozilla/intl/chardet/nsUTF8Verifier;->states:[I

    const/4 v1, 0x1

    const v2, 0x345678b9

    aput v2, v0, v1

    .line 229
    sget-object v0, Lorg/mozilla/intl/chardet/nsUTF8Verifier;->states:[I

    const/4 v1, 0x2

    aput v3, v0, v1

    .line 231
    sget-object v0, Lorg/mozilla/intl/chardet/nsUTF8Verifier;->states:[I

    const/4 v1, 0x3

    aput v3, v0, v1

    .line 233
    sget-object v0, Lorg/mozilla/intl/chardet/nsUTF8Verifier;->states:[I

    const/4 v1, 0x4

    const v2, 0x22222222

    aput v2, v0, v1

    .line 235
    sget-object v0, Lorg/mozilla/intl/chardet/nsUTF8Verifier;->states:[I

    const/4 v1, 0x5

    const v2, 0x22222222

    aput v2, v0, v1

    .line 237
    sget-object v0, Lorg/mozilla/intl/chardet/nsUTF8Verifier;->states:[I

    const/4 v1, 0x6

    const v2, 0x11555511

    aput v2, v0, v1

    .line 239
    sget-object v0, Lorg/mozilla/intl/chardet/nsUTF8Verifier;->states:[I

    const/4 v1, 0x7

    aput v3, v0, v1

    .line 241
    sget-object v0, Lorg/mozilla/intl/chardet/nsUTF8Verifier;->states:[I

    const/16 v1, 0x8

    const v2, 0x11555111

    aput v2, v0, v1

    .line 243
    sget-object v0, Lorg/mozilla/intl/chardet/nsUTF8Verifier;->states:[I

    const/16 v1, 0x9

    aput v3, v0, v1

    .line 245
    sget-object v0, Lorg/mozilla/intl/chardet/nsUTF8Verifier;->states:[I

    const/16 v1, 0xa

    const v2, 0x11777711

    aput v2, v0, v1

    .line 247
    sget-object v0, Lorg/mozilla/intl/chardet/nsUTF8Verifier;->states:[I

    const/16 v1, 0xb

    aput v3, v0, v1

    .line 249
    sget-object v0, Lorg/mozilla/intl/chardet/nsUTF8Verifier;->states:[I

    const/16 v1, 0xc

    const v2, 0x11771111

    aput v2, v0, v1

    .line 251
    sget-object v0, Lorg/mozilla/intl/chardet/nsUTF8Verifier;->states:[I

    const/16 v1, 0xd

    aput v3, v0, v1

    .line 253
    sget-object v0, Lorg/mozilla/intl/chardet/nsUTF8Verifier;->states:[I

    const/16 v1, 0xe

    const v2, 0x11999911

    aput v2, v0, v1

    .line 255
    sget-object v0, Lorg/mozilla/intl/chardet/nsUTF8Verifier;->states:[I

    const/16 v1, 0xf

    aput v3, v0, v1

    .line 257
    sget-object v0, Lorg/mozilla/intl/chardet/nsUTF8Verifier;->states:[I

    const v1, 0x11911111

    aput v1, v0, v5

    .line 259
    sget-object v0, Lorg/mozilla/intl/chardet/nsUTF8Verifier;->states:[I

    const/16 v1, 0x11

    aput v3, v0, v1

    .line 261
    sget-object v0, Lorg/mozilla/intl/chardet/nsUTF8Verifier;->states:[I

    const/16 v1, 0x12

    const v2, 0x11cccc11

    aput v2, v0, v1

    .line 263
    sget-object v0, Lorg/mozilla/intl/chardet/nsUTF8Verifier;->states:[I

    const/16 v1, 0x13

    aput v3, v0, v1

    .line 265
    sget-object v0, Lorg/mozilla/intl/chardet/nsUTF8Verifier;->states:[I

    const/16 v1, 0x14

    const v2, 0x11c11111

    aput v2, v0, v1

    .line 267
    sget-object v0, Lorg/mozilla/intl/chardet/nsUTF8Verifier;->states:[I

    const/16 v1, 0x15

    aput v3, v0, v1

    .line 269
    sget-object v0, Lorg/mozilla/intl/chardet/nsUTF8Verifier;->states:[I

    const/16 v1, 0x16

    const v2, 0x111ccc11

    aput v2, v0, v1

    .line 271
    sget-object v0, Lorg/mozilla/intl/chardet/nsUTF8Verifier;->states:[I

    const/16 v1, 0x17

    aput v3, v0, v1

    .line 273
    sget-object v0, Lorg/mozilla/intl/chardet/nsUTF8Verifier;->states:[I

    const/16 v1, 0x18

    const v2, 0x11000011

    aput v2, v0, v1

    .line 275
    sget-object v0, Lorg/mozilla/intl/chardet/nsUTF8Verifier;->states:[I

    const/16 v1, 0x19

    aput v3, v0, v1

    .line 283
    const-string v0, "UTF-8"

    sput-object v0, Lorg/mozilla/intl/chardet/nsUTF8Verifier;->charset:Ljava/lang/String;

    .line 285
    sput v5, Lorg/mozilla/intl/chardet/nsUTF8Verifier;->stFactor:I

    .line 289
    return-void
.end method


# virtual methods
.method public cclass()[I
    .locals 1

    .prologue
    .line 133
    sget-object v0, Lorg/mozilla/intl/chardet/nsUTF8Verifier;->cclass:[I

    return-object v0
.end method

.method public charset()Ljava/lang/String;
    .locals 1

    .prologue
    .line 139
    sget-object v0, Lorg/mozilla/intl/chardet/nsUTF8Verifier;->charset:Ljava/lang/String;

    return-object v0
.end method

.method public isUCS2()Z
    .locals 1

    .prologue
    .line 293
    const/4 v0, 0x0

    return v0
.end method

.method public stFactor()I
    .locals 1

    .prologue
    .line 137
    sget v0, Lorg/mozilla/intl/chardet/nsUTF8Verifier;->stFactor:I

    return v0
.end method

.method public states()[I
    .locals 1

    .prologue
    .line 135
    sget-object v0, Lorg/mozilla/intl/chardet/nsUTF8Verifier;->states:[I

    return-object v0
.end method
