.class public final enum Lcom/android/exchange/Eas$EmailDataSize;
.super Ljava/lang/Enum;
.source "Eas.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/exchange/Eas;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "EmailDataSize"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/exchange/Eas$EmailDataSize;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/exchange/Eas$EmailDataSize;

.field public static final enum ALL:Lcom/android/exchange/Eas$EmailDataSize;

.field public static final enum FIFTY_KB:Lcom/android/exchange/Eas$EmailDataSize;

.field public static final enum FIVE_KB:Lcom/android/exchange/Eas$EmailDataSize;

.field public static final enum HALF_KB:Lcom/android/exchange/Eas$EmailDataSize;

.field public static final enum HEADERS_ONLY:Lcom/android/exchange/Eas$EmailDataSize;

.field public static final enum HUNDRED_KB:Lcom/android/exchange/Eas$EmailDataSize;

.field public static final enum ONE_KB:Lcom/android/exchange/Eas$EmailDataSize;

.field public static final enum TEN_KB:Lcom/android/exchange/Eas$EmailDataSize;

.field public static final enum TWENTY_KB:Lcom/android/exchange/Eas$EmailDataSize;

.field public static final enum TWO_KB:Lcom/android/exchange/Eas$EmailDataSize;


# instance fields
.field private final mText:Ljava/lang/String;

.field private final mValue:B


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 123
    new-instance v0, Lcom/android/exchange/Eas$EmailDataSize;

    const-string v1, "HEADERS_ONLY"

    const-string v2, "0"

    invoke-direct {v0, v1, v5, v5, v2}, Lcom/android/exchange/Eas$EmailDataSize;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/android/exchange/Eas$EmailDataSize;->HEADERS_ONLY:Lcom/android/exchange/Eas$EmailDataSize;

    new-instance v0, Lcom/android/exchange/Eas$EmailDataSize;

    const-string v1, "HALF_KB"

    const-string v2, "1"

    invoke-direct {v0, v1, v6, v6, v2}, Lcom/android/exchange/Eas$EmailDataSize;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/android/exchange/Eas$EmailDataSize;->HALF_KB:Lcom/android/exchange/Eas$EmailDataSize;

    new-instance v0, Lcom/android/exchange/Eas$EmailDataSize;

    const-string v1, "ONE_KB"

    const-string v2, "2"

    invoke-direct {v0, v1, v7, v7, v2}, Lcom/android/exchange/Eas$EmailDataSize;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/android/exchange/Eas$EmailDataSize;->ONE_KB:Lcom/android/exchange/Eas$EmailDataSize;

    new-instance v0, Lcom/android/exchange/Eas$EmailDataSize;

    const-string v1, "TWO_KB"

    const-string v2, "3"

    invoke-direct {v0, v1, v8, v8, v2}, Lcom/android/exchange/Eas$EmailDataSize;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/android/exchange/Eas$EmailDataSize;->TWO_KB:Lcom/android/exchange/Eas$EmailDataSize;

    new-instance v0, Lcom/android/exchange/Eas$EmailDataSize;

    const-string v1, "FIVE_KB"

    const-string v2, "4"

    invoke-direct {v0, v1, v9, v9, v2}, Lcom/android/exchange/Eas$EmailDataSize;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/android/exchange/Eas$EmailDataSize;->FIVE_KB:Lcom/android/exchange/Eas$EmailDataSize;

    new-instance v0, Lcom/android/exchange/Eas$EmailDataSize;

    const-string v1, "TEN_KB"

    const/4 v2, 0x5

    const/4 v3, 0x5

    const-string v4, "5"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/exchange/Eas$EmailDataSize;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/android/exchange/Eas$EmailDataSize;->TEN_KB:Lcom/android/exchange/Eas$EmailDataSize;

    .line 124
    new-instance v0, Lcom/android/exchange/Eas$EmailDataSize;

    const-string v1, "TWENTY_KB"

    const/4 v2, 0x6

    const/4 v3, 0x6

    const-string v4, "6"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/exchange/Eas$EmailDataSize;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/android/exchange/Eas$EmailDataSize;->TWENTY_KB:Lcom/android/exchange/Eas$EmailDataSize;

    new-instance v0, Lcom/android/exchange/Eas$EmailDataSize;

    const-string v1, "FIFTY_KB"

    const/4 v2, 0x7

    const/4 v3, 0x7

    const-string v4, "7"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/exchange/Eas$EmailDataSize;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/android/exchange/Eas$EmailDataSize;->FIFTY_KB:Lcom/android/exchange/Eas$EmailDataSize;

    new-instance v0, Lcom/android/exchange/Eas$EmailDataSize;

    const-string v1, "HUNDRED_KB"

    const/16 v2, 0x8

    const/16 v3, 0x8

    const-string v4, "8"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/exchange/Eas$EmailDataSize;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/android/exchange/Eas$EmailDataSize;->HUNDRED_KB:Lcom/android/exchange/Eas$EmailDataSize;

    new-instance v0, Lcom/android/exchange/Eas$EmailDataSize;

    const-string v1, "ALL"

    const/16 v2, 0x9

    const/16 v3, 0x9

    const-string v4, "9"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/exchange/Eas$EmailDataSize;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/android/exchange/Eas$EmailDataSize;->ALL:Lcom/android/exchange/Eas$EmailDataSize;

    .line 122
    const/16 v0, 0xa

    new-array v0, v0, [Lcom/android/exchange/Eas$EmailDataSize;

    sget-object v1, Lcom/android/exchange/Eas$EmailDataSize;->HEADERS_ONLY:Lcom/android/exchange/Eas$EmailDataSize;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/exchange/Eas$EmailDataSize;->HALF_KB:Lcom/android/exchange/Eas$EmailDataSize;

    aput-object v1, v0, v6

    sget-object v1, Lcom/android/exchange/Eas$EmailDataSize;->ONE_KB:Lcom/android/exchange/Eas$EmailDataSize;

    aput-object v1, v0, v7

    sget-object v1, Lcom/android/exchange/Eas$EmailDataSize;->TWO_KB:Lcom/android/exchange/Eas$EmailDataSize;

    aput-object v1, v0, v8

    sget-object v1, Lcom/android/exchange/Eas$EmailDataSize;->FIVE_KB:Lcom/android/exchange/Eas$EmailDataSize;

    aput-object v1, v0, v9

    const/4 v1, 0x5

    sget-object v2, Lcom/android/exchange/Eas$EmailDataSize;->TEN_KB:Lcom/android/exchange/Eas$EmailDataSize;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/android/exchange/Eas$EmailDataSize;->TWENTY_KB:Lcom/android/exchange/Eas$EmailDataSize;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/android/exchange/Eas$EmailDataSize;->FIFTY_KB:Lcom/android/exchange/Eas$EmailDataSize;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/android/exchange/Eas$EmailDataSize;->HUNDRED_KB:Lcom/android/exchange/Eas$EmailDataSize;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/android/exchange/Eas$EmailDataSize;->ALL:Lcom/android/exchange/Eas$EmailDataSize;

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/exchange/Eas$EmailDataSize;->$VALUES:[Lcom/android/exchange/Eas$EmailDataSize;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILjava/lang/String;)V
    .locals 1
    .parameter
    .parameter
    .parameter "value"
    .parameter "text"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 134
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 135
    int-to-byte v0, p3

    iput-byte v0, p0, Lcom/android/exchange/Eas$EmailDataSize;->mValue:B

    .line 136
    iput-object p4, p0, Lcom/android/exchange/Eas$EmailDataSize;->mText:Ljava/lang/String;

    .line 137
    return-void
.end method

.method public static parse(B)Lcom/android/exchange/Eas$EmailDataSize;
    .locals 1
    .parameter "value"

    .prologue
    .line 234
    packed-switch p0, :pswitch_data_0

    .line 269
    sget-object v0, Lcom/android/exchange/Eas$EmailDataSize;->ALL:Lcom/android/exchange/Eas$EmailDataSize;

    :goto_0
    return-object v0

    .line 237
    :pswitch_0
    sget-object v0, Lcom/android/exchange/Eas$EmailDataSize;->HEADERS_ONLY:Lcom/android/exchange/Eas$EmailDataSize;

    goto :goto_0

    .line 240
    :pswitch_1
    sget-object v0, Lcom/android/exchange/Eas$EmailDataSize;->HALF_KB:Lcom/android/exchange/Eas$EmailDataSize;

    goto :goto_0

    .line 243
    :pswitch_2
    sget-object v0, Lcom/android/exchange/Eas$EmailDataSize;->ONE_KB:Lcom/android/exchange/Eas$EmailDataSize;

    goto :goto_0

    .line 246
    :pswitch_3
    sget-object v0, Lcom/android/exchange/Eas$EmailDataSize;->TWO_KB:Lcom/android/exchange/Eas$EmailDataSize;

    goto :goto_0

    .line 249
    :pswitch_4
    sget-object v0, Lcom/android/exchange/Eas$EmailDataSize;->FIVE_KB:Lcom/android/exchange/Eas$EmailDataSize;

    goto :goto_0

    .line 252
    :pswitch_5
    sget-object v0, Lcom/android/exchange/Eas$EmailDataSize;->TEN_KB:Lcom/android/exchange/Eas$EmailDataSize;

    goto :goto_0

    .line 255
    :pswitch_6
    sget-object v0, Lcom/android/exchange/Eas$EmailDataSize;->TWENTY_KB:Lcom/android/exchange/Eas$EmailDataSize;

    goto :goto_0

    .line 258
    :pswitch_7
    sget-object v0, Lcom/android/exchange/Eas$EmailDataSize;->FIFTY_KB:Lcom/android/exchange/Eas$EmailDataSize;

    goto :goto_0

    .line 261
    :pswitch_8
    sget-object v0, Lcom/android/exchange/Eas$EmailDataSize;->HUNDRED_KB:Lcom/android/exchange/Eas$EmailDataSize;

    goto :goto_0

    .line 234
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method public static parseToByte(I)B
    .locals 1
    .parameter "valueInBytes"

    .prologue
    .line 288
    if-gtz p0, :cond_0

    .line 289
    const/4 v0, 0x0

    .line 307
    :goto_0
    return v0

    .line 290
    :cond_0
    const/16 v0, 0x200

    if-gt p0, v0, :cond_1

    .line 291
    const/4 v0, 0x1

    goto :goto_0

    .line 292
    :cond_1
    const/16 v0, 0x400

    if-gt p0, v0, :cond_2

    .line 293
    const/4 v0, 0x2

    goto :goto_0

    .line 294
    :cond_2
    const/16 v0, 0x800

    if-gt p0, v0, :cond_3

    .line 295
    const/4 v0, 0x3

    goto :goto_0

    .line 296
    :cond_3
    const/16 v0, 0x1400

    if-gt p0, v0, :cond_4

    .line 297
    const/4 v0, 0x4

    goto :goto_0

    .line 298
    :cond_4
    const/16 v0, 0x2800

    if-gt p0, v0, :cond_5

    .line 299
    const/4 v0, 0x5

    goto :goto_0

    .line 300
    :cond_5
    const/16 v0, 0x5000

    if-gt p0, v0, :cond_6

    .line 301
    const/4 v0, 0x6

    goto :goto_0

    .line 302
    :cond_6
    const v0, 0xc800

    if-gt p0, v0, :cond_7

    .line 303
    const/4 v0, 0x7

    goto :goto_0

    .line 304
    :cond_7
    const v0, 0x19000

    if-gt p0, v0, :cond_8

    .line 305
    const/16 v0, 0x8

    goto :goto_0

    .line 307
    :cond_8
    const/16 v0, 0x9

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/exchange/Eas$EmailDataSize;
    .locals 1
    .parameter

    .prologue
    .line 122
    const-class v0, Lcom/android/exchange/Eas$EmailDataSize;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/exchange/Eas$EmailDataSize;

    return-object p0
.end method

.method public static values()[Lcom/android/exchange/Eas$EmailDataSize;
    .locals 1

    .prologue
    .line 122
    sget-object v0, Lcom/android/exchange/Eas$EmailDataSize;->$VALUES:[Lcom/android/exchange/Eas$EmailDataSize;

    invoke-virtual {v0}, [Lcom/android/exchange/Eas$EmailDataSize;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/exchange/Eas$EmailDataSize;

    return-object v0
.end method


# virtual methods
.method public toEas12Text()Ljava/lang/String;
    .locals 1

    .prologue
    .line 191
    iget-byte v0, p0, Lcom/android/exchange/Eas$EmailDataSize;->mValue:B

    packed-switch v0, :pswitch_data_0

    .line 230
    const-string v0, "2147483647"

    :goto_0
    return-object v0

    .line 194
    :pswitch_0
    const-string v0, "0"

    goto :goto_0

    .line 197
    :pswitch_1
    const-string v0, "512"

    goto :goto_0

    .line 200
    :pswitch_2
    const-string v0, "1024"

    goto :goto_0

    .line 203
    :pswitch_3
    const-string v0, "2048"

    goto :goto_0

    .line 206
    :pswitch_4
    const-string v0, "5120"

    goto :goto_0

    .line 209
    :pswitch_5
    const-string v0, "10240"

    goto :goto_0

    .line 212
    :pswitch_6
    const-string v0, "20480"

    goto :goto_0

    .line 215
    :pswitch_7
    const-string v0, "51200"

    goto :goto_0

    .line 218
    :pswitch_8
    const-string v0, "102400"

    goto :goto_0

    .line 191
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method public toEas12Value()I
    .locals 1

    .prologue
    .line 149
    iget-byte v0, p0, Lcom/android/exchange/Eas$EmailDataSize;->mValue:B

    packed-switch v0, :pswitch_data_0

    .line 188
    const v0, 0x7fffffff

    :goto_0
    return v0

    .line 152
    :pswitch_0
    const/4 v0, 0x0

    goto :goto_0

    .line 155
    :pswitch_1
    const/16 v0, 0x200

    goto :goto_0

    .line 158
    :pswitch_2
    const/16 v0, 0x400

    goto :goto_0

    .line 161
    :pswitch_3
    const/16 v0, 0x800

    goto :goto_0

    .line 164
    :pswitch_4
    const/16 v0, 0x1400

    goto :goto_0

    .line 167
    :pswitch_5
    const/16 v0, 0x2800

    goto :goto_0

    .line 170
    :pswitch_6
    const/16 v0, 0x5000

    goto :goto_0

    .line 173
    :pswitch_7
    const v0, 0xc800

    goto :goto_0

    .line 176
    :pswitch_8
    const v0, 0x19000

    goto :goto_0

    .line 149
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method public toEas2_5Text()Ljava/lang/String;
    .locals 1

    .prologue
    .line 145
    iget-object v0, p0, Lcom/android/exchange/Eas$EmailDataSize;->mText:Ljava/lang/String;

    return-object v0
.end method
