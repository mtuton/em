.class public Lcom/android/exchange/adapter/EasEmailSearchAdapter;
.super Ljava/lang/Object;
.source "EasEmailSearchAdapter.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static appendBaseBodyPreference(Lcom/android/exchange/SearchRequest;Lcom/android/exchange/adapter/Serializer;)Lcom/android/exchange/adapter/Serializer;
    .locals 4
    .parameter "searchRequest"
    .parameter "s"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 149
    invoke-virtual {p0}, Lcom/android/exchange/SearchRequest;->getOptionsBodyPreferenceType()Ljava/lang/String;

    move-result-object v1

    .line 150
    .local v1, bodyPreferenceType:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/exchange/SearchRequest;->getOptionsBodyPreferenceTruncationSize()Ljava/lang/String;

    move-result-object v0

    .line 151
    .local v0, bodyPreferenceTruncationSize:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v2, p1

    .line 163
    .end local p1
    .local v2, s:Lcom/android/exchange/adapter/Serializer;
    :goto_0
    return-object v2

    .line 155
    .end local v2           #s:Lcom/android/exchange/adapter/Serializer;
    .restart local p1
    :cond_0
    const/16 v3, 0x445

    invoke-virtual {p1, v3}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    .line 156
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 157
    const/16 v3, 0x446

    invoke-static {v3, v1, p1}, Lcom/android/exchange/adapter/EasEmailSearchAdapter;->appendData(ILjava/lang/String;Lcom/android/exchange/adapter/Serializer;)Lcom/android/exchange/adapter/Serializer;

    move-result-object p1

    .line 159
    :cond_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 160
    const/16 v3, 0x447

    invoke-static {v3, v0, p1}, Lcom/android/exchange/adapter/EasEmailSearchAdapter;->appendData(ILjava/lang/String;Lcom/android/exchange/adapter/Serializer;)Lcom/android/exchange/adapter/Serializer;

    move-result-object p1

    .line 162
    :cond_2
    invoke-virtual {p1}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    move-object v2, p1

    .line 163
    .end local p1
    .restart local v2       #s:Lcom/android/exchange/adapter/Serializer;
    goto :goto_0
.end method

.method private static appendData(ILjava/lang/String;Lcom/android/exchange/adapter/Serializer;)Lcom/android/exchange/adapter/Serializer;
    .locals 1
    .parameter "tag"
    .parameter "value"
    .parameter "s"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 167
    invoke-virtual {p2, p0, p1}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    move-result-object v0

    return-object v0
.end method

.method private static appendDate(ILjava/lang/String;Lcom/android/exchange/adapter/Serializer;)Lcom/android/exchange/adapter/Serializer;
    .locals 2
    .parameter "tag"
    .parameter "value"
    .parameter "s"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 179
    invoke-virtual {p2, p0}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    move-result-object v0

    .line 180
    .local v0, serializer:Lcom/android/exchange/adapter/Serializer;
    const/16 v1, 0x8f

    invoke-static {v1, v0}, Lcom/android/exchange/adapter/EasEmailSearchAdapter;->appendEmptyTag(ILcom/android/exchange/adapter/Serializer;)Lcom/android/exchange/adapter/Serializer;

    move-result-object v0

    .line 181
    const/16 v1, 0x3d2

    invoke-static {v1, p1, v0}, Lcom/android/exchange/adapter/EasEmailSearchAdapter;->appendData(ILjava/lang/String;Lcom/android/exchange/adapter/Serializer;)Lcom/android/exchange/adapter/Serializer;

    move-result-object v0

    .line 182
    invoke-virtual {v0}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    move-result-object v1

    return-object v1
.end method

.method private static appendEmptyTag(ILcom/android/exchange/adapter/Serializer;)Lcom/android/exchange/adapter/Serializer;
    .locals 1
    .parameter "tag"
    .parameter "s"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 175
    invoke-virtual {p1, p0}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    move-result-object v0

    return-object v0
.end method

.method private static appendOpaqueData(I[BLcom/android/exchange/adapter/Serializer;)Lcom/android/exchange/adapter/Serializer;
    .locals 1
    .parameter "tag"
    .parameter "value"
    .parameter "s"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 171
    invoke-virtual {p2, p0, p1}, Lcom/android/exchange/adapter/Serializer;->dataOpaque(I[B)Lcom/android/exchange/adapter/Serializer;

    move-result-object v0

    return-object v0
.end method

.method private static appendSearchOptions(Lcom/android/email/provider/EmailContent$Account;Lcom/android/exchange/SearchRequest;Lcom/android/exchange/adapter/Serializer;)Lcom/android/exchange/adapter/Serializer;
    .locals 11
    .parameter "acc"
    .parameter "searchRequest"
    .parameter "s"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/high16 v9, 0x4028

    .line 108
    invoke-virtual {p1}, Lcom/android/exchange/SearchRequest;->getOptionsRebuildResults()Z

    move-result v5

    .line 109
    .local v5, rebuildResults:Z
    invoke-virtual {p1}, Lcom/android/exchange/SearchRequest;->getOptionsDeepTraversal()Z

    move-result v1

    .line 110
    .local v1, deepTraversal:Z
    invoke-virtual {p1}, Lcom/android/exchange/SearchRequest;->getOptionsRange()Ljava/lang/String;

    move-result-object v4

    .line 111
    .local v4, range:Ljava/lang/String;
    invoke-virtual {p1}, Lcom/android/exchange/SearchRequest;->getOptionsOptionsMIMESupport()Ljava/lang/String;

    move-result-object v0

    .line 113
    .local v0, MIMESupport:Ljava/lang/String;
    iget-object v7, p0, Lcom/android/email/provider/EmailContent$Account;->mProtocolVersion:Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    .line 115
    .local v2, protocolVersion:D
    const-wide/high16 v7, 0x4004

    cmpl-double v7, v2, v7

    if-nez v7, :cond_0

    .line 116
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_1

    move-object v6, p2

    .line 145
    .end local p2
    .local v6, s:Lcom/android/exchange/adapter/Serializer;
    :goto_0
    return-object v6

    .line 119
    .end local v6           #s:Lcom/android/exchange/adapter/Serializer;
    .restart local p2
    :cond_0
    if-nez v5, :cond_1

    if-nez v1, :cond_1

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_1

    move-object v6, p2

    .line 123
    .end local p2
    .restart local v6       #s:Lcom/android/exchange/adapter/Serializer;
    goto :goto_0

    .line 126
    .end local v6           #s:Lcom/android/exchange/adapter/Serializer;
    .restart local p2
    :cond_1
    const/16 v7, 0x3ca

    invoke-virtual {p2, v7}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    move-result-object p2

    .line 127
    if-eqz v5, :cond_2

    cmpl-double v7, v2, v9

    if-ltz v7, :cond_2

    .line 129
    const/16 v7, 0x3d9

    invoke-static {v7, p2}, Lcom/android/exchange/adapter/EasEmailSearchAdapter;->appendEmptyTag(ILcom/android/exchange/adapter/Serializer;)Lcom/android/exchange/adapter/Serializer;

    move-result-object p2

    .line 131
    :cond_2
    if-eqz v1, :cond_3

    cmpl-double v7, v2, v9

    if-ltz v7, :cond_3

    .line 133
    const/16 v7, 0x3d7

    invoke-static {v7, p2}, Lcom/android/exchange/adapter/EasEmailSearchAdapter;->appendEmptyTag(ILcom/android/exchange/adapter/Serializer;)Lcom/android/exchange/adapter/Serializer;

    move-result-object p2

    .line 135
    :cond_3
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_4

    .line 136
    const/16 v7, 0x3cb

    invoke-static {v7, v4, p2}, Lcom/android/exchange/adapter/EasEmailSearchAdapter;->appendData(ILjava/lang/String;Lcom/android/exchange/adapter/Serializer;)Lcom/android/exchange/adapter/Serializer;

    move-result-object p2

    .line 138
    :cond_4
    cmpl-double v7, v2, v9

    if-ltz v7, :cond_5

    .line 139
    invoke-static {p1, p2}, Lcom/android/exchange/adapter/EasEmailSearchAdapter;->appendBaseBodyPreference(Lcom/android/exchange/SearchRequest;Lcom/android/exchange/adapter/Serializer;)Lcom/android/exchange/adapter/Serializer;

    move-result-object p2

    .line 140
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_5

    .line 141
    const/16 v7, 0x22

    invoke-static {v7, v0, p2}, Lcom/android/exchange/adapter/EasEmailSearchAdapter;->appendData(ILjava/lang/String;Lcom/android/exchange/adapter/Serializer;)Lcom/android/exchange/adapter/Serializer;

    move-result-object p2

    .line 144
    :cond_5
    invoke-virtual {p2}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    move-object v6, p2

    .line 145
    .end local p2
    .restart local v6       #s:Lcom/android/exchange/adapter/Serializer;
    goto :goto_0
.end method

.method private static appendSearchQuery(Landroid/content/Context;Lcom/android/email/provider/EmailContent$Account;Lcom/android/exchange/SearchRequest;Lcom/android/exchange/adapter/Serializer;)Lcom/android/exchange/adapter/Serializer;
    .locals 10
    .parameter "context"
    .parameter "acc"
    .parameter "searchRequest"
    .parameter "s"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 42
    invoke-virtual {p2}, Lcom/android/exchange/SearchRequest;->getQueryClass()Ljava/lang/String;

    move-result-object v0

    .line 43
    .local v0, queryClass:Ljava/lang/String;
    invoke-virtual {p2}, Lcom/android/exchange/SearchRequest;->getQueryText()Ljava/lang/String;

    move-result-object v2

    .line 44
    .local v2, queryText:Ljava/lang/String;
    invoke-virtual {p2}, Lcom/android/exchange/SearchRequest;->getQueryFreeText()Ljava/lang/String;

    move-result-object v4

    .line 45
    .local v4, queryFreeText:Ljava/lang/String;
    invoke-virtual {p2}, Lcom/android/exchange/SearchRequest;->getQueryCollectionIds()[J

    move-result-object v1

    .line 46
    .local v1, queryCollectionIds:[J
    invoke-virtual {p2}, Lcom/android/exchange/SearchRequest;->getQueryGreaterThan()Ljava/lang/String;

    move-result-object v5

    .line 47
    .local v5, queryGreaterThan:Ljava/lang/String;
    invoke-virtual {p2}, Lcom/android/exchange/SearchRequest;->getQueryLessThan()Ljava/lang/String;

    move-result-object v6

    .line 49
    .local v6, queryLessThan:Ljava/lang/String;
    invoke-virtual {p2}, Lcom/android/exchange/SearchRequest;->getQueryConvIdText()Ljava/lang/String;

    move-result-object v3

    .line 51
    .local v3, queryConvId:Ljava/lang/String;
    iget-object p1, p1, Lcom/android/email/provider/EmailContent$Account;->mProtocolVersion:Ljava/lang/String;

    .end local p1
    invoke-static {p1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide p1

    .line 53
    .end local p2
    .local p1, protocolVersion:D
    const-wide/high16 v7, 0x4004

    cmpl-double p1, p1, v7

    if-nez p1, :cond_1

    .line 54
    .end local p1           #protocolVersion:D
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    .end local p0
    if-eqz p0, :cond_0

    move-object p0, p3

    .line 103
    .end local v0           #queryClass:Ljava/lang/String;
    .end local v1           #queryCollectionIds:[J
    .end local v2           #queryText:Ljava/lang/String;
    .end local p3
    .local p0, s:Lcom/android/exchange/adapter/Serializer;
    :goto_0
    return-object p0

    .line 57
    .end local p0           #s:Lcom/android/exchange/adapter/Serializer;
    .restart local v0       #queryClass:Ljava/lang/String;
    .restart local v1       #queryCollectionIds:[J
    .restart local v2       #queryText:Ljava/lang/String;
    .restart local p3
    :cond_0
    const/16 p0, 0x3c9

    invoke-static {p0, v2, p3}, Lcom/android/exchange/adapter/EasEmailSearchAdapter;->appendData(ILjava/lang/String;Lcom/android/exchange/adapter/Serializer;)Lcom/android/exchange/adapter/Serializer;

    move-result-object p3

    move-object p0, p3

    .line 58
    .end local p3
    .restart local p0       #s:Lcom/android/exchange/adapter/Serializer;
    goto :goto_0

    .line 60
    .local p0, context:Landroid/content/Context;
    .restart local p3
    :cond_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_3

    if-eqz v1, :cond_2

    array-length p1, v1

    if-gtz p1, :cond_3

    :cond_2
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_3

    move-object p0, p3

    .line 65
    .end local p3
    .local p0, s:Lcom/android/exchange/adapter/Serializer;
    goto :goto_0

    .line 68
    .local p0, context:Landroid/content/Context;
    .restart local p3
    :cond_3
    const/16 p1, 0x3c9

    invoke-virtual {p3, p1}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    move-result-object p1

    const/16 p2, 0x3d3

    invoke-virtual {p1, p2}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    move-result-object p3

    .line 70
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_4

    .line 71
    const/16 p1, 0x10

    invoke-static {p1, v0, p3}, Lcom/android/exchange/adapter/EasEmailSearchAdapter;->appendData(ILjava/lang/String;Lcom/android/exchange/adapter/Serializer;)Lcom/android/exchange/adapter/Serializer;

    move-result-object p3

    .line 73
    :cond_4
    if-eqz v1, :cond_6

    .line 74
    move-object p1, v1

    .local p1, arr$:[J
    array-length v2, p1

    .local v2, len$:I
    const/4 p2, 0x0

    .end local v0           #queryClass:Ljava/lang/String;
    .end local v1           #queryCollectionIds:[J
    .local p2, i$:I
    :goto_1
    if-ge p2, v2, :cond_6

    aget-wide v0, p1, p2

    .line 75
    .local v0, collectionId:J
    const-string v7, "EasSyncService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "fzhang request QueryCollectionId"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/exchange/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    invoke-static {p0, v0, v1}, Lcom/android/email/provider/EmailContent$Mailbox;->restoreMailboxWithId(Landroid/content/Context;J)Lcom/android/email/provider/EmailContent$Mailbox;

    move-result-object v0

    .line 80
    .local v0, mailbox:Lcom/android/email/provider/EmailContent$Mailbox;
    if-eqz v0, :cond_5

    iget-object v1, v0, Lcom/android/email/provider/EmailContent$Mailbox;->mServerId:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    if-nez v3, :cond_5

    .line 82
    const/16 v1, 0x12

    iget-object v0, v0, Lcom/android/email/provider/EmailContent$Mailbox;->mServerId:Ljava/lang/String;

    .end local v0           #mailbox:Lcom/android/email/provider/EmailContent$Mailbox;
    invoke-static {v1, v0, p3}, Lcom/android/exchange/adapter/EasEmailSearchAdapter;->appendData(ILjava/lang/String;Lcom/android/exchange/adapter/Serializer;)Lcom/android/exchange/adapter/Serializer;

    move-result-object p3

    .line 74
    :cond_5
    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    .line 86
    .end local v2           #len$:I
    .end local p1           #arr$:[J
    .end local p2           #i$:I
    :cond_6
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_7

    .line 87
    const/16 p1, 0x3d5

    invoke-static {p1, v4, p3}, Lcom/android/exchange/adapter/EasEmailSearchAdapter;->appendData(ILjava/lang/String;Lcom/android/exchange/adapter/Serializer;)Lcom/android/exchange/adapter/Serializer;

    move-result-object p3

    .line 89
    :cond_7
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_8

    .line 90
    const/16 p1, 0x3db

    invoke-static {p1, v5, p3}, Lcom/android/exchange/adapter/EasEmailSearchAdapter;->appendDate(ILjava/lang/String;Lcom/android/exchange/adapter/Serializer;)Lcom/android/exchange/adapter/Serializer;

    move-result-object p3

    .line 92
    :cond_8
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_9

    .line 93
    const/16 p1, 0x3da

    invoke-static {p1, v6, p3}, Lcom/android/exchange/adapter/EasEmailSearchAdapter;->appendDate(ILjava/lang/String;Lcom/android/exchange/adapter/Serializer;)Lcom/android/exchange/adapter/Serializer;

    move-result-object p3

    .line 96
    :cond_9
    if-eqz v3, :cond_a

    .line 97
    invoke-static {p0}, Lcom/android/email/Controller;->getInstance(Landroid/content/Context;)Lcom/android/email/Controller;

    move-result-object p0

    .end local p0           #context:Landroid/content/Context;
    invoke-virtual {p0, v3}, Lcom/android/email/Controller;->getConversationID(Ljava/lang/String;)[B

    move-result-object p0

    .line 98
    .local p0, convId:[B
    const/16 p1, 0x3e0

    invoke-static {p1, p0, p3}, Lcom/android/exchange/adapter/EasEmailSearchAdapter;->appendOpaqueData(I[BLcom/android/exchange/adapter/Serializer;)Lcom/android/exchange/adapter/Serializer;

    move-result-object p3

    .line 101
    .end local p0           #convId:[B
    :cond_a
    invoke-virtual {p3}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    move-object p0, p3

    .line 103
    .end local p3
    .local p0, s:Lcom/android/exchange/adapter/Serializer;
    goto/16 :goto_0
.end method

.method public static buildEasEmailSearchRequest(Landroid/content/Context;Lcom/android/email/provider/EmailContent$Account;Lcom/android/exchange/SearchRequest;)Lcom/android/exchange/adapter/Serializer;
    .locals 4
    .parameter "context"
    .parameter "acc"
    .parameter "searchRequest"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 24
    new-instance v0, Lcom/android/exchange/adapter/Serializer;

    invoke-direct {v0}, Lcom/android/exchange/adapter/Serializer;-><init>()V

    .line 25
    .local v0, s:Lcom/android/exchange/adapter/Serializer;
    invoke-virtual {p2}, Lcom/android/exchange/SearchRequest;->getStoreName()Ljava/lang/String;

    move-result-object v1

    .line 26
    .local v1, storeName:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 27
    new-instance v2, Ljava/io/IOException;

    const v3, 0x7f08025b

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 30
    :cond_0
    const/16 v2, 0x3c5

    invoke-virtual {v0, v2}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    move-result-object v2

    const/16 v3, 0x3c7

    invoke-virtual {v2, v3}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    move-result-object v2

    const/16 v3, 0x3c8

    invoke-virtual {v2, v3, v1}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 33
    invoke-static {p0, p1, p2, v0}, Lcom/android/exchange/adapter/EasEmailSearchAdapter;->appendSearchQuery(Landroid/content/Context;Lcom/android/email/provider/EmailContent$Account;Lcom/android/exchange/SearchRequest;Lcom/android/exchange/adapter/Serializer;)Lcom/android/exchange/adapter/Serializer;

    move-result-object v0

    .line 34
    invoke-static {p1, p2, v0}, Lcom/android/exchange/adapter/EasEmailSearchAdapter;->appendSearchOptions(Lcom/android/email/provider/EmailContent$Account;Lcom/android/exchange/SearchRequest;Lcom/android/exchange/adapter/Serializer;)Lcom/android/exchange/adapter/Serializer;

    move-result-object v0

    .line 35
    invoke-virtual {v0}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/exchange/adapter/Serializer;->done()V

    .line 38
    return-object v0
.end method
