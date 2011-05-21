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
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 42
    invoke-virtual {p0, v2}, Lcom/android/exchange/adapter/GalParser;->nextTag(I)I

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
    invoke-virtual {p0, v2}, Lcom/android/exchange/adapter/GalParser;->nextTag(I)I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    .line 46
    iget v0, p0, Lcom/android/exchange/adapter/GalParser;->tag:I

    const/16 v1, 0x3cd

    if-ne v0, v1, :cond_1

    .line 47
    iget-object v0, p0, Lcom/android/exchange/adapter/GalParser;->mGalResult:Lcom/android/exchange/provider/GalResult;

    invoke-virtual {p0, v0}, Lcom/android/exchange/adapter/GalParser;->parseResponse(Lcom/android/exchange/provider/GalResult;)V

    goto :goto_0

    .line 49
    :cond_1
    invoke-virtual {p0}, Lcom/android/exchange/adapter/GalParser;->skipTag()V

    goto :goto_0

    .line 52
    :cond_2
    iget-object v0, p0, Lcom/android/exchange/adapter/GalParser;->mGalResult:Lcom/android/exchange/provider/GalResult;

    iget v0, v0, Lcom/android/exchange/provider/GalResult;->total:I

    if-lez v0, :cond_3

    const/4 v0, 0x1

    :goto_1
    return v0

    :cond_3
    move v0, v2

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
    .line 56
    const/4 v3, 0x0

    .line 58
    .local v3, displayName:Ljava/lang/String;
    const/4 v4, 0x0

    .line 59
    .local v4, phone:Ljava/lang/String;
    const/4 v5, 0x0

    .line 60
    .local v5, office:Ljava/lang/String;
    const/4 v6, 0x0

    .line 61
    .local v6, title:Ljava/lang/String;
    const/4 v7, 0x0

    .line 62
    .local v7, company:Ljava/lang/String;
    const/4 v8, 0x0

    .line 64
    .local v8, alias:Ljava/lang/String;
    const/4 v9, 0x0

    .line 66
    .local v9, email:Ljava/lang/String;
    const/4 v10, 0x0

    .line 67
    .local v10, firstName:Ljava/lang/String;
    const/4 v11, 0x0

    .line 68
    .local v11, lastName:Ljava/lang/String;
    const/4 v12, 0x0

    .line 69
    .local v12, homePhone:Ljava/lang/String;
    const/4 v13, 0x0

    .line 71
    .local v13, mobilePhone:Ljava/lang/String;
    :goto_0
    const/16 v0, 0x3c7

    invoke-virtual {p0, v0}, Lcom/android/exchange/adapter/GalParser;->nextTag(I)I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_b

    .line 72
    iget v0, p0, Lcom/android/exchange/adapter/GalParser;->tag:I

    const/16 v1, 0x405

    if-ne v0, v1, :cond_0

    .line 73
    invoke-virtual {p0}, Lcom/android/exchange/adapter/GalParser;->getValue()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 76
    :cond_0
    iget v0, p0, Lcom/android/exchange/adapter/GalParser;->tag:I

    const/16 v1, 0x406

    if-ne v0, v1, :cond_1

    .line 77
    invoke-virtual {p0}, Lcom/android/exchange/adapter/GalParser;->getValue()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 79
    :cond_1
    iget v0, p0, Lcom/android/exchange/adapter/GalParser;->tag:I

    const/16 v1, 0x407

    if-ne v0, v1, :cond_2

    .line 80
    invoke-virtual {p0}, Lcom/android/exchange/adapter/GalParser;->getValue()Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    .line 82
    :cond_2
    iget v0, p0, Lcom/android/exchange/adapter/GalParser;->tag:I

    const/16 v1, 0x408

    if-ne v0, v1, :cond_3

    .line 83
    invoke-virtual {p0}, Lcom/android/exchange/adapter/GalParser;->getValue()Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    .line 85
    :cond_3
    iget v0, p0, Lcom/android/exchange/adapter/GalParser;->tag:I

    const/16 v1, 0x409

    if-ne v0, v1, :cond_4

    .line 86
    invoke-virtual {p0}, Lcom/android/exchange/adapter/GalParser;->getValue()Ljava/lang/String;

    move-result-object v7

    goto :goto_0

    .line 88
    :cond_4
    iget v0, p0, Lcom/android/exchange/adapter/GalParser;->tag:I

    const/16 v1, 0x40a

    if-ne v0, v1, :cond_5

    .line 89
    invoke-virtual {p0}, Lcom/android/exchange/adapter/GalParser;->getValue()Ljava/lang/String;

    move-result-object v8

    goto :goto_0

    .line 92
    :cond_5
    iget v0, p0, Lcom/android/exchange/adapter/GalParser;->tag:I

    const/16 v1, 0x40f

    if-ne v0, v1, :cond_6

    .line 93
    invoke-virtual {p0}, Lcom/android/exchange/adapter/GalParser;->getValue()Ljava/lang/String;

    move-result-object v9

    goto :goto_0

    .line 96
    :cond_6
    iget v0, p0, Lcom/android/exchange/adapter/GalParser;->tag:I

    const/16 v1, 0x40b

    if-ne v0, v1, :cond_7

    .line 97
    invoke-virtual {p0}, Lcom/android/exchange/adapter/GalParser;->getValue()Ljava/lang/String;

    move-result-object v10

    goto :goto_0

    .line 99
    :cond_7
    iget v0, p0, Lcom/android/exchange/adapter/GalParser;->tag:I

    const/16 v1, 0x40c

    if-ne v0, v1, :cond_8

    .line 100
    invoke-virtual {p0}, Lcom/android/exchange/adapter/GalParser;->getValue()Ljava/lang/String;

    move-result-object v11

    goto :goto_0

    .line 102
    :cond_8
    iget v0, p0, Lcom/android/exchange/adapter/GalParser;->tag:I

    const/16 v1, 0x40d

    if-ne v0, v1, :cond_9

    .line 103
    invoke-virtual {p0}, Lcom/android/exchange/adapter/GalParser;->getValue()Ljava/lang/String;

    move-result-object v12

    goto :goto_0

    .line 105
    :cond_9
    iget v0, p0, Lcom/android/exchange/adapter/GalParser;->tag:I

    const/16 v1, 0x40e

    if-ne v0, v1, :cond_a

    .line 106
    invoke-virtual {p0}, Lcom/android/exchange/adapter/GalParser;->getValue()Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_0

    .line 110
    :cond_a
    invoke-virtual {p0}, Lcom/android/exchange/adapter/GalParser;->skipTag()V

    goto/16 :goto_0

    .line 113
    :cond_b
    if-eqz v3, :cond_c

    if-eqz v9, :cond_c

    .line 115
    const-wide/16 v1, 0x0

    move-object v0, p1

    invoke-virtual/range {v0 .. v13}, Lcom/android/exchange/provider/GalResult;->addGalData(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 118
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
    .line 131
    :goto_0
    const/16 v0, 0x3cd

    invoke-virtual {p0, v0}, Lcom/android/exchange/adapter/GalParser;->nextTag(I)I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    .line 132
    iget v0, p0, Lcom/android/exchange/adapter/GalParser;->tag:I

    const/16 v1, 0x3c7

    if-ne v0, v1, :cond_0

    .line 133
    invoke-virtual {p0, p1}, Lcom/android/exchange/adapter/GalParser;->parseStore(Lcom/android/exchange/provider/GalResult;)V

    goto :goto_0

    .line 135
    :cond_0
    invoke-virtual {p0}, Lcom/android/exchange/adapter/GalParser;->skipTag()V

    goto :goto_0

    .line 138
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
    .line 121
    :goto_0
    const/16 v0, 0x3c7

    invoke-virtual {p0, v0}, Lcom/android/exchange/adapter/GalParser;->nextTag(I)I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    .line 122
    iget v0, p0, Lcom/android/exchange/adapter/GalParser;->tag:I

    const/16 v1, 0x3cf

    if-ne v0, v1, :cond_0

    .line 123
    invoke-virtual {p0, p1}, Lcom/android/exchange/adapter/GalParser;->parseProperties(Lcom/android/exchange/provider/GalResult;)V

    goto :goto_0

    .line 125
    :cond_0
    invoke-virtual {p0}, Lcom/android/exchange/adapter/GalParser;->skipTag()V

    goto :goto_0

    .line 128
    :cond_1
    return-void
.end method

.method public parseStore(Lcom/android/exchange/provider/GalResult;)V
    .locals 2
    .parameter "galResult"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 141
    :goto_0
    const/16 v0, 0x3c7

    invoke-virtual {p0, v0}, Lcom/android/exchange/adapter/GalParser;->nextTag(I)I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_3

    .line 142
    iget v0, p0, Lcom/android/exchange/adapter/GalParser;->tag:I

    const/16 v1, 0x3ce

    if-ne v0, v1, :cond_0

    .line 143
    invoke-virtual {p0, p1}, Lcom/android/exchange/adapter/GalParser;->parseResult(Lcom/android/exchange/provider/GalResult;)V

    goto :goto_0

    .line 144
    :cond_0
    iget v0, p0, Lcom/android/exchange/adapter/GalParser;->tag:I

    const/16 v1, 0x3cb

    if-ne v0, v1, :cond_1

    .line 146
    invoke-virtual {p0}, Lcom/android/exchange/adapter/GalParser;->getValue()Ljava/lang/String;

    goto :goto_0

    .line 150
    :cond_1
    iget v0, p0, Lcom/android/exchange/adapter/GalParser;->tag:I

    const/16 v1, 0x3d0

    if-ne v0, v1, :cond_2

    .line 151
    invoke-virtual {p0}, Lcom/android/exchange/adapter/GalParser;->getValueInt()I

    move-result v0

    iput v0, p1, Lcom/android/exchange/provider/GalResult;->total:I

    goto :goto_0

    .line 153
    :cond_2
    invoke-virtual {p0}, Lcom/android/exchange/adapter/GalParser;->skipTag()V

    goto :goto_0

    .line 156
    :cond_3
    return-void
.end method
