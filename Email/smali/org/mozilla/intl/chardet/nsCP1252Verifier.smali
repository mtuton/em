.class public Lorg/mozilla/intl/chardet/nsCP1252Verifier;
.super Lorg/mozilla/intl/chardet/nsVerifier;
.source "nsCP1252Verifier.java"


# static fields
.field static cclass:[I

.field static charset:Ljava/lang/String;

.field static stFactor:I

.field static states:[I


# direct methods
.method public constructor <init>()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v5, 0x3

    const v4, 0x11111111

    const v3, 0x22222222

    .line 143
    invoke-direct {p0}, Lorg/mozilla/intl/chardet/nsVerifier;-><init>()V

    .line 147
    const/16 v0, 0x20

    new-array v0, v0, [I

    sput-object v0, Lorg/mozilla/intl/chardet/nsCP1252Verifier;->cclass:[I

    .line 151
    sget-object v0, Lorg/mozilla/intl/chardet/nsCP1252Verifier;->cclass:[I

    const v1, 0x22222221

    aput v1, v0, v6

    .line 153
    sget-object v0, Lorg/mozilla/intl/chardet/nsCP1252Verifier;->cclass:[I

    const v1, 0x222222

    aput v1, v0, v7

    .line 155
    sget-object v0, Lorg/mozilla/intl/chardet/nsCP1252Verifier;->cclass:[I

    const/4 v1, 0x2

    aput v3, v0, v1

    .line 157
    sget-object v0, Lorg/mozilla/intl/chardet/nsCP1252Verifier;->cclass:[I

    const v1, 0x22220222

    aput v1, v0, v5

    .line 159
    sget-object v0, Lorg/mozilla/intl/chardet/nsCP1252Verifier;->cclass:[I

    const/4 v1, 0x4

    aput v3, v0, v1

    .line 161
    sget-object v0, Lorg/mozilla/intl/chardet/nsCP1252Verifier;->cclass:[I

    const/4 v1, 0x5

    aput v3, v0, v1

    .line 163
    sget-object v0, Lorg/mozilla/intl/chardet/nsCP1252Verifier;->cclass:[I

    const/4 v1, 0x6

    aput v3, v0, v1

    .line 165
    sget-object v0, Lorg/mozilla/intl/chardet/nsCP1252Verifier;->cclass:[I

    const/4 v1, 0x7

    aput v3, v0, v1

    .line 167
    sget-object v0, Lorg/mozilla/intl/chardet/nsCP1252Verifier;->cclass:[I

    const/16 v1, 0x8

    aput v3, v0, v1

    .line 169
    sget-object v0, Lorg/mozilla/intl/chardet/nsCP1252Verifier;->cclass:[I

    const/16 v1, 0x9

    aput v3, v0, v1

    .line 171
    sget-object v0, Lorg/mozilla/intl/chardet/nsCP1252Verifier;->cclass:[I

    const/16 v1, 0xa

    aput v3, v0, v1

    .line 173
    sget-object v0, Lorg/mozilla/intl/chardet/nsCP1252Verifier;->cclass:[I

    const/16 v1, 0xb

    aput v3, v0, v1

    .line 175
    sget-object v0, Lorg/mozilla/intl/chardet/nsCP1252Verifier;->cclass:[I

    const/16 v1, 0xc

    aput v3, v0, v1

    .line 177
    sget-object v0, Lorg/mozilla/intl/chardet/nsCP1252Verifier;->cclass:[I

    const/16 v1, 0xd

    aput v3, v0, v1

    .line 179
    sget-object v0, Lorg/mozilla/intl/chardet/nsCP1252Verifier;->cclass:[I

    const/16 v1, 0xe

    aput v3, v0, v1

    .line 181
    sget-object v0, Lorg/mozilla/intl/chardet/nsCP1252Verifier;->cclass:[I

    const/16 v1, 0xf

    aput v3, v0, v1

    .line 183
    sget-object v0, Lorg/mozilla/intl/chardet/nsCP1252Verifier;->cclass:[I

    const/16 v1, 0x10

    const v2, 0x22222202

    aput v2, v0, v1

    .line 185
    sget-object v0, Lorg/mozilla/intl/chardet/nsCP1252Verifier;->cclass:[I

    const/16 v1, 0x11

    const v2, 0x1012122

    aput v2, v0, v1

    .line 187
    sget-object v0, Lorg/mozilla/intl/chardet/nsCP1252Verifier;->cclass:[I

    const/16 v1, 0x12

    const v2, 0x22222220

    aput v2, v0, v1

    .line 189
    sget-object v0, Lorg/mozilla/intl/chardet/nsCP1252Verifier;->cclass:[I

    const/16 v1, 0x13

    const v2, 0x11012122

    aput v2, v0, v1

    .line 191
    sget-object v0, Lorg/mozilla/intl/chardet/nsCP1252Verifier;->cclass:[I

    const/16 v1, 0x14

    aput v3, v0, v1

    .line 193
    sget-object v0, Lorg/mozilla/intl/chardet/nsCP1252Verifier;->cclass:[I

    const/16 v1, 0x15

    aput v3, v0, v1

    .line 195
    sget-object v0, Lorg/mozilla/intl/chardet/nsCP1252Verifier;->cclass:[I

    const/16 v1, 0x16

    aput v3, v0, v1

    .line 197
    sget-object v0, Lorg/mozilla/intl/chardet/nsCP1252Verifier;->cclass:[I

    const/16 v1, 0x17

    aput v3, v0, v1

    .line 199
    sget-object v0, Lorg/mozilla/intl/chardet/nsCP1252Verifier;->cclass:[I

    const/16 v1, 0x18

    aput v4, v0, v1

    .line 201
    sget-object v0, Lorg/mozilla/intl/chardet/nsCP1252Verifier;->cclass:[I

    const/16 v1, 0x19

    aput v4, v0, v1

    .line 203
    sget-object v0, Lorg/mozilla/intl/chardet/nsCP1252Verifier;->cclass:[I

    const/16 v1, 0x1a

    const v2, 0x21111111

    aput v2, v0, v1

    .line 205
    sget-object v0, Lorg/mozilla/intl/chardet/nsCP1252Verifier;->cclass:[I

    const/16 v1, 0x1b

    aput v4, v0, v1

    .line 207
    sget-object v0, Lorg/mozilla/intl/chardet/nsCP1252Verifier;->cclass:[I

    const/16 v1, 0x1c

    aput v4, v0, v1

    .line 209
    sget-object v0, Lorg/mozilla/intl/chardet/nsCP1252Verifier;->cclass:[I

    const/16 v1, 0x1d

    aput v4, v0, v1

    .line 211
    sget-object v0, Lorg/mozilla/intl/chardet/nsCP1252Verifier;->cclass:[I

    const/16 v1, 0x1e

    const v2, 0x21111111

    aput v2, v0, v1

    .line 213
    sget-object v0, Lorg/mozilla/intl/chardet/nsCP1252Verifier;->cclass:[I

    const/16 v1, 0x1f

    aput v4, v0, v1

    .line 221
    new-array v0, v5, [I

    sput-object v0, Lorg/mozilla/intl/chardet/nsCP1252Verifier;->states:[I

    .line 225
    sget-object v0, Lorg/mozilla/intl/chardet/nsCP1252Verifier;->states:[I

    const v1, 0x22111031

    aput v1, v0, v6

    .line 227
    sget-object v0, Lorg/mozilla/intl/chardet/nsCP1252Verifier;->states:[I

    const v1, 0x14510412

    aput v1, v0, v7

    .line 229
    sget-object v0, Lorg/mozilla/intl/chardet/nsCP1252Verifier;->states:[I

    const/4 v1, 0x2

    const/16 v2, 0x41

    aput v2, v0, v1

    .line 237
    const-string v0, "windows-1252"

    sput-object v0, Lorg/mozilla/intl/chardet/nsCP1252Verifier;->charset:Ljava/lang/String;

    .line 239
    sput v5, Lorg/mozilla/intl/chardet/nsCP1252Verifier;->stFactor:I

    .line 243
    return-void
.end method


# virtual methods
.method public cclass()[I
    .locals 1

    .prologue
    .line 133
    sget-object v0, Lorg/mozilla/intl/chardet/nsCP1252Verifier;->cclass:[I

    return-object v0
.end method

.method public charset()Ljava/lang/String;
    .locals 1

    .prologue
    .line 139
    sget-object v0, Lorg/mozilla/intl/chardet/nsCP1252Verifier;->charset:Ljava/lang/String;

    return-object v0
.end method

.method public isUCS2()Z
    .locals 1

    .prologue
    .line 247
    const/4 v0, 0x0

    return v0
.end method

.method public stFactor()I
    .locals 1

    .prologue
    .line 137
    sget v0, Lorg/mozilla/intl/chardet/nsCP1252Verifier;->stFactor:I

    return v0
.end method

.method public states()[I
    .locals 1

    .prologue
    .line 135
    sget-object v0, Lorg/mozilla/intl/chardet/nsCP1252Verifier;->states:[I

    return-object v0
.end method
