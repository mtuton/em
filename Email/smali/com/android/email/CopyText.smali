.class Lcom/android/email/CopyText;
.super Lcom/android/email/ToolTipItem;
.source "TextSelector.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field mTextSelector:Lcom/android/email/TextSelector;


# direct methods
.method constructor <init>(Lcom/android/email/TextSelector;I)V
    .locals 5
    .parameter "ts"
    .parameter "nStrId"

    .prologue
    const-string v4, "CopyText"

    .line 265
    invoke-direct {p0}, Lcom/android/email/ToolTipItem;-><init>()V

    .line 262
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/email/CopyText;->mTextSelector:Lcom/android/email/TextSelector;

    .line 266
    const/4 v0, 0x0

    .line 267
    .local v0, strText:Ljava/lang/String;
    if-nez p1, :cond_0

    .line 268
    const-string v2, "CopyText"

    const-string v2, "CopyText : ts is null"

    invoke-static {v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    :goto_0
    iput-object p1, p0, Lcom/android/email/CopyText;->mTextSelector:Lcom/android/email/TextSelector;

    .line 277
    return-void

    .line 270
    :cond_0
    invoke-virtual {p1}, Lcom/android/email/TextSelector;->getTopWindow()Landroid/webkit/WebView;

    move-result-object v1

    .line 271
    .local v1, vWebView:Landroid/webkit/WebView;
    invoke-virtual {v1}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/email/ToolTipItem;->mstrText:Ljava/lang/String;

    .line 273
    const-string v2, "CopyText"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CopyText : String - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/email/ToolTipItem;->mstrText:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0
    .parameter "view"

    .prologue
    .line 281
    invoke-virtual {p0}, Lcom/android/email/CopyText;->onItemSelected()V

    .line 282
    return-void
.end method

.method public onItemSelected()V
    .locals 4

    .prologue
    .line 286
    iget-object v1, p0, Lcom/android/email/CopyText;->mTextSelector:Lcom/android/email/TextSelector;

    if-nez v1, :cond_1

    .line 301
    :cond_0
    :goto_0
    return-void

    .line 288
    :cond_1
    iget-object v1, p0, Lcom/android/email/CopyText;->mTextSelector:Lcom/android/email/TextSelector;

    invoke-virtual {v1}, Lcom/android/email/TextSelector;->getTopWindow()Landroid/webkit/WebView;

    move-result-object v0

    .line 289
    .local v0, vWebView:Landroid/webkit/WebView;
    if-eqz v0, :cond_0

    .line 290
    invoke-virtual {v0}, Landroid/webkit/WebView;->getWebTextSelectionControls()Landroid/webkit/WebTextSelectionControls;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 292
    invoke-virtual {v0}, Landroid/webkit/WebView;->getWebTextSelectionControls()Landroid/webkit/WebTextSelectionControls;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkit/WebTextSelectionControls;->copy()Z

    .line 295
    iget-object v1, p0, Lcom/android/email/CopyText;->mTextSelector:Lcom/android/email/TextSelector;

    invoke-virtual {v1}, Lcom/android/email/TextSelector;->clearSelection()V

    .line 298
    invoke-virtual {v0}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x1040360

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
