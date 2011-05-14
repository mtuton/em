.class Lcom/android/email/activity/MailboxList$LoadMailboxesTask;
.super Landroid/os/AsyncTask;
.source "MailboxList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/activity/MailboxList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LoadMailboxesTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Landroid/database/Cursor;",
        ">;"
    }
.end annotation


# instance fields
.field private mAccountKey:J

.field final synthetic this$0:Lcom/android/email/activity/MailboxList;


# direct methods
.method public constructor <init>(Lcom/android/email/activity/MailboxList;J)V
    .locals 0
    .parameter
    .parameter "accountId"

    .prologue
    .line 493
    iput-object p1, p0, Lcom/android/email/activity/MailboxList$LoadMailboxesTask;->this$0:Lcom/android/email/activity/MailboxList;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 494
    iput-wide p2, p0, Lcom/android/email/activity/MailboxList$LoadMailboxesTask;->mAccountKey:J

    .line 495
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Landroid/database/Cursor;
    .locals 8
    .parameter "params"

    .prologue
    .line 499
    iget-object v0, p0, Lcom/android/email/activity/MailboxList$LoadMailboxesTask;->this$0:Lcom/android/email/activity/MailboxList;

    sget-object v1, Lcom/android/email/provider/EmailContent$Mailbox;->CONTENT_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/android/email/activity/MailboxList$LoadMailboxesTask;->this$0:Lcom/android/email/activity/MailboxList;

    invoke-static {v2}, Lcom/android/email/activity/MailboxList;->access$300(Lcom/android/email/activity/MailboxList;)Lcom/android/email/activity/MailboxList$MailboxListAdapter;

    move-result-object v2

    iget-object v2, v2, Lcom/android/email/activity/MailboxList$MailboxListAdapter;->PROJECTION:[Ljava/lang/String;

    const-string v3, "accountKey=? AND type<64 AND flagVisible=1"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    iget-wide v6, p0, Lcom/android/email/activity/MailboxList$LoadMailboxesTask;->mAccountKey:J

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const-string v5, "type,displayName"

    invoke-virtual/range {v0 .. v5}, Lcom/android/email/activity/MailboxList;->managedQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 486
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/email/activity/MailboxList$LoadMailboxesTask;->doInBackground([Ljava/lang/Void;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Landroid/database/Cursor;)V
    .locals 1
    .parameter "cursor"

    .prologue
    .line 509
    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 513
    :cond_0
    :goto_0
    return-void

    .line 512
    :cond_1
    iget-object v0, p0, Lcom/android/email/activity/MailboxList$LoadMailboxesTask;->this$0:Lcom/android/email/activity/MailboxList;

    invoke-static {v0}, Lcom/android/email/activity/MailboxList;->access$300(Lcom/android/email/activity/MailboxList;)Lcom/android/email/activity/MailboxList$MailboxListAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/email/activity/MailboxList$MailboxListAdapter;->changeCursor(Landroid/database/Cursor;)V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 486
    check-cast p1, Landroid/database/Cursor;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/email/activity/MailboxList$LoadMailboxesTask;->onPostExecute(Landroid/database/Cursor;)V

    return-void
.end method
