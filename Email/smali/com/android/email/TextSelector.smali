.class public Lcom/android/email/TextSelector;
.super Ljava/lang/Object;
.source "TextSelector.java"

# interfaces
.implements Landroid/webkit/WebView$WebTextSelectionListener;


# instance fields
.field private mComposerControl:Landroid/webkit/WebView;

.field private mIconPopup:Lcom/android/email/IconPopupMenu;

.field private m_nChangeCount:I

.field private m_nState:I


# direct methods
.method private createToolTip()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 90
    iget-object v1, p0, Lcom/android/email/TextSelector;->mIconPopup:Lcom/android/email/IconPopupMenu;

    if-eqz v1, :cond_0

    .line 101
    :goto_0
    return-void

    .line 93
    :cond_0
    invoke-virtual {p0}, Lcom/android/email/TextSelector;->getTopWindow()Landroid/webkit/WebView;

    move-result-object v0

    .line 94
    .local v0, vWebView:Landroid/webkit/WebView;
    new-instance v1, Lcom/android/email/IconPopupMenu;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/email/IconPopupMenu;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/email/TextSelector;->mIconPopup:Lcom/android/email/IconPopupMenu;

    .line 97
    iget-object v1, p0, Lcom/android/email/TextSelector;->mIconPopup:Lcom/android/email/IconPopupMenu;

    const v2, 0x7f0200af

    new-instance v3, Lcom/android/email/CopyText;

    const v4, 0x7f0801b3

    invoke-direct {v3, p0, v4}, Lcom/android/email/CopyText;-><init>(Lcom/android/email/TextSelector;I)V

    invoke-virtual {v1, v2, v3, v5, v6}, Lcom/android/email/IconPopupMenu;->addIcon(ILandroid/view/View$OnClickListener;ILjava/lang/String;)V

    .line 98
    iget-object v1, p0, Lcom/android/email/TextSelector;->mIconPopup:Lcom/android/email/IconPopupMenu;

    const v2, 0x7f0200b0

    new-instance v3, Lcom/android/email/SearchText;

    const v4, 0x7f0801b4

    invoke-direct {v3, p0, v4}, Lcom/android/email/SearchText;-><init>(Lcom/android/email/TextSelector;I)V

    invoke-virtual {v1, v2, v3, v5, v6}, Lcom/android/email/IconPopupMenu;->addIcon(ILandroid/view/View$OnClickListener;ILjava/lang/String;)V

    .line 99
    iget-object v1, p0, Lcom/android/email/TextSelector;->mIconPopup:Lcom/android/email/IconPopupMenu;

    const v2, 0x7f0200b1

    new-instance v3, Lcom/android/email/ShareText;

    const v4, 0x7f0801b5

    invoke-direct {v3, p0, v4}, Lcom/android/email/ShareText;-><init>(Lcom/android/email/TextSelector;I)V

    invoke-virtual {v1, v2, v3, v5, v6}, Lcom/android/email/IconPopupMenu;->addIcon(ILandroid/view/View$OnClickListener;ILjava/lang/String;)V

    goto :goto_0
.end method

.method private hide()V
    .locals 2

    .prologue
    .line 128
    const-string v0, "TextSelector"

    const-string v1, "hide : Called."

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    iget-object v0, p0, Lcom/android/email/TextSelector;->mIconPopup:Lcom/android/email/IconPopupMenu;

    if-eqz v0, :cond_0

    .line 138
    iget-object v0, p0, Lcom/android/email/TextSelector;->mIconPopup:Lcom/android/email/IconPopupMenu;

    invoke-virtual {v0}, Lcom/android/email/IconPopupMenu;->hide()V

    .line 141
    :cond_0
    return-void
.end method


# virtual methods
.method public clearSelection()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 105
    const-string v0, "TextSelector"

    const-string v1, "clearSelection : Called."

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    invoke-direct {p0}, Lcom/android/email/TextSelector;->hide()V

    .line 109
    invoke-virtual {p0}, Lcom/android/email/TextSelector;->getTopWindow()Landroid/webkit/WebView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 110
    invoke-virtual {p0}, Lcom/android/email/TextSelector;->getTopWindow()Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->ClearWebTextSelection()V

    .line 112
    :cond_0
    iput v2, p0, Lcom/android/email/TextSelector;->m_nState:I

    .line 113
    iput v2, p0, Lcom/android/email/TextSelector;->m_nChangeCount:I

    .line 114
    return-void
.end method

.method public getTopWindow()Landroid/webkit/WebView;
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lcom/android/email/TextSelector;->mComposerControl:Landroid/webkit/WebView;

    return-object v0
.end method

.method public onSelectionChanged(I)V
    .locals 10
    .parameter "event"

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v6, 0x0

    const-string v7, "TextSelector"

    const-string v5, ", "

    .line 145
    const-string v3, "TextSelector"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onSelectionChanged : Called "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v7, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    packed-switch p1, :pswitch_data_0

    .line 255
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 150
    :pswitch_1
    invoke-direct {p0}, Lcom/android/email/TextSelector;->hide()V

    goto :goto_0

    .line 154
    :pswitch_2
    iput v6, p0, Lcom/android/email/TextSelector;->m_nState:I

    .line 156
    invoke-virtual {p0}, Lcom/android/email/TextSelector;->clearSelection()V

    goto :goto_0

    .line 161
    :pswitch_3
    iput v9, p0, Lcom/android/email/TextSelector;->m_nState:I

    .line 162
    iget v3, p0, Lcom/android/email/TextSelector;->m_nChangeCount:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/android/email/TextSelector;->m_nChangeCount:I

    .line 164
    invoke-direct {p0}, Lcom/android/email/TextSelector;->hide()V

    goto :goto_0

    .line 170
    :pswitch_4
    iget v3, p0, Lcom/android/email/TextSelector;->m_nState:I

    if-eqz v3, :cond_0

    .line 179
    iget v3, p0, Lcom/android/email/TextSelector;->m_nChangeCount:I

    sub-int/2addr v3, v8

    iput v3, p0, Lcom/android/email/TextSelector;->m_nChangeCount:I

    .line 180
    iget v3, p0, Lcom/android/email/TextSelector;->m_nChangeCount:I

    if-gtz v3, :cond_0

    .line 184
    :pswitch_5
    iput v8, p0, Lcom/android/email/TextSelector;->m_nState:I

    .line 185
    if-ne v9, p1, :cond_1

    .line 186
    iput v6, p0, Lcom/android/email/TextSelector;->m_nChangeCount:I

    .line 188
    :cond_1
    invoke-direct {p0}, Lcom/android/email/TextSelector;->createToolTip()V

    .line 190
    invoke-virtual {p0}, Lcom/android/email/TextSelector;->getTopWindow()Landroid/webkit/WebView;

    move-result-object v2

    .line 191
    .local v2, vWebView:Landroid/webkit/WebView;
    if-eqz v2, :cond_0

    .line 192
    invoke-virtual {v2}, Landroid/webkit/WebView;->getWebTextSelectionControls()Landroid/webkit/WebTextSelectionControls;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 194
    invoke-virtual {v2}, Landroid/webkit/WebView;->getWebTextSelectionControls()Landroid/webkit/WebTextSelectionControls;

    move-result-object v3

    invoke-virtual {v3}, Landroid/webkit/WebTextSelectionControls;->getSelectionRect()Landroid/graphics/Rect;

    move-result-object v1

    .line 195
    .local v1, rtSelection:Landroid/graphics/Rect;
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0, v6, v6}, Landroid/graphics/Point;-><init>(II)V

    .line 197
    .local v0, ptPopup:Landroid/graphics/Point;
    const-string v3, "TextSelector"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onSelectionChanged : rtSelection "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v1, Landroid/graphics/Rect;->left:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v1, Landroid/graphics/Rect;->right:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v1, Landroid/graphics/Rect;->top:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v7, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    iget v3, v1, Landroid/graphics/Rect;->left:I

    invoke-virtual {v2}, Landroid/webkit/WebView;->getScrollX()I

    move-result v4

    sub-int/2addr v3, v4

    iput v3, v1, Landroid/graphics/Rect;->left:I

    .line 201
    iget v3, v1, Landroid/graphics/Rect;->right:I

    invoke-virtual {v2}, Landroid/webkit/WebView;->getScrollX()I

    move-result v4

    sub-int/2addr v3, v4

    iput v3, v1, Landroid/graphics/Rect;->right:I

    .line 202
    iget v3, v1, Landroid/graphics/Rect;->top:I

    invoke-virtual {v2}, Landroid/webkit/WebView;->getScrollY()I

    move-result v4

    sub-int/2addr v3, v4

    iput v3, v1, Landroid/graphics/Rect;->top:I

    .line 203
    iget v3, v1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v2}, Landroid/webkit/WebView;->getScrollY()I

    move-result v4

    sub-int/2addr v3, v4

    iput v3, v1, Landroid/graphics/Rect;->bottom:I

    .line 208
    iget v3, v1, Landroid/graphics/Rect;->left:I

    if-gez v3, :cond_2

    iget v3, v1, Landroid/graphics/Rect;->right:I

    if-ltz v3, :cond_4

    :cond_2
    iget v3, v1, Landroid/graphics/Rect;->top:I

    if-gez v3, :cond_3

    iget v3, v1, Landroid/graphics/Rect;->bottom:I

    if-ltz v3, :cond_4

    :cond_3
    iget v3, v1, Landroid/graphics/Rect;->left:I

    invoke-virtual {v2}, Landroid/webkit/WebView;->getWidth()I

    move-result v4

    if-gt v3, v4, :cond_4

    iget v3, v1, Landroid/graphics/Rect;->top:I

    invoke-virtual {v2}, Landroid/webkit/WebView;->getHeight()I

    move-result v4

    if-le v3, v4, :cond_5

    .line 213
    :cond_4
    const-string v3, "TextSelector"

    const-string v3, "onSelectionChanged : Selection is out of secreen."

    invoke-static {v7, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    invoke-direct {p0}, Lcom/android/email/TextSelector;->hide()V

    goto/16 :goto_0

    .line 220
    :cond_5
    const-string v3, "TextSelector"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onSelectionChanged : adjusted rtSelection "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v1, Landroid/graphics/Rect;->left:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v1, Landroid/graphics/Rect;->right:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v1, Landroid/graphics/Rect;->top:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v7, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    iget-object v3, p0, Lcom/android/email/TextSelector;->mIconPopup:Lcom/android/email/IconPopupMenu;

    const/4 v4, -0x1

    invoke-virtual {v3, v1, v4, v2}, Lcom/android/email/IconPopupMenu;->show(Landroid/graphics/Rect;ILandroid/webkit/WebView;)V

    goto/16 :goto_0

    .line 147
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_5
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_1
    .end packed-switch
.end method
