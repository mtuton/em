.class public Lcom/android/exchange/adapter/GalParser;
.super Lcom/android/exchange/adapter/Parser;
.source "GalParser.java"


# instance fields
.field mGalResult:Lcom/android/exchange/provider/GalResult;

.field private mService:Lcom/android/exchange/EasSyncService;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Lcom/android/exchange/EasSyncService;)V
    .locals 1
    .parameter "in"
    .parameter "service"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/android/exchange/adapter/Parser;-><init>(Ljava/io/InputStream;)V

    .line 29
    new-instance v0, Lcom/android/exchange/provider/GalResult;

    invoke-direct {v0}, Lcom/android/exchange/provider/GalResult;-><init>()V

    iput-object v0, p0, Lcom/android/exchange/adapter/GalParser;->mGalResult:Lcom/android/exchange/provider/GalResult;

    .line 33
    iput-object p2, p0, Lcom/android/exchange/adapter/GalParser;->mService:Lcom/android/exchange/EasSyncService;

    .line 34
    return-void
.end method


# virtual methods
.method public getGalResult()Lcom/android/exchange/provider/GalResult;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/exchange/adapter/GalParser;->mGalResult:Lcom/android/exchange/provider/GalResult;

    return-object v0
.end method

.method public parse()Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 42
    invoke-virtual {p0, v3}, Lcom/android/exchange/adapter/GalParser;->nextTag(I)I

    move-result v0

    const/16 v1, 0x3c5

    if-eq v0, v1, :cond_0

    .line 43
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0

    .line 45
    :cond_0
    :goto_0
    invoke-virtual {p0, v3}, Lcom/android/exchange/adapter/GalParser;->nextTag(I)I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    .line 46
    iget v0, p0, Lcom/android/exchange/adapter/GalParser;->tag:I

    const/16 v1, 0x3cd

    if-ne v0, v1, :cond_1

    .line 49
    iget-object v0, p0, Lcom/android/exchange/adapter/GalParser;->mGalResult:Lcom/android/exchange/provider/GalResult;

    iget-object v1, p0, Lcom/android/exchange/adapter/GalParser;->mService:Lcom/android/exchange/EasSyncService;

    iget-object v1, v1, Lcom/android/exchange/EasSyncService;->mProtocolVersionDouble:Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    iput-wide v1, v0, Lcom/android/exchange/provider/GalResult;->protocolVerison:D

    .line 51
    iget-object v0, p0, Lcom/android/exchange/adapter/GalParser;->mGalResult:Lcom/android/exchange/provider/GalResult;

    invoke-virtual {p0, v0}, Lcom/android/exchange/adapter/GalParser;->parseResponse(Lcom/android/exchange/provider/GalResult;)V

    goto :goto_0

    .line 53
    :cond_1
    invoke-virtual {p0}, Lcom/android/exchange/adapter/GalParser;->skipTag()V

    goto :goto_0

    .line 56
    :cond_2
    iget-object v0, p0, Lcom/android/exchange/adapter/GalParser;->mGalResult:Lcom/android/exchange/provider/GalResult;

    iget v0, v0, Lcom/android/exchange/provider/GalResult;->total:I

    if-lez v0, :cond_3

    const/4 v0, 0x1

    :goto_1
    return v0

    :cond_3
    move v0, v3

    goto :goto_1
.end method

.method public parseProperties(Lcom/android/exchange/provider/GalResult;)V
    .locals 14
    .parameter "galResult"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 60
    const/4 v3, 0x0

    .line 62
    .local v3, displayName:Ljava/lang/String;
    const/4 v4, 0x0

    .line 63
    .local v4, phone:Ljava/lang/String;
    const/4 v5, 0x0

    .line 64
    .local v5, office:Ljava/lang/String;
    const/4 v6, 0x0

    .line 65
    .local v6, title:Ljava/lang/String;
    const/4 v7, 0x0

    .line 66
    .local v7, company:Ljava/lang/String;
    const/4 v8, 0x0

    .line 68
    .local v8, alias:Ljava/lang/String;
    const/4 v9, 0x0

    .line 70
    .local v9, email:Ljava/lang/String;
    const/4 v10, 0x0

    .line 71
    .local v10, firstName:Ljava/lang/String;
    const/4 v11, 0x0

    .line 72
    .local v11, lastName:Ljava/lang/String;
    const/4 v12, 0x0

    .line 73
    .local v12, homePhone:Ljava/lang/String;
    const/4 v13, 0x0

    .line 75
    .local v13, mobilePhone:Ljava/lang/String;
    :goto_0
    const/16 v0, 0x3c7

    invoke-virtual {p0, v0}, Lcom/android/exchange/adapter/GalParser;->nextTag(I)I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_b

    .line 76
    iget v0, p0, Lcom/android/exchange/adapter/GalParser;->tag:I

    const/16 v1, 0x405

    if-ne v0, v1, :cond_0

    .line 77
    invoke-virtual {p0}, Lcom/android/exchange/adapter/GalParser;->getValue()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 80
    :cond_0
    iget v0, p0, Lcom/android/exchange/adapter/GalParser;->tag:I

    const/16 v1, 0x406

    if-ne v0, v1, :cond_1

    .line 81
    invoke-virtual {p0}, Lcom/android/exchange/adapter/GalParser;->getValue()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 83
    :cond_1
    iget v0, p0, Lcom/android/exchange/adapter/GalParser;->tag:I

    const/16 v1, 0x407

    if-ne v0, v1, :cond_2

    .line 84
    invoke-virtual {p0}, Lcom/android/exchange/adapter/GalParser;->getValue()Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    .line 86
    :cond_2
    iget v0, p0, Lcom/android/exchange/adapter/GalParser;->tag:I

    const/16 v1, 0x408

    if-ne v0, v1, :cond_3

    .line 87
    invoke-virtual {p0}, Lcom/android/exchange/adapter/GalParser;->getValue()Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    .line 89
    :cond_3
    iget v0, p0, Lcom/android/exchange/adapter/GalParser;->tag:I

    const/16 v1, 0x409

    if-ne v0, v1, :cond_4

    .line 90
    invoke-virtual {p0}, Lcom/android/exchange/adapter/GalParser;->getValue()Ljava/lang/String;

    move-result-object v7

    goto :goto_0

    .line 92
    :cond_4
    iget v0, p0, Lcom/android/exchange/adapter/GalParser;->tag:I

    const/16 v1, 0x40a

    if-ne v0, v1, :cond_5

    .line 93
    invoke-virtual {p0}, Lcom/android/exchange/adapter/GalParser;->getValue()Ljava/lang/String;

    move-result-object v8

    goto :goto_0

    .line 96
    :cond_5
    iget v0, p0, Lcom/android/exchange/adapter/GalParser;->tag:I

    const/16 v1, 0x40f

    if-ne v0, v1, :cond_6

    .line 97
    invoke-virtual {p0}, Lcom/android/exchange/adapter/GalParser;->getValue()Ljava/lang/String;

    move-result-object v9

    goto :goto_0

    .line 100
    :cond_6
    iget v0, p0, Lcom/android/exchange/adapter/GalParser;->tag:I

    const/16 v1, 0x40b

    if-ne v0, v1, :cond_7

    .line 101
    invoke-virtual {p0}, Lcom/android/exchange/adapter/GalParser;->getValue()Ljava/lang/String;

    move-result-object v10

    goto :goto_0

    .line 103
    :cond_7
    iget v0, p0, Lcom/android/exchange/adapter/GalParser;->tag:I

    const/16 v1, 0x40c

    if-ne v0, v1, :cond_8

    .line 104
    invoke-virtual {p0}, Lcom/android/exchange/adapter/GalParser;->getValue()Ljava/lang/String;

    move-result-object v11

    goto :goto_0

    .line 106
    :cond_8
    iget v0, p0, Lcom/android/exchange/adapter/GalParser;->tag:I

    const/16 v1, 0x40d

    if-ne v0, v1, :cond_9

    .line 107
    invoke-virtual {p0}, Lcom/android/exchange/adapter/GalParser;->getValue()Ljava/lang/String;

    move-result-object v12

    goto :goto_0

    .line 109
    :cond_9
    iget v0, p0, Lcom/android/exchange/adapter/GalParser;->tag:I

    const/16 v1, 0x40e

    if-ne v0, v1, :cond_a

    .line 110
    invoke-virtual {p0}, Lcom/android/exchange/adapter/GalParser;->getValue()Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_0

    .line 114
    :cond_a
    invoke-virtual {p0}, Lcom/android/exchange/adapter/GalParser;->skipTag()V

    goto/16 :goto_0

    .line 117
    :cond_b
    if-eqz v3, :cond_c

    if-eqz v9, :cond_c

    .line 119
    const-wide/16 v1, 0x0

    move-object v0, p1

    invoke-virtual/range {v0 .. v13}, Lcom/android/exchange/provider/GalResult;->addGalData(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    :cond_c
    return-void
.end method

.method public parseResponse(Lcom/android/exchange/provider/GalResult;)V
    .locals 2
    .parameter "galResult"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 135
    :goto_0
    const/16 v0, 0x3cd

    invoke-virtual {p0, v0}, Lcom/android/exchange/adapter/GalParser;->nextTag(I)I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    .line 136
    iget v0, p0, Lcom/android/exchange/adapter/GalParser;->tag:I

    const/16 v1, 0x3c7

    if-ne v0, v1, :cond_0

    .line 137
    invoke-virtual {p0, p1}, Lcom/android/exchange/adapter/GalParser;->parseStore(Lcom/android/exchange/provider/GalResult;)V

    goto :goto_0

    .line 139
    :cond_0
    invoke-virtual {p0}, Lcom/android/exchange/adapter/GalParser;->skipTag()V

    goto :goto_0

    .line 142
    :cond_1
    return-void
.end method

.method public parseResult(Lcom/android/exchange/provider/GalResult;)V
    .locals 2
    .parameter "galResult"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 125
    :goto_0
    const/16 v0, 0x3c7

    invoke-virtual {p0, v0}, Lcom/android/exchange/adapter/GalParser;->nextTag(I)I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    .line 126
    iget v0, p0, Lcom/android/exchange/adapter/GalParser;->tag:I

    const/16 v1, 0x3cf

    if-ne v0, v1, :cond_0

    .line 127
    invoke-virtual {p0, p1}, Lcom/android/exchange/adapter/GalParser;->parseProperties(Lcom/android/exchange/provider/GalResult;)V

    goto :goto_0

    .line 129
    :cond_0
    invoke-virtual {p0}, Lcom/android/exchange/adapter/GalParser;->skipTag()V

    goto :goto_0

    .line 132
    :cond_1
    return-void
.end method

.method public parseStore(Lcom/android/exchange/provider/GalResult;)V
    .locals 4
    .parameter "galResult"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 145
    :cond_0
    :goto_0
    const/16 v2, 0x3c7

    invoke-virtual {p0, v2}, Lcom/android/exchange/adapter/GalParser;->nextTag(I)I

    move-result v2

    const/4 v3, 0x3

    if-eq v2, v3, :cond_4

    .line 146
    iget v2, p0, Lcom/android/exchange/adapter/GalParser;->tag:I

    const/16 v3, 0x3ce

    if-ne v2, v3, :cond_1

    .line 147
    invoke-virtual {p0, p1}, Lcom/android/exchange/adapter/GalParser;->parseResult(Lcom/android/exchange/provider/GalResult;)V

    goto :goto_0

    .line 148
    :cond_1
    iget v2, p0, Lcom/android/exchange/adapter/GalParser;->tag:I

    const/16 v3, 0x3cb

    if-ne v2, v3, :cond_2

    .line 150
    invoke-virtual {p0}, Lcom/android/exchange/adapter/GalParser;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 154
    .local v0, range:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 155
    const-string v2, "-"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 156
    .local v1, rangeNums:[Ljava/lang/String;
    array-length v2, v1

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    .line 157
    const/4 v2, 0x0

    aget-object v2, v1, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p1, Lcom/android/exchange/provider/GalResult;->startRange:I

    .line 158
    const/4 v2, 0x1

    aget-object v2, v1, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p1, Lcom/android/exchange/provider/GalResult;->endRange:I

    goto :goto_0

    .line 161
    .end local v0           #range:Ljava/lang/String;
    .end local v1           #rangeNums:[Ljava/lang/String;
    :cond_2
    iget v2, p0, Lcom/android/exchange/adapter/GalParser;->tag:I

    const/16 v3, 0x3d0

    if-ne v2, v3, :cond_3

    .line 162
    invoke-virtual {p0}, Lcom/android/exchange/adapter/GalParser;->getValueInt()I

    move-result v2

    iput v2, p1, Lcom/android/exchange/provider/GalResult;->total:I

    goto :goto_0

    .line 164
    :cond_3
    invoke-virtual {p0}, Lcom/android/exchange/adapter/GalParser;->skipTag()V

    goto :goto_0

    .line 167
    :cond_4
    return-void
.end method
