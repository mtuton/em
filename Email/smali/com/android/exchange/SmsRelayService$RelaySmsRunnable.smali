.class Lcom/android/exchange/SmsRelayService$RelaySmsRunnable;
.super Ljava/lang/Object;
.source "SmsRelayService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/exchange/SmsRelayService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RelaySmsRunnable"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/exchange/SmsRelayService;


# direct methods
.method private constructor <init>(Lcom/android/exchange/SmsRelayService;)V
    .locals 0
    .parameter

    .prologue
    .line 95
    iput-object p1, p0, Lcom/android/exchange/SmsRelayService$RelaySmsRunnable;->this$0:Lcom/android/exchange/SmsRelayService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/exchange/SmsRelayService;Lcom/android/exchange/SmsRelayService$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 95
    invoke-direct {p0, p1}, Lcom/android/exchange/SmsRelayService$RelaySmsRunnable;-><init>(Lcom/android/exchange/SmsRelayService;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 14

    .prologue
    const-string v0, "SmsRelayService"

    .line 98
    iget-object v0, p0, Lcom/android/exchange/SmsRelayService$RelaySmsRunnable;->this$0:Lcom/android/exchange/SmsRelayService;

    invoke-static {v0}, Lcom/android/exchange/SmsRelayService;->access$100(Lcom/android/exchange/SmsRelayService;)Ljava/lang/Object;

    move-result-object v13

    monitor-enter v13

    .line 99
    const/4 v10, 0x0

    .line 100
    .local v10, ownNumber:Ljava/lang/String;
    :try_start_0
    iget-object v0, p0, Lcom/android/exchange/SmsRelayService$RelaySmsRunnable;->this$0:Lcom/android/exchange/SmsRelayService;

    invoke-static {v0}, Lcom/android/exchange/SmsRelayService;->access$200(Lcom/android/exchange/SmsRelayService;)Landroid/telephony/TelephonyManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 101
    iget-object v0, p0, Lcom/android/exchange/SmsRelayService$RelaySmsRunnable;->this$0:Lcom/android/exchange/SmsRelayService;

    invoke-static {v0}, Lcom/android/exchange/SmsRelayService;->access$200(Lcom/android/exchange/SmsRelayService;)Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object v10

    .line 104
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/exchange/SmsRelayService$RelaySmsRunnable;->this$0:Lcom/android/exchange/SmsRelayService;

    invoke-static {v0}, Lcom/android/exchange/SmsRelayService;->access$300(Lcom/android/exchange/SmsRelayService;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_8

    iget-object v0, p0, Lcom/android/exchange/SmsRelayService$RelaySmsRunnable;->this$0:Lcom/android/exchange/SmsRelayService;

    invoke-static {v0}, Lcom/android/exchange/SmsRelayService;->access$400(Lcom/android/exchange/SmsRelayService;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 105
    iget-object v0, p0, Lcom/android/exchange/SmsRelayService$RelaySmsRunnable;->this$0:Lcom/android/exchange/SmsRelayService;

    invoke-static {v0}, Lcom/android/exchange/SmsRelayService;->access$300(Lcom/android/exchange/SmsRelayService;)Ljava/util/ArrayList;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/exchange/SmsRelayService$SmsPayload;

    .line 106
    .local v11, payload:Lcom/android/exchange/SmsRelayService$SmsPayload;
    iget-object v0, p0, Lcom/android/exchange/SmsRelayService$RelaySmsRunnable;->this$0:Lcom/android/exchange/SmsRelayService;

    invoke-static {v0}, Lcom/android/exchange/SmsRelayService;->access$300(Lcom/android/exchange/SmsRelayService;)Ljava/util/ArrayList;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 108
    const-string v0, "SmsRelayService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Processing SMS from: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v11, Lcom/android/exchange/SmsRelayService$SmsPayload;->mMessages:[Landroid/telephony/SmsMessage;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-virtual {v2}, Landroid/telephony/SmsMessage;->getDisplayOriginatingAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/exchange/SyncManager;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    const-string v0, "SmsRelayService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SMS Body: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v11, Lcom/android/exchange/SmsRelayService$SmsPayload;->mMessages:[Landroid/telephony/SmsMessage;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-virtual {v2}, Landroid/telephony/SmsMessage;->getDisplayMessageBody()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/exchange/SyncManager;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    iget-object v0, p0, Lcom/android/exchange/SmsRelayService$RelaySmsRunnable;->this$0:Lcom/android/exchange/SmsRelayService;

    invoke-static {v0}, Lcom/android/exchange/SmsRelayService;->access$400(Lcom/android/exchange/SmsRelayService;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 112
    iget-object v0, p0, Lcom/android/exchange/SmsRelayService$RelaySmsRunnable;->this$0:Lcom/android/exchange/SmsRelayService;

    invoke-virtual {v0}, Lcom/android/exchange/SmsRelayService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/email/provider/EmailContent$Account;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "emailAddress"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "flags"

    aput-object v4, v2, v3

    const-string v3, "protocolVersion NOT IN (\'2.5\',\'12.0\',\'12.1\')"

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v6

    .line 120
    .local v6, cursorAccount:Landroid/database/Cursor;
    if-eqz v6, :cond_0

    .line 122
    :try_start_1
    const-string v0, "SmsRelayService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Accounts found = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/exchange/SyncManager;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 126
    :cond_1
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Value of Flag = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x2

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 127
    const/4 v0, 0x2

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_3

    .line 129
    new-instance v9, Lcom/android/email/provider/EmailContent$Message;

    invoke-direct {v9}, Lcom/android/email/provider/EmailContent$Message;-><init>()V

    .line 130
    .local v9, msg:Lcom/android/email/provider/EmailContent$Message;
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, v9, Lcom/android/email/provider/EmailContent$Message;->mAccountKey:J

    .line 131
    iget-object v0, v11, Lcom/android/exchange/SmsRelayService$SmsPayload;->mMessages:[Landroid/telephony/SmsMessage;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/telephony/SmsMessage;->getOriginatingAddress()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v9, Lcom/android/email/provider/EmailContent$Message;->mFrom:Ljava/lang/String;

    .line 132
    if-eqz v10, :cond_5

    move-object v0, v10

    :goto_1
    iput-object v0, v9, Lcom/android/email/provider/EmailContent$Message;->mTo:Ljava/lang/String;

    .line 133
    if-eqz v10, :cond_6

    move-object v0, v10

    :goto_2
    iput-object v0, v9, Lcom/android/email/provider/EmailContent$Message;->mReplyTo:Ljava/lang/String;

    .line 134
    iget-object v0, v11, Lcom/android/exchange/SmsRelayService$SmsPayload;->mMessages:[Landroid/telephony/SmsMessage;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/telephony/SmsMessage;->getMessageBody()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v9, Lcom/android/email/provider/EmailContent$Message;->mText:Ljava/lang/String;

    .line 135
    iget v0, v9, Lcom/android/email/provider/EmailContent$Message;->mMessageType:I

    or-int/lit16 v0, v0, 0x100

    iput v0, v9, Lcom/android/email/provider/EmailContent$Message;->mMessageType:I

    .line 136
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, v9, Lcom/android/email/provider/EmailContent$Message;->mTimeStamp:J

    .line 137
    const/4 v0, 0x0

    iput-boolean v0, v9, Lcom/android/email/provider/EmailContent$Message;->mFlagRead:Z

    .line 138
    const/4 v0, 0x1

    iput v0, v9, Lcom/android/email/provider/EmailContent$Message;->mFlagLoaded:I

    .line 139
    const/4 v0, 0x0

    iput-byte v0, v9, Lcom/android/email/provider/EmailContent$Message;->mFlagTruncated:B

    .line 140
    const/4 v0, 0x0

    iput-boolean v0, v9, Lcom/android/email/provider/EmailContent$Message;->mFlagAttachment:Z

    .line 141
    const/4 v0, 0x1

    iput v0, v9, Lcom/android/email/provider/EmailContent$Message;->mImportance:I

    .line 142
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SMS_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, v9, Lcom/android/email/provider/EmailContent$Message;->mTimeStamp:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v9, Lcom/android/email/provider/EmailContent$Message;->mClientId:Ljava/lang/String;

    .line 143
    const/4 v0, 0x1

    iput v0, v9, Lcom/android/email/provider/EmailContent$Message;->mMessageDirty:I

    .line 144
    iget-object v0, v9, Lcom/android/email/provider/EmailContent$Message;->mText:Ljava/lang/String;

    iput-object v0, v9, Lcom/android/email/provider/EmailContent$Message;->mDisplayName:Ljava/lang/String;

    .line 146
    iget-object v0, p0, Lcom/android/exchange/SmsRelayService$RelaySmsRunnable;->this$0:Lcom/android/exchange/SmsRelayService;

    invoke-virtual {v0}, Lcom/android/exchange/SmsRelayService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/email/provider/EmailContent$Mailbox;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/email/provider/EmailContent$Mailbox;->ID_PROJECTION:[Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "type=0 AND accountKey="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, v9, Lcom/android/email/provider/EmailContent$Message;->mAccountKey:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 149
    .local v7, cursorMailbox:Landroid/database/Cursor;
    if-eqz v7, :cond_3

    .line 150
    const-string v0, "SmsRelayService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Mailbox found = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/exchange/SyncManager;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 152
    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 153
    .local v8, mailboxId:I
    const-string v0, "SmsRelayService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mailboxId found = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/exchange/SyncManager;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    int-to-long v0, v8

    iput-wide v0, v9, Lcom/android/email/provider/EmailContent$Message;->mMailboxKey:J

    .line 155
    iget-object v0, p0, Lcom/android/exchange/SmsRelayService$RelaySmsRunnable;->this$0:Lcom/android/exchange/SmsRelayService;

    invoke-virtual {v9, v0}, Lcom/android/email/provider/EmailContent$Message;->save(Landroid/content/Context;)Landroid/net/Uri;

    move-result-object v12

    .line 156
    .local v12, url:Landroid/net/Uri;
    if-eqz v12, :cond_7

    .line 157
    const-string v0, "SmsRelayService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SmS Successfully stored@ "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v12}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/exchange/SyncManager;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    .end local v8           #mailboxId:I
    .end local v12           #url:Landroid/net/Uri;
    :cond_2
    :goto_3
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 164
    .end local v7           #cursorMailbox:Landroid/database/Cursor;
    .end local v9           #msg:Lcom/android/email/provider/EmailContent$Message;
    :cond_3
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v0

    if-nez v0, :cond_1

    .line 170
    :cond_4
    :try_start_2
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 178
    .end local v6           #cursorAccount:Landroid/database/Cursor;
    .end local v11           #payload:Lcom/android/exchange/SmsRelayService$SmsPayload;
    :catchall_0
    move-exception v0

    monitor-exit v13
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 132
    .restart local v6       #cursorAccount:Landroid/database/Cursor;
    .restart local v9       #msg:Lcom/android/email/provider/EmailContent$Message;
    .restart local v11       #payload:Lcom/android/exchange/SmsRelayService$SmsPayload;
    :cond_5
    const/4 v0, 0x1

    :try_start_3
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    .line 133
    :cond_6
    const/4 v0, 0x1

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2

    .line 159
    .restart local v7       #cursorMailbox:Landroid/database/Cursor;
    .restart local v8       #mailboxId:I
    .restart local v12       #url:Landroid/net/Uri;
    :cond_7
    const-string v0, "SmsRelayService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to save SmS in mailBox = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/exchange/SyncManager;->log(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_3

    .line 167
    .end local v7           #cursorMailbox:Landroid/database/Cursor;
    .end local v8           #mailboxId:I
    .end local v9           #msg:Lcom/android/email/provider/EmailContent$Message;
    .end local v12           #url:Landroid/net/Uri;
    :catch_0
    move-exception v0

    .line 170
    :try_start_4
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    :catchall_1
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0

    .line 176
    .end local v6           #cursorAccount:Landroid/database/Cursor;
    .end local v11           #payload:Lcom/android/exchange/SmsRelayService$SmsPayload;
    :cond_8
    iget-object v0, p0, Lcom/android/exchange/SmsRelayService$RelaySmsRunnable;->this$0:Lcom/android/exchange/SmsRelayService;

    invoke-static {v0}, Lcom/android/exchange/SmsRelayService;->access$500(Lcom/android/exchange/SmsRelayService;)V

    .line 178
    monitor-exit v13
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 179
    return-void
.end method
