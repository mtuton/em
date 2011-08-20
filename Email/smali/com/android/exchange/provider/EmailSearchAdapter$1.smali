.class Lcom/android/exchange/provider/EmailSearchAdapter$1;
.super Ljava/lang/Object;
.source "EmailSearchAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/exchange/provider/EmailSearchAdapter;->search()I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/exchange/provider/EmailSearchAdapter;


# direct methods
.method constructor <init>(Lcom/android/exchange/provider/EmailSearchAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 126
    iput-object p1, p0, Lcom/android/exchange/provider/EmailSearchAdapter$1;->this$0:Lcom/android/exchange/provider/EmailSearchAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 133
    new-instance v7, Ljava/text/SimpleDateFormat;

    const-string v0, "dd/MM/yyyy"

    invoke-direct {v7, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 136
    .local v7, formatter:Ljava/text/SimpleDateFormat;
    sget-object v0, Lcom/android/exchange/provider/ExchangeProvider;->EMAIL_SEARCH_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    iget-object v3, p0, Lcom/android/exchange/provider/EmailSearchAdapter$1;->this$0:Lcom/android/exchange/provider/EmailSearchAdapter;

    invoke-static {v3}, Lcom/android/exchange/provider/EmailSearchAdapter;->access$700(Lcom/android/exchange/provider/EmailSearchAdapter;)Lcom/android/email/provider/EmailContent$Account;

    move-result-object v3

    iget-wide v3, v3, Lcom/android/email/provider/EmailContent;->mId:J

    invoke-static {v3, v4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    iget-object v3, p0, Lcom/android/exchange/provider/EmailSearchAdapter$1;->this$0:Lcom/android/exchange/provider/EmailSearchAdapter;

    invoke-static {v3}, Lcom/android/exchange/provider/EmailSearchAdapter;->access$600(Lcom/android/exchange/provider/EmailSearchAdapter;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    iget-object v3, p0, Lcom/android/exchange/provider/EmailSearchAdapter$1;->this$0:Lcom/android/exchange/provider/EmailSearchAdapter;

    invoke-static {v3}, Lcom/android/exchange/provider/EmailSearchAdapter;->access$500(Lcom/android/exchange/provider/EmailSearchAdapter;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    iget-object v3, p0, Lcom/android/exchange/provider/EmailSearchAdapter$1;->this$0:Lcom/android/exchange/provider/EmailSearchAdapter;

    invoke-static {v3}, Lcom/android/exchange/provider/EmailSearchAdapter;->access$400(Lcom/android/exchange/provider/EmailSearchAdapter;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    iget-object v3, p0, Lcom/android/exchange/provider/EmailSearchAdapter$1;->this$0:Lcom/android/exchange/provider/EmailSearchAdapter;

    invoke-static {v3}, Lcom/android/exchange/provider/EmailSearchAdapter;->access$300(Lcom/android/exchange/provider/EmailSearchAdapter;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    iget-object v3, p0, Lcom/android/exchange/provider/EmailSearchAdapter$1;->this$0:Lcom/android/exchange/provider/EmailSearchAdapter;

    invoke-static {v3}, Lcom/android/exchange/provider/EmailSearchAdapter;->access$200(Lcom/android/exchange/provider/EmailSearchAdapter;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    iget-object v3, p0, Lcom/android/exchange/provider/EmailSearchAdapter$1;->this$0:Lcom/android/exchange/provider/EmailSearchAdapter;

    invoke-static {v3}, Lcom/android/exchange/provider/EmailSearchAdapter;->access$100(Lcom/android/exchange/provider/EmailSearchAdapter;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    iget-object v3, p0, Lcom/android/exchange/provider/EmailSearchAdapter$1;->this$0:Lcom/android/exchange/provider/EmailSearchAdapter;

    invoke-static {v3}, Lcom/android/exchange/provider/EmailSearchAdapter;->access$000(Lcom/android/exchange/provider/EmailSearchAdapter;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 156
    .local v1, emailSearchUri:Landroid/net/Uri;
    const-string v0, "Email"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Query: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    iget-object v0, p0, Lcom/android/exchange/provider/EmailSearchAdapter$1;->this$0:Lcom/android/exchange/provider/EmailSearchAdapter;

    invoke-static {v0}, Lcom/android/exchange/provider/EmailSearchAdapter;->access$800(Lcom/android/exchange/provider/EmailSearchAdapter;)Landroid/content/ContentResolver;

    move-result-object v0

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 163
    .local v6, emailSearchCursor:Landroid/database/Cursor;
    return-void
.end method
