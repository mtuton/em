.class public Lcom/android/exchange/utility/ByteArrayToString;
.super Ljava/lang/Object;
.source "ByteArrayToString.java"


# static fields
.field private static final LOGTAG:Ljava/lang/String; = "ByteArrayToString"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static convert([B)Ljava/lang/String;
    .locals 7
    .parameter "in"

    .prologue
    .line 27
    if-eqz p0, :cond_0

    array-length v5, p0

    if-gtz v5, :cond_1

    .line 28
    :cond_0
    const/4 v5, 0x0

    .line 44
    :goto_0
    return-object v5

    .line 29
    :cond_1
    const/4 v0, 0x0

    .line 30
    .local v0, ch:B
    const/16 v5, 0x10

    new-array v1, v5, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "0"

    aput-object v6, v1, v5

    const/4 v5, 0x1

    const-string v6, "1"

    aput-object v6, v1, v5

    const/4 v5, 0x2

    const-string v6, "2"

    aput-object v6, v1, v5

    const/4 v5, 0x3

    const-string v6, "3"

    aput-object v6, v1, v5

    const/4 v5, 0x4

    const-string v6, "4"

    aput-object v6, v1, v5

    const/4 v5, 0x5

    const-string v6, "5"

    aput-object v6, v1, v5

    const/4 v5, 0x6

    const-string v6, "6"

    aput-object v6, v1, v5

    const/4 v5, 0x7

    const-string v6, "7"

    aput-object v6, v1, v5

    const/16 v5, 0x8

    const-string v6, "8"

    aput-object v6, v1, v5

    const/16 v5, 0x9

    const-string v6, "9"

    aput-object v6, v1, v5

    const/16 v5, 0xa

    const-string v6, "A"

    aput-object v6, v1, v5

    const/16 v5, 0xb

    const-string v6, "B"

    aput-object v6, v1, v5

    const/16 v5, 0xc

    const-string v6, "C"

    aput-object v6, v1, v5

    const/16 v5, 0xd

    const-string v6, "D"

    aput-object v6, v1, v5

    const/16 v5, 0xe

    const-string v6, "E"

    aput-object v6, v1, v5

    const/16 v5, 0xf

    const-string v6, "F"

    aput-object v6, v1, v5

    .line 31
    .local v1, hexdigs:[Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuffer;

    const/16 v5, 0x24

    invoke-direct {v3, v5}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 32
    .local v3, out:Ljava/lang/StringBuffer;
    const/4 v2, 0x0

    .line 33
    .local v2, i:I
    :goto_1
    array-length v5, p0

    if-ge v2, v5, :cond_2

    .line 34
    aget-byte v0, p0, v2

    .line 35
    shr-int/lit8 v5, v0, 0x4

    int-to-byte v0, v5

    .line 36
    and-int/lit8 v5, v0, 0xf

    int-to-byte v0, v5

    .line 37
    aget-object v5, v1, v0

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 38
    aget-byte v5, p0, v2

    and-int/lit8 v5, v5, 0xf

    int-to-byte v0, v5

    .line 39
    aget-object v5, v1, v0

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 40
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 42
    :cond_2
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v3}, Ljava/lang/String;-><init>(Ljava/lang/StringBuffer;)V

    .local v4, rv:Ljava/lang/String;
    move-object v5, v4

    .line 44
    goto/16 :goto_0
.end method

.method public static printByteArray(Lcom/android/exchange/AbstractSyncService;[B)V
    .locals 9
    .parameter "service"
    .parameter "in"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    const-string v8, "ByteArrayToString"

    .line 49
    const/4 v0, 0x0

    .line 50
    .local v0, ch:B
    if-eqz p1, :cond_0

    array-length v4, p1

    if-gtz v4, :cond_1

    .line 75
    :cond_0
    :goto_0
    return-void

    .line 52
    :cond_1
    const/16 v4, 0x10

    new-array v1, v4, [Ljava/lang/String;

    const-string v4, "0"

    aput-object v4, v1, v6

    const-string v4, "1"

    aput-object v4, v1, v7

    const/4 v4, 0x2

    const-string v5, "2"

    aput-object v5, v1, v4

    const/4 v4, 0x3

    const-string v5, "3"

    aput-object v5, v1, v4

    const/4 v4, 0x4

    const-string v5, "4"

    aput-object v5, v1, v4

    const/4 v4, 0x5

    const-string v5, "5"

    aput-object v5, v1, v4

    const/4 v4, 0x6

    const-string v5, "6"

    aput-object v5, v1, v4

    const/4 v4, 0x7

    const-string v5, "7"

    aput-object v5, v1, v4

    const/16 v4, 0x8

    const-string v5, "8"

    aput-object v5, v1, v4

    const/16 v4, 0x9

    const-string v5, "9"

    aput-object v5, v1, v4

    const/16 v4, 0xa

    const-string v5, "A"

    aput-object v5, v1, v4

    const/16 v4, 0xb

    const-string v5, "B"

    aput-object v5, v1, v4

    const/16 v4, 0xc

    const-string v5, "C"

    aput-object v5, v1, v4

    const/16 v4, 0xd

    const-string v5, "D"

    aput-object v5, v1, v4

    const/16 v4, 0xe

    const-string v5, "E"

    aput-object v5, v1, v4

    const/16 v4, 0xf

    const-string v5, "F"

    aput-object v5, v1, v4

    .line 53
    .local v1, hexdigs:[Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuffer;

    const/16 v4, 0x24

    invoke-direct {v3, v4}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 54
    .local v3, out:Ljava/lang/StringBuffer;
    const/4 v2, 0x0

    .line 55
    .local v2, i:I
    :cond_2
    :goto_1
    array-length v4, p1

    if-ge v2, v4, :cond_4

    .line 56
    aget-byte v0, p1, v2

    .line 57
    shr-int/lit8 v4, v0, 0x4

    int-to-byte v0, v4

    .line 58
    and-int/lit8 v4, v0, 0xf

    int-to-byte v0, v4

    .line 59
    aget-object v4, v1, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 60
    aget-byte v4, p1, v2

    and-int/lit8 v4, v4, 0xf

    int-to-byte v0, v4

    .line 61
    aget-object v4, v1, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 62
    add-int/lit8 v2, v2, 0x1

    .line 63
    rem-int/lit8 v4, v2, 0x10

    if-nez v4, :cond_2

    .line 64
    if-nez p0, :cond_3

    .line 65
    const-string v4, "ByteArrayToString"

    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v3}, Ljava/lang/String;-><init>(Ljava/lang/StringBuffer;)V

    invoke-static {v8, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    :goto_2
    const/16 v4, 0x20

    invoke-virtual {v3, v6, v4}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 67
    :cond_3
    new-array v4, v7, [Ljava/lang/String;

    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v3}, Ljava/lang/String;-><init>(Ljava/lang/StringBuffer;)V

    aput-object v5, v4, v6

    invoke-virtual {p0, v4}, Lcom/android/exchange/AbstractSyncService;->userLog([Ljava/lang/String;)V

    goto :goto_2

    .line 71
    :cond_4
    if-nez p0, :cond_5

    .line 72
    const-string v4, "ByteArrayToString"

    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v3}, Ljava/lang/String;-><init>(Ljava/lang/StringBuffer;)V

    invoke-static {v8, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 74
    :cond_5
    new-array v4, v7, [Ljava/lang/String;

    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v3}, Ljava/lang/String;-><init>(Ljava/lang/StringBuffer;)V

    aput-object v5, v4, v6

    invoke-virtual {p0, v4}, Lcom/android/exchange/AbstractSyncService;->userLog([Ljava/lang/String;)V

    goto/16 :goto_0
.end method
