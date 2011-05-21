.class public Lcom/android/exchange/adapter/SettingsParser;
.super Lcom/android/exchange/adapter/Parser;
.source "SettingsParser.java"


# static fields
.field private static final TAG:Ljava/lang/String;


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
    .locals 0
    .parameter "in"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 21
    invoke-direct {p0, p1}, Lcom/android/exchange/adapter/Parser;-><init>(Ljava/io/InputStream;)V

    .line 22
    return-void
.end method

.method private parseSettings()Z
    .locals 1

    .prologue
    .line 38
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public parse()Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/exchange/EasException;
        }
    .end annotation

    .prologue
    .line 26
    sget-object v1, Lcom/android/exchange/adapter/SettingsParser;->TAG:Ljava/lang/String;

    const-string v2, "parsing the document"

    invoke-static {v1, v2}, Lcom/android/exchange/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    const/4 v0, 0x0

    .line 28
    .local v0, res:Z
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/exchange/adapter/SettingsParser;->nextTag(I)I

    move-result v1

    const/16 v2, 0x485

    if-eq v1, v2, :cond_0

    .line 29
    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1}, Ljava/io/IOException;-><init>()V

    throw v1

    .line 31
    :cond_0
    invoke-direct {p0}, Lcom/android/exchange/adapter/SettingsParser;->parseSettings()Z

    move-result v0

    .line 32
    sget-object v1, Lcom/android/exchange/adapter/SettingsParser;->TAG:Ljava/lang/String;

    const-string v2, "document parsing done"

    invoke-static {v1, v2}, Lcom/android/exchange/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    return v0
.end method
