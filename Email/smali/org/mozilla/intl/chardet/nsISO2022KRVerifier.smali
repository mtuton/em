.class public Lorg/mozilla/intl/chardet/nsISO2022KRVerifier;
.super Lorg/mozilla/intl/chardet/nsVerifier;
.source "nsISO2022KRVerifier.java"


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

    sput-object v0, Lorg/mozilla/intl/chardet/nsISO2022KRVerifier;->cclass:[I

    .line 151
    sget-object v0, Lorg/mozilla/intl/chardet/nsISO2022KRVerifier;->cclass:[I

    aput v5, v0, v4

    .line 153
    sget-object v0, Lorg/mozilla/intl/chardet/nsISO2022KRVerifier;->cclass:[I

    aput v4, v0, v6

    .line 155
    sget-object v0, Lorg/mozilla/intl/chardet/nsISO2022KRVerifier;->cclass:[I

    aput v4, v0, v5

    .line 157
    sget-object v0, Lorg/mozilla/intl/chardet/nsISO2022KRVerifier;->cclass:[I

    const/16 v1, 0x1000

    aput v1, v0, v7

    .line 159
    sget-object v0, Lorg/mozilla/intl/chardet/nsISO2022KRVerifier;->cclass:[I

    const/4 v1, 0x4

    const/high16 v2, 0x3

    aput v2, v0, v1

    .line 161
    sget-object v0, Lorg/mozilla/intl/chardet/nsISO2022KRVerifier;->cclass:[I

    const/4 v1, 0x5

    const/16 v2, 0x40

    aput v2, v0, v1

    .line 163
    sget-object v0, Lorg/mozilla/intl/chardet/nsISO2022KRVerifier;->cclass:[I

    const/4 v1, 0x6

    aput v4, v0, v1

    .line 165
    sget-object v0, Lorg/mozilla/intl/chardet/nsISO2022KRVerifier;->cclass:[I

    const/4 v1, 0x7

    aput v4, v0, v1

    .line 167
    sget-object v0, Lorg/mozilla/intl/chardet/nsISO2022KRVerifier;->cclass:[I

    const/16 v1, 0x8

    const/16 v2, 0x5000

    aput v2, v0, v1

    .line 169
    sget-object v0, Lorg/mozilla/intl/chardet/nsISO2022KRVerifier;->cclass:[I

    const/16 v1, 0x9

    aput v4, v0, v1

    .line 171
    sget-object v0, Lorg/mozilla/intl/chardet/nsISO2022KRVerifier;->cclass:[I

    const/16 v1, 0xa

    aput v4, v0, v1

    .line 173
    sget-object v0, Lorg/mozilla/intl/chardet/nsISO2022KRVerifier;->cclass:[I

    const/16 v1, 0xb

    aput v4, v0, v1

    .line 175
    sget-object v0, Lorg/mozilla/intl/chardet/nsISO2022KRVerifier;->cclass:[I

    const/16 v1, 0xc

    aput v4, v0, v1

    .line 177
    sget-object v0, Lorg/mozilla/intl/chardet/nsISO2022KRVerifier;->cclass:[I

    const/16 v1, 0xd

    aput v4, v0, v1

    .line 179
    sget-object v0, Lorg/mozilla/intl/chardet/nsISO2022KRVerifier;->cclass:[I

    const/16 v1, 0xe

    aput v4, v0, v1

    .line 181
    sget-object v0, Lorg/mozilla/intl/chardet/nsISO2022KRVerifier;->cclass:[I

    const/16 v1, 0xf

    aput v4, v0, v1

    .line 183
    sget-object v0, Lorg/mozilla/intl/chardet/nsISO2022KRVerifier;->cclass:[I

    const/16 v1, 0x10

    aput v3, v0, v1

    .line 185
    sget-object v0, Lorg/mozilla/intl/chardet/nsISO2022KRVerifier;->cclass:[I

    const/16 v1, 0x11

    aput v3, v0, v1

    .line 187
    sget-object v0, Lorg/mozilla/intl/chardet/nsISO2022KRVerifier;->cclass:[I

    const/16 v1, 0x12

    aput v3, v0, v1

    .line 189
    sget-object v0, Lorg/mozilla/intl/chardet/nsISO2022KRVerifier;->cclass:[I

    const/16 v1, 0x13

    aput v3, v0, v1

    .line 191
    sget-object v0, Lorg/mozilla/intl/chardet/nsISO2022KRVerifier;->cclass:[I

    const/16 v1, 0x14

    aput v3, v0, v1

    .line 193
    sget-object v0, Lorg/mozilla/intl/chardet/nsISO2022KRVerifier;->cclass:[I

    const/16 v1, 0x15

    aput v3, v0, v1

    .line 195
    sget-object v0, Lorg/mozilla/intl/chardet/nsISO2022KRVerifier;->cclass:[I

    const/16 v1, 0x16

    aput v3, v0, v1

    .line 197
    sget-object v0, Lorg/mozilla/intl/chardet/nsISO2022KRVerifier;->cclass:[I

    const/16 v1, 0x17

    aput v3, v0, v1

    .line 199
    sget-object v0, Lorg/mozilla/intl/chardet/nsISO2022KRVerifier;->cclass:[I

    const/16 v1, 0x18

    aput v3, v0, v1

    .line 201
    sget-object v0, Lorg/mozilla/intl/chardet/nsISO2022KRVerifier;->cclass:[I

    const/16 v1, 0x19

    aput v3, v0, v1

    .line 203
    sget-object v0, Lorg/mozilla/intl/chardet/nsISO2022KRVerifier;->cclass:[I

    const/16 v1, 0x1a

    aput v3, v0, v1

    .line 205
    sget-object v0, Lorg/mozilla/intl/chardet/nsISO2022KRVerifier;->cclass:[I

    const/16 v1, 0x1b

    aput v3, v0, v1

    .line 207
    sget-object v0, Lorg/mozilla/intl/chardet/nsISO2022KRVerifier;->cclass:[I

    const/16 v1, 0x1c

    aput v3, v0, v1

    .line 209
    sget-object v0, Lorg/mozilla/intl/chardet/nsISO2022KRVerifier;->cclass:[I

    const/16 v1, 0x1d

    aput v3, v0, v1

    .line 211
    sget-object v0, Lorg/mozilla/intl/chardet/nsISO2022KRVerifier;->cclass:[I

    const/16 v1, 0x1e

    aput v3, v0, v1

    .line 213
    sget-object v0, Lorg/mozilla/intl/chardet/nsISO2022KRVerifier;->cclass:[I

    const/16 v1, 0x1f

    aput v3, v0, v1

    .line 221
    const/4 v0, 0x5

    new-array v0, v0, [I

    sput-object v0, Lorg/mozilla/intl/chardet/nsISO2022KRVerifier;->states:[I

    .line 225
    sget-object v0, Lorg/mozilla/intl/chardet/nsISO2022KRVerifier;->states:[I

    const v1, 0x11000130

    aput v1, v0, v4

    .line 227
    sget-object v0, Lorg/mozilla/intl/chardet/nsISO2022KRVerifier;->states:[I

    const v1, 0x22221111

    aput v1, v0, v6

    .line 229
    sget-object v0, Lorg/mozilla/intl/chardet/nsISO2022KRVerifier;->states:[I

    const v1, 0x11411122

    aput v1, v0, v5

    .line 231
    sget-object v0, Lorg/mozilla/intl/chardet/nsISO2022KRVerifier;->states:[I

    const v1, 0x11151111

    aput v1, v0, v7

    .line 233
    sget-object v0, Lorg/mozilla/intl/chardet/nsISO2022KRVerifier;->states:[I

    const/4 v1, 0x4

    const/16 v2, 0x2111

    aput v2, v0, v1

    .line 241
    const-string v0, "ISO-2022-KR"

    sput-object v0, Lorg/mozilla/intl/chardet/nsISO2022KRVerifier;->charset:Ljava/lang/String;

    .line 243
    const/4 v0, 0x6

    sput v0, Lorg/mozilla/intl/chardet/nsISO2022KRVerifier;->stFactor:I

    .line 247
    return-void
.end method


# virtual methods
.method public cclass()[I
    .locals 1

    .prologue
    .line 133
    sget-object v0, Lorg/mozilla/intl/chardet/nsISO2022KRVerifier;->cclass:[I

    return-object v0
.end method

.method public charset()Ljava/lang/String;
    .locals 1

    .prologue
    .line 139
    sget-object v0, Lorg/mozilla/intl/chardet/nsISO2022KRVerifier;->charset:Ljava/lang/String;

    return-object v0
.end method

.method public isUCS2()Z
    .locals 1

    .prologue
    .line 251
    const/4 v0, 0x0

    return v0
.end method

.method public stFactor()I
    .locals 1

    .prologue
    .line 137
    sget v0, Lorg/mozilla/intl/chardet/nsISO2022KRVerifier;->stFactor:I

    return v0
.end method

.method public states()[I
    .locals 1

    .prologue
    .line 135
    sget-object v0, Lorg/mozilla/intl/chardet/nsISO2022KRVerifier;->states:[I

    return-object v0
.end method
