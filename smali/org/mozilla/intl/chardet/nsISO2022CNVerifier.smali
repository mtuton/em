.class public Lorg/mozilla/intl/chardet/nsISO2022CNVerifier;
.super Lorg/mozilla/intl/chardet/nsVerifier;
.source "nsISO2022CNVerifier.java"


# static fields
.field static cclass:[I

.field static charset:Ljava/lang/String;

.field static stFactor:I

.field static states:[I


# direct methods
.method public constructor <init>()V
    .locals 8

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x1

    const/4 v5, 0x2

    const/4 v4, 0x0

    const v3, 0x22222222

    .line 143
    invoke-direct {p0}, Lorg/mozilla/intl/chardet/nsVerifier;-><init>()V

    .line 147
    const/16 v0, 0x20

    new-array v0, v0, [I

    sput-object v0, Lorg/mozilla/intl/chardet/nsISO2022CNVerifier;->cclass:[I

    .line 151
    sget-object v0, Lorg/mozilla/intl/chardet/nsISO2022CNVerifier;->cclass:[I

    aput v5, v0, v4

    .line 153
    sget-object v0, Lorg/mozilla/intl/chardet/nsISO2022CNVerifier;->cclass:[I

    aput v4, v0, v6

    .line 155
    sget-object v0, Lorg/mozilla/intl/chardet/nsISO2022CNVerifier;->cclass:[I

    aput v4, v0, v5

    .line 157
    sget-object v0, Lorg/mozilla/intl/chardet/nsISO2022CNVerifier;->cclass:[I

    const/16 v1, 0x1000

    aput v1, v0, v7

    .line 159
    sget-object v0, Lorg/mozilla/intl/chardet/nsISO2022CNVerifier;->cclass:[I

    const/4 v1, 0x4

    aput v4, v0, v1

    .line 161
    sget-object v0, Lorg/mozilla/intl/chardet/nsISO2022CNVerifier;->cclass:[I

    const/4 v1, 0x5

    const/16 v2, 0x30

    aput v2, v0, v1

    .line 163
    sget-object v0, Lorg/mozilla/intl/chardet/nsISO2022CNVerifier;->cclass:[I

    const/4 v1, 0x6

    aput v4, v0, v1

    .line 165
    sget-object v0, Lorg/mozilla/intl/chardet/nsISO2022CNVerifier;->cclass:[I

    const/4 v1, 0x7

    aput v4, v0, v1

    .line 167
    sget-object v0, Lorg/mozilla/intl/chardet/nsISO2022CNVerifier;->cclass:[I

    const/16 v1, 0x8

    const/16 v2, 0x4000

    aput v2, v0, v1

    .line 169
    sget-object v0, Lorg/mozilla/intl/chardet/nsISO2022CNVerifier;->cclass:[I

    const/16 v1, 0x9

    aput v4, v0, v1

    .line 171
    sget-object v0, Lorg/mozilla/intl/chardet/nsISO2022CNVerifier;->cclass:[I

    const/16 v1, 0xa

    aput v4, v0, v1

    .line 173
    sget-object v0, Lorg/mozilla/intl/chardet/nsISO2022CNVerifier;->cclass:[I

    const/16 v1, 0xb

    aput v4, v0, v1

    .line 175
    sget-object v0, Lorg/mozilla/intl/chardet/nsISO2022CNVerifier;->cclass:[I

    const/16 v1, 0xc

    aput v4, v0, v1

    .line 177
    sget-object v0, Lorg/mozilla/intl/chardet/nsISO2022CNVerifier;->cclass:[I

    const/16 v1, 0xd

    aput v4, v0, v1

    .line 179
    sget-object v0, Lorg/mozilla/intl/chardet/nsISO2022CNVerifier;->cclass:[I

    const/16 v1, 0xe

    aput v4, v0, v1

    .line 181
    sget-object v0, Lorg/mozilla/intl/chardet/nsISO2022CNVerifier;->cclass:[I

    const/16 v1, 0xf

    aput v4, v0, v1

    .line 183
    sget-object v0, Lorg/mozilla/intl/chardet/nsISO2022CNVerifier;->cclass:[I

    const/16 v1, 0x10

    aput v3, v0, v1

    .line 185
    sget-object v0, Lorg/mozilla/intl/chardet/nsISO2022CNVerifier;->cclass:[I

    const/16 v1, 0x11

    aput v3, v0, v1

    .line 187
    sget-object v0, Lorg/mozilla/intl/chardet/nsISO2022CNVerifier;->cclass:[I

    const/16 v1, 0x12

    aput v3, v0, v1

    .line 189
    sget-object v0, Lorg/mozilla/intl/chardet/nsISO2022CNVerifier;->cclass:[I

    const/16 v1, 0x13

    aput v3, v0, v1

    .line 191
    sget-object v0, Lorg/mozilla/intl/chardet/nsISO2022CNVerifier;->cclass:[I

    const/16 v1, 0x14

    aput v3, v0, v1

    .line 193
    sget-object v0, Lorg/mozilla/intl/chardet/nsISO2022CNVerifier;->cclass:[I

    const/16 v1, 0x15

    aput v3, v0, v1

    .line 195
    sget-object v0, Lorg/mozilla/intl/chardet/nsISO2022CNVerifier;->cclass:[I

    const/16 v1, 0x16

    aput v3, v0, v1

    .line 197
    sget-object v0, Lorg/mozilla/intl/chardet/nsISO2022CNVerifier;->cclass:[I

    const/16 v1, 0x17

    aput v3, v0, v1

    .line 199
    sget-object v0, Lorg/mozilla/intl/chardet/nsISO2022CNVerifier;->cclass:[I

    const/16 v1, 0x18

    aput v3, v0, v1

    .line 201
    sget-object v0, Lorg/mozilla/intl/chardet/nsISO2022CNVerifier;->cclass:[I

    const/16 v1, 0x19

    aput v3, v0, v1

    .line 203
    sget-object v0, Lorg/mozilla/intl/chardet/nsISO2022CNVerifier;->cclass:[I

    const/16 v1, 0x1a

    aput v3, v0, v1

    .line 205
    sget-object v0, Lorg/mozilla/intl/chardet/nsISO2022CNVerifier;->cclass:[I

    const/16 v1, 0x1b

    aput v3, v0, v1

    .line 207
    sget-object v0, Lorg/mozilla/intl/chardet/nsISO2022CNVerifier;->cclass:[I

    const/16 v1, 0x1c

    aput v3, v0, v1

    .line 209
    sget-object v0, Lorg/mozilla/intl/chardet/nsISO2022CNVerifier;->cclass:[I

    const/16 v1, 0x1d

    aput v3, v0, v1

    .line 211
    sget-object v0, Lorg/mozilla/intl/chardet/nsISO2022CNVerifier;->cclass:[I

    const/16 v1, 0x1e

    aput v3, v0, v1

    .line 213
    sget-object v0, Lorg/mozilla/intl/chardet/nsISO2022CNVerifier;->cclass:[I

    const/16 v1, 0x1f

    aput v3, v0, v1

    .line 221
    const/16 v0, 0x8

    new-array v0, v0, [I

    sput-object v0, Lorg/mozilla/intl/chardet/nsISO2022CNVerifier;->states:[I

    .line 225
    sget-object v0, Lorg/mozilla/intl/chardet/nsISO2022CNVerifier;->states:[I

    const/16 v1, 0x130

    aput v1, v0, v4

    .line 227
    sget-object v0, Lorg/mozilla/intl/chardet/nsISO2022CNVerifier;->states:[I

    const v1, 0x11111110

    aput v1, v0, v6

    .line 229
    sget-object v0, Lorg/mozilla/intl/chardet/nsISO2022CNVerifier;->states:[I

    const v1, 0x22222211

    aput v1, v0, v5

    .line 231
    sget-object v0, Lorg/mozilla/intl/chardet/nsISO2022CNVerifier;->states:[I

    const v1, 0x14111222

    aput v1, v0, v7

    .line 233
    sget-object v0, Lorg/mozilla/intl/chardet/nsISO2022CNVerifier;->states:[I

    const/4 v1, 0x4

    const v2, 0x11112111

    aput v2, v0, v1

    .line 235
    sget-object v0, Lorg/mozilla/intl/chardet/nsISO2022CNVerifier;->states:[I

    const/4 v1, 0x5

    const v2, 0x11111165

    aput v2, v0, v1

    .line 237
    sget-object v0, Lorg/mozilla/intl/chardet/nsISO2022CNVerifier;->states:[I

    const/4 v1, 0x6

    const v2, 0x11112111

    aput v2, v0, v1

    .line 239
    sget-object v0, Lorg/mozilla/intl/chardet/nsISO2022CNVerifier;->states:[I

    const/4 v1, 0x7

    const v2, 0x1211111

    aput v2, v0, v1

    .line 247
    const-string v0, "ISO-2022-CN"

    sput-object v0, Lorg/mozilla/intl/chardet/nsISO2022CNVerifier;->charset:Ljava/lang/String;

    .line 249
    const/16 v0, 0x9

    sput v0, Lorg/mozilla/intl/chardet/nsISO2022CNVerifier;->stFactor:I

    .line 253
    return-void
.end method


# virtual methods
.method public cclass()[I
    .locals 1

    .prologue
    .line 133
    sget-object v0, Lorg/mozilla/intl/chardet/nsISO2022CNVerifier;->cclass:[I

    return-object v0
.end method

.method public charset()Ljava/lang/String;
    .locals 1

    .prologue
    .line 139
    sget-object v0, Lorg/mozilla/intl/chardet/nsISO2022CNVerifier;->charset:Ljava/lang/String;

    return-object v0
.end method

.method public isUCS2()Z
    .locals 1

    .prologue
    .line 257
    const/4 v0, 0x0

    return v0
.end method

.method public stFactor()I
    .locals 1

    .prologue
    .line 137
    sget v0, Lorg/mozilla/intl/chardet/nsISO2022CNVerifier;->stFactor:I

    return v0
.end method

.method public states()[I
    .locals 1

    .prologue
    .line 135
    sget-object v0, Lorg/mozilla/intl/chardet/nsISO2022CNVerifier;->states:[I

    return-object v0
.end method
