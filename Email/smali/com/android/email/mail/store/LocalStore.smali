.class public Lcom/android/email/mail/store/LocalStore;
.super Lcom/android/email/mail/Store;
.source "LocalStore.java"

# interfaces
.implements Lcom/android/email/mail/Store$PersistentDataCallbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/email/mail/store/LocalStore$LocalAttachmentBody;,
        Lcom/android/email/mail/store/LocalStore$LocalAttachmentBodyPart;,
        Lcom/android/email/mail/store/LocalStore$LocalMessage;,
        Lcom/android/email/mail/store/LocalStore$LocalFolder;,
        Lcom/android/email/mail/store/LocalStore$PendingCommand;
    }
.end annotation


# static fields
.field private static final DB_VERSION:I = 0x18

.field private static final PERMANENT_FLAGS:[Lcom/android/email/mail/Flag; = null

.field private static final TAG:Ljava/lang/String; = "LocalStore >>"


# instance fields
.field private mAttachmentsDir:Ljava/io/File;

.field private mContext:Landroid/content/Context;

.field private mDb:Landroid/database/sqlite/SQLiteDatabase;

.field private mPath:Ljava/lang/String;

.field private mVisibleLimitDefault:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 91
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/android/email/mail/Flag;

    const/4 v1, 0x0

    sget-object v2, Lcom/android/email/mail/Flag;->DELETED:Lcom/android/email/mail/Flag;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/android/email/mail/Flag;->X_DESTROYED:Lcom/android/email/mail/Flag;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/android/email/mail/Flag;->SEEN:Lcom/android/email/mail/Flag;

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/email/mail/store/LocalStore;->PERMANENT_FLAGS:[Lcom/android/email/mail/Flag;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Landroid/content/Context;)V
    .locals 11
    .parameter "_uri"
    .parameter "context"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/email/mail/MessagingException;
        }
    .end annotation

    .prologue
    const/16 v10, 0x16

    const/16 v9, 0x15

    const/16 v8, 0x14

    const/16 v7, 0x13

    const/16 v6, 0x18

    .line 110
    invoke-direct {p0}, Lcom/android/email/mail/Store;-><init>()V

    .line 97
    const/4 v4, -0x1

    iput v4, p0, Lcom/android/email/mail/store/LocalStore;->mVisibleLimitDefault:I

    .line 111
    iput-object p2, p0, Lcom/android/email/mail/store/LocalStore;->mContext:Landroid/content/Context;

    .line 112
    const/4 v3, 0x0

    .line 114
    .local v3, uri:Ljava/net/URI;
    :try_start_0
    new-instance v3, Ljava/net/URI;

    .end local v3           #uri:Ljava/net/URI;
    invoke-direct {v3, p1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 118
    .restart local v3       #uri:Ljava/net/URI;
    invoke-virtual {v3}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v4

    const-string v5, "local"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 119
    new-instance v4, Lcom/android/email/mail/MessagingException;

    const-string v5, "Invalid scheme"

    invoke-direct {v4, v5}, Lcom/android/email/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 115
    .end local v3           #uri:Ljava/net/URI;
    :catch_0
    move-exception v4

    move-object v0, v4

    .line 116
    .local v0, e:Ljava/lang/Exception;
    new-instance v4, Lcom/android/email/mail/MessagingException;

    const-string v5, "Invalid uri for LocalStore"

    invoke-direct {v4, v5}, Lcom/android/email/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 121
    .end local v0           #e:Ljava/lang/Exception;
    .restart local v3       #uri:Ljava/net/URI;
    :cond_0
    invoke-virtual {v3}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/email/mail/store/LocalStore;->mPath:Ljava/lang/String;

    .line 123
    new-instance v4, Ljava/io/File;

    iget-object v5, p0, Lcom/android/email/mail/store/LocalStore;->mPath:Ljava/lang/String;

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    .line 124
    .local v2, parentDir:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_1

    .line 125
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 127
    :cond_1
    iget-object v4, p0, Lcom/android/email/mail/store/LocalStore;->mPath:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->openOrCreateDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    iput-object v4, p0, Lcom/android/email/mail/store/LocalStore;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    .line 128
    iget-object v4, p0, Lcom/android/email/mail/store/LocalStore;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->getVersion()I

    move-result v1

    .line 133
    .local v1, oldVersion:I
    if-eq v1, v6, :cond_9

    .line 138
    const/16 v4, 0x12

    if-ge v1, v4, :cond_3

    .line 142
    iget-object v4, p0, Lcom/android/email/mail/store/LocalStore;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v5, "DROP TABLE IF EXISTS folders"

    invoke-virtual {v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 143
    iget-object v4, p0, Lcom/android/email/mail/store/LocalStore;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v5, "CREATE TABLE folders (id INTEGER PRIMARY KEY, name TEXT, last_updated INTEGER, unread_count INTEGER, visible_limit INTEGER)"

    invoke-virtual {v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 146
    iget-object v4, p0, Lcom/android/email/mail/store/LocalStore;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v5, "DROP TABLE IF EXISTS messages"

    invoke-virtual {v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 147
    iget-object v4, p0, Lcom/android/email/mail/store/LocalStore;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v5, "CREATE TABLE messages (id INTEGER PRIMARY KEY, folder_id INTEGER, uid TEXT, subject TEXT, date INTEGER, flags TEXT, sender_list TEXT, to_list TEXT, cc_list TEXT, bcc_list TEXT, reply_to_list TEXT, html_content TEXT, text_content TEXT, attachment_count INTEGER, internal_date INTEGER, message_id TEXT, store_flag_1 INTEGER, store_flag_2 INTEGER, flag_downloaded_full INTEGER,flag_downloaded_partial INTEGER, flag_deleted INTEGER, x_headers TEXT)"

    invoke-virtual {v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 155
    iget-object v4, p0, Lcom/android/email/mail/store/LocalStore;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v5, "DROP TABLE IF EXISTS attachments"

    invoke-virtual {v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 156
    iget-object v4, p0, Lcom/android/email/mail/store/LocalStore;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v5, "CREATE TABLE attachments (id INTEGER PRIMARY KEY, message_id INTEGER,store_data TEXT, content_uri TEXT, size INTEGER, name TEXT,mime_type TEXT, content_id TEXT)"

    invoke-virtual {v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 160
    iget-object v4, p0, Lcom/android/email/mail/store/LocalStore;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v5, "DROP TABLE IF EXISTS pending_commands"

    invoke-virtual {v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 161
    iget-object v4, p0, Lcom/android/email/mail/store/LocalStore;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v5, "CREATE TABLE pending_commands (id INTEGER PRIMARY KEY, command TEXT, arguments TEXT)"

    invoke-virtual {v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 164
    invoke-direct {p0}, Lcom/android/email/mail/store/LocalStore;->addRemoteStoreDataTable()V

    .line 166
    invoke-direct {p0}, Lcom/android/email/mail/store/LocalStore;->addFolderDeleteTrigger()V

    .line 168
    iget-object v4, p0, Lcom/android/email/mail/store/LocalStore;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v5, "DROP TRIGGER IF EXISTS delete_message"

    invoke-virtual {v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 169
    iget-object v4, p0, Lcom/android/email/mail/store/LocalStore;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v5, "CREATE TRIGGER delete_message BEFORE DELETE ON messages BEGIN DELETE FROM attachments WHERE old.id = message_id; END;"

    invoke-virtual {v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 170
    iget-object v4, p0, Lcom/android/email/mail/store/LocalStore;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v4, v6}, Landroid/database/sqlite/SQLiteDatabase;->setVersion(I)V

    .line 232
    :cond_2
    :goto_0
    iget-object v4, p0, Lcom/android/email/mail/store/LocalStore;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->getVersion()I

    move-result v4

    if-eq v4, v6, :cond_9

    .line 233
    new-instance v4, Ljava/lang/Error;

    const-string v5, "Database upgrade failed!"

    invoke-direct {v4, v5}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v4

    .line 173
    :cond_3
    if-ge v1, v7, :cond_4

    .line 177
    iget-object v4, p0, Lcom/android/email/mail/store/LocalStore;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v5, "ALTER TABLE messages ADD COLUMN message_id TEXT;"

    invoke-virtual {v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 178
    iget-object v4, p0, Lcom/android/email/mail/store/LocalStore;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v4, v7}, Landroid/database/sqlite/SQLiteDatabase;->setVersion(I)V

    .line 180
    :cond_4
    if-ge v1, v8, :cond_5

    .line 184
    iget-object v4, p0, Lcom/android/email/mail/store/LocalStore;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v5, "ALTER TABLE attachments ADD COLUMN content_id TEXT;"

    invoke-virtual {v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 185
    iget-object v4, p0, Lcom/android/email/mail/store/LocalStore;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v4, v8}, Landroid/database/sqlite/SQLiteDatabase;->setVersion(I)V

    .line 187
    :cond_5
    if-ge v1, v9, :cond_6

    .line 191
    invoke-direct {p0}, Lcom/android/email/mail/store/LocalStore;->addRemoteStoreDataTable()V

    .line 192
    invoke-direct {p0}, Lcom/android/email/mail/store/LocalStore;->addFolderDeleteTrigger()V

    .line 193
    iget-object v4, p0, Lcom/android/email/mail/store/LocalStore;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v4, v9}, Landroid/database/sqlite/SQLiteDatabase;->setVersion(I)V

    .line 195
    :cond_6
    if-ge v1, v10, :cond_7

    .line 199
    iget-object v4, p0, Lcom/android/email/mail/store/LocalStore;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v5, "ALTER TABLE messages ADD COLUMN store_flag_1 INTEGER;"

    invoke-virtual {v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 200
    iget-object v4, p0, Lcom/android/email/mail/store/LocalStore;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v5, "ALTER TABLE messages ADD COLUMN store_flag_2 INTEGER;"

    invoke-virtual {v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 201
    iget-object v4, p0, Lcom/android/email/mail/store/LocalStore;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v4, v10}, Landroid/database/sqlite/SQLiteDatabase;->setVersion(I)V

    .line 203
    :cond_7
    const/16 v4, 0x17

    if-ge v1, v4, :cond_8

    .line 208
    iget-object v4, p0, Lcom/android/email/mail/store/LocalStore;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 210
    :try_start_1
    iget-object v4, p0, Lcom/android/email/mail/store/LocalStore;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v5, "ALTER TABLE messages ADD COLUMN flag_downloaded_full INTEGER;"

    invoke-virtual {v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 212
    iget-object v4, p0, Lcom/android/email/mail/store/LocalStore;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v5, "ALTER TABLE messages ADD COLUMN flag_downloaded_partial INTEGER;"

    invoke-virtual {v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 214
    iget-object v4, p0, Lcom/android/email/mail/store/LocalStore;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v5, "ALTER TABLE messages ADD COLUMN flag_deleted INTEGER;"

    invoke-virtual {v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 216
    invoke-direct {p0}, Lcom/android/email/mail/store/LocalStore;->migrateMessageFlags()V

    .line 217
    iget-object v4, p0, Lcom/android/email/mail/store/LocalStore;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const/16 v5, 0x17

    invoke-virtual {v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->setVersion(I)V

    .line 218
    iget-object v4, p0, Lcom/android/email/mail/store/LocalStore;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 220
    iget-object v4, p0, Lcom/android/email/mail/store/LocalStore;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 223
    :cond_8
    if-ge v1, v6, :cond_2

    .line 227
    iget-object v4, p0, Lcom/android/email/mail/store/LocalStore;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v5, "ALTER TABLE messages ADD COLUMN x_headers TEXT;"

    invoke-virtual {v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 228
    iget-object v4, p0, Lcom/android/email/mail/store/LocalStore;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v4, v6}, Landroid/database/sqlite/SQLiteDatabase;->setVersion(I)V

    goto/16 :goto_0

    .line 220
    :catchall_0
    move-exception v4

    iget-object v5, p0, Lcom/android/email/mail/store/LocalStore;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v4

    .line 236
    :cond_9
    new-instance v4, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/android/email/mail/store/LocalStore;->mPath:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "_att"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v4, p0, Lcom/android/email/mail/store/LocalStore;->mAttachmentsDir:Ljava/io/File;

    .line 237
    iget-object v4, p0, Lcom/android/email/mail/store/LocalStore;->mAttachmentsDir:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_a

    .line 238
    iget-object v4, p0, Lcom/android/email/mail/store/LocalStore;->mAttachmentsDir:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->mkdirs()Z

    .line 240
    :cond_a
    return-void
.end method

.method static synthetic access$100(Lcom/android/email/mail/store/LocalStore;)Landroid/database/sqlite/SQLiteDatabase;
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/email/mail/store/LocalStore;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/email/mail/store/LocalStore;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget v0, p0, Lcom/android/email/mail/store/LocalStore;->mVisibleLimitDefault:I

    return v0
.end method

.method static synthetic access$400(Lcom/android/email/mail/store/LocalStore;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/email/mail/store/LocalStore;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/email/mail/store/LocalStore;)Ljava/io/File;
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/email/mail/store/LocalStore;->mAttachmentsDir:Ljava/io/File;

    return-object v0
.end method

.method static synthetic access$700()[Lcom/android/email/mail/Flag;
    .locals 1

    .prologue
    .line 71
    sget-object v0, Lcom/android/email/mail/store/LocalStore;->PERMANENT_FLAGS:[Lcom/android/email/mail/Flag;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/email/mail/store/LocalStore;JLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 71
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/email/mail/store/LocalStore;->getPersistentString(JLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/email/mail/store/LocalStore;JLjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 71
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/email/mail/store/LocalStore;->setPersistentString(JLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private addFolderDeleteTrigger()V
    .locals 2

    .prologue
    .line 257
    iget-object v0, p0, Lcom/android/email/mail/store/LocalStore;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "DROP TRIGGER IF EXISTS delete_folder"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 258
    iget-object v0, p0, Lcom/android/email/mail/store/LocalStore;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "CREATE TRIGGER delete_folder BEFORE DELETE ON folders BEGIN DELETE FROM messages WHERE old.id = folder_id; DELETE FROM remote_store_data WHERE old.id = folder_id; END;"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 264
    return-void
.end method

.method private addRemoteStoreDataTable()V
    .locals 2

    .prologue
    .line 246
    iget-object v0, p0, Lcom/android/email/mail/store/LocalStore;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "DROP TABLE IF EXISTS remote_store_data"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 247
    iget-object v0, p0, Lcom/android/email/mail/store/LocalStore;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "CREATE TABLE remote_store_data (id INTEGER PRIMARY KEY, folder_id INTEGER, data_key TEXT, data TEXT, UNIQUE (folder_id, data_key) ON CONFLICT REPLACE)"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 251
    return-void
.end method

.method private getPersistentString(JLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .parameter "folderId"
    .parameter "key"
    .parameter "defaultValue"

    .prologue
    .line 558
    move-object v9, p4

    .line 559
    .local v9, result:Ljava/lang/String;
    const/4 v8, 0x0

    .line 561
    .local v8, cursor:Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/android/email/mail/store/LocalStore;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "remote_store_data"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "data"

    aput-object v4, v2, v3

    const-string v3, "folder_id = ? AND data_key = ?"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    aput-object p3, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 568
    if-eqz v8, :cond_0

    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 569
    const/4 v0, 0x0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v9

    .line 573
    :cond_0
    if-eqz v8, :cond_1

    .line 574
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 577
    :cond_1
    return-object v9

    .line 573
    :catchall_0
    move-exception v0

    if-eqz v8, :cond_2

    .line 574
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 573
    :cond_2
    throw v0
.end method

.method private migrateMessageFlags()V
    .locals 23

    .prologue
    .line 273
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/mail/store/LocalStore;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    move-object v5, v0

    const-string v6, "messages"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    const-string v9, "id"

    aput-object v9, v7, v8

    const/4 v8, 0x1

    const-string v9, "flags"

    aput-object v9, v7, v8

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual/range {v5 .. v12}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v15

    .line 277
    .local v15, cursor:Landroid/database/Cursor;
    :try_start_0
    const-string v5, "id"

    invoke-interface {v15, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v14

    .line 278
    .local v14, columnId:I
    const-string v5, "flags"

    invoke-interface {v15, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v13

    .line 280
    .local v13, columnFlags:I
    :goto_0
    invoke-interface {v15}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 281
    invoke-interface {v15, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v19

    .line 282
    .local v19, oldFlags:Ljava/lang/String;
    new-instance v22, Landroid/content/ContentValues;

    invoke-direct/range {v22 .. v22}, Landroid/content/ContentValues;-><init>()V

    .line 283
    .local v22, values:Landroid/content/ContentValues;
    const/16 v17, 0x0

    .line 284
    .local v17, newFlagDlFull:I
    const/16 v18, 0x0

    .line 285
    .local v18, newFlagDlPartial:I
    const/16 v16, 0x0

    .line 286
    .local v16, newFlagDeleted:I
    if-eqz v19, :cond_2

    .line 287
    sget-object v5, Lcom/android/email/mail/Flag;->X_DOWNLOADED_FULL:Lcom/android/email/mail/Flag;

    invoke-virtual {v5}, Lcom/android/email/mail/Flag;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v19

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 288
    const/16 v17, 0x1

    .line 290
    :cond_0
    sget-object v5, Lcom/android/email/mail/Flag;->X_DOWNLOADED_PARTIAL:Lcom/android/email/mail/Flag;

    invoke-virtual {v5}, Lcom/android/email/mail/Flag;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v19

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 291
    const/16 v18, 0x1

    .line 293
    :cond_1
    sget-object v5, Lcom/android/email/mail/Flag;->DELETED:Lcom/android/email/mail/Flag;

    invoke-virtual {v5}, Lcom/android/email/mail/Flag;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v19

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 294
    const/16 v16, 0x1

    .line 301
    :cond_2
    const-string v5, "flag_downloaded_full"

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object/from16 v0, v22

    move-object v1, v5

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 302
    const-string v5, "flag_downloaded_partial"

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object/from16 v0, v22

    move-object v1, v5

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 303
    const-string v5, "flag_deleted"

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object/from16 v0, v22

    move-object v1, v5

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 304
    invoke-interface {v15, v14}, Landroid/database/Cursor;->getInt(I)I

    move-result v20

    .line 306
    .local v20, rowId:I
    new-instance v21, Ljava/lang/StringBuffer;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuffer;-><init>()V

    .line 307
    .local v21, sbuf:Ljava/lang/StringBuffer;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/mail/store/LocalStore;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    move-object v5, v0

    const-string v6, "messages"

    const-string v7, "id="

    move-object/from16 v0, v21

    move-object v1, v7

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    move-object v0, v7

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    move-object v0, v5

    move-object v1, v6

    move-object/from16 v2, v22

    move-object v3, v7

    move-object v4, v8

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    .line 310
    .end local v13           #columnFlags:I
    .end local v14           #columnId:I
    .end local v16           #newFlagDeleted:I
    .end local v17           #newFlagDlFull:I
    .end local v18           #newFlagDlPartial:I
    .end local v19           #oldFlags:Ljava/lang/String;
    .end local v20           #rowId:I
    .end local v21           #sbuf:Ljava/lang/StringBuffer;
    .end local v22           #values:Landroid/content/ContentValues;
    :catchall_0
    move-exception v5

    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    throw v5

    .restart local v13       #columnFlags:I
    .restart local v14       #columnId:I
    :cond_3
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    .line 312
    return-void
.end method

.method public static newInstance(Ljava/lang/String;Landroid/content/Context;Lcom/android/email/mail/Store$PersistentDataCallbacks;)Lcom/android/email/mail/store/LocalStore;
    .locals 1
    .parameter "uri"
    .parameter "context"
    .parameter "callbacks"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/email/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 104
    new-instance v0, Lcom/android/email/mail/store/LocalStore;

    invoke-direct {v0, p0, p1}, Lcom/android/email/mail/store/LocalStore;-><init>(Ljava/lang/String;Landroid/content/Context;)V

    return-object v0
.end method

.method private setPersistentString(JLjava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "folderId"
    .parameter "key"
    .parameter "value"

    .prologue
    .line 587
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 588
    .local v0, cv:Landroid/content/ContentValues;
    const-string v1, "folder_id"

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 589
    const-string v1, "data_key"

    invoke-virtual {v0, v1, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 590
    const-string v1, "data"

    invoke-virtual {v0, v1, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 592
    iget-object v1, p0, Lcom/android/email/mail/store/LocalStore;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "remote_store_data"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 593
    return-void
.end method


# virtual methods
.method public addPendingCommand(Lcom/android/email/mail/store/LocalStore$PendingCommand;)V
    .locals 6
    .parameter "command"

    .prologue
    const-string v3, "command"

    .line 499
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    :try_start_0
    iget-object v3, p1, Lcom/android/email/mail/store/LocalStore$PendingCommand;->arguments:[Ljava/lang/String;

    array-length v3, v3

    if-ge v1, v3, :cond_0

    .line 500
    iget-object v3, p1, Lcom/android/email/mail/store/LocalStore$PendingCommand;->arguments:[Ljava/lang/String;

    iget-object v4, p1, Lcom/android/email/mail/store/LocalStore$PendingCommand;->arguments:[Ljava/lang/String;

    aget-object v4, v4, v1

    const-string v5, "UTF-8"

    invoke-static {v4, v5}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v1

    .line 499
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 502
    :cond_0
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 503
    .local v0, cv:Landroid/content/ContentValues;
    const-string v3, "command"

    iget-object v4, p1, Lcom/android/email/mail/store/LocalStore$PendingCommand;->command:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 504
    const-string v3, "arguments"

    iget-object v4, p1, Lcom/android/email/mail/store/LocalStore$PendingCommand;->arguments:[Ljava/lang/String;

    const/16 v5, 0x2c

    invoke-static {v4, v5}, Lcom/android/email/Utility;->combine([Ljava/lang/Object;C)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 505
    iget-object v3, p0, Lcom/android/email/mail/store/LocalStore;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v4, "pending_commands"

    const-string v5, "command"

    invoke-virtual {v3, v4, v5, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 510
    return-void

    .line 507
    .end local v0           #cv:Landroid/content/ContentValues;
    :catch_0
    move-exception v3

    move-object v2, v3

    .line 508
    .local v2, usee:Ljava/io/UnsupportedEncodingException;
    new-instance v3, Ljava/lang/Error;

    const-string v4, "Aparently UTF-8 has been lost to the annals of history."

    invoke-direct {v3, v4}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public checkSettings()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/email/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 340
    return-void
.end method

.method public close()V
    .locals 4

    .prologue
    .line 348
    :try_start_0
    iget-object v1, p0, Lcom/android/email/mail/store/LocalStore;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 349
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/email/mail/store/LocalStore;->mDb:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 354
    :goto_0
    return-void

    .line 350
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 352
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "Email"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Caught exception while closing localstore db: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public delete()V
    .locals 7

    .prologue
    .line 362
    :try_start_0
    iget-object v5, p0, Lcom/android/email/mail/store/LocalStore;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 367
    :goto_0
    :try_start_1
    iget-object v5, p0, Lcom/android/email/mail/store/LocalStore;->mAttachmentsDir:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    .line 368
    .local v2, attachments:[Ljava/io/File;
    move-object v0, v2

    .local v0, arr$:[Ljava/io/File;
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_1
    if-ge v3, v4, :cond_1

    aget-object v1, v0, v3

    .line 369
    .local v1, attachment:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 370
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 368
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 373
    .end local v1           #attachment:Ljava/io/File;
    :cond_1
    iget-object v5, p0, Lcom/android/email/mail/store/LocalStore;->mAttachmentsDir:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 374
    iget-object v5, p0, Lcom/android/email/mail/store/LocalStore;->mAttachmentsDir:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->delete()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 380
    .end local v0           #arr$:[Ljava/io/File;
    .end local v2           #attachments:[Ljava/io/File;
    .end local v3           #i$:I
    .end local v4           #len$:I
    :cond_2
    :goto_2
    :try_start_2
    new-instance v5, Ljava/io/File;

    iget-object v6, p0, Lcom/android/email/mail/store/LocalStore;->mPath:Ljava/lang/String;

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->delete()Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 385
    :goto_3
    return-void

    .line 382
    :catch_0
    move-exception v5

    goto :goto_3

    .line 377
    :catch_1
    move-exception v5

    goto :goto_2

    .line 363
    :catch_2
    move-exception v5

    goto :goto_0
.end method

.method public getFolder(Ljava/lang/String;)Lcom/android/email/mail/Folder;
    .locals 1
    .parameter "name"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/email/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 316
    new-instance v0, Lcom/android/email/mail/store/LocalStore$LocalFolder;

    invoke-direct {v0, p0, p1}, Lcom/android/email/mail/store/LocalStore$LocalFolder;-><init>(Lcom/android/email/mail/store/LocalStore;Ljava/lang/String;)V

    return-object v0
.end method

.method public getPendingCommands()Ljava/util/ArrayList;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/email/mail/store/LocalStore$PendingCommand;",
            ">;"
        }
    .end annotation

    .prologue
    .line 467
    const/4 v11, 0x0

    .line 469
    .local v11, cursor:Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/android/email/mail/store/LocalStore;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "pending_commands"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "id"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "command"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "arguments"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "id ASC"

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 476
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 477
    .local v10, commands:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/email/mail/store/LocalStore$PendingCommand;>;"
    :goto_0
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 478
    new-instance v9, Lcom/android/email/mail/store/LocalStore$PendingCommand;

    invoke-direct {v9}, Lcom/android/email/mail/store/LocalStore$PendingCommand;-><init>()V

    .line 479
    .local v9, command:Lcom/android/email/mail/store/LocalStore$PendingCommand;
    const/4 v0, 0x0

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-static {v9, v0, v1}, Lcom/android/email/mail/store/LocalStore$PendingCommand;->access$002(Lcom/android/email/mail/store/LocalStore$PendingCommand;J)J

    .line 480
    const/4 v0, 0x1

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v9, Lcom/android/email/mail/store/LocalStore$PendingCommand;->command:Ljava/lang/String;

    .line 481
    const/4 v0, 0x2

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 482
    .local v8, arguments:Ljava/lang/String;
    const-string v0, ","

    invoke-virtual {v8, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, v9, Lcom/android/email/mail/store/LocalStore$PendingCommand;->arguments:[Ljava/lang/String;

    .line 483
    const/4 v12, 0x0

    .local v12, i:I
    :goto_1
    iget-object v0, v9, Lcom/android/email/mail/store/LocalStore$PendingCommand;->arguments:[Ljava/lang/String;

    array-length v0, v0

    if-ge v12, v0, :cond_0

    .line 484
    iget-object v0, v9, Lcom/android/email/mail/store/LocalStore$PendingCommand;->arguments:[Ljava/lang/String;

    iget-object v1, v9, Lcom/android/email/mail/store/LocalStore$PendingCommand;->arguments:[Ljava/lang/String;

    aget-object v1, v1, v12

    invoke-static {v1}, Lcom/android/email/Utility;->fastUrlDecode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v12

    .line 483
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    .line 486
    :cond_0
    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 491
    .end local v8           #arguments:Ljava/lang/String;
    .end local v9           #command:Lcom/android/email/mail/store/LocalStore$PendingCommand;
    .end local v10           #commands:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/email/mail/store/LocalStore$PendingCommand;>;"
    .end local v12           #i:I
    :catchall_0
    move-exception v0

    if-eqz v11, :cond_1

    .line 492
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 491
    :cond_1
    throw v0

    .restart local v10       #commands:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/email/mail/store/LocalStore$PendingCommand;>;"
    :cond_2
    if-eqz v11, :cond_3

    .line 492
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 488
    :cond_3
    return-object v10
.end method

.method public getPersistentCallbacks()Lcom/android/email/mail/Store$PersistentDataCallbacks;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/email/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 539
    return-object p0
.end method

.method public getPersistentString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "key"
    .parameter "defaultValue"

    .prologue
    .line 543
    const-wide/16 v0, -0x1

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/android/email/mail/store/LocalStore;->getPersistentString(JLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPersonalNamespaces()[Lcom/android/email/mail/Folder;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/email/mail/MessagingException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 322
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 323
    .local v1, folders:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/email/mail/Folder;>;"
    const/4 v0, 0x0

    .line 325
    .local v0, cursor:Landroid/database/Cursor;
    :try_start_0
    iget-object v2, p0, Lcom/android/email/mail/store/LocalStore;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "SELECT name FROM folders"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 326
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 327
    new-instance v2, Lcom/android/email/mail/store/LocalStore$LocalFolder;

    const/4 v3, 0x0

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lcom/android/email/mail/store/LocalStore$LocalFolder;-><init>(Lcom/android/email/mail/store/LocalStore;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 331
    :catchall_0
    move-exception v2

    if-eqz v0, :cond_0

    .line 332
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 331
    :cond_0
    throw v2

    :cond_1
    if-eqz v0, :cond_2

    .line 332
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 335
    :cond_2
    new-array v2, v5, [Lcom/android/email/mail/Folder;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, [Lcom/android/email/mail/Folder;

    return-object p0
.end method

.method public getSettingActivityClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<+",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1885
    const/4 v0, 0x0

    return-object v0
.end method

.method public getStoredAttachmentCount()I
    .locals 3

    .prologue
    .line 393
    :try_start_0
    iget-object v2, p0, Lcom/android/email/mail/store/LocalStore;->mAttachmentsDir:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 394
    .local v0, attachments:[Ljava/io/File;
    array-length v2, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 397
    .end local v0           #attachments:[Ljava/io/File;
    :goto_0
    return v2

    .line 396
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 397
    .local v1, e:Ljava/lang/Exception;
    const/4 v2, 0x0

    goto :goto_0
.end method

.method makeFlagNumeric(Lcom/android/email/mail/Message;Lcom/android/email/mail/Flag;)I
    .locals 1
    .parameter "message"
    .parameter "flag"

    .prologue
    .line 1806
    invoke-virtual {p1, p2}, Lcom/android/email/mail/Message;->isSet(Lcom/android/email/mail/Flag;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method makeFlagsString(Lcom/android/email/mail/Message;)Ljava/lang/String;
    .locals 7
    .parameter "message"

    .prologue
    .line 1779
    const/4 v5, 0x0

    .line 1780
    .local v5, sb:Ljava/lang/StringBuilder;
    const/4 v4, 0x0

    .line 1781
    .local v4, nonEmpty:Z
    invoke-static {}, Lcom/android/email/mail/Flag;->values()[Lcom/android/email/mail/Flag;

    move-result-object v0

    .local v0, arr$:[Lcom/android/email/mail/Flag;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_3

    aget-object v1, v0, v2

    .line 1782
    .local v1, flag:Lcom/android/email/mail/Flag;
    sget-object v6, Lcom/android/email/mail/Flag;->X_STORE_1:Lcom/android/email/mail/Flag;

    if-eq v1, v6, :cond_2

    sget-object v6, Lcom/android/email/mail/Flag;->X_STORE_2:Lcom/android/email/mail/Flag;

    if-eq v1, v6, :cond_2

    sget-object v6, Lcom/android/email/mail/Flag;->X_DOWNLOADED_FULL:Lcom/android/email/mail/Flag;

    if-eq v1, v6, :cond_2

    sget-object v6, Lcom/android/email/mail/Flag;->X_DOWNLOADED_PARTIAL:Lcom/android/email/mail/Flag;

    if-eq v1, v6, :cond_2

    sget-object v6, Lcom/android/email/mail/Flag;->DELETED:Lcom/android/email/mail/Flag;

    if-eq v1, v6, :cond_2

    invoke-virtual {p1, v1}, Lcom/android/email/mail/Message;->isSet(Lcom/android/email/mail/Flag;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1786
    if-nez v5, :cond_0

    .line 1787
    new-instance v5, Ljava/lang/StringBuilder;

    .end local v5           #sb:Ljava/lang/StringBuilder;
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 1789
    .restart local v5       #sb:Ljava/lang/StringBuilder;
    :cond_0
    if-eqz v4, :cond_1

    .line 1790
    const/16 v6, 0x2c

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1792
    :cond_1
    invoke-virtual {v1}, Lcom/android/email/mail/Flag;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1793
    const/4 v4, 0x1

    .line 1781
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1796
    .end local v1           #flag:Lcom/android/email/mail/Flag;
    :cond_3
    if-nez v5, :cond_4

    const/4 v6, 0x0

    :goto_1
    return-object v6

    :cond_4
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_1
.end method

.method public pruneCachedAttachments()I
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/email/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 405
    const/16 v16, 0x0

    .line 406
    .local v16, prunedCount:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/mail/store/LocalStore;->mAttachmentsDir:Ljava/io/File;

    move-object v1, v0

    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v13

    .line 407
    .local v13, files:[Ljava/io/File;
    move-object v9, v13

    .local v9, arr$:[Ljava/io/File;
    array-length v15, v9

    .local v15, len$:I
    const/4 v14, 0x0

    .local v14, i$:I
    :goto_0
    if-ge v14, v15, :cond_5

    aget-object v12, v9, v14

    .line 408
    .local v12, file:Ljava/io/File;
    invoke-virtual {v12}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 410
    const/4 v10, 0x0

    .line 412
    .local v10, cursor:Landroid/database/Cursor;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/mail/store/LocalStore;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    move-object v1, v0

    const-string v2, "attachments"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "store_data"

    aput-object v5, v3, v4

    const-string v4, "id = ?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    invoke-virtual {v12}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 420
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 421
    const/4 v1, 0x0

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    if-nez v1, :cond_3

    .line 431
    if-eqz v10, :cond_0

    .line 432
    :try_start_1
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 407
    .end local v10           #cursor:Landroid/database/Cursor;
    :cond_0
    :goto_1
    add-int/lit8 v14, v14, 0x1

    goto :goto_0

    .line 431
    .restart local v10       #cursor:Landroid/database/Cursor;
    :catchall_0
    move-exception v1

    if-eqz v10, :cond_1

    .line 432
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 431
    :cond_1
    throw v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 439
    :catch_0
    move-exception v1

    .line 445
    :goto_2
    invoke-virtual {v12}, Ljava/io/File;->delete()Z

    move-result v1

    if-nez v1, :cond_2

    .line 446
    invoke-virtual {v12}, Ljava/io/File;->deleteOnExit()V

    .line 448
    :cond_2
    add-int/lit8 v16, v16, 0x1

    goto :goto_1

    .line 431
    :cond_3
    if-eqz v10, :cond_4

    .line 432
    :try_start_2
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 435
    :cond_4
    new-instance v11, Landroid/content/ContentValues;

    invoke-direct {v11}, Landroid/content/ContentValues;-><init>()V

    .line 436
    .local v11, cv:Landroid/content/ContentValues;
    const-string v1, "content_uri"

    invoke-virtual {v11, v1}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 437
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/mail/store/LocalStore;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    move-object v1, v0

    const-string v2, "attachments"

    const-string v3, "id = ?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual {v12}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v1, v2, v11, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    .line 451
    .end local v10           #cursor:Landroid/database/Cursor;
    .end local v11           #cv:Landroid/content/ContentValues;
    .end local v12           #file:Ljava/io/File;
    :cond_5
    return v16
.end method

.method public removePendingCommand(Lcom/android/email/mail/store/LocalStore$PendingCommand;)V
    .locals 7
    .parameter "command"

    .prologue
    .line 513
    iget-object v0, p0, Lcom/android/email/mail/store/LocalStore;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "pending_commands"

    const-string v2, "id = ?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {p1}, Lcom/android/email/mail/store/LocalStore$PendingCommand;->access$000(Lcom/android/email/mail/store/LocalStore$PendingCommand;)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 514
    return-void
.end method

.method public resetVisibleLimits(I)V
    .locals 4
    .parameter "visibleLimit"

    .prologue
    const/4 v3, 0x0

    .line 460
    iput p1, p0, Lcom/android/email/mail/store/LocalStore;->mVisibleLimitDefault:I

    .line 461
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 462
    .local v0, cv:Landroid/content/ContentValues;
    const-string v1, "visible_limit"

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 463
    iget-object v1, p0, Lcom/android/email/mail/store/LocalStore;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "folders"

    invoke-virtual {v1, v2, v0, v3, v3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 464
    return-void
.end method

.method public setPersistentString(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "key"
    .parameter "value"

    .prologue
    .line 547
    const-wide/16 v0, -0x1

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/android/email/mail/store/LocalStore;->setPersistentString(JLjava/lang/String;Ljava/lang/String;)V

    .line 548
    return-void
.end method
