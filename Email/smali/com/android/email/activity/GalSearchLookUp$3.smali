.class Lcom/android/email/activity/GalSearchLookUp$3;
.super Landroid/os/AsyncTask;
.source "GalSearchLookUp.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/activity/GalSearchLookUp;->doGalSearch()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Landroid/database/Cursor;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/activity/GalSearchLookUp;


# direct methods
.method constructor <init>(Lcom/android/email/activity/GalSearchLookUp;)V
    .locals 0
    .parameter

    .prologue
    .line 142
    iput-object p1, p0, Lcom/android/email/activity/GalSearchLookUp$3;->this$0:Lcom/android/email/activity/GalSearchLookUp;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/String;)Landroid/database/Cursor;
    .locals 7
    .parameter "params"

    .prologue
    const/4 v4, 0x0

    .line 146
    sget-object v0, Lcom/android/exchange/provider/ExchangeProvider;->GAL_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/email/activity/GalSearchLookUp$3;->this$0:Lcom/android/email/activity/GalSearchLookUp;

    invoke-static {v2}, Lcom/android/email/activity/GalSearchLookUp;->access$200(Lcom/android/email/activity/GalSearchLookUp;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const/4 v2, 0x0

    aget-object v2, p1, v2

    invoke-virtual {v0, v2}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/email/activity/GalSearchLookUp$3;->this$0:Lcom/android/email/activity/GalSearchLookUp;

    invoke-static {v2}, Lcom/android/email/activity/GalSearchLookUp;->access$000(Lcom/android/email/activity/GalSearchLookUp;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 152
    .local v1, galUri:Landroid/net/Uri;
    iget-object v0, p0, Lcom/android/email/activity/GalSearchLookUp$3;->this$0:Lcom/android/email/activity/GalSearchLookUp;

    invoke-virtual {v0}, Lcom/android/email/activity/GalSearchLookUp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Lcom/android/exchange/provider/ExchangeProvider;->GAL_PROJECTION:[Ljava/lang/String;

    const-string v3, "fetchNext"

    const-string v5, "Emails"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 156
    .local v6, galCursor:Landroid/database/Cursor;
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    move-object v0, v6

    .line 159
    :goto_0
    return-object v0

    :cond_0
    move-object v0, v4

    goto :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 142
    check-cast p1, [Ljava/lang/String;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/email/activity/GalSearchLookUp$3;->doInBackground([Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Landroid/database/Cursor;)V
    .locals 1
    .parameter "result"

    .prologue
    .line 164
    if-eqz p1, :cond_0

    .line 165
    iget-object v0, p0, Lcom/android/email/activity/GalSearchLookUp$3;->this$0:Lcom/android/email/activity/GalSearchLookUp;

    invoke-static {v0}, Lcom/android/email/activity/GalSearchLookUp;->access$300(Lcom/android/email/activity/GalSearchLookUp;)Lcom/android/email/EmailAddressAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/email/EmailAddressAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 168
    :goto_0
    return-void

    .line 167
    :cond_0
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 142
    check-cast p1, Landroid/database/Cursor;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/email/activity/GalSearchLookUp$3;->onPostExecute(Landroid/database/Cursor;)V

    return-void
.end method
