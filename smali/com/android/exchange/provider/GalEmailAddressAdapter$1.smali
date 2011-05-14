.class Lcom/android/exchange/provider/GalEmailAddressAdapter$1;
.super Ljava/lang/Object;
.source "GalEmailAddressAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/exchange/provider/GalEmailAddressAdapter;->runQueryOnBackgroundThread(Ljava/lang/CharSequence;)Landroid/database/Cursor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/exchange/provider/GalEmailAddressAdapter;

.field final synthetic val$constraintString:Ljava/lang/String;

.field final synthetic val$matrixCursor:Landroid/database/MatrixCursor;

.field final synthetic val$mergedResultCursor:Lcom/android/exchange/provider/GalEmailAddressAdapter$MyMergeCursor;


# direct methods
.method constructor <init>(Lcom/android/exchange/provider/GalEmailAddressAdapter;Ljava/lang/String;Lcom/android/exchange/provider/GalEmailAddressAdapter$MyMergeCursor;Landroid/database/MatrixCursor;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 127
    iput-object p1, p0, Lcom/android/exchange/provider/GalEmailAddressAdapter$1;->this$0:Lcom/android/exchange/provider/GalEmailAddressAdapter;

    iput-object p2, p0, Lcom/android/exchange/provider/GalEmailAddressAdapter$1;->val$constraintString:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/exchange/provider/GalEmailAddressAdapter$1;->val$mergedResultCursor:Lcom/android/exchange/provider/GalEmailAddressAdapter$MyMergeCursor;

    iput-object p4, p0, Lcom/android/exchange/provider/GalEmailAddressAdapter$1;->val$matrixCursor:Landroid/database/MatrixCursor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v3, 0x0

    .line 129
    sget-object v0, Lcom/android/exchange/provider/ExchangeProvider;->GAL_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/exchange/provider/GalEmailAddressAdapter$1;->this$0:Lcom/android/exchange/provider/GalEmailAddressAdapter;

    invoke-static {v2}, Lcom/android/exchange/provider/GalEmailAddressAdapter;->access$000(Lcom/android/exchange/provider/GalEmailAddressAdapter;)Lcom/android/email/provider/EmailContent$Account;

    move-result-object v2

    iget-wide v4, v2, Lcom/android/email/provider/EmailContent$Account;->mId:J

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/exchange/provider/GalEmailAddressAdapter$1;->val$constraintString:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 137
    .local v1, galUri:Landroid/net/Uri;
    iget-object v0, p0, Lcom/android/exchange/provider/GalEmailAddressAdapter$1;->this$0:Lcom/android/exchange/provider/GalEmailAddressAdapter;

    invoke-static {v0}, Lcom/android/exchange/provider/GalEmailAddressAdapter;->access$100(Lcom/android/exchange/provider/GalEmailAddressAdapter;)Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Lcom/android/exchange/provider/ExchangeProvider;->GAL_PROJECTION:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 146
    .local v6, galCursor:Landroid/database/Cursor;
    iget-object v0, p0, Lcom/android/exchange/provider/GalEmailAddressAdapter$1;->val$mergedResultCursor:Lcom/android/exchange/provider/GalEmailAddressAdapter$MyMergeCursor;

    invoke-virtual {v0}, Lcom/android/exchange/provider/GalEmailAddressAdapter$MyMergeCursor;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 194
    :goto_0
    return-void

    .line 154
    :cond_0
    iget-object v0, p0, Lcom/android/exchange/provider/GalEmailAddressAdapter$1;->this$0:Lcom/android/exchange/provider/GalEmailAddressAdapter;

    invoke-static {v0}, Lcom/android/exchange/provider/GalEmailAddressAdapter;->access$400(Lcom/android/exchange/provider/GalEmailAddressAdapter;)Landroid/app/Activity;

    move-result-object v0

    new-instance v2, Lcom/android/exchange/provider/GalEmailAddressAdapter$1$1;

    invoke-direct {v2, p0, v6}, Lcom/android/exchange/provider/GalEmailAddressAdapter$1$1;-><init>(Lcom/android/exchange/provider/GalEmailAddressAdapter$1;Landroid/database/Cursor;)V

    invoke-virtual {v0, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
