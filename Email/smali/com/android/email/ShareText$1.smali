.class Lcom/android/email/ShareText$1;
.super Ljava/lang/Object;
.source "TextSelector.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/ShareText;->onItemSelected()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/ShareText;

.field final synthetic val$mBrowserActivity:Landroid/content/Context;

.field final synthetic val$mSelectedText:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/email/ShareText;Ljava/lang/String;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 450
    iput-object p1, p0, Lcom/android/email/ShareText$1;->this$0:Lcom/android/email/ShareText;

    iput-object p2, p0, Lcom/android/email/ShareText$1;->val$mSelectedText:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/email/ShareText$1;->val$mBrowserActivity:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 10
    .parameter "dialog"
    .parameter "item"

    .prologue
    const-string v9, "android.intent.action.SEND"

    const-string v8, "/sdcard/native_browser_share_image.jpg"

    .line 452
    add-int/lit8 p2, p2, 0x1

    packed-switch p2, :pswitch_data_0

    .line 490
    :goto_0
    return-void

    .line 454
    :pswitch_0
    new-instance v4, Landroid/content/Intent;

    const-string v5, "android.intent.action.SEND"

    invoke-direct {v4, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 455
    .local v4, sendText:Landroid/content/Intent;
    const-string v5, "text/plain"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 456
    const-string v5, "android.intent.extra.TEXT"

    iget-object v6, p0, Lcom/android/email/ShareText$1;->val$mSelectedText:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 458
    :try_start_0
    iget-object v5, p0, Lcom/android/email/ShareText$1;->val$mBrowserActivity:Landroid/content/Context;

    iget-object v6, p0, Lcom/android/email/ShareText$1;->val$mBrowserActivity:Landroid/content/Context;

    const v7, 0x7f0801b6

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_2

    .line 463
    :goto_1
    iget-object v5, p0, Lcom/android/email/ShareText$1;->this$0:Lcom/android/email/ShareText;

    iget-object v5, v5, Lcom/android/email/ShareText;->mTextSelector:Lcom/android/email/TextSelector;

    invoke-virtual {v5}, Lcom/android/email/TextSelector;->clearSelection()V

    goto :goto_0

    .line 467
    .end local v4           #sendText:Landroid/content/Intent;
    :pswitch_1
    iget-object v5, p0, Lcom/android/email/ShareText$1;->this$0:Lcom/android/email/ShareText;

    iget-object v5, v5, Lcom/android/email/ShareText;->mTextSelector:Lcom/android/email/TextSelector;

    invoke-virtual {v5}, Lcom/android/email/TextSelector;->getTopWindow()Landroid/webkit/WebView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/webkit/WebView;->getWebTextSelectionControls()Landroid/webkit/WebTextSelectionControls;

    move-result-object v2

    .line 468
    .local v2, selectionControls:Landroid/webkit/WebTextSelectionControls;
    new-instance v1, Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/webkit/WebTextSelectionControls;->getSelectionRect()Landroid/graphics/Rect;

    move-result-object v5

    invoke-direct {v1, v5}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 469
    .local v1, rect:Landroid/graphics/Rect;
    iget-object v5, p0, Lcom/android/email/ShareText$1;->this$0:Lcom/android/email/ShareText;

    iget-object v5, v5, Lcom/android/email/ShareText;->mTextSelector:Lcom/android/email/TextSelector;

    invoke-virtual {v5}, Lcom/android/email/TextSelector;->clearSelection()V

    .line 471
    const-wide/16 v5, 0x3e8

    :try_start_1
    invoke-static {v5, v6}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    .line 476
    :goto_2
    const-string v5, "/sdcard/native_browser_share_image.jpg"

    invoke-virtual {v2, v8, v1}, Landroid/webkit/WebTextSelectionControls;->saveImage(Ljava/lang/String;Landroid/graphics/Rect;)V

    .line 477
    iget-object v5, p0, Lcom/android/email/ShareText$1;->this$0:Lcom/android/email/ShareText;

    new-instance v6, Ljava/io/File;

    const-string v7, "/sdcard/native_browser_share_image.jpg"

    invoke-direct {v6, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v6, v5, Lcom/android/email/ShareText;->mFile:Ljava/io/File;

    .line 478
    new-instance v3, Landroid/content/Intent;

    const-string v5, "android.intent.action.SEND"

    invoke-direct {v3, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 479
    .local v3, sendImage:Landroid/content/Intent;
    const-string v5, "image/jpg"

    invoke-virtual {v3, v5}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 480
    const-string v5, "android.intent.extra.STREAM"

    iget-object v6, p0, Lcom/android/email/ShareText$1;->this$0:Lcom/android/email/ShareText;

    iget-object v6, v6, Lcom/android/email/ShareText;->mFile:Ljava/io/File;

    invoke-static {v6}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 482
    :try_start_2
    iget-object v5, p0, Lcom/android/email/ShareText$1;->val$mBrowserActivity:Landroid/content/Context;

    iget-object v6, p0, Lcom/android/email/ShareText$1;->val$mBrowserActivity:Landroid/content/Context;

    const v7, 0x7f0801b6

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_2
    .catch Landroid/content/ActivityNotFoundException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0

    .line 484
    :catch_0
    move-exception v5

    goto/16 :goto_0

    .line 472
    .end local v3           #sendImage:Landroid/content/Intent;
    :catch_1
    move-exception v0

    .line 473
    .local v0, e:Ljava/lang/InterruptedException;
    const-string v5, "ShareText"

    const-string v6, "Thread.sleep Interrupted"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 460
    .end local v0           #e:Ljava/lang/InterruptedException;
    .end local v1           #rect:Landroid/graphics/Rect;
    .end local v2           #selectionControls:Landroid/webkit/WebTextSelectionControls;
    .restart local v4       #sendText:Landroid/content/Intent;
    :catch_2
    move-exception v5

    goto :goto_1

    .line 452
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
