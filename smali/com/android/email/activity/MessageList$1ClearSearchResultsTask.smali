.class Lcom/android/email/activity/MessageList$1ClearSearchResultsTask;
.super Landroid/os/AsyncTask;
.source "MessageList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/activity/MessageList;->onClearSearchResults()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ClearSearchResultsTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private mAccountId:J

.field private mProgressDlg:Landroid/app/ProgressDialog;

.field final synthetic this$0:Lcom/android/email/activity/MessageList;


# direct methods
.method public constructor <init>(Lcom/android/email/activity/MessageList;J)V
    .locals 0
    .parameter
    .parameter "accountId"

    .prologue
    .line 3096
    iput-object p1, p0, Lcom/android/email/activity/MessageList$1ClearSearchResultsTask;->this$0:Lcom/android/email/activity/MessageList;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 3097
    iput-wide p2, p0, Lcom/android/email/activity/MessageList$1ClearSearchResultsTask;->mAccountId:J

    .line 3098
    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 3091
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/email/activity/MessageList$1ClearSearchResultsTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 8
    .parameter "ignore"

    .prologue
    .line 3102
    iget-object v5, p0, Lcom/android/email/activity/MessageList$1ClearSearchResultsTask;->this$0:Lcom/android/email/activity/MessageList;

    invoke-static {v5}, Lcom/android/email/activity/MessageList;->access$3100(Lcom/android/email/activity/MessageList;)Landroid/database/Cursor;

    move-result-object v0

    .line 3103
    .local v0, c:Landroid/database/Cursor;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 3104
    .local v2, ids:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 3106
    :cond_0
    const/4 v5, 0x0

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3107
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-nez v5, :cond_0

    .line 3110
    :cond_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    .line 3111
    .local v3, msgId:J
    iget-object v5, p0, Lcom/android/email/activity/MessageList$1ClearSearchResultsTask;->this$0:Lcom/android/email/activity/MessageList;

    invoke-static {v5}, Lcom/android/email/activity/MessageList;->access$2000(Lcom/android/email/activity/MessageList;)Lcom/android/email/Controller;

    move-result-object v5

    iget-wide v6, p0, Lcom/android/email/activity/MessageList$1ClearSearchResultsTask;->mAccountId:J

    invoke-virtual {v5, v3, v4, v6, v7}, Lcom/android/email/Controller;->deleteMessage(JJ)V

    goto :goto_0

    .line 3113
    .end local v3           #msgId:J
    :cond_2
    const/4 v5, 0x0

    return-object v5
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 3091
    check-cast p1, Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/email/activity/MessageList$1ClearSearchResultsTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 1
    .parameter "ignore"

    .prologue
    .line 3127
    iget-object v0, p0, Lcom/android/email/activity/MessageList$1ClearSearchResultsTask;->mProgressDlg:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 3128
    return-void
.end method

.method protected onPreExecute()V
    .locals 5

    .prologue
    .line 3118
    iget-object v0, p0, Lcom/android/email/activity/MessageList$1ClearSearchResultsTask;->this$0:Lcom/android/email/activity/MessageList;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/email/activity/MessageList$1ClearSearchResultsTask;->this$0:Lcom/android/email/activity/MessageList;

    const v3, 0x7f08022b

    invoke-virtual {v2, v3}, Lcom/android/email/activity/MessageList;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/MessageList$1ClearSearchResultsTask;->mProgressDlg:Landroid/app/ProgressDialog;

    .line 3123
    return-void
.end method
