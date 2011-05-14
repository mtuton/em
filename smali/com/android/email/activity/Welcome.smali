.class public Lcom/android/email/activity/Welcome;
.super Landroid/app/Activity;
.source "Welcome.java"


# static fields
.field public static final BADGE_APPS_CLASS:Ljava/lang/String; = "class"

.field public static final BADGE_APPS_COUNT:Ljava/lang/String; = "badgecount"

.field public static final BADGE_APPS_PACKAGE:Ljava/lang/String; = "package"

.field public static final BADGE_AUTHORITY:Ljava/lang/String; = "com.sec.badge"

.field public static final BADGE_TABLE_APPS:Ljava/lang/String; = "apps"


# instance fields
.field public final TAG:Ljava/lang/String;

.field private db:Landroid/database/sqlite/SQLiteDatabase;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 56
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 63
    const-string v0, "Email/Welcome"

    iput-object v0, p0, Lcom/android/email/activity/Welcome;->TAG:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/android/email/activity/Welcome;)Landroid/database/sqlite/SQLiteDatabase;
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/email/activity/Welcome;->db:Landroid/database/sqlite/SQLiteDatabase;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/email/activity/Welcome;Landroid/database/sqlite/SQLiteDatabase;)Landroid/database/sqlite/SQLiteDatabase;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 56
    iput-object p1, p0, Lcom/android/email/activity/Welcome;->db:Landroid/database/sqlite/SQLiteDatabase;

    return-object p1
.end method

.method public static actionStart(Landroid/app/Activity;)V
    .locals 2
    .parameter "fromActivity"

    .prologue
    .line 103
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/email/activity/Welcome;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 104
    .local v0, i:Landroid/content/Intent;
    const/high16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 105
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 106
    return-void
.end method


# virtual methods
.method public insertBadgeProvider()V
    .locals 4

    .prologue
    .line 75
    invoke-virtual {p0}, Lcom/android/email/activity/Welcome;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 76
    .local v1, cr:Landroid/content/ContentResolver;
    const/4 v0, 0x0

    .line 86
    .local v0, cnt:I
    const-string v2, "com.android.email"

    const-string v3, "com.android.email.activity.Welcome"

    invoke-static {v1, v2, v3, v0}, Lcom/sec/android/touchwiz/app/BadgeNotification$Apps;->setBadgeCount(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)V

    .line 88
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 9
    .parameter "icicle"

    .prologue
    const/4 v0, 0x0

    const-string v1, "BADGE"

    .line 111
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 114
    invoke-static {v0}, Lcom/android/email/Email;->setNotifyUiAccountsChanged(Z)V

    .line 118
    invoke-static {p0}, Lcom/android/email/activity/UpgradeAccounts;->doBulkUpgradeIfNecessary(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 119
    invoke-virtual {p0}, Lcom/android/email/activity/Welcome;->finish()V

    .line 213
    :goto_0
    return-void

    .line 131
    :cond_0
    const/4 v8, 0x0

    .line 133
    .local v8, c:Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p0}, Lcom/android/email/activity/Welcome;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/email/provider/EmailContent$Account;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/email/provider/EmailContent$Account;->ID_PROJECTION:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 137
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_1

    sget-boolean v0, Lcom/android/email/provider/EmailProvider;->FIRST_ENTER:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 138
    const-string v0, "BADGE"

    const-string v1, "Upgrade\tBadge ENTER"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    invoke-virtual {p0}, Lcom/android/email/activity/Welcome;->insertBadgeProvider()V

    .line 140
    invoke-virtual {p0}, Lcom/android/email/activity/Welcome;->updateBadgeProvider()V

    .line 141
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/email/provider/EmailProvider;->FIRST_ENTER:Z

    .line 142
    const-string v0, "BADGE"

    const-string v1, "Upgrade\tBadge EXIT"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    :cond_1
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 196
    invoke-static {p0}, Lcom/android/email/activity/AccountFolderList;->actionShowAccounts(Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 200
    :goto_1
    if-eqz v8, :cond_2

    .line 201
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 206
    :cond_2
    invoke-virtual {p0}, Lcom/android/email/activity/Welcome;->finish()V

    .line 212
    invoke-static {p0}, Lcom/android/email/ExchangeUtils;->startExchangeService(Landroid/content/Context;)V

    goto :goto_0

    .line 148
    :pswitch_0
    :try_start_1
    invoke-static {p0}, Lcom/android/email/activity/setup/AccountSetupBasics;->actionNewAccount(Landroid/app/Activity;)V

    .line 151
    new-instance v0, Lcom/android/email/activity/Welcome$1;

    invoke-direct {v0, p0}, Lcom/android/email/activity/Welcome$1;-><init>(Lcom/android/email/activity/Welcome;)V

    invoke-virtual {v0}, Lcom/android/email/activity/Welcome$1;->start()V

    .line 187
    invoke-virtual {p0}, Lcom/android/email/activity/Welcome;->insertBadgeProvider()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 200
    :catchall_0
    move-exception v0

    if-eqz v8, :cond_3

    .line 201
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0

    .line 191
    :pswitch_1
    :try_start_2
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    .line 192
    const/4 v0, 0x0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 193
    .local v6, accountId:J
    const/4 v0, 0x0

    invoke-static {p0, v6, v7, v0}, Lcom/android/email/activity/MessageList;->actionHandleAccount(Landroid/content/Context;JI)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 146
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public updateBadgeProvider()V
    .locals 7

    .prologue
    .line 91
    invoke-virtual {p0}, Lcom/android/email/activity/Welcome;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 92
    .local v1, cr:Landroid/content/ContentResolver;
    const/4 v0, 0x0

    .line 93
    .local v0, cnt:I
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 94
    .local v2, newValues:Landroid/content/ContentValues;
    const-string v4, "package"

    const-string v5, "com.android.email"

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    const-string v4, "class"

    const-string v5, "com.android.email.activity.Welcome"

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    const-string v4, "badgecount"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 97
    const-string v3, "package=\'com.android.email\' AND class=\'com.android.email.activity.Welcome\'"

    .line 98
    .local v3, where:Ljava/lang/String;
    const-string v4, "content://com.sec.badge/apps"

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v2, v3, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 99
    const-string v4, "Email/Welcome"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[updateBadgeProvider] - cnt : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    return-void
.end method
