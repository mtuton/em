.class Lcom/android/email/activity/MessageCompose$7;
.super Landroid/webkit/WebViewClient;
.source "MessageCompose.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/activity/MessageCompose;->initViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/activity/MessageCompose;


# direct methods
.method constructor <init>(Lcom/android/email/activity/MessageCompose;)V
    .locals 0
    .parameter

    .prologue
    .line 1682
    iput-object p1, p0, Lcom/android/email/activity/MessageCompose$7;->this$0:Lcom/android/email/activity/MessageCompose;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 6
    .parameter "view"
    .parameter "url"

    .prologue
    const/4 v5, 0x0

    .line 1686
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 1687
    const-string v1, "com.android.email.intent.action.EDIT_DRAFT"

    iget-object v2, p0, Lcom/android/email/activity/MessageCompose$7;->this$0:Lcom/android/email/activity/MessageCompose;

    invoke-static {v2}, Lcom/android/email/activity/MessageCompose;->access$2100(Lcom/android/email/activity/MessageCompose;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1689
    move-object v0, p1

    check-cast v0, Landroid/webkit/HtmlComposerView;

    move-object v1, v0

    iget-object v2, p0, Lcom/android/email/activity/MessageCompose$7;->this$0:Lcom/android/email/activity/MessageCompose;

    invoke-static {v2}, Lcom/android/email/activity/MessageCompose;->access$2200(Lcom/android/email/activity/MessageCompose;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "-small_fontsize_start-"

    const-string v4, "<font size=2>"

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "-small_fontsize_end-"

    const-string v4, "</font>"

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "\n"

    const-string v4, "<br>"

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/webkit/HtmlComposerView;->append(Ljava/lang/CharSequence;)V

    .line 1693
    move-object v0, p1

    check-cast v0, Landroid/webkit/HtmlComposerView;

    move-object v1, v0

    invoke-virtual {v1}, Landroid/webkit/HtmlComposerView;->undoRedoStateReset()V

    .line 1694
    check-cast p1, Landroid/webkit/HtmlComposerView;

    .end local p1
    invoke-virtual {p1, v5, v5}, Landroid/webkit/HtmlComposerView;->setEditableSelection(II)V

    .line 1696
    :cond_0
    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 1
    .parameter "view"
    .parameter "url"

    .prologue
    .line 1701
    const/4 v0, 0x1

    return v0
.end method
