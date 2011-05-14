.class public final Lcom/android/exchange/PoliciesMultiplexer$PoliciesComparable;
.super Lcom/android/email/provider/EmailContent$Policies;
.source "PoliciesMultiplexer.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/exchange/PoliciesMultiplexer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PoliciesComparable"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/email/provider/EmailContent$Policies;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/android/exchange/PoliciesMultiplexer$PoliciesComparable;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 180
    invoke-direct {p0}, Lcom/android/email/provider/EmailContent$Policies;-><init>()V

    return-void
.end method

.method private compareBoolean(Lcom/android/exchange/PoliciesMultiplexer$PoliciesComparable;)I
    .locals 5
    .parameter "another"

    .prologue
    const/4 v3, 0x1

    .line 201
    invoke-virtual {p0}, Lcom/android/exchange/PoliciesMultiplexer$PoliciesComparable;->getBooleanValue()Z

    move-result v0

    .line 202
    .local v0, a:Z
    invoke-virtual {p1}, Lcom/android/exchange/PoliciesMultiplexer$PoliciesComparable;->getBooleanValue()Z

    move-result v1

    .line 203
    .local v1, b:Z
    const/4 v2, 0x0

    .line 204
    .local v2, retValue:I
    if-ne v0, v3, :cond_0

    if-nez v1, :cond_0

    .line 205
    const/4 v2, 0x1

    .line 206
    :cond_0
    if-nez v0, :cond_1

    if-ne v1, v3, :cond_1

    .line 207
    const/4 v2, -0x1

    .line 210
    :cond_1
    iget-object v3, p0, Lcom/android/exchange/PoliciesMultiplexer$PoliciesComparable;->mName:Ljava/lang/String;

    const-string v4, "AttachmentsEnabled"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/android/exchange/PoliciesMultiplexer$PoliciesComparable;->mName:Ljava/lang/String;

    const-string v4, "AllowStorageCard"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/android/exchange/PoliciesMultiplexer$PoliciesComparable;->mName:Ljava/lang/String;

    const-string v4, "AllowCamera"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/android/exchange/PoliciesMultiplexer$PoliciesComparable;->mName:Ljava/lang/String;

    const-string v4, "AllowWifi"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/android/exchange/PoliciesMultiplexer$PoliciesComparable;->mName:Ljava/lang/String;

    const-string v4, "AllowTextMessaging"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/android/exchange/PoliciesMultiplexer$PoliciesComparable;->mName:Ljava/lang/String;

    const-string v4, "AllowPOPIMAPEmail"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/android/exchange/PoliciesMultiplexer$PoliciesComparable;->mName:Ljava/lang/String;

    const-string v4, "AllowHTMLEmail"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/android/exchange/PoliciesMultiplexer$PoliciesComparable;->mName:Ljava/lang/String;

    const-string v4, "AllowBrowser"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/android/exchange/PoliciesMultiplexer$PoliciesComparable;->mName:Ljava/lang/String;

    const-string v4, "AllowInternetSharing"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/android/exchange/PoliciesMultiplexer$PoliciesComparable;->mName:Ljava/lang/String;

    const-string v4, "AllowSMIMEEncryptionAlgorithmNegotiation"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/android/exchange/PoliciesMultiplexer$PoliciesComparable;->mName:Ljava/lang/String;

    const-string v4, "AllowSMIMESoftCerts"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/android/exchange/PoliciesMultiplexer$PoliciesComparable;->mName:Ljava/lang/String;

    const-string v4, "AllowDesktopSync"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/android/exchange/PoliciesMultiplexer$PoliciesComparable;->mName:Ljava/lang/String;

    const-string v4, "AllowIrDA"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 226
    :cond_2
    neg-int v2, v2

    .line 229
    :cond_3
    return v2
.end method

.method private compareInteger(Lcom/android/exchange/PoliciesMultiplexer$PoliciesComparable;)I
    .locals 6
    .parameter "another"

    .prologue
    .line 233
    invoke-virtual {p0}, Lcom/android/exchange/PoliciesMultiplexer$PoliciesComparable;->getIntegerValue()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 234
    .local v0, a:I
    invoke-virtual {p1}, Lcom/android/exchange/PoliciesMultiplexer$PoliciesComparable;->getIntegerValue()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 235
    .local v1, b:I
    const/4 v3, 0x0

    .line 237
    .local v3, retValue:I
    const/4 v2, 0x0

    .line 243
    .local v2, invert:Z
    iget-object v4, p0, Lcom/android/exchange/PoliciesMultiplexer$PoliciesComparable;->mName:Ljava/lang/String;

    const-string v5, "MaxInactivityTime"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/android/exchange/PoliciesMultiplexer$PoliciesComparable;->mName:Ljava/lang/String;

    const-string v5, "MaxDevicePasswordFailedAttempts"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/android/exchange/PoliciesMultiplexer$PoliciesComparable;->mName:Ljava/lang/String;

    const-string v5, "DevicePasswordExpiration"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/android/exchange/PoliciesMultiplexer$PoliciesComparable;->mName:Ljava/lang/String;

    const-string v5, "MaxAttachmentSize"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/android/exchange/PoliciesMultiplexer$PoliciesComparable;->mName:Ljava/lang/String;

    const-string v5, "MaxCalendarAgeFilter"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/android/exchange/PoliciesMultiplexer$PoliciesComparable;->mName:Ljava/lang/String;

    const-string v5, "MaxEmailAgeFilter"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/android/exchange/PoliciesMultiplexer$PoliciesComparable;->mName:Ljava/lang/String;

    const-string v5, "MaxEmailBodyTruncationSize"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/android/exchange/PoliciesMultiplexer$PoliciesComparable;->mName:Ljava/lang/String;

    const-string v5, "MaxEmailHtmlBodyTruncationSize"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 254
    :cond_0
    if-nez v1, :cond_1

    .line 255
    const v1, 0x7fffffff

    .line 258
    :cond_1
    if-nez v0, :cond_2

    .line 259
    const v0, 0x7fffffff

    .line 262
    :cond_2
    const/4 v2, 0x1

    .line 271
    :cond_3
    :goto_0
    if-le v0, v1, :cond_7

    .line 272
    const/4 v3, 0x1

    .line 277
    :cond_4
    :goto_1
    if-eqz v2, :cond_5

    .line 278
    neg-int v3, v3

    .line 281
    :cond_5
    return v3

    .line 266
    :cond_6
    iget-object v4, p0, Lcom/android/exchange/PoliciesMultiplexer$PoliciesComparable;->mName:Ljava/lang/String;

    const-string v5, "AllowBluetoothMode"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 267
    const/4 v2, 0x1

    goto :goto_0

    .line 273
    :cond_7
    if-ge v0, v1, :cond_4

    .line 274
    const/4 v3, -0x1

    goto :goto_1
.end method


# virtual methods
.method public compareTo(Lcom/android/exchange/PoliciesMultiplexer$PoliciesComparable;)I
    .locals 3
    .parameter "another"

    .prologue
    .line 188
    const/4 v0, 0x0

    .line 190
    .local v0, retVal:I
    iget-object v1, p0, Lcom/android/exchange/PoliciesMultiplexer$PoliciesComparable;->mType:Ljava/lang/String;

    const-string v2, "Boolean"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 191
    invoke-direct {p0, p1}, Lcom/android/exchange/PoliciesMultiplexer$PoliciesComparable;->compareBoolean(Lcom/android/exchange/PoliciesMultiplexer$PoliciesComparable;)I

    move-result v0

    .line 197
    :cond_0
    :goto_0
    return v0

    .line 193
    :cond_1
    iget-object v1, p0, Lcom/android/exchange/PoliciesMultiplexer$PoliciesComparable;->mType:Ljava/lang/String;

    const-string v2, "Integer"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 194
    invoke-direct {p0, p1}, Lcom/android/exchange/PoliciesMultiplexer$PoliciesComparable;->compareInteger(Lcom/android/exchange/PoliciesMultiplexer$PoliciesComparable;)I

    move-result v0

    goto :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 180
    check-cast p1, Lcom/android/exchange/PoliciesMultiplexer$PoliciesComparable;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/exchange/PoliciesMultiplexer$PoliciesComparable;->compareTo(Lcom/android/exchange/PoliciesMultiplexer$PoliciesComparable;)I

    move-result v0

    return v0
.end method

.method public getBooleanValue()Z
    .locals 1

    .prologue
    .line 285
    iget-object v0, p0, Lcom/android/exchange/PoliciesMultiplexer$PoliciesComparable;->mValue:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public getIntegerValue()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 289
    iget-object v0, p0, Lcom/android/exchange/PoliciesMultiplexer$PoliciesComparable;->mValue:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
