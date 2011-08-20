.class public Lcom/android/exchange/adapter/GetItemEstimateAdapter$GetItemEstimateParser;
.super Lcom/android/exchange/adapter/AbstractSyncParser;
.source "GetItemEstimateAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/exchange/adapter/GetItemEstimateAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "GetItemEstimateParser"
.end annotation


# instance fields
.field collectionIds:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field estimations:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mMailboxId:Ljava/lang/String;

.field mStatus:I

.field final synthetic this$0:Lcom/android/exchange/adapter/GetItemEstimateAdapter;


# direct methods
.method public constructor <init>(Lcom/android/exchange/adapter/GetItemEstimateAdapter;Ljava/io/InputStream;Lcom/android/exchange/adapter/GetItemEstimateAdapter;)V
    .locals 2
    .parameter
    .parameter "in"
    .parameter "adapter"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 138
    iput-object p1, p0, Lcom/android/exchange/adapter/GetItemEstimateAdapter$GetItemEstimateParser;->this$0:Lcom/android/exchange/adapter/GetItemEstimateAdapter;

    .line 139
    invoke-direct {p0, p2, p3}, Lcom/android/exchange/adapter/AbstractSyncParser;-><init>(Ljava/io/InputStream;Lcom/android/exchange/adapter/AbstractSyncAdapter;)V

    .line 130
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/exchange/adapter/GetItemEstimateAdapter$GetItemEstimateParser;->mStatus:I

    .line 134
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/exchange/adapter/GetItemEstimateAdapter$GetItemEstimateParser;->collectionIds:Ljava/util/ArrayList;

    .line 135
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/exchange/adapter/GetItemEstimateAdapter$GetItemEstimateParser;->estimations:Ljava/util/ArrayList;

    .line 140
    iget-object v0, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mMailbox:Lcom/android/email/provider/EmailContent$Mailbox;

    iget-wide v0, v0, Lcom/android/email/provider/EmailContent;->mId:J

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/exchange/adapter/GetItemEstimateAdapter$GetItemEstimateParser;->mMailboxId:Ljava/lang/String;

    .line 141
    return-void
.end method


# virtual methods
.method public commandsParser()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 188
    return-void
.end method

.method public commit()V
    .locals 5

    .prologue
    .line 204
    iget-object v3, p0, Lcom/android/exchange/adapter/GetItemEstimateAdapter$GetItemEstimateParser;->collectionIds:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_0

    iget-object v3, p0, Lcom/android/exchange/adapter/GetItemEstimateAdapter$GetItemEstimateParser;->estimations:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_0

    iget-object v3, p0, Lcom/android/exchange/adapter/GetItemEstimateAdapter$GetItemEstimateParser;->estimations:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    iget-object v4, p0, Lcom/android/exchange/adapter/GetItemEstimateAdapter$GetItemEstimateParser;->estimations:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ne v3, v4, :cond_0

    .line 207
    iget-object v3, p0, Lcom/android/exchange/adapter/GetItemEstimateAdapter$GetItemEstimateParser;->collectionIds:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v1, v3, [Ljava/lang/String;

    .line 208
    .local v1, arrayIds:[Ljava/lang/String;
    iget-object v3, p0, Lcom/android/exchange/adapter/GetItemEstimateAdapter$GetItemEstimateParser;->collectionIds:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 210
    iget-object v3, p0, Lcom/android/exchange/adapter/GetItemEstimateAdapter$GetItemEstimateParser;->estimations:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v0, v3, [Ljava/lang/String;

    .line 211
    .local v0, arrayEstimations:[Ljava/lang/String;
    iget-object v3, p0, Lcom/android/exchange/adapter/GetItemEstimateAdapter$GetItemEstimateParser;->estimations:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 213
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.ITEM_ESTIMATE"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 214
    .local v2, intent:Landroid/content/Intent;
    const-string v3, "collectionIds"

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 215
    const-string v3, "estimations"

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 216
    iget-object v3, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mService:Lcom/android/exchange/EasSyncService;

    iget-object v3, v3, Lcom/android/exchange/AbstractSyncService;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 218
    .end local v0           #arrayEstimations:[Ljava/lang/String;
    .end local v1           #arrayIds:[Ljava/lang/String;
    .end local v2           #intent:Landroid/content/Intent;
    :cond_0
    return-void
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

    .line 149
    invoke-virtual {p0, v2}, Lcom/android/exchange/adapter/GetItemEstimateAdapter$GetItemEstimateParser;->nextTag(I)I

    move-result v0

    const/16 v1, 0x185

    if-eq v0, v1, :cond_0

    .line 150
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0

    .line 152
    :cond_0
    :goto_0
    invoke-virtual {p0, v2}, Lcom/android/exchange/adapter/GetItemEstimateAdapter$GetItemEstimateParser;->nextTag(I)I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    .line 154
    iget v0, p0, Lcom/android/exchange/adapter/Parser;->tag:I

    const/16 v1, 0x18d

    if-ne v0, v1, :cond_1

    .line 155
    invoke-virtual {p0}, Lcom/android/exchange/adapter/GetItemEstimateAdapter$GetItemEstimateParser;->responsesParser()V

    goto :goto_0

    .line 157
    :cond_1
    invoke-virtual {p0}, Lcom/android/exchange/adapter/GetItemEstimateAdapter$GetItemEstimateParser;->skipTag()V

    goto :goto_0

    .line 161
    :cond_2
    iget v0, p0, Lcom/android/exchange/adapter/GetItemEstimateAdapter$GetItemEstimateParser;->mStatus:I

    if-ne v0, v3, :cond_3

    move v0, v3

    :goto_1
    return v0

    :cond_3
    move v0, v2

    goto :goto_1
.end method

.method public parseCollection()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 166
    :cond_0
    :goto_0
    const/16 v2, 0x188

    invoke-virtual {p0, v2}, Lcom/android/exchange/adapter/GetItemEstimateAdapter$GetItemEstimateParser;->nextTag(I)I

    move-result v2

    const/4 v3, 0x3

    if-eq v2, v3, :cond_4

    .line 168
    const/4 v0, 0x0

    .line 169
    .local v0, collectionId:Ljava/lang/String;
    const/4 v1, 0x0

    .line 171
    .local v1, estimation:Ljava/lang/String;
    iget v2, p0, Lcom/android/exchange/adapter/Parser;->tag:I

    const/16 v3, 0x18a

    if-ne v2, v3, :cond_2

    .line 172
    invoke-virtual {p0}, Lcom/android/exchange/adapter/GetItemEstimateAdapter$GetItemEstimateParser;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 179
    :goto_1
    if-eqz v0, :cond_1

    iget-object v2, p0, Lcom/android/exchange/adapter/GetItemEstimateAdapter$GetItemEstimateParser;->collectionIds:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 180
    :cond_1
    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/android/exchange/adapter/GetItemEstimateAdapter$GetItemEstimateParser;->estimations:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 173
    :cond_2
    iget v2, p0, Lcom/android/exchange/adapter/Parser;->tag:I

    const/16 v3, 0x18c

    if-ne v2, v3, :cond_3

    .line 174
    invoke-virtual {p0}, Lcom/android/exchange/adapter/GetItemEstimateAdapter$GetItemEstimateParser;->getValue()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 176
    :cond_3
    invoke-virtual {p0}, Lcom/android/exchange/adapter/GetItemEstimateAdapter$GetItemEstimateParser;->skipTag()V

    goto :goto_1

    .line 183
    .end local v0           #collectionId:Ljava/lang/String;
    .end local v1           #estimation:Ljava/lang/String;
    :cond_4
    return-void
.end method

.method public responsesParser()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v2, 0x188

    .line 192
    :cond_0
    :goto_0
    invoke-virtual {p0, v2}, Lcom/android/exchange/adapter/GetItemEstimateAdapter$GetItemEstimateParser;->nextTag(I)I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    .line 193
    iget v0, p0, Lcom/android/exchange/adapter/Parser;->tag:I

    if-ne v0, v2, :cond_1

    .line 194
    invoke-virtual {p0}, Lcom/android/exchange/adapter/GetItemEstimateAdapter$GetItemEstimateParser;->parseCollection()V

    goto :goto_0

    .line 195
    :cond_1
    iget v0, p0, Lcom/android/exchange/adapter/Parser;->tag:I

    const/16 v1, 0x18e

    if-ne v0, v1, :cond_0

    .line 196
    invoke-virtual {p0}, Lcom/android/exchange/adapter/GetItemEstimateAdapter$GetItemEstimateParser;->getValueInt()I

    move-result v0

    iput v0, p0, Lcom/android/exchange/adapter/GetItemEstimateAdapter$GetItemEstimateParser;->mStatus:I

    goto :goto_0

    .line 199
    :cond_2
    return-void
.end method

.method public wipe()V
    .locals 0

    .prologue
    .line 145
    return-void
.end method
