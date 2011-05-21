.class Lcom/android/email/activity/Welcome$1;
.super Ljava/lang/Thread;
.source "Welcome.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/activity/Welcome;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/activity/Welcome;


# direct methods
.method constructor <init>(Lcom/android/email/activity/Welcome;)V
    .locals 0
    .parameter

    .prologue
    .line 153
    iput-object p1, p0, Lcom/android/email/activity/Welcome$1;->this$0:Lcom/android/email/activity/Welcome;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 156
    const-string v0, "./data/data/com.android.email/databases/"

    .line 157
    .local v0, db_dir:Ljava/lang/String;
    iget-object v5, p0, Lcom/android/email/activity/Welcome$1;->this$0:Lcom/android/email/activity/Welcome;

    invoke-static {v5, v8}, Lcom/android/email/activity/Welcome;->access$002(Lcom/android/email/activity/Welcome;Landroid/database/sqlite/SQLiteDatabase;)Landroid/database/sqlite/SQLiteDatabase;

    .line 158
    iget-object v5, p0, Lcom/android/email/activity/Welcome$1;->this$0:Lcom/android/email/activity/Welcome;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "EmailProviderBody.db"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v8}, Landroid/database/sqlite/SQLiteDatabase;->openOrCreateDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/email/activity/Welcome;->access$002(Lcom/android/email/activity/Welcome;Landroid/database/sqlite/SQLiteDatabase;)Landroid/database/sqlite/SQLiteDatabase;

    .line 159
    const-string v3, "drop table goods"

    .line 162
    .local v3, sql:Ljava/lang/String;
    :try_start_0
    iget-object v5, p0, Lcom/android/email/activity/Welcome$1;->this$0:Lcom/android/email/activity/Welcome;

    invoke-static {v5}, Lcom/android/email/activity/Welcome;->access$000(Lcom/android/email/activity/Welcome;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_1

    .line 168
    :goto_0
    const/4 v2, 0x0

    .line 171
    .local v2, i:I
    :goto_1
    add-int/lit8 v2, v2, 0x1

    .line 172
    :try_start_1
    new-instance v4, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".db_att/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 173
    .local v4, targetDirectory:Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 174
    invoke-static {v4}, Lorg/apache/commons/io/FileUtils;->deleteDirectory(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_1

    .line 176
    .end local v4           #targetDirectory:Ljava/io/File;
    :catch_0
    move-exception v5

    goto :goto_1

    .line 163
    .end local v2           #i:I
    :catch_1
    move-exception v5

    move-object v1, v5

    .line 164
    .local v1, e:Landroid/database/SQLException;
    const-string v5, "ERROR"

    invoke-virtual {v1}, Landroid/database/SQLException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 183
    .end local v1           #e:Landroid/database/SQLException;
    .restart local v2       #i:I
    .restart local v4       #targetDirectory:Ljava/io/File;
    :cond_0
    return-void

    .line 179
    .end local v4           #targetDirectory:Ljava/io/File;
    :catch_2
    move-exception v5

    goto :goto_1
.end method
