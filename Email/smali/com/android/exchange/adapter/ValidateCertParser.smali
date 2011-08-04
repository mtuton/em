.class public Lcom/android/exchange/adapter/ValidateCertParser;
.super Lcom/android/exchange/adapter/Parser;
.source "ValidateCertParser.java"


# instance fields
.field private mResult:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mStatus:I


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1
    .parameter "in"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 20
    invoke-direct {p0, p1}, Lcom/android/exchange/adapter/Parser;-><init>(Ljava/io/InputStream;)V

    .line 16
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/exchange/adapter/ValidateCertParser;->mStatus:I

    .line 17
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/exchange/adapter/ValidateCertParser;->mResult:Ljava/util/ArrayList;

    .line 21
    return-void
.end method


# virtual methods
.method public getResult()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 24
    iget-object v0, p0, Lcom/android/exchange/adapter/ValidateCertParser;->mResult:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getStatus()I
    .locals 1

    .prologue
    .line 28
    iget v0, p0, Lcom/android/exchange/adapter/ValidateCertParser;->mStatus:I

    return v0
.end method

.method public parse()Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 33
    invoke-virtual {p0, v2}, Lcom/android/exchange/adapter/ValidateCertParser;->nextTag(I)I

    move-result v0

    const/16 v1, 0x2c5

    if-eq v0, v1, :cond_0

    .line 34
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0

    .line 36
    :cond_0
    :goto_0
    invoke-virtual {p0, v2}, Lcom/android/exchange/adapter/ValidateCertParser;->nextTag(I)I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_3

    .line 37
    iget v0, p0, Lcom/android/exchange/adapter/ValidateCertParser;->tag:I

    const/16 v1, 0x2c7

    if-ne v0, v1, :cond_1

    .line 38
    invoke-virtual {p0}, Lcom/android/exchange/adapter/ValidateCertParser;->parseCertificate()V

    goto :goto_0

    .line 39
    :cond_1
    iget v0, p0, Lcom/android/exchange/adapter/ValidateCertParser;->tag:I

    const/16 v1, 0x2ca

    if-ne v0, v1, :cond_2

    .line 40
    invoke-virtual {p0}, Lcom/android/exchange/adapter/ValidateCertParser;->getValueInt()I

    move-result v0

    iput v0, p0, Lcom/android/exchange/adapter/ValidateCertParser;->mStatus:I

    goto :goto_0

    .line 42
    :cond_2
    invoke-virtual {p0}, Lcom/android/exchange/adapter/ValidateCertParser;->skipTag()V

    goto :goto_0

    .line 45
    :cond_3
    iget v0, p0, Lcom/android/exchange/adapter/ValidateCertParser;->mStatus:I

    if-ne v0, v3, :cond_4

    move v0, v3

    :goto_1
    return v0

    :cond_4
    move v0, v2

    goto :goto_1
.end method

.method public parseCertificate()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 49
    :goto_0
    const/16 v0, 0x2c7

    invoke-virtual {p0, v0}, Lcom/android/exchange/adapter/ValidateCertParser;->nextTag(I)I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    .line 50
    iget v0, p0, Lcom/android/exchange/adapter/ValidateCertParser;->tag:I

    const/16 v1, 0x2ca

    if-ne v0, v1, :cond_0

    .line 51
    iget-object v0, p0, Lcom/android/exchange/adapter/ValidateCertParser;->mResult:Ljava/util/ArrayList;

    new-instance v1, Ljava/lang/Integer;

    invoke-virtual {p0}, Lcom/android/exchange/adapter/ValidateCertParser;->getValueInt()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 53
    :cond_0
    invoke-virtual {p0}, Lcom/android/exchange/adapter/ValidateCertParser;->skipTag()V

    goto :goto_0

    .line 56
    :cond_1
    return-void
.end method
