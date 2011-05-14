.class Lcom/android/exchange/SyncManager$AccountList;
.super Ljava/util/ArrayList;
.source "SyncManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/exchange/SyncManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AccountList"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/ArrayList",
        "<",
        "Lcom/android/email/provider/EmailContent$Account;",
        ">;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 699
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-void
.end method


# virtual methods
.method public contains(J)Z
    .locals 4
    .parameter "id"

    .prologue
    .line 703
    invoke-virtual {p0}, Lcom/android/exchange/SyncManager$AccountList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/email/provider/EmailContent$Account;

    .line 704
    .local v0, account:Lcom/android/email/provider/EmailContent$Account;
    iget-wide v2, v0, Lcom/android/email/provider/EmailContent$Account;->mId:J

    cmp-long v2, v2, p1

    if-nez v2, :cond_0

    .line 705
    const/4 v2, 0x1

    .line 708
    .end local v0           #account:Lcom/android/email/provider/EmailContent$Account;
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getById(J)Lcom/android/email/provider/EmailContent$Account;
    .locals 4
    .parameter "id"

    .prologue
    .line 712
    invoke-virtual {p0}, Lcom/android/exchange/SyncManager$AccountList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/email/provider/EmailContent$Account;

    .line 713
    .local v0, account:Lcom/android/email/provider/EmailContent$Account;
    iget-wide v2, v0, Lcom/android/email/provider/EmailContent$Account;->mId:J

    cmp-long v2, v2, p1

    if-nez v2, :cond_0

    move-object v2, v0

    .line 717
    .end local v0           #account:Lcom/android/email/provider/EmailContent$Account;
    :goto_0
    return-object v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method
