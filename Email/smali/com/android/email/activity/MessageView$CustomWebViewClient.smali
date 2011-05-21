.class Lcom/android/email/activity/MessageView$CustomWebViewClient;
.super Landroid/webkit/WebViewClient;
.source "MessageView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/activity/MessageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CustomWebViewClient"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/activity/MessageView;


# direct methods
.method private constructor <init>(Lcom/android/email/activity/MessageView;)V
    .locals 0
    .parameter

    .prologue
    .line 2195
    iput-object p1, p0, Lcom/android/email/activity/MessageView$CustomWebViewClient;->this$0:Lcom/android/email/activity/MessageView;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 6
    .parameter "view"
    .parameter "url"

    .prologue
    const-string v5, "sholdOverrideUrlLoaging >>> "

    const-string v4, "View >>"

    .line 2206
    const-string v2, "View >>"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sholdOverrideUrlLoaging >>> "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/android/email/Email;->logv(Ljava/lang/String;Ljava/lang/String;)V

    .line 2208
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string v3, "mailto:"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2209
    iget-object v2, p0, Lcom/android/email/activity/MessageView$CustomWebViewClient;->this$0:Lcom/android/email/activity/MessageView;

    iget-object v3, p0, Lcom/android/email/activity/MessageView$CustomWebViewClient;->this$0:Lcom/android/email/activity/MessageView;

    invoke-static {v3}, Lcom/android/email/activity/MessageView;->access$1800(Lcom/android/email/activity/MessageView;)J

    move-result-wide v3

    invoke-static {v2, p2, v3, v4}, Lcom/android/email/activity/MessageCompose;->actionCompose(Landroid/content/Context;Ljava/lang/String;J)Z

    move-result v2

    .line 2226
    :goto_0
    return v2

    .line 2213
    :cond_0
    const-string v2, "View >>"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sholdOverrideUrlLoaging >>> "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/android/email/Email;->logv(Ljava/lang/String;Ljava/lang/String;)V

    .line 2214
    const/4 v1, 0x0

    .line 2215
    .local v1, result:Z
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 2216
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "android.intent.category.BROWSABLE"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 2217
    const-string v2, "com.android.browser.application_id"

    iget-object v3, p0, Lcom/android/email/activity/MessageView$CustomWebViewClient;->this$0:Lcom/android/email/activity/MessageView;

    invoke-virtual {v3}, Lcom/android/email/activity/MessageView;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2218
    const/high16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 2220
    :try_start_0
    iget-object v2, p0, Lcom/android/email/activity/MessageView$CustomWebViewClient;->this$0:Lcom/android/email/activity/MessageView;

    invoke-virtual {v2, v0}, Lcom/android/email/activity/MessageView;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2221
    const/4 v1, 0x1

    :goto_1
    move v2, v1

    .line 2226
    goto :goto_0

    .line 2222
    :catch_0
    move-exception v2

    goto :goto_1
.end method
