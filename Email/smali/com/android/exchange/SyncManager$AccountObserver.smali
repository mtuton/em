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

    .line 836
    iput-object p1, p0, Lcom/android/exchange/SyncManager$AccountObserver;->this$0:Lcom/android/exchange/SyncManager;

    .line 837
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 832
    new-instance v0, Lcom/android/exchange/SyncManager$AccountList;

    invoke-direct {v0}, Lcom/android/exchange/SyncManager$AccountList;-><init>()V

    iput-object v0, p0, Lcom/android/exchange/SyncManager$AccountObserver;->mAccounts:Lcom/android/exchange/SyncManager$AccountList;

    .line 833
    iput-object v3, p0, Lcom/android/exchange/SyncManager$AccountObserver;->mSyncableEasMailboxSelector:Ljava/lang/String;

    .line 834
    iput-object v3, p0, Lcom/android/exchange/SyncManager$AccountObserver;->mEasAccountSelector:Ljava/lang/String;

    .line 839
    invoke-virtual {p1}, Lcom/android/exchange/SyncManager;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/email/provider/EmailContent$Account;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/email/provider/EmailContent$Account;->CONTENT_PROJECTION:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 842
    .local v7, c:Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/android/exchange/SyncManager$AccountObserver;->mAccounts:Lcom/android/exchange/SyncManager$AccountList;

    invoke-direct {p0, v7, v0}, Lcom/android/exchange/SyncManager$AccountObserver;->collectEasAccounts(Landroid/database/Cursor;Ljava/util/ArrayList;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 844
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 848
    invoke-static {}, Lcom/android/exchange/SyncManager;->getContext()Landroid/content/Context;

    move-result-object v9

    .line 849
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

    .line 850
    .local v6, account:Lcom/android/email/provider/EmailContent$Account;
    sget-object v0, Lcom/android/email/provider/EmailContent$Mailbox;->CONTENT_URI:Landroid/net/Uri;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "accountKey="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v4, v6, Lcom/android/email/provider/EmailContent;->mId:J

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v9, v0, v1, v3}, Lcom/android/email/provider/EmailContent$Mailbox;->count(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v8

    .line 852
    .local v8, cnt:I
    if-nez v8, :cond_0

    .line 853
    iget-wide v0, v6, Lcom/android/email/provider/EmailContent;->mId:J

    invoke-direct {p0, v0, v1}, Lcom/android/exchange/SyncManager$AccountObserver;->addAccountMailbox(J)V

    goto :goto_0

    .line 844
    .end local v6           #account:Lcom/android/email/provider/EmailContent$Account;
    .end local v8           #cnt:I
    .end local v9           #context:Landroid/content/Context;
    .end local v10           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v0

    .line 856
    .restart local v9       #context:Landroid/content/Context;
    .restart local v10       #i$:Ljava/util/Iterator;
    :cond_1
    return-void
.end method

.method static synthetic access$900(Lcom/android/exchange/SyncManager$AccountObserver;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 830
    invoke-direct {p0}, Lcom/android/exchange/SyncManager$AccountObserver;->onAccountChanged()V

    return-void
.end method

.method private addAccountMailbox(J)V
    .locals 5
    .parameter "acctId"

    .prologue
    const-string v4, "__eas"

    .line 1080
    invoke-static {}, Lcom/android/exchange/SyncManager;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, p1, p2}, Lcom/android/email/provider/EmailContent$Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/email/provider/EmailContent$Account;

    move-result-object v0

    .line 1081
    .local v0, acct:Lcom/android/email/provider/EmailContent$Account;
    new-instance v1, Lcom/android/email/provider/EmailContent$Mailbox;

    invoke-direct {v1}, Lcom/android/email/provider/EmailContent$Mailbox;-><init>()V

    .line 1082
    .local v1, main:Lcom/android/email/provider/EmailContent$Mailbox;
    const-string v2, "__eas"

    iput-object v4, v1, Lcom/android/email/provider/EmailContent$Mailbox;->mDisplayName:Ljava/lang/String;

    .line 1083
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

    .line 1084
    iget-wide v2, v0, Lcom/android/email/provider/EmailContent;->mId:J

    iput-wide v2, v1, Lcom/android/email/provider/EmailContent$Mailbox;->mAccountKey:J

    .line 1085
    const/16 v2, 0x44

    iput v2, v1, Lcom/android/email/provider/EmailContent$Mailbox;->mType:I

    .line 1086
    const/4 v2, -0x2

    iput v2, v1, Lcom/android/email/provider/EmailContent$Mailbox;->mSyncInterval:I

    .line 1087
    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/android/email/provider/EmailContent$Mailbox;->mFlagVisible:Z

    .line 1088
    invoke-static {}, Lcom/android/exchange/SyncManager;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/email/provider/EmailContent$Mailbox;->save(Landroid/content/Context;)Landroid/net/Uri;

    .line 1089
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

    .line 1090
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
    .line 1063
    .local p2, accounts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/email/provider/EmailContent$Account;>;"
    invoke-static {}, Lcom/android/exchange/SyncManager;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 1064
    .local v1, context:Landroid/content/Context;
    if-nez v1, :cond_1

    .line 1077
    :cond_0
    return-void

    .line 1065
    :cond_1
    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1066
    const/4 v5, 0x6

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    .line 1067
    .local v3, hostAuthId:J
    const-wide/16 v5, 0x0

    cmp-long v5, v3, v5

    if-lez v5, :cond_1

    .line 1068
    invoke-static {v1, v3, v4}, Lcom/android/email/provider/EmailContent$HostAuth;->restoreHostAuthWithId(Landroid/content/Context;J)Lcom/android/email/provider/EmailContent$HostAuth;

    move-result-object v2

    .line 1069
    .local v2, ha:Lcom/android/email/provider/EmailContent$HostAuth;
    if-eqz v2, :cond_1

    iget-object v5, v2, Lcom/android/email/provider/EmailContent$HostAuth;->mProtocol:Ljava/lang/String;

    const-string v6, "eas"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1070
    new-instance v5, Lcom/android/email/provider/EmailContent$Account;

    invoke-direct {v5}, Lcom/android/email/provider/EmailContent$Account;-><init>()V

    invoke-virtual {v5, p1}, Lcom/android/email/provider/EmailContent$Account;->restore(Landroid/database/Cursor;)Lcom/android/email/provider/EmailContent$Account;

    move-result-object v0

    .line 1072
    .local v0, account:Lcom/android/email/provider/EmailContent$Account;
    iput-object v2, v0, Lcom/android/email/provider/EmailContent$Account;->mHostAuthRecv:Lcom/android/email/provider/EmailContent$HostAuth;

    .line 1073
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private onAccountChanged()V
    .locals 15

    .prologue
    const/4 v3, 0x0

    .line 938
    iget-object v0, p0, Lcom/android/exchange/SyncManager$AccountObserver;->this$0:Lcom/android/exchange/SyncManager;

    invoke-virtual {v0}, Lcom/android/exchange/SyncManager;->maybeStartSyncManagerThread()V

    .line 939
    invoke-static {}, Lcom/android/exchange/SyncManager;->getContext()Landroid/content/Context;

    move-result-object v9

    .line 943
    .local v9, context:Landroid/content/Context;
    new-instance v10, Lcom/android/exchange/SyncManager$AccountList;

    invoke-direct {v10}, Lcom/android/exchange/SyncManager$AccountList;-><init>()V

    .line 944
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

    .line 947
    .local v8, c:Landroid/database/Cursor;
    :try_start_0
    invoke-direct {p0, v8, v10}, Lcom/android/exchange/SyncManager$AccountObserver;->collectEasAccounts(Landroid/database/Cursor;Ljava/util/ArrayList;)V

    .line 948
    sget-object v14, Lcom/android/exchange/SyncManager;->sAccountList:Lcom/android/exchange/SyncManager$AccountList;

    monitor-enter v14
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 950
    :try_start_1
    sget-object v0, Lcom/android/exchange/SyncManager;->INSTANCE:Lcom/android/exchange/SyncManager;

    if-nez v0, :cond_0

    .line 951
    const-string v0, "!!! EAS SyncManager  -----------  Quit onAccountChanged() : null INSTANCE "

    invoke-static {v0}, Lcom/android/exchange/SyncManager;->alwaysLog(Ljava/lang/String;)V

    .line 952
    monitor-exit v14
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1047
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 1052
    :goto_0
    return-void

    .line 956
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

    .line 958
    .local v6, account:Lcom/android/email/provider/EmailContent$Account;
    iget v0, v6, Lcom/android/email/provider/EmailContent$Account;->mFlags:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_2

    .line 959
    const-string v0, "Account observer noticed incomplete account; ignoring"

    invoke-static {v0}, Lcom/android/exchange/SyncManager;->log(Ljava/lang/String;)V

    goto :goto_1

    .line 1045
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

    .line 1047
    :catchall_1
    move-exception v0

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v0

    .line 961
    .restart local v6       #account:Lcom/android/email/provider/EmailContent$Account;
    .restart local v12       #i$:Ljava/util/Iterator;
    :cond_2
    :try_start_4
    iget-wide v0, v6, Lcom/android/email/provider/EmailContent;->mId:J

    invoke-virtual {v10, v0, v1}, Lcom/android/exchange/SyncManager$AccountList;->contains(J)Z

    move-result v0

    if-nez v0, :cond_3

    .line 964
    const-string v0, "EAS SyncManager"

    const-string v1, "Try removing certificate"

    invoke-static {v0, v1}, Lcom/android/exchange/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 965
    iget-wide v0, v6, Lcom/android/email/provider/EmailContent;->mId:J

    invoke-static {v9, v0, v1}, Lcom/android/exchange/EmailKeyManager$EmailKeyStore;->removeCertificate(Landroid/content/Context;J)V

    .line 968
    iget-object v0, p0, Lcom/android/exchange/SyncManager$AccountObserver;->this$0:Lcom/android/exchange/SyncManager;

    iget-wide v1, v6, Lcom/android/email/provider/EmailContent;->mId:J

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3}, Lcom/android/exchange/SyncManager;->access$700(Lcom/android/exchange/SyncManager;JZ)V

    .line 970
    new-instance v7, Landroid/accounts/Account;

    iget-object v0, v6, Lcom/android/email/provider/EmailContent$Account;->mEmailAddress:Ljava/lang/String;

    const-string v1, "com.android.exchange"

    invoke-direct {v7, v0, v1}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 972
    .local v7, acct:Landroid/accounts/Account;
    iget-object v0, p0, Lcom/android/exchange/SyncManager$AccountObserver;->this$0:Lcom/android/exchange/SyncManager;

    invoke-static {v0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v7, v1, v2}, Landroid/accounts/AccountManager;->removeAccount(Landroid/accounts/Account;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    .line 973
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/exchange/SyncManager$AccountObserver;->mSyncableEasMailboxSelector:Ljava/lang/String;

    .line 974
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/exchange/SyncManager$AccountObserver;->mEasAccountSelector:Ljava/lang/String;

    goto :goto_1

    .line 977
    .end local v7           #acct:Landroid/accounts/Account;
    :cond_3
    iget-wide v0, v6, Lcom/android/email/provider/EmailContent;->mId:J

    invoke-static {v9, v0, v1}, Lcom/android/email/provider/EmailContent$Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/email/provider/EmailContent$Account;

    move-result-object v13

    .line 979
    .local v13, updatedAccount:Lcom/android/email/provider/EmailContent$Account;
    if-eqz v13, :cond_1

    .line 994
    invoke-direct {p0, v6}, Lcom/android/exchange/SyncManager$AccountObserver;->syncParametersChanged(Lcom/android/email/provider/EmailContent$Account;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1000
    iget-object v0, p0, Lcom/android/exchange/SyncManager$AccountObserver;->this$0:Lcom/android/exchange/SyncManager;

    iget-object v1, v13, Lcom/android/email/provider/EmailContent$Account;->mEmailAddress:Ljava/lang/String;

    iget v2, v13, Lcom/android/email/provider/EmailContent$Account;->mSyncInterval:I

    iget-wide v3, v13, Lcom/android/email/provider/EmailContent;->mId:J

    const/4 v5, 0x1

    invoke-static/range {v0 .. v5}, Lcom/android/exchange/SyncManager;->setEasSyncIntervals(Landroid/content/Context;Ljava/lang/String;IJZ)V

    .line 1008
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

    .line 1010
    iget-object v0, p0, Lcom/android/exchange/SyncManager$AccountObserver;->this$0:Lcom/android/exchange/SyncManager;

    iget-wide v1, v6, Lcom/android/email/provider/EmailContent;->mId:J

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3}, Lcom/android/exchange/SyncManager;->access$700(Lcom/android/exchange/SyncManager;JZ)V

    .line 1014
    :cond_4
    invoke-direct {p0, v6}, Lcom/android/exchange/SyncManager$AccountObserver;->onSecurityHold(Lcom/android/email/provider/EmailContent$Account;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-direct {p0, v13}, Lcom/android/exchange/SyncManager$AccountObserver;->onSecurityHold(Lcom/android/email/provider/EmailContent$Account;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 1015
    iget-object v0, p0, Lcom/android/exchange/SyncManager$AccountObserver;->this$0:Lcom/android/exchange/SyncManager;

    iget-object v1, p0, Lcom/android/exchange/SyncManager$AccountObserver;->this$0:Lcom/android/exchange/SyncManager;

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2, v6}, Lcom/android/exchange/SyncManager;->releaseSyncHolds(Landroid/content/Context;ILcom/android/email/provider/EmailContent$Account;)V

    .line 1020
    :cond_5
    iget v0, v13, Lcom/android/email/provider/EmailContent$Account;->mSyncInterval:I

    iput v0, v6, Lcom/android/email/provider/EmailContent$Account;->mSyncInterval:I

    .line 1021
    iget v0, v13, Lcom/android/email/provider/EmailContent$Account;->mSyncLookback:I

    iput v0, v6, Lcom/android/email/provider/EmailContent$Account;->mSyncLookback:I

    .line 1022
    iget v0, v13, Lcom/android/email/provider/EmailContent$Account;->mFlags:I

    iput v0, v6, Lcom/android/email/provider/EmailContent$Account;->mFlags:I

    goto/16 :goto_1

    .line 1026
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

    .line 1027
    .restart local v6       #account:Lcom/android/email/provider/EmailContent$Account;
    iget-object v0, p0, Lcom/android/exchange/SyncManager$AccountObserver;->mAccounts:Lcom/android/exchange/SyncManager$AccountList;

    iget-wide v1, v6, Lcom/android/email/provider/EmailContent;->mId:J

    invoke-virtual {v0, v1, v2}, Lcom/android/exchange/SyncManager$AccountList;->contains(J)Z

    move-result v0

    if-nez v0, :cond_7

    .line 1029
    invoke-static {}, Lcom/android/exchange/SyncManager;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-wide v1, v6, Lcom/android/email/provider/EmailContent$Account;->mHostAuthKeyRecv:J

    invoke-static {v0, v1, v2}, Lcom/android/email/provider/EmailContent$HostAuth;->restoreHostAuthWithId(Landroid/content/Context;J)Lcom/android/email/provider/EmailContent$HostAuth;

    move-result-object v11

    .line 1031
    .local v11, ha:Lcom/android/email/provider/EmailContent$HostAuth;
    if-eqz v11, :cond_7

    .line 1032
    iput-object v11, v6, Lcom/android/email/provider/EmailContent$Account;->mHostAuthRecv:Lcom/android/email/provider/EmailContent$HostAuth;

    .line 1034
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

    .line 1035
    iget-wide v0, v6, Lcom/android/email/provider/EmailContent;->mId:J

    invoke-direct {p0, v0, v1}, Lcom/android/exchange/SyncManager$AccountObserver;->addAccountMailbox(J)V

    .line 1036
    iget-object v0, p0, Lcom/android/exchange/SyncManager$AccountObserver;->mAccounts:Lcom/android/exchange/SyncManager$AccountList;

    invoke-virtual {v0, v6}, Lcom/android/exchange/SyncManager$AccountList;->add(Ljava/lang/Object;)Z

    .line 1037
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/exchange/SyncManager$AccountObserver;->mSyncableEasMailboxSelector:Ljava/lang/String;

    .line 1038
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/exchange/SyncManager$AccountObserver;->mEasAccountSelector:Ljava/lang/String;

    goto :goto_2

    .line 1042
    .end local v6           #account:Lcom/android/email/provider/EmailContent$Account;
    .end local v11           #ha:Lcom/android/email/provider/EmailContent$HostAuth;
    :cond_8
    sget-object v0, Lcom/android/exchange/SyncManager;->sAccountList:Lcom/android/exchange/SyncManager$AccountList;

    invoke-virtual {v0}, Lcom/android/exchange/SyncManager$AccountList;->clear()V

    .line 1043
    sget-object v0, Lcom/android/exchange/SyncManager;->sAccountList:Lcom/android/exchange/SyncManager$AccountList;

    invoke-virtual {v0, v10}, Lcom/android/exchange/SyncManager$AccountList;->addAll(Ljava/util/Collection;)Z

    .line 1044
    iput-object v10, p0, Lcom/android/exchange/SyncManager$AccountObserver;->mAccounts:Lcom/android/exchange/SyncManager$AccountList;

    .line 1045
    monitor-exit v14
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1047
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 1051
    const-string v0, "account changed"

    invoke-static {v0}, Lcom/android/exchange/SyncManager;->kick(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private onSecurityHold(Lcom/android/email/provider/EmailContent$Account;)Z
    .locals 1
    .parameter "account"

    .prologue
    .line 934
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

    .line 912
    iget-wide v0, p1, Lcom/android/email/provider/EmailContent;->mId:J

    .line 914
    .local v0, accountId:J
    invoke-static {}, Lcom/android/exchange/SyncManager;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v0, v1}, Lcom/android/email/provider/EmailContent$Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/email/provider/EmailContent$Account;

    move-result-object p1

    .line 915
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

    .line 916
    .local v3, oldAccount:Lcom/android/email/provider/EmailContent$Account;
    iget-wide v4, v3, Lcom/android/email/provider/EmailContent;->mId:J

    cmp-long v4, v4, v0

    if-nez v4, :cond_0

    .line 918
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

    .line 929
    .end local v3           #oldAccount:Lcom/android/email/provider/EmailContent$Account;
    :goto_0
    return v4

    .restart local v3       #oldAccount:Lcom/android/email/provider/EmailContent$Account;
    :cond_2
    move v4, v6

    .line 918
    goto :goto_0

    .end local v3           #oldAccount:Lcom/android/email/provider/EmailContent$Account;
    :cond_3
    move v4, v6

    .line 929
    goto :goto_0
.end method


# virtual methods
.method public getAccountKeyWhere()Ljava/lang/String;
    .locals 7

    .prologue
    .line 891
    iget-object v4, p0, Lcom/android/exchange/SyncManager$AccountObserver;->mEasAccountSelector:Ljava/lang/String;

    if-nez v4, :cond_2

    .line 892
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "accountKey in ("

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 893
    .local v3, sb:Ljava/lang/StringBuilder;
    const/4 v1, 0x1

    .line 894
    .local v1, first:Z
    sget-object v4, Lcom/android/exchange/SyncManager;->sAccountList:Lcom/android/exchange/SyncManager$AccountList;

    monitor-enter v4

    .line 895
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

    .line 896
    .local v0, account:Lcom/android/email/provider/EmailContent$Account;
    if-nez v1, :cond_0

    .line 897
    const/16 v5, 0x2c

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 901
    :goto_1
    iget-wide v5, v0, Lcom/android/email/provider/EmailContent;->mId:J

    invoke-virtual {v3, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 903
    .end local v0           #account:Lcom/android/email/provider/EmailContent$Account;
    .end local v2           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v5

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    .line 899
    .restart local v0       #account:Lcom/android/email/provider/EmailContent$Account;
    .restart local v2       #i$:Ljava/util/Iterator;
    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    .line 903
    .end local v0           #account:Lcom/android/email/provider/EmailContent$Account;
    :cond_1
    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 904
    const/16 v4, 0x29

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 905
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/exchange/SyncManager$AccountObserver;->mEasAccountSelector:Ljava/lang/String;

    .line 907
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
    .line 864
    iget-object v4, p0, Lcom/android/exchange/SyncManager$AccountObserver;->mSyncableEasMailboxSelector:Ljava/lang/String;

    if-nez v4, :cond_2

    .line 867
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "(type=4 or type=68 or syncInterval!=-1) and accountKey in ("

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 868
    .local v3, sb:Ljava/lang/StringBuilder;
    const/4 v1, 0x1

    .line 869
    .local v1, first:Z
    sget-object v4, Lcom/android/exchange/SyncManager;->sAccountList:Lcom/android/exchange/SyncManager$AccountList;

    monitor-enter v4

    .line 870
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

    .line 871
    .local v0, account:Lcom/android/email/provider/EmailContent$Account;
    if-nez v1, :cond_0

    .line 872
    const/16 v5, 0x2c

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 876
    :goto_1
    iget-wide v5, v0, Lcom/android/email/provider/EmailContent;->mId:J

    invoke-virtual {v3, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 878
    .end local v0           #account:Lcom/android/email/provider/EmailContent$Account;
    .end local v2           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v5

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    .line 874
    .restart local v0       #account:Lcom/android/email/provider/EmailContent$Account;
    .restart local v2       #i$:Ljava/util/Iterator;
    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    .line 878
    .end local v0           #account:Lcom/android/email/provider/EmailContent$Account;
    :cond_1
    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 879
    const/16 v4, 0x29

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 880
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/exchange/SyncManager$AccountObserver;->mSyncableEasMailboxSelector:Ljava/lang/String;

    .line 882
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
    .line 1056
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/exchange/SyncManager$AccountObserver$1;

    invoke-direct {v1, p0}, Lcom/android/exchange/SyncManager$AccountObserver$1;-><init>(Lcom/android/exchange/SyncManager$AccountObserver;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 1060
    return-void
.end method
