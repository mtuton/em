.class public Lcom/android/exchange/adapter/Serializer;
.super Ljava/lang/Object;
.source "Serializer.java"


# instance fields
.field buf:Ljava/io/ByteArrayOutputStream;

.field depth:I

.field private logging:Z

.field nameStack:[Ljava/lang/String;

.field out:Ljava/io/ByteArrayOutputStream;

.field pendingTag:I

.field private tagPage:I

.field tagTable:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 60
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/exchange/adapter/Serializer;-><init>(Z)V

    .line 61
    return-void
.end method

.method public constructor <init>(Z)V
    .locals 2
    .parameter "startDocument"

    .prologue
    const/4 v1, 0x0

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-boolean v1, p0, Lcom/android/exchange/adapter/Serializer;->logging:Z

    .line 46
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v0, p0, Lcom/android/exchange/adapter/Serializer;->out:Ljava/io/ByteArrayOutputStream;

    .line 47
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v0, p0, Lcom/android/exchange/adapter/Serializer;->buf:Ljava/io/ByteArrayOutputStream;

    .line 50
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/exchange/adapter/Serializer;->pendingTag:I

    .line 53
    const/16 v0, 0x14

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/exchange/adapter/Serializer;->nameStack:[Ljava/lang/String;

    .line 55
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/android/exchange/adapter/Serializer;->tagTable:Ljava/util/Hashtable;

    .line 70
    if-eqz p1, :cond_0

    .line 72
    :try_start_0
    invoke-virtual {p0}, Lcom/android/exchange/adapter/Serializer;->startDocument()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 80
    :goto_0
    return-void

    .line 78
    :cond_0
    iget-object v0, p0, Lcom/android/exchange/adapter/Serializer;->out:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_0

    .line 74
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public constructor <init>(ZZ)V
    .locals 1
    .parameter "startDocument"
    .parameter "_logging"

    .prologue
    .line 64
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/exchange/adapter/Serializer;-><init>(Z)V

    .line 65
    iput-boolean p2, p0, Lcom/android/exchange/adapter/Serializer;->logging:Z

    .line 66
    return-void
.end method


# virtual methods
.method public checkPendingTag(Z)V
    .locals 6
    .parameter "degenerated"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, -0x1

    .line 109
    iget v3, p0, Lcom/android/exchange/adapter/Serializer;->pendingTag:I

    if-ne v3, v5, :cond_0

    .line 127
    :goto_0
    return-void

    .line 112
    :cond_0
    iget v3, p0, Lcom/android/exchange/adapter/Serializer;->pendingTag:I

    shr-int/lit8 v1, v3, 0x6

    .line 113
    .local v1, page:I
    iget v3, p0, Lcom/android/exchange/adapter/Serializer;->pendingTag:I

    and-int/lit8 v2, v3, 0x3f

    .line 114
    .local v2, tag:I
    iget v3, p0, Lcom/android/exchange/adapter/Serializer;->tagPage:I

    if-eq v1, v3, :cond_1

    .line 115
    iput v1, p0, Lcom/android/exchange/adapter/Serializer;->tagPage:I

    .line 116
    iget-object v3, p0, Lcom/android/exchange/adapter/Serializer;->buf:Ljava/io/ByteArrayOutputStream;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 117
    iget-object v3, p0, Lcom/android/exchange/adapter/Serializer;->buf:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v3, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 120
    :cond_1
    iget-object v3, p0, Lcom/android/exchange/adapter/Serializer;->buf:Ljava/io/ByteArrayOutputStream;

    if-eqz p1, :cond_3

    move v4, v2

    :goto_1
    invoke-virtual {v3, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 121
    iget-boolean v3, p0, Lcom/android/exchange/adapter/Serializer;->logging:Z

    if-eqz v3, :cond_2

    .line 122
    sget-object v3, Lcom/android/exchange/adapter/Tags;->pages:[[Ljava/lang/String;

    aget-object v3, v3, v1

    const/4 v4, 0x5

    sub-int v4, v2, v4

    aget-object v0, v3, v4

    .line 123
    .local v0, name:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/exchange/adapter/Serializer;->nameStack:[Ljava/lang/String;

    iget v4, p0, Lcom/android/exchange/adapter/Serializer;->depth:I

    aput-object v0, v3, v4

    .line 124
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "<"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x3e

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/exchange/adapter/Serializer;->log(Ljava/lang/String;)V

    .line 126
    .end local v0           #name:Ljava/lang/String;
    :cond_2
    iput v5, p0, Lcom/android/exchange/adapter/Serializer;->pendingTag:I

    goto :goto_0

    .line 120
    :cond_3
    or-int/lit8 v4, v2, 0x40

    goto :goto_1
.end method

.method public data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;
    .locals 3
    .parameter "tag"
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 156
    if-nez p2, :cond_0

    .line 157
    const-string v0, "Serializer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Writing null data for tag: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    .line 160
    invoke-virtual {p0, p2}, Lcom/android/exchange/adapter/Serializer;->text(Ljava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 161
    invoke-virtual {p0}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    .line 162
    return-object p0
.end method

.method public dataOpaque(I[B)Lcom/android/exchange/adapter/Serializer;
    .locals 3
    .parameter "tag"
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 166
    if-nez p2, :cond_0

    .line 167
    const-string v0, "Serializer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Writing null data for tag: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    .line 170
    invoke-virtual {p0, p2}, Lcom/android/exchange/adapter/Serializer;->textOpaque([B)Lcom/android/exchange/adapter/Serializer;

    .line 171
    invoke-virtual {p0}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    .line 172
    return-object p0
.end method

.method public done()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 94
    iget v0, p0, Lcom/android/exchange/adapter/Serializer;->depth:I

    if-eqz v0, :cond_0

    .line 95
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Done received with unclosed tags"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 97
    :cond_0
    iget-object v0, p0, Lcom/android/exchange/adapter/Serializer;->out:Ljava/io/ByteArrayOutputStream;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/exchange/adapter/Serializer;->writeInteger(Ljava/io/OutputStream;I)V

    .line 98
    iget-object v0, p0, Lcom/android/exchange/adapter/Serializer;->out:Ljava/io/ByteArrayOutputStream;

    iget-object v1, p0, Lcom/android/exchange/adapter/Serializer;->buf:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 99
    iget-object v0, p0, Lcom/android/exchange/adapter/Serializer;->out:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->flush()V

    .line 100
    return-void
.end method

.method public end()Lcom/android/exchange/adapter/Serializer;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 137
    iget v0, p0, Lcom/android/exchange/adapter/Serializer;->pendingTag:I

    if-ltz v0, :cond_1

    .line 138
    invoke-virtual {p0, v3}, Lcom/android/exchange/adapter/Serializer;->checkPendingTag(Z)V

    .line 145
    :cond_0
    :goto_0
    iget v0, p0, Lcom/android/exchange/adapter/Serializer;->depth:I

    sub-int/2addr v0, v3

    iput v0, p0, Lcom/android/exchange/adapter/Serializer;->depth:I

    .line 146
    return-object p0

    .line 140
    :cond_1
    iget-object v0, p0, Lcom/android/exchange/adapter/Serializer;->buf:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 141
    iget-boolean v0, p0, Lcom/android/exchange/adapter/Serializer;->logging:Z

    if-eqz v0, :cond_0

    .line 142
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "</"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/exchange/adapter/Serializer;->nameStack:[Ljava/lang/String;

    iget v2, p0, Lcom/android/exchange/adapter/Serializer;->depth:I

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x3e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/exchange/adapter/Serializer;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method log(Ljava/lang/String;)V
    .locals 3
    .parameter "str"

    .prologue
    const-string v2, "Serializer"

    .line 83
    const/16 v1, 0xa

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 84
    .local v0, cr:I
    if-lez v0, :cond_0

    .line 85
    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 87
    :cond_0
    const-string v1, "Serializer"

    invoke-static {v2, p1}, Lcom/android/email/Email;->logv(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    sget-boolean v1, Lcom/android/exchange/Eas;->FILE_LOG:Z

    if-eqz v1, :cond_1

    .line 89
    const-string v1, "Serializer"

    invoke-static {v2, p1}, Lcom/android/exchange/utility/FileLogger;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    :cond_1
    return-void
.end method

.method public start(I)Lcom/android/exchange/adapter/Serializer;
    .locals 1
    .parameter "tag"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 130
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/exchange/adapter/Serializer;->checkPendingTag(Z)V

    .line 131
    iput p1, p0, Lcom/android/exchange/adapter/Serializer;->pendingTag:I

    .line 132
    iget v0, p0, Lcom/android/exchange/adapter/Serializer;->depth:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/exchange/adapter/Serializer;->depth:I

    .line 133
    return-object p0
.end method

.method public startDocument()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 103
    iget-object v0, p0, Lcom/android/exchange/adapter/Serializer;->out:Ljava/io/ByteArrayOutputStream;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 104
    iget-object v0, p0, Lcom/android/exchange/adapter/Serializer;->out:Ljava/io/ByteArrayOutputStream;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 105
    iget-object v0, p0, Lcom/android/exchange/adapter/Serializer;->out:Ljava/io/ByteArrayOutputStream;

    const/16 v1, 0x6a

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 106
    return-void
.end method

.method public tag(I)Lcom/android/exchange/adapter/Serializer;
    .locals 0
    .parameter "t"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 150
    invoke-virtual {p0, p1}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    .line 151
    invoke-virtual {p0}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    .line 152
    return-object p0
.end method

.method public text(Ljava/lang/String;)Lcom/android/exchange/adapter/Serializer;
    .locals 3
    .parameter "text"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 186
    if-nez p1, :cond_0

    .line 187
    const-string v0, "Serializer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Writing null text for pending tag: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/exchange/adapter/Serializer;->pendingTag:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/exchange/adapter/Serializer;->checkPendingTag(Z)V

    .line 190
    iget-object v0, p0, Lcom/android/exchange/adapter/Serializer;->buf:Ljava/io/ByteArrayOutputStream;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 191
    iget-object v0, p0, Lcom/android/exchange/adapter/Serializer;->buf:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {p0, v0, p1}, Lcom/android/exchange/adapter/Serializer;->writeLiteralString(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 192
    iget-boolean v0, p0, Lcom/android/exchange/adapter/Serializer;->logging:Z

    if-eqz v0, :cond_1

    .line 193
    invoke-virtual {p0, p1}, Lcom/android/exchange/adapter/Serializer;->log(Ljava/lang/String;)V

    .line 195
    :cond_1
    return-object p0
.end method

.method public textOpaque([B)Lcom/android/exchange/adapter/Serializer;
    .locals 4
    .parameter "text"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 199
    if-nez p1, :cond_0

    .line 200
    const-string v1, "Serializer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Writing null text for pending tag: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/exchange/adapter/Serializer;->pendingTag:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/exchange/adapter/Serializer;->checkPendingTag(Z)V

    .line 203
    iget-object v1, p0, Lcom/android/exchange/adapter/Serializer;->buf:Ljava/io/ByteArrayOutputStream;

    const/16 v2, 0xc3

    invoke-virtual {v1, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 205
    iget-object v1, p0, Lcom/android/exchange/adapter/Serializer;->buf:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {p0, v1, p1}, Lcom/android/exchange/adapter/Serializer;->writeLiteralOpaque(Ljava/io/OutputStream;[B)V

    .line 210
    iget-boolean v1, p0, Lcom/android/exchange/adapter/Serializer;->logging:Z

    if-eqz v1, :cond_1

    .line 211
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>([B)V

    .line 212
    .local v0, text1:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/android/exchange/adapter/Serializer;->log(Ljava/lang/String;)V

    .line 214
    .end local v0           #text1:Ljava/lang/String;
    :cond_1
    return-object p0
.end method

.method public toByteArray()[B
    .locals 1

    .prologue
    .line 182
    iget-object v0, p0, Lcom/android/exchange/adapter/Serializer;->out:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 178
    iget-object v0, p0, Lcom/android/exchange/adapter/Serializer;->out:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method writeInteger(Ljava/io/OutputStream;I)V
    .locals 4
    .parameter "out"
    .parameter "i"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 226
    const/4 v3, 0x5

    new-array v0, v3, [B

    .line 227
    .local v0, buf:[B
    const/4 v1, 0x0

    .line 230
    .local v1, idx:I
    :goto_0
    add-int/lit8 v2, v1, 0x1

    .end local v1           #idx:I
    .local v2, idx:I
    and-int/lit8 v3, p2, 0x7f

    int-to-byte v3, v3

    aput-byte v3, v0, v1

    .line 231
    shr-int/lit8 p2, p2, 0x7

    .line 232
    if-nez p2, :cond_2

    move v1, v2

    .line 234
    .end local v2           #idx:I
    .restart local v1       #idx:I
    :goto_1
    const/4 v3, 0x1

    if-le v1, v3, :cond_0

    .line 235
    add-int/lit8 v1, v1, -0x1

    aget-byte v3, v0, v1

    or-int/lit16 v3, v3, 0x80

    invoke-virtual {p1, v3}, Ljava/io/OutputStream;->write(I)V

    goto :goto_1

    .line 237
    :cond_0
    const/4 v3, 0x0

    aget-byte v3, v0, v3

    invoke-virtual {p1, v3}, Ljava/io/OutputStream;->write(I)V

    .line 238
    iget-boolean v3, p0, Lcom/android/exchange/adapter/Serializer;->logging:Z

    if-eqz v3, :cond_1

    .line 239
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/exchange/adapter/Serializer;->log(Ljava/lang/String;)V

    .line 241
    :cond_1
    return-void

    .end local v1           #idx:I
    .restart local v2       #idx:I
    :cond_2
    move v1, v2

    .end local v2           #idx:I
    .restart local v1       #idx:I
    goto :goto_0
.end method

.method writeLiteralOpaque(Ljava/io/OutputStream;[B)V
    .locals 2
    .parameter "out"
    .parameter "s"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 218
    move-object v0, p2

    .line 219
    .local v0, data:[B
    array-length v1, v0

    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write(I)V

    .line 220
    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 221
    return-void
.end method

.method writeLiteralString(Ljava/io/OutputStream;Ljava/lang/String;)V
    .locals 2
    .parameter "out"
    .parameter "s"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 244
    const-string v1, "UTF-8"

    invoke-virtual {p2, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 245
    .local v0, data:[B
    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 246
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write(I)V

    .line 247
    return-void
.end method

.method writeStringValue(Landroid/content/ContentValues;Ljava/lang/String;I)V
    .locals 2
    .parameter "cv"
    .parameter "key"
    .parameter "tag"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 250
    invoke-virtual {p1, p2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 251
    .local v0, value:Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 252
    invoke-virtual {p0, p3, v0}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 254
    :cond_0
    return-void
.end method
