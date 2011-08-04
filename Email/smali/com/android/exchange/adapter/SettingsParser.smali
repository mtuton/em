.class public Lcom/android/exchange/adapter/SettingsParser;
.super Lcom/android/exchange/adapter/Parser;
.source "SettingsParser.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mStatus:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const-class v0, Lcom/android/exchange/adapter/SettingsParser;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/exchange/adapter/SettingsParser;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1
    .parameter "in"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lcom/android/exchange/adapter/Parser;-><init>(Ljava/io/InputStream;)V

    .line 22
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/exchange/adapter/SettingsParser;->mStatus:I

    .line 26
    return-void
.end method

.method private parseSetTag()Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 97
    const/4 v0, 0x1

    .line 99
    .local v0, result:Z
    :cond_0
    :goto_0
    const/16 v1, 0x488

    invoke-virtual {p0, v1}, Lcom/android/exchange/adapter/SettingsParser;->nextTag(I)I

    move-result v1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_2

    .line 100
    iget v1, p0, Lcom/android/exchange/adapter/SettingsParser;->tag:I

    const/16 v2, 0x486

    if-ne v1, v2, :cond_1

    .line 101
    invoke-virtual {p0}, Lcom/android/exchange/adapter/SettingsParser;->getValueInt()I

    move-result v1

    iput v1, p0, Lcom/android/exchange/adapter/SettingsParser;->mStatus:I

    .line 102
    iget v1, p0, Lcom/android/exchange/adapter/SettingsParser;->mStatus:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    .line 103
    const/4 v0, 0x0

    goto :goto_0

    .line 106
    :cond_1
    invoke-virtual {p0}, Lcom/android/exchange/adapter/SettingsParser;->skipTag()V

    goto :goto_0

    .line 109
    :cond_2
    return v0
.end method

.method private parseSettings()Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 43
    const/4 v0, 0x1

    .line 45
    .local v0, result:Z
    :cond_0
    :goto_0
    const/16 v1, 0x485

    invoke-virtual {p0, v1}, Lcom/android/exchange/adapter/SettingsParser;->nextTag(I)I

    move-result v1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_4

    .line 46
    iget v1, p0, Lcom/android/exchange/adapter/SettingsParser;->tag:I

    const/16 v2, 0x486

    if-ne v1, v2, :cond_1

    .line 47
    invoke-virtual {p0}, Lcom/android/exchange/adapter/SettingsParser;->getValueInt()I

    move-result v1

    iput v1, p0, Lcom/android/exchange/adapter/SettingsParser;->mStatus:I

    .line 48
    iget v1, p0, Lcom/android/exchange/adapter/SettingsParser;->mStatus:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    .line 49
    const/4 v0, 0x0

    goto :goto_0

    .line 51
    :cond_1
    iget v1, p0, Lcom/android/exchange/adapter/SettingsParser;->tag:I

    const/16 v2, 0x496

    if-ne v1, v2, :cond_2

    .line 52
    invoke-direct {p0}, Lcom/android/exchange/adapter/SettingsParser;->parserDeviceInformation()Z

    move-result v0

    goto :goto_0

    .line 53
    :cond_2
    iget v1, p0, Lcom/android/exchange/adapter/SettingsParser;->tag:I

    const/16 v2, 0x494

    if-ne v1, v2, :cond_3

    .line 54
    invoke-direct {p0}, Lcom/android/exchange/adapter/SettingsParser;->parserDevicePassword()Z

    move-result v0

    goto :goto_0

    .line 56
    :cond_3
    invoke-virtual {p0}, Lcom/android/exchange/adapter/SettingsParser;->skipTag()V

    goto :goto_0

    .line 59
    :cond_4
    return v0
.end method

.method private parserDeviceInformation()Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 71
    const/4 v0, 0x1

    .line 73
    .local v0, result:Z
    :goto_0
    const/16 v1, 0x496

    invoke-virtual {p0, v1}, Lcom/android/exchange/adapter/SettingsParser;->nextTag(I)I

    move-result v1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_1

    .line 74
    iget v1, p0, Lcom/android/exchange/adapter/SettingsParser;->tag:I

    const/16 v2, 0x488

    if-ne v1, v2, :cond_0

    .line 75
    invoke-direct {p0}, Lcom/android/exchange/adapter/SettingsParser;->parseSetTag()Z

    move-result v0

    goto :goto_0

    .line 77
    :cond_0
    invoke-virtual {p0}, Lcom/android/exchange/adapter/SettingsParser;->skipTag()V

    goto :goto_0

    .line 80
    :cond_1
    return v0
.end method

.method private parserDevicePassword()Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 84
    const/4 v0, 0x1

    .line 86
    .local v0, result:Z
    :goto_0
    const/16 v1, 0x494

    invoke-virtual {p0, v1}, Lcom/android/exchange/adapter/SettingsParser;->nextTag(I)I

    move-result v1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_1

    .line 87
    iget v1, p0, Lcom/android/exchange/adapter/SettingsParser;->tag:I

    const/16 v2, 0x488

    if-ne v1, v2, :cond_0

    .line 88
    invoke-direct {p0}, Lcom/android/exchange/adapter/SettingsParser;->parseSetTag()Z

    move-result v0

    goto :goto_0

    .line 90
    :cond_0
    invoke-virtual {p0}, Lcom/android/exchange/adapter/SettingsParser;->skipTag()V

    goto :goto_0

    .line 93
    :cond_1
    return v0
.end method


# virtual methods
.method public getStatus()I
    .locals 1

    .prologue
    .line 67
    iget v0, p0, Lcom/android/exchange/adapter/SettingsParser;->mStatus:I

    return v0
.end method

.method public parse()Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/exchange/EasException;
        }
    .end annotation

    .prologue
    .line 30
    sget-object v1, Lcom/android/exchange/adapter/SettingsParser;->TAG:Ljava/lang/String;

    const-string v2, "parsing the document"

    invoke-static {v1, v2}, Lcom/android/exchange/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    const/4 v0, 0x0

    .line 32
    .local v0, res:Z
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/exchange/adapter/SettingsParser;->nextTag(I)I

    move-result v1

    const/16 v2, 0x485

    if-eq v1, v2, :cond_0

    .line 33
    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1}, Ljava/io/IOException;-><init>()V

    throw v1

    .line 35
    :cond_0
    invoke-direct {p0}, Lcom/android/exchange/adapter/SettingsParser;->parseSettings()Z

    move-result v0

    .line 36
    sget-object v1, Lcom/android/exchange/adapter/SettingsParser;->TAG:Ljava/lang/String;

    const-string v2, "document parsing done"

    invoke-static {v1, v2}, Lcom/android/exchange/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    return v0
.end method
