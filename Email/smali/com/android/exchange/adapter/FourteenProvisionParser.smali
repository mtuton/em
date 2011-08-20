.class public Lcom/android/exchange/adapter/FourteenProvisionParser;
.super Lcom/android/exchange/adapter/AbstractUtiltyParser;
.source "FourteenProvisionParser.java"


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 0
    .parameter "in"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 14
    invoke-direct {p0, p1}, Lcom/android/exchange/adapter/AbstractUtiltyParser;-><init>(Ljava/io/InputStream;)V

    .line 15
    return-void
.end method


# virtual methods
.method public checkForProvisioning()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/email/mail/DeviceAccessException;
        }
    .end annotation

    .prologue
    .line 19
    invoke-virtual {p0}, Lcom/android/exchange/adapter/FourteenProvisionParser;->parse()Z

    move-result v0

    return v0
.end method

.method public parse()Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/email/mail/DeviceAccessException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 25
    const/4 v0, 0x0

    .line 26
    .local v0, status:I
    invoke-virtual {p0, v3}, Lcom/android/exchange/adapter/FourteenProvisionParser;->nextTag(I)I

    move-result v1

    const/16 v2, 0x1d6

    if-eq v1, v2, :cond_0

    .line 27
    new-instance v1, Lcom/android/exchange/adapter/Parser$EasParserException;

    invoke-direct {v1, p0}, Lcom/android/exchange/adapter/Parser$EasParserException;-><init>(Lcom/android/exchange/adapter/Parser;)V

    throw v1

    .line 28
    :cond_0
    invoke-virtual {p0, v3}, Lcom/android/exchange/adapter/FourteenProvisionParser;->nextTag(I)I

    move-result v1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_2

    .line 29
    iget v1, p0, Lcom/android/exchange/adapter/Parser;->tag:I

    const/16 v2, 0x1cc

    if-ne v1, v2, :cond_0

    .line 30
    invoke-virtual {p0}, Lcom/android/exchange/adapter/FourteenProvisionParser;->getValueInt()I

    move-result v0

    .line 31
    invoke-virtual {p0, v0}, Lcom/android/exchange/adapter/FourteenProvisionParser;->isProvisioningStatus(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 32
    const/4 v1, 0x1

    .line 41
    :goto_0
    return v1

    .line 35
    :cond_1
    invoke-virtual {p0, v0}, Lcom/android/exchange/adapter/FourteenProvisionParser;->isDeviceAccessDenied(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 36
    const-string v1, "FourteenProvisionParser"

    const-string v2, "FourteenProvisionParser::parse() - Received status 129, to Block device "

    invoke-static {v1, v2}, Lcom/android/exchange/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    new-instance v1, Lcom/android/email/mail/DeviceAccessException;

    const v2, 0x40001

    const v3, 0x7f0802cb

    invoke-direct {v1, v2, v3}, Lcom/android/email/mail/DeviceAccessException;-><init>(II)V

    throw v1

    :cond_2
    move v1, v3

    .line 41
    goto :goto_0
.end method
