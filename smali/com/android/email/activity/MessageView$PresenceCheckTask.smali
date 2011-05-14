.class Lcom/android/email/activity/MessageView$PresenceCheckTask;
.super Landroid/os/AsyncTask;
.source "MessageView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/activity/MessageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PresenceCheckTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/activity/MessageView;


# direct methods
.method private constructor <init>(Lcom/android/email/activity/MessageView;)V
    .locals 0
    .parameter

    .prologue
    .line 3959
    iput-object p1, p0, Lcom/android/email/activity/MessageView$PresenceCheckTask;->this$0:Lcom/android/email/activity/MessageView;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/email/activity/MessageView;Lcom/android/email/activity/MessageView$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 3959
    invoke-direct {p0, p1}, Lcom/android/email/activity/MessageView$PresenceCheckTask;-><init>(Lcom/android/email/activity/MessageView;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/Integer;
    .locals 10
    .parameter "emails"

    .prologue
    const/4 v9, 0x0

    .line 3962
    iget-object v0, p0, Lcom/android/email/activity/MessageView$PresenceCheckTask;->this$0:Lcom/android/email/activity/MessageView;

    invoke-virtual {v0}, Lcom/android/email/activity/MessageView;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {}, Lcom/android/email/activity/MessageView;->access$3400()[Ljava/lang/String;

    move-result-object v2

    const-string v3, "data1=?"

    const/4 v5, 0x0

    move-object v4, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 3965
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 3967
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3968
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 3969
    .local v8, status:I
    invoke-static {v8}, Landroid/provider/ContactsContract$StatusUpdates;->getPresenceIconResourceId(I)I

    move-result v7

    .line 3970
    .local v7, icon:I
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 3973
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 3976
    .end local v7           #icon:I
    .end local v8           #status:I
    :goto_0
    return-object v0

    .line 3973
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 3976
    :cond_1
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    .line 3973
    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 3959
    check-cast p1, [Ljava/lang/String;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/email/activity/MessageView$PresenceCheckTask;->doInBackground([Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Integer;)V
    .locals 2
    .parameter "icon"

    .prologue
    .line 3981
    if-nez p1, :cond_0

    .line 3985
    :goto_0
    return-void

    .line 3984
    :cond_0
    iget-object v0, p0, Lcom/android/email/activity/MessageView$PresenceCheckTask;->this$0:Lcom/android/email/activity/MessageView;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/email/activity/MessageView;->access$3500(Lcom/android/email/activity/MessageView;I)V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 3959
    check-cast p1, Ljava/lang/Integer;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/email/activity/MessageView$PresenceCheckTask;->onPostExecute(Ljava/lang/Integer;)V

    return-void
.end method
