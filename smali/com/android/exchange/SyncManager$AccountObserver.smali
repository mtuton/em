.class Lcom/android/exchange/SyncManager$AccountObserver;
.super Landroid/database/ContentObserver;
.source "SyncManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/exchange/SyncManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AccountObserver"
.end annotation


# instance fields
.field mAccounts:Lcom/android/exchange/SyncManager$AccountList;

.field mEasAccountSelector:Ljava/lang/String;

.field mSyncableEasMailboxSelector:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/exchange/SyncManager;


# direct methods
.method public constructor <init>(Lcom/android/exchange/SyncManager;Landroid/os/Handler;)V
    .locals 11
    .parameter
    .parameter "handler"

    .prologue
    const/4 v3, 0x0

    .line 727
    iput-object p1, p0, Lcom/android/exchange/SyncManager$AccountObserver;->this$0:Lcom/android/exchange/SyncManager;

    .line 728
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 723
    new-instance v0, Lcom/android/exchange/SyncManager$AccountList;

    invoke-direct {v0}, Lcom/android/exchange/SyncManager$AccountList;-><init>()V

    iput-object v0, p0, Lcom/android/exchange/SyncManager$AccountObserver;->mAccounts:Lcom/android/exchange/SyncManager$AccountList;

    .line 724
    iput-object v3, p0, Lcom/android/exchange/SyncManager$AccountObserver;->mSyncableEasMailboxSelector:Ljava/lang/String;

    .line 725
    iput-object v3, p0, Lcom/android/exchange/SyncManager$AccountObserver;->mEasAccountSelector:Ljava/lang/String;

    .line 730
    invoke-virtual {p1}, Lcom/android/exchange/SyncManager;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/email/provider/EmailContent$Account;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/email/provider/EmailContent$Account;->CONTENT_PROJECTION:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 733
    .local v7, c:Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/android/exchange/SyncManager$AccountObserver;->mAccounts:Lcom/android/exchange/SyncManager$AccountList;

    invoke-direct {p0, v7, v0}, Lcom/android/exchange/SyncManager$AccountObserver;->collectEasAccounts(Landroid/database/Cursor;Ljava/util/ArrayList;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 735
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 739
    invoke-static {}, Lcom/android/exchange/SyncManager;->getContext()Landroid/content/Context;

    move-result-object v9

    .line 740
    .local v9, context:Landroid/content/Context;
    iget-object v0, p0, Lcom/android/exchange/SyncManager$AccountObserver;->mAccounts:Lcom/android/exchange/SyncManager$AccountList;

    invoke-virtual {v0}, Lcom/android/exchange/SyncManager$AccountList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/email/provider/EmailContent$Account;

    .line 741
    .local v6, account:Lcom/android/email/provider/EmailContent$Account;
    sget-object v0, Lcom/android/email/provider/EmailContent$Mailbox;->CONTENT_URI:Landroid/net/Uri;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "accountKey="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v4, v6, Lcom/android/email/provider/EmailContent$Account;->mId:J

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v9, v0, v1, v3}, Lcom/android/email/provider/EmailContent$Mailbox;->count(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v8

    .line 743
    .local v8, cnt:I
    if-nez v8, :cond_0

    .line 744
    iget-wide v0, v6, Lcom/android/email/provider/EmailContent$Account;->mId:J

    invoke-direct {p0, v0, v1}, Lcom/android/exchange/SyncManager$AccountObserver;->addAccountMailbox(J)V

    goto :goto_0

    .line 735
    .end local v6           #account:Lcom/android/email/provider/EmailContent$Account;
    .end local v8           #cnt:I
    .end local v9           #context:Landroid/content/Context;
    .end local v10           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v0

    .line 747
    .restart local v9       #context:Landroid/content/Context;
    .restart local v10       #i$:Ljava/util/Iterator;
    :cond_1
    return-void
.end method

.method static synthetic access$900(Lcom/android/exchange/SyncManager$AccountObserver;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 721
    invoke-direct {p0}, Lcom/android/exchange/SyncManager$AccountObserver;->onAccountChanged()V

    return-void
.end method

.method private addAccountMailbox(J)V
    .locals 5
    .parameter "acctId"

    .prologue
    const-string v4, "__eas"

    .line 966
    invoke-static {}, Lcom/android/exchange/SyncManager;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, p1, p2}, Lcom/android/email/provider/EmailContent$Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/email/provider/EmailContent$Account;

    move-result-object v0

    .line 967
    .local v0, acct:Lcom/android/email/provider/EmailContent$Account;
    new-instance v1, Lcom/android/email/provider/EmailContent$Mailbox;

    invoke-direct {v1}, Lcom/android/email/provider/EmailContent$Mailbox;-><init>()V

    .line 968
    .local v1, main:Lcom/android/email/provider/EmailContent$Mailbox;
    const-string v2, "__eas"

    iput-object v4, v1, Lcom/android/email/provider/EmailContent$Mailbox;->mDisplayName:Ljava/lang/String;

    .line 969
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "__eas"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/email/provider/EmailContent$Mailbox;->mServerId:Ljava/lang/String;

    .line 970
    iget-wide v2, v0, Lcom/android/email/provider/EmailContent$Account;->mId:J

    iput-wide v2, v1, Lcom/android/email/provider/EmailContent$Mailbox;->mAccountKey:J

    .line 971
    const/16 v2, 0x44

    iput v2, v1, Lcom/android/email/provider/EmailContent$Mailbox;->mType:I

    .line 972
    const/4 v2, -0x2

    iput v2, v1, Lcom/android/email/provider/EmailContent$Mailbox;->mSyncInterval:I

    .line 973
    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/android/email/provider/EmailContent$Mailbox;->mFlagVisible:Z

    .line 974
    invoke-static {}, Lcom/android/exchange/SyncManager;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/email/provider/EmailContent$Mailbox;->save(Landroid/content/Context;)Landroid/net/Uri;

    .line 975
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Initializing account: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/android/email/provider/EmailContent$Account;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/exchange/SyncManager;->log(Ljava/lang/String;)V

    .line 976
    return-void
.end method

.method private collectEasAccounts(Landroid/database/Cursor;Ljava/util/ArrayList;)V
    .locals 7
    .parameter "c"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/email/provider/EmailContent$Account;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 949
    .local p2, accounts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/email/provider/EmailContent$Account;>;"
    invoke-static {}, Lcom/android/exchange/SyncManager;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 950
    .local v1, context:Landroid/content/Context;
    if-nez v1, :cond_1

    .line 963
    :cond_0
    return-void

    .line 951
    :cond_1
    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 952
    const/4 v5, 0x6

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    .line 953
    .local v3, hostAuthId:J
    const-wide/16 v5, 0x0

    cmp-long v5, v3, v5

    if-lez v5, :cond_1

    .line 954
    invoke-static {v1, v3, v4}, Lcom/android/email/provider/EmailContent$HostAuth;->restoreHostAuthWithId(Landroid/content/Context;J)Lcom/android/email/provider/EmailContent$HostAuth;

    move-result-object v2

    .line 955
    .local v2, ha:Lcom/android/email/provider/EmailContent$HostAuth;
    if-eqz v2, :cond_1

    iget-object v5, v2, Lcom/android/email/provider/EmailContent$HostAuth;->mProtocol:Ljava/lang/String;

    const-string v6, "eas"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 956
    new-instance v5, Lcom/android/email/provider/EmailContent$Account;

    invoke-direct {v5}, Lcom/android/email/provider/EmailContent$Account;-><init>()V

    invoke-virtual {v5, p1}, Lcom/android/email/provider/EmailContent$Account;->restore(Landroid/database/Cursor;)Lcom/android/email/provider/EmailContent$Account;

    move-result-object v0

    .line 958
    .local v0, account:Lcom/android/email/provider/EmailContent$Account;
    iput-object v2, v0, Lcom/android/email/provider/EmailContent$Account;->mHostAuthRecv:Lcom/android/email/provider/EmailContent$HostAuth;

    .line 959
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private onAccountChanged()V
    .locals 15

    .prologue
    const/4 v3, 0x0

    .line 829
    iget-object v0, p0, Lcom/android/exchange/SyncManager$AccountObserver;->this$0:Lcom/android/exchange/SyncManager;

    invoke-virtual {v0}, Lcom/android/exchange/SyncManager;->maybeStartSyncManagerThread()V

    .line 830
    invoke-static {}, Lcom/android/exchange/SyncManager;->getContext()Landroid/content/Context;

    move-result-object v9

    .line 834
    .local v9, context:Landroid/content/Context;
    new-instance v10, Lcom/android/exchange/SyncManager$AccountList;

    invoke-direct {v10}, Lcom/android/exchange/SyncManager$AccountList;-><init>()V

    .line 835
    .local v10, currentAccounts:Lcom/android/exchange/SyncManager$AccountList;
    iget-object v0, p0, Lcom/android/exchange/SyncManager$AccountObserver;->this$0:Lcom/android/exchange/SyncManager;

    invoke-virtual {v0}, Lcom/android/exchange/SyncManager;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/email/provider/EmailContent$Account;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/email/provider/EmailContent$Account;->CONTENT_PROJECTION:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 838
    .local v8, c:Landroid/database/Cursor;
    :try_start_0
    invoke-direct {p0, v8, v10}, Lcom/android/exchange/SyncManager$AccountObserver;->collectEasAccounts(Landroid/database/Cursor;Ljava/util/ArrayList;)V

    .line 839
    sget-object v14, Lcom/android/exchange/SyncManager;->sAccountList:Lcom/android/exchange/SyncManager$AccountList;

    monitor-enter v14
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 841
    :try_start_1
    sget-object v0, Lcom/android/exchange/SyncManager;->INSTANCE:Lcom/android/exchange/SyncManager;

    if-nez v0, :cond_0

    .line 842
    const-string v0, "!!! EAS SyncManager  -----------  Quit onAccountChanged() : null INSTANCE "

    invoke-static {v0}, Lcom/android/exchange/SyncManager;->alwaysLog(Ljava/lang/String;)V

    .line 843
    monitor-exit v14
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 933
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 938
    :goto_0
    return-void

    .line 847
    :cond_0
    :try_start_2
    iget-object v0, p0, Lcom/android/exchange/SyncManager$AccountObserver;->mAccounts:Lcom/android/exchange/SyncManager$AccountList;

    invoke-virtual {v0}, Lcom/android/exchange/SyncManager$AccountList;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .local v12, i$:Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/email/provider/EmailContent$Account;

    .line 849
    .local v6, account:Lcom/android/email/provider/EmailContent$Account;
    iget v0, v6, Lcom/android/email/provider/EmailContent$Account;->mFlags:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_2

    .line 850
    const-string v0, "Account observer noticed incomplete account; ignoring"

    invoke-static {v0}, Lcom/android/exchange/SyncManager;->log(Ljava/lang/String;)V

    goto :goto_1

    .line 931
    .end local v6           #account:Lcom/android/email/provider/EmailContent$Account;
    .end local v12           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v0

    monitor-exit v14
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 933
    :catchall_1
    move-exception v0

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v0

    .line 852
    .restart local v6       #account:Lcom/android/email/provider/EmailContent$Account;
    .restart local v12       #i$:Ljava/util/Iterator;
    :cond_2
    :try_start_4
    iget-wide v0, v6, Lcom/android/email/provider/EmailContent$Account;->mId:J

    invoke-virtual {v10, v0, v1}, Lcom/android/exchange/SyncManager$AccountList;->contains(J)Z

    move-result v0

    if-nez v0, :cond_3

    .line 854
    iget-object v0, p0, Lcom/android/exchange/SyncManager$AccountObserver;->this$0:Lcom/android/exchange/SyncManager;

    iget-wide v1, v6, Lcom/android/email/provider/EmailContent$Account;->mId:J

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3}, Lcom/android/exchange/SyncManager;->access$700(Lcom/android/exchange/SyncManager;JZ)V

    .line 856
    new-instance v7, Landroid/accounts/Account;

    iget-object v0, v6, Lcom/android/email/provider/EmailContent$Account;->mEmailAddress:Ljava/lang/String;

    const-string v1, "com.android.exchange"

    invoke-direct {v7, v0, v1}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 858
    .local v7, acct:Landroid/accounts/Account;
    iget-object v0, p0, Lcom/android/exchange/SyncManager$AccountObserver;->this$0:Lcom/android/exchange/SyncManager;

    invoke-static {v0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v7, v1, v2}, Landroid/accounts/AccountManager;->removeAccount(Landroid/accounts/Account;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    .line 859
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/exchange/SyncManager$AccountObserver;->mSyncableEasMailboxSelector:Ljava/lang/String;

    .line 860
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/exchange/SyncManager$AccountObserver;->mEasAccountSelector:Ljava/lang/String;

    goto :goto_1

    .line 863
    .end local v7           #acct:Landroid/accounts/Account;
    :cond_3
    iget-wide v0, v6, Lcom/android/email/provider/EmailContent$Account;->mId:J

    invoke-static {v9, v0, v1}, Lcom/android/email/provider/EmailContent$Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/email/provider/EmailContent$Account;

    move-result-object v13

    .line 865
    .local v13, updatedAccount:Lcom/android/email/provider/EmailContent$Account;
    if-eqz v13, :cond_1

    .line 880
    invoke-direct {p0, v6}, Lcom/android/exchange/SyncManager$AccountObserver;->syncParametersChanged(Lcom/android/email/provider/EmailContent$Account;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 886
    iget-object v0, p0, Lcom/android/exchange/SyncManager$AccountObserver;->this$0:Lcom/android/exchange/SyncManager;

    iget-object v1, v13, Lcom/android/email/provider/EmailContent$Account;->mEmailAddress:Ljava/lang/String;

    iget v2, v13, Lcom/android/email/provider/EmailContent$Account;->mSyncInterval:I

    iget-wide v3, v13, Lcom/android/email/provider/EmailContent$Account;->mId:J

    const/4 v5, 0x1

    invoke-static/range {v0 .. v5}, Lcom/android/exchange/SyncManager;->setEasSyncIntervals(Landroid/content/Context;Ljava/lang/String;IJZ)V

    .line 894
    sget-object v0, Lcom/android/exchange/SyncManager;->INSTANCE:Lcom/android/exchange/SyncManager;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Account "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, v6, Lcom/android/email/provider/EmailContent$Account;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " changed; stop running syncs..."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/exchange/SyncManager;->log(Ljava/lang/String;)V

    .line 896
    iget-object v0, p0, Lcom/android/exchange/SyncManager$AccountObserver;->this$0:Lcom/android/exchange/SyncManager;

    iget-wide v1, v6, Lcom/android/email/provider/EmailContent$Account;->mId:J

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3}, Lcom/android/exchange/SyncManager;->access$700(Lcom/android/exchange/SyncManager;JZ)V

    .line 900
    :cond_4
    invoke-direct {p0, v6}, Lcom/android/exchange/SyncManager$AccountObserver;->onSecurityHold(Lcom/android/email/provider/EmailContent$Account;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-direct {p0, v13}, Lcom/android/exchange/SyncManager$AccountObserver;->onSecurityHold(Lcom/android/email/provider/EmailContent$Account;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 901
    iget-object v0, p0, Lcom/android/exchange/SyncManager$AccountObserver;->this$0:Lcom/android/exchange/SyncManager;

    iget-object v1, p0, Lcom/android/exchange/SyncManager$AccountObserver;->this$0:Lcom/android/exchange/SyncManager;

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2, v6}, Lcom/android/exchange/SyncManager;->releaseSyncHolds(Landroid/content/Context;ILcom/android/email/provider/EmailContent$Account;)V

    .line 906
    :cond_5
    iget v0, v13, Lcom/android/email/provider/EmailContent$Account;->mSyncInterval:I

    iput v0, v6, Lcom/android/email/provider/EmailContent$Account;->mSyncInterval:I

    .line 907
    iget v0, v13, Lcom/android/email/provider/EmailContent$Account;->mSyncLookback:I

    iput v0, v6, Lcom/android/email/provider/EmailContent$Account;->mSyncLookback:I

    .line 908
    iget v0, v13, Lcom/android/email/provider/EmailContent$Account;->mFlags:I

    iput v0, v6, Lcom/android/email/provider/EmailContent$Account;->mFlags:I

    goto/16 :goto_1

    .line 912
    .end local v6           #account:Lcom/android/email/provider/EmailContent$Account;
    .end local v13           #updatedAccount:Lcom/android/email/provider/EmailContent$Account;
    :cond_6
    invoke-virtual {v10}, Lcom/android/exchange/SyncManager$AccountList;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_7
    :goto_2
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/email/provider/EmailContent$Account;

    .line 913
    .restart local v6       #account:Lcom/android/email/provider/EmailContent$Account;
    iget-object v0, p0, Lcom/android/exchange/SyncManager$AccountObserver;->mAccounts:Lcom/android/exchange/SyncManager$AccountList;

    iget-wide v1, v6, Lcom/android/email/provider/EmailContent$Account;->mId:J

    invoke-virtual {v0, v1, v2}, Lcom/android/exchange/SyncManager$AccountList;->contains(J)Z

    move-result v0

    if-nez v0, :cond_7

    .line 915
    invoke-static {}, Lcom/android/exchange/SyncManager;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-wide v1, v6, Lcom/android/email/provider/EmailContent$Account;->mHostAuthKeyRecv:J

    invoke-static {v0, v1, v2}, Lcom/android/email/provider/EmailContent$HostAuth;->restoreHostAuthWithId(Landroid/content/Context;J)Lcom/android/email/provider/EmailContent$HostAuth;

    move-result-object v11

    .line 917
    .local v11, ha:Lcom/android/email/provider/EmailContent$HostAuth;
    if-eqz v11, :cond_7

    .line 918
    iput-object v11, v6, Lcom/android/email/provider/EmailContent$Account;->mHostAuthRecv:Lcom/android/email/provider/EmailContent$HostAuth;

    .line 920
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Account observer found new account: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, v6, Lcom/android/email/provider/EmailContent$Account;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/exchange/SyncManager;->log(Ljava/lang/String;)V

    .line 921
    iget-wide v0, v6, Lcom/android/email/provider/EmailContent$Account;->mId:J

    invoke-direct {p0, v0, v1}, Lcom/android/exchange/SyncManager$AccountObserver;->addAccountMailbox(J)V

    .line 922
    iget-object v0, p0, Lcom/android/exchange/SyncManager$AccountObserver;->mAccounts:Lcom/android/exchange/SyncManager$AccountList;

    invoke-virtual {v0, v6}, Lcom/android/exchange/SyncManager$AccountList;->add(Ljava/lang/Object;)Z

    .line 923
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/exchange/SyncManager$AccountObserver;->mSyncableEasMailboxSelector:Ljava/lang/String;

    .line 924
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/exchange/SyncManager$AccountObserver;->mEasAccountSelector:Ljava/lang/String;

    goto :goto_2

    .line 928
    .end local v6           #account:Lcom/android/email/provider/EmailContent$Account;
    .end local v11           #ha:Lcom/android/email/provider/EmailContent$HostAuth;
    :cond_8
    sget-object v0, Lcom/android/exchange/SyncManager;->sAccountList:Lcom/android/exchange/SyncManager$AccountList;

    invoke-virtual {v0}, Lcom/android/exchange/SyncManager$AccountList;->clear()V

    .line 929
    sget-object v0, Lcom/android/exchange/SyncManager;->sAccountList:Lcom/android/exchange/SyncManager$AccountList;

    invoke-virtual {v0, v10}, Lcom/android/exchange/SyncManager$AccountList;->addAll(Ljava/util/Collection;)Z

    .line 930
    iput-object v10, p0, Lcom/android/exchange/SyncManager$AccountObserver;->mAccounts:Lcom/android/exchange/SyncManager$AccountList;

    .line 931
    monitor-exit v14
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 933
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 937
    const-string v0, "account changed"

    invoke-static {v0}, Lcom/android/exchange/SyncManager;->kick(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private onSecurityHold(Lcom/android/email/provider/EmailContent$Account;)Z
    .locals 1
    .parameter "account"

    .prologue
    .line 825
    iget v0, p1, Lcom/android/email/provider/EmailContent$Account;->mFlags:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private syncParametersChanged(Lcom/android/email/provider/EmailContent$Account;)Z
    .locals 7
    .parameter "account"

    .prologue
    const/4 v6, 0x0

    .line 803
    iget-wide v0, p1, Lcom/android/email/provider/EmailContent$Account;->mId:J

    .line 805
    .local v0, accountId:J
    invoke-static {}, Lcom/android/exchange/SyncManager;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v0, v1}, Lcom/android/email/provider/EmailContent$Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/email/provider/EmailContent$Account;

    move-result-object p1

    .line 806
    iget-object v4, p0, Lcom/android/exchange/SyncManager$AccountObserver;->mAccounts:Lcom/android/exchange/SyncManager$AccountList;

    invoke-virtual {v4}, Lcom/android/exchange/SyncManager$AccountList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/email/provider/EmailContent$Account;

    .line 807
    .local v3, oldAccount:Lcom/android/email/provider/EmailContent$Account;
    iget-wide v4, v3, Lcom/android/email/provider/EmailContent$Account;->mId:J

    cmp-long v4, v4, v0

    if-nez v4, :cond_0

    .line 809
    iget v4, v3, Lcom/android/email/provider/EmailContent$Account;->mSyncLookback:I

    iget v5, p1, Lcom/android/email/provider/EmailContent$Account;->mSyncLookback:I

    if-ne v4, v5, :cond_1

    iget v4, v3, Lcom/android/email/provider/EmailContent$Account;->mSyncInterval:I

    iget v5, p1, Lcom/android/email/provider/EmailContent$Account;->mSyncInterval:I

    if-ne v4, v5, :cond_1

    iget v4, v3, Lcom/android/email/provider/EmailContent$Account;->mCalendarSyncLookback:I

    iget v5, p1, Lcom/android/email/provider/EmailContent$Account;->mCalendarSyncLookback:I

    if-eq v4, v5, :cond_2

    :cond_1
    const/4 v4, 0x1

    .line 820
    .end local v3           #oldAccount:Lcom/android/email/provider/EmailContent$Account;
    :goto_0
    return v4

    .restart local v3       #oldAccount:Lcom/android/email/provider/EmailContent$Account;
    :cond_2
    move v4, v6

    .line 809
    goto :goto_0

    .end local v3           #oldAccount:Lcom/android/email/provider/EmailContent$Account;
    :cond_3
    move v4, v6

    .line 820
    goto :goto_0
.end method


# virtual methods
.method public getAccountKeyWhere()Ljava/lang/String;
    .locals 7

    .prologue
    .line 782
    iget-object v4, p0, Lcom/android/exchange/SyncManager$AccountObserver;->mEasAccountSelector:Ljava/lang/String;

    if-nez v4, :cond_2

    .line 783
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "accountKey in ("

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 784
    .local v3, sb:Ljava/lang/StringBuilder;
    const/4 v1, 0x1

    .line 785
    .local v1, first:Z
    sget-object v4, Lcom/android/exchange/SyncManager;->sAccountList:Lcom/android/exchange/SyncManager$AccountList;

    monitor-enter v4

    .line 786
    :try_start_0
    iget-object v5, p0, Lcom/android/exchange/SyncManager$AccountObserver;->mAccounts:Lcom/android/exchange/SyncManager$AccountList;

    invoke-virtual {v5}, Lcom/android/exchange/SyncManager$AccountList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/email/provider/EmailContent$Account;

    .line 787
    .local v0, account:Lcom/android/email/provider/EmailContent$Account;
    if-nez v1, :cond_0

    .line 788
    const/16 v5, 0x2c

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 792
    :goto_1
    iget-wide v5, v0, Lcom/android/email/provider/EmailContent$Account;->mId:J

    invoke-virtual {v3, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 794
    .end local v0           #account:Lcom/android/email/provider/EmailContent$Account;
    .end local v2           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v5

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    .line 790
    .restart local v0       #account:Lcom/android/email/provider/EmailContent$Account;
    .restart local v2       #i$:Ljava/util/Iterator;
    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    .line 794
    .end local v0           #account:Lcom/android/email/provider/EmailContent$Account;
    :cond_1
    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 795
    const/16 v4, 0x29

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 796
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/exchange/SyncManager$AccountObserver;->mEasAccountSelector:Ljava/lang/String;

    .line 798
    .end local v1           #first:Z
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #sb:Ljava/lang/StringBuilder;
    :cond_2
    iget-object v4, p0, Lcom/android/exchange/SyncManager$AccountObserver;->mEasAccountSelector:Ljava/lang/String;

    return-object v4
.end method

.method public getSyncableEasMailboxWhere()Ljava/lang/String;
    .locals 7

    .prologue
    .line 755
    iget-object v4, p0, Lcom/android/exchange/SyncManager$AccountObserver;->mSyncableEasMailboxSelector:Ljava/lang/String;

    if-nez v4, :cond_2

    .line 758
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "(type=4 or type=68 or syncInterval!=-1) and accountKey in ("

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 759
    .local v3, sb:Ljava/lang/StringBuilder;
    const/4 v1, 0x1

    .line 760
    .local v1, first:Z
    sget-object v4, Lcom/android/exchange/SyncManager;->sAccountList:Lcom/android/exchange/SyncManager$AccountList;

    monitor-enter v4

    .line 761
    :try_start_0
    iget-object v5, p0, Lcom/android/exchange/SyncManager$AccountObserver;->mAccounts:Lcom/android/exchange/SyncManager$AccountList;

    invoke-virtual {v5}, Lcom/android/exchange/SyncManager$AccountList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/email/provider/EmailContent$Account;

    .line 762
    .local v0, account:Lcom/android/email/provider/EmailContent$Account;
    if-nez v1, :cond_0

    .line 763
    const/16 v5, 0x2c

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 767
    :goto_1
    iget-wide v5, v0, Lcom/android/email/provider/EmailContent$Account;->mId:J

    invoke-virtual {v3, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 769
    .end local v0           #account:Lcom/android/email/provider/EmailContent$Account;
    .end local v2           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v5

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    .line 765
    .restart local v0       #account:Lcom/android/email/provider/EmailContent$Account;
    .restart local v2       #i$:Ljava/util/Iterator;
    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    .line 769
    .end local v0           #account:Lcom/android/email/provider/EmailContent$Account;
    :cond_1
    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 770
    const/16 v4, 0x29

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 771
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/exchange/SyncManager$AccountObserver;->mSyncableEasMailboxSelector:Ljava/lang/String;

    .line 773
    .end local v1           #first:Z
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #sb:Ljava/lang/StringBuilder;
    :cond_2
    iget-object v4, p0, Lcom/android/exchange/SyncManager$AccountObserver;->mSyncableEasMailboxSelector:Ljava/lang/String;

    return-object v4
.end method

.method public onChange(Z)V
    .locals 2
    .parameter "selfChange"

    .prologue
    .line 942
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/exchange/SyncManager$AccountObserver$1;

    invoke-direct {v1, p0}, Lcom/android/exchange/SyncManager$AccountObserver$1;-><init>(Lcom/android/exchange/SyncManager$AccountObserver;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 946
    return-void
.end method
