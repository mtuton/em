.class public Lcom/android/exchange/adapter/ResolveRecipientsParser;
.super Lcom/android/exchange/adapter/Parser;
.source "ResolveRecipientsParser.java"


# instance fields
.field mRRResult:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/exchange/provider/RRResponse;",
            ">;"
        }
    .end annotation
.end field

.field private mService:Lcom/android/exchange/EasSyncService;

.field private mStatus:B


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
    .line 29
    invoke-direct {p0, p1}, Lcom/android/exchange/adapter/Parser;-><init>(Ljava/io/InputStream;)V

    .line 25
    const/4 v0, 0x0

    iput-byte v0, p0, Lcom/android/exchange/adapter/ResolveRecipientsParser;->mStatus:B

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/exchange/adapter/ResolveRecipientsParser;->mRRResult:Ljava/util/ArrayList;

    .line 30
    iput-object p2, p0, Lcom/android/exchange/adapter/ResolveRecipientsParser;->mService:Lcom/android/exchange/EasSyncService;

    .line 31
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
            "Lcom/android/exchange/provider/RRResponse;",
            ">;"
        }
    .end annotation

    .prologue
    .line 34
    iget-object v0, p0, Lcom/android/exchange/adapter/ResolveRecipientsParser;->mRRResult:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getStatus()B
    .locals 1

    .prologue
    .line 39
    iget-byte v0, p0, Lcom/android/exchange/adapter/ResolveRecipientsParser;->mStatus:B

    return v0
.end method

.method public parse()Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 44
    invoke-virtual {p0, v3}, Lcom/android/exchange/adapter/ResolveRecipientsParser;->nextTag(I)I

    move-result v1

    const/16 v2, 0x285

    if-eq v1, v2, :cond_0

    .line 45
    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1}, Ljava/io/IOException;-><init>()V

    throw v1

    .line 47
    :cond_0
    :goto_0
    invoke-virtual {p0, v3}, Lcom/android/exchange/adapter/ResolveRecipientsParser;->nextTag(I)I

    move-result v1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_3

    .line 48
    iget v1, p0, Lcom/android/exchange/adapter/ResolveRecipientsParser;->tag:I

    const/16 v2, 0x286

    if-ne v1, v2, :cond_1

    .line 49
    new-instance v0, Lcom/android/exchange/provider/RRResponse;

    invoke-direct {v0}, Lcom/android/exchange/provider/RRResponse;-><init>()V

    .line 50
    .local v0, respItem:Lcom/android/exchange/provider/RRResponse;
    invoke-virtual {p0, v0}, Lcom/android/exchange/adapter/ResolveRecipientsParser;->parseResponse(Lcom/android/exchange/provider/RRResponse;)V

    .line 51
    iget-object v1, p0, Lcom/android/exchange/adapter/ResolveRecipientsParser;->mRRResult:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 52
    .end local v0           #respItem:Lcom/android/exchange/provider/RRResponse;
    :cond_1
    iget v1, p0, Lcom/android/exchange/adapter/ResolveRecipientsParser;->tag:I

    const/16 v2, 0x287

    if-ne v1, v2, :cond_2

    .line 53
    invoke-virtual {p0}, Lcom/android/exchange/adapter/ResolveRecipientsParser;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Byte;->parseByte(Ljava/lang/String;)B

    move-result v1

    iput-byte v1, p0, Lcom/android/exchange/adapter/ResolveRecipientsParser;->mStatus:B

    goto :goto_0

    .line 55
    :cond_2
    invoke-virtual {p0}, Lcom/android/exchange/adapter/ResolveRecipientsParser;->skipTag()V

    goto :goto_0

    .line 58
    :cond_3
    iget-object v1, p0, Lcom/android/exchange/adapter/ResolveRecipientsParser;->mRRResult:Ljava/util/ArrayList;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/exchange/adapter/ResolveRecipientsParser;->mRRResult:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_4

    iget-byte v1, p0, Lcom/android/exchange/adapter/ResolveRecipientsParser;->mStatus:B

    if-ne v1, v4, :cond_4

    move v1, v4

    :goto_1
    return v1

    :cond_4
    move v1, v3

    goto :goto_1
.end method

.method public parseCertificates()Lcom/android/exchange/provider/RecipientCertificates;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 124
    const/4 v1, 0x0

    .line 125
    .local v1, _status:B
    const/4 v2, 0x0

    .line 126
    .local v2, _certificatesCount:I
    const/4 v3, 0x0

    .line 127
    .local v3, _recipientCount:I
    const/4 v4, 0x0

    .line 128
    .local v4, _certificate:Ljava/lang/String;
    const/4 v5, 0x0

    .line 130
    .local v5, _miniCertificate:Ljava/lang/String;
    :goto_0
    const/16 v0, 0x28c

    invoke-virtual {p0, v0}, Lcom/android/exchange/adapter/ResolveRecipientsParser;->nextTag(I)I

    move-result v0

    const/4 v6, 0x3

    if-eq v0, v6, :cond_5

    .line 131
    iget v0, p0, Lcom/android/exchange/adapter/ResolveRecipientsParser;->tag:I

    const/16 v6, 0x287

    if-ne v0, v6, :cond_0

    .line 132
    invoke-virtual {p0}, Lcom/android/exchange/adapter/ResolveRecipientsParser;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Byte;->parseByte(Ljava/lang/String;)B

    move-result v1

    goto :goto_0

    .line 134
    :cond_0
    iget v0, p0, Lcom/android/exchange/adapter/ResolveRecipientsParser;->tag:I

    const/16 v6, 0x295

    if-ne v0, v6, :cond_1

    .line 135
    invoke-virtual {p0}, Lcom/android/exchange/adapter/ResolveRecipientsParser;->getValueInt()I

    move-result v2

    goto :goto_0

    .line 137
    :cond_1
    iget v0, p0, Lcom/android/exchange/adapter/ResolveRecipientsParser;->tag:I

    const/16 v6, 0x292

    if-ne v0, v6, :cond_2

    .line 138
    invoke-virtual {p0}, Lcom/android/exchange/adapter/ResolveRecipientsParser;->getValueInt()I

    move-result v3

    goto :goto_0

    .line 140
    :cond_2
    iget v0, p0, Lcom/android/exchange/adapter/ResolveRecipientsParser;->tag:I

    const/16 v6, 0x28d

    if-ne v0, v6, :cond_3

    .line 141
    invoke-virtual {p0}, Lcom/android/exchange/adapter/ResolveRecipientsParser;->getValue()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 143
    :cond_3
    iget v0, p0, Lcom/android/exchange/adapter/ResolveRecipientsParser;->tag:I

    const/16 v6, 0x28e

    if-ne v0, v6, :cond_4

    .line 144
    invoke-virtual {p0}, Lcom/android/exchange/adapter/ResolveRecipientsParser;->getValue()Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    .line 147
    :cond_4
    invoke-virtual {p0}, Lcom/android/exchange/adapter/ResolveRecipientsParser;->skipTag()V

    goto :goto_0

    .line 151
    :cond_5
    new-instance v0, Lcom/android/exchange/provider/RecipientCertificates;

    invoke-direct/range {v0 .. v5}, Lcom/android/exchange/provider/RecipientCertificates;-><init>(BIILjava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public parseRecipient(Lcom/android/exchange/provider/RRResponse;)V
    .locals 10
    .parameter "rrResponse"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v9, 0x296

    const/4 v8, 0x3

    .line 82
    const/4 v1, 0x0

    .line 83
    .local v1, type:B
    const/4 v2, 0x0

    .line 84
    .local v2, displayName:Ljava/lang/String;
    const/4 v3, 0x0

    .line 85
    .local v3, email:Ljava/lang/String;
    const/4 v4, 0x0

    .line 86
    .local v4, certificates:Lcom/android/exchange/provider/RecipientCertificates;
    const/4 v5, 0x0

    .line 87
    .local v5, availabilityStatus:I
    const/4 v6, 0x0

    .line 89
    .local v6, mergedFreeBusy:Ljava/lang/String;
    :cond_0
    :goto_0
    const/16 v0, 0x289

    invoke-virtual {p0, v0}, Lcom/android/exchange/adapter/ResolveRecipientsParser;->nextTag(I)I

    move-result v0

    if-eq v0, v8, :cond_8

    .line 90
    iget v0, p0, Lcom/android/exchange/adapter/ResolveRecipientsParser;->tag:I

    const/16 v7, 0x288

    if-ne v0, v7, :cond_1

    .line 91
    invoke-virtual {p0}, Lcom/android/exchange/adapter/ResolveRecipientsParser;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Byte;->parseByte(Ljava/lang/String;)B

    move-result v1

    goto :goto_0

    .line 93
    :cond_1
    iget v0, p0, Lcom/android/exchange/adapter/ResolveRecipientsParser;->tag:I

    const/16 v7, 0x28a

    if-ne v0, v7, :cond_2

    .line 94
    invoke-virtual {p0}, Lcom/android/exchange/adapter/ResolveRecipientsParser;->getValue()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 96
    :cond_2
    iget v0, p0, Lcom/android/exchange/adapter/ResolveRecipientsParser;->tag:I

    const/16 v7, 0x28b

    if-ne v0, v7, :cond_3

    .line 97
    invoke-virtual {p0}, Lcom/android/exchange/adapter/ResolveRecipientsParser;->getValue()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 99
    :cond_3
    iget v0, p0, Lcom/android/exchange/adapter/ResolveRecipientsParser;->tag:I

    const/16 v7, 0x28c

    if-ne v0, v7, :cond_4

    .line 100
    invoke-virtual {p0}, Lcom/android/exchange/adapter/ResolveRecipientsParser;->parseCertificates()Lcom/android/exchange/provider/RecipientCertificates;

    move-result-object v4

    goto :goto_0

    .line 102
    :cond_4
    iget v0, p0, Lcom/android/exchange/adapter/ResolveRecipientsParser;->tag:I

    if-ne v0, v9, :cond_7

    .line 103
    :goto_1
    invoke-virtual {p0, v9}, Lcom/android/exchange/adapter/ResolveRecipientsParser;->nextTag(I)I

    move-result v0

    if-eq v0, v8, :cond_0

    .line 104
    iget v0, p0, Lcom/android/exchange/adapter/ResolveRecipientsParser;->tag:I

    const/16 v7, 0x287

    if-ne v0, v7, :cond_5

    .line 105
    invoke-virtual {p0}, Lcom/android/exchange/adapter/ResolveRecipientsParser;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    goto :goto_1

    .line 107
    :cond_5
    iget v0, p0, Lcom/android/exchange/adapter/ResolveRecipientsParser;->tag:I

    const/16 v7, 0x299

    if-ne v0, v7, :cond_6

    .line 108
    invoke-virtual {p0}, Lcom/android/exchange/adapter/ResolveRecipientsParser;->getValue()Ljava/lang/String;

    move-result-object v6

    goto :goto_1

    .line 111
    :cond_6
    invoke-virtual {p0}, Lcom/android/exchange/adapter/ResolveRecipientsParser;->skipTag()V

    goto :goto_1

    .line 116
    :cond_7
    invoke-virtual {p0}, Lcom/android/exchange/adapter/ResolveRecipientsParser;->skipTag()V

    goto :goto_0

    :cond_8
    move-object v0, p1

    .line 120
    invoke-virtual/range {v0 .. v6}, Lcom/android/exchange/provider/RRResponse;->addRecipient(BLjava/lang/String;Ljava/lang/String;Lcom/android/exchange/provider/RecipientCertificates;ILjava/lang/String;)V

    .line 121
    return-void
.end method

.method public parseResponse(Lcom/android/exchange/provider/RRResponse;)V
    .locals 2
    .parameter "rrResponse"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 62
    :goto_0
    const/16 v0, 0x286

    invoke-virtual {p0, v0}, Lcom/android/exchange/adapter/ResolveRecipientsParser;->nextTag(I)I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_4

    .line 63
    iget v0, p0, Lcom/android/exchange/adapter/ResolveRecipientsParser;->tag:I

    const/16 v1, 0x290

    if-ne v0, v1, :cond_0

    .line 64
    invoke-virtual {p0}, Lcom/android/exchange/adapter/ResolveRecipientsParser;->getValue()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/android/exchange/provider/RRResponse;->to:Ljava/lang/String;

    goto :goto_0

    .line 65
    :cond_0
    iget v0, p0, Lcom/android/exchange/adapter/ResolveRecipientsParser;->tag:I

    const/16 v1, 0x287

    if-ne v0, v1, :cond_1

    .line 66
    invoke-virtual {p0}, Lcom/android/exchange/adapter/ResolveRecipientsParser;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Byte;->parseByte(Ljava/lang/String;)B

    move-result v0

    iput-byte v0, p1, Lcom/android/exchange/provider/RRResponse;->status:B

    goto :goto_0

    .line 68
    :cond_1
    iget v0, p0, Lcom/android/exchange/adapter/ResolveRecipientsParser;->tag:I

    const/16 v1, 0x292

    if-ne v0, v1, :cond_2

    .line 69
    invoke-virtual {p0}, Lcom/android/exchange/adapter/ResolveRecipientsParser;->getValueInt()I

    move-result v0

    iput v0, p1, Lcom/android/exchange/provider/RRResponse;->recipientCount:I

    goto :goto_0

    .line 71
    :cond_2
    iget v0, p0, Lcom/android/exchange/adapter/ResolveRecipientsParser;->tag:I

    const/16 v1, 0x289

    if-ne v0, v1, :cond_3

    .line 72
    invoke-virtual {p0, p1}, Lcom/android/exchange/adapter/ResolveRecipientsParser;->parseRecipient(Lcom/android/exchange/provider/RRResponse;)V

    goto :goto_0

    .line 75
    :cond_3
    invoke-virtual {p0}, Lcom/android/exchange/adapter/ResolveRecipientsParser;->skipTag()V

    goto :goto_0

    .line 78
    :cond_4
    return-void
.end method
