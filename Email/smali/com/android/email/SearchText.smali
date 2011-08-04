.class Lcom/android/email/SearchText;
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
    const-string v4, "SearchText"

    .line 320
    invoke-direct {p0}, Lcom/android/email/ToolTipItem;-><init>()V

    .line 309
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/email/SearchText;->mTextSelector:Lcom/android/email/TextSelector;

    .line 321
    const/4 v0, 0x0

    .line 322
    .local v0, strText:Ljava/lang/String;
    if-nez p1, :cond_0

    .line 323
    const-string v2, "SearchText"

    const-string v2, "SearchText : ts is null"

    invoke-static {v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 331
    :goto_0
    iput-object p1, p0, Lcom/android/email/SearchText;->mTextSelector:Lcom/android/email/TextSelector;

    .line 332
    return-void

    .line 325
    :cond_0
    invoke-virtual {p1}, Lcom/android/email/TextSelector;->getTopWindow()Landroid/webkit/WebView;

    move-result-object v1

    .line 326
    .local v1, vWebView:Landroid/webkit/WebView;
    invoke-virtual {v1}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/email/SearchText;->mstrText:Ljava/lang/String;

    .line 328
    const-string v2, "SearchText"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SearchText : String - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/email/SearchText;->mstrText:Ljava/lang/String;

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
    .line 336
    invoke-virtual {p0}, Lcom/android/email/SearchText;->onItemSelected()V

    .line 337
    return-void
.end method

.method public onItemSelected()V
    .locals 13

    .prologue
    .line 342
    iget-object v11, p0, Lcom/android/email/SearchText;->mTextSelector:Lcom/android/email/TextSelector;

    invoke-virtual {v11}, Lcom/android/email/TextSelector;->getTopWindow()Landroid/webkit/WebView;

    move-result-object v11

    invoke-virtual {v11}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v6

    .line 343
    .local v6, mBrowserActivity:Landroid/content/Context;
    iget-object v11, p0, Lcom/android/email/SearchText;->mTextSelector:Lcom/android/email/TextSelector;

    invoke-virtual {v11}, Lcom/android/email/TextSelector;->getTopWindow()Landroid/webkit/WebView;

    move-result-object v11

    invoke-virtual {v11}, Landroid/webkit/WebView;->getWebTextSelectionControls()Landroid/webkit/WebTextSelectionControls;

    move-result-object v11

    invoke-virtual {v11}, Landroid/webkit/WebTextSelectionControls;->getSelectionText()Ljava/lang/String;

    move-result-object v8

    .line 344
    .local v8, mSelectedText:Ljava/lang/String;
    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v11

    iget-object v11, v11, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v11}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v7

    .line 345
    .local v7, mSelectedLanguage:Ljava/lang/String;
    iget-object v11, p0, Lcom/android/email/SearchText;->mTextSelector:Lcom/android/email/TextSelector;

    invoke-virtual {v11}, Lcom/android/email/TextSelector;->getTopWindow()Landroid/webkit/WebView;

    move-result-object v9

    .line 348
    .local v9, mWebView:Landroid/webkit/WebView;
    const-string v2, "http://www.google.com/m?q=%s"

    .line 350
    .local v2, QuickSearch_G:Ljava/lang/String;
    const-string v4, "http://en.wikipedia.org/w/index.php?search=%s&go=Go"

    .line 353
    .local v4, QuickSearch_W:Ljava/lang/String;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "http://www.google.com/dictionary?langpair="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "|"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "&q=%s&hl="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "&aq=f"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 356
    .local v1, QuickSearch_D:Ljava/lang/String;
    const-string v3, "http://translate.google.com/m?hl=en&sl=auto&tl=en&prev=_m&q=%s"

    .line 358
    .local v3, QuickSearch_T:Ljava/lang/String;
    const-string v0, "%s"

    .line 360
    .local v0, QUERY_PLACE_HOLDER:Ljava/lang/String;
    new-instance v5, Landroid/app/AlertDialog$Builder;

    invoke-virtual {v9}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-direct {v5, v11}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 361
    .local v5, builder:Landroid/app/AlertDialog$Builder;
    const v11, 0x7f0801b4

    invoke-virtual {v5, v11}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 362
    const v11, 0x7f060020

    new-instance v12, Lcom/android/email/SearchText$1;

    invoke-direct {v12, p0}, Lcom/android/email/SearchText$1;-><init>(Lcom/android/email/SearchText;)V

    invoke-virtual {v5, v11, v12}, Landroid/app/AlertDialog$Builder;->setItems(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 403
    iget-object v11, p0, Lcom/android/email/SearchText;->mTextSelector:Lcom/android/email/TextSelector;

    invoke-virtual {v11}, Lcom/android/email/TextSelector;->clearSelection()V

    .line 405
    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v10

    .line 406
    .local v10, searchPopup:Landroid/app/AlertDialog;
    invoke-virtual {v10}, Landroid/app/AlertDialog;->show()V

    .line 407
    return-void
.end method
