.class Lcom/android/email/activity/MessageView$MediaScannerNotifier;
.super Ljava/lang/Object;
.source "MessageView.java"

# interfaces
.implements Landroid/media/MediaScannerConnection$MediaScannerConnectionClient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/activity/MessageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MediaScannerNotifier"
.end annotation


# instance fields
.field private mConnection:Landroid/media/MediaScannerConnection;

.field private mContext:Landroid/content/Context;

.field private mFile:Ljava/io/File;

.field mHandler:Lcom/android/email/activity/MessageView$MessageViewHandler;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/io/File;Lcom/android/email/activity/MessageView$MessageViewHandler;)V
    .locals 1
    .parameter "context"
    .parameter "file"
    .parameter "handler"

    .prologue
    .line 6044
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6045
    iput-object p1, p0, Lcom/android/email/activity/MessageView$MediaScannerNotifier;->mContext:Landroid/content/Context;

    .line 6046
    iput-object p2, p0, Lcom/android/email/activity/MessageView$MediaScannerNotifier;->mFile:Ljava/io/File;

    .line 6047
    iput-object p3, p0, Lcom/android/email/activity/MessageView$MediaScannerNotifier;->mHandler:Lcom/android/email/activity/MessageView$MessageViewHandler;

    .line 6048
    new-instance v0, Landroid/media/MediaScannerConnection;

    invoke-direct {v0, p1, p0}, Landroid/media/MediaScannerConnection;-><init>(Landroid/content/Context;Landroid/media/MediaScannerConnection$MediaScannerConnectionClient;)V

    iput-object v0, p0, Lcom/android/email/activity/MessageView$MediaScannerNotifier;->mConnection:Landroid/media/MediaScannerConnection;

    .line 6049
    iget-object v0, p0, Lcom/android/email/activity/MessageView$MediaScannerNotifier;->mConnection:Landroid/media/MediaScannerConnection;

    invoke-virtual {v0}, Landroid/media/MediaScannerConnection;->connect()V

    .line 6050
    return-void
.end method


# virtual methods
.method public onMediaScannerConnected()V
    .locals 3

    .prologue
    .line 6053
    iget-object v0, p0, Lcom/android/email/activity/MessageView$MediaScannerNotifier;->mConnection:Landroid/media/MediaScannerConnection;

    iget-object v1, p0, Lcom/android/email/activity/MessageView$MediaScannerNotifier;->mFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaScannerConnection;->scanFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 6054
    return-void
.end method

.method public onScanCompleted(Ljava/lang/String;Landroid/net/Uri;)V
    .locals 2
    .parameter "path"
    .parameter "uri"

    .prologue
    const/4 v1, 0x0

    .line 6058
    if-eqz p2, :cond_0

    .line 6070
    :cond_0
    iget-object v0, p0, Lcom/android/email/activity/MessageView$MediaScannerNotifier;->mConnection:Landroid/media/MediaScannerConnection;

    invoke-virtual {v0}, Landroid/media/MediaScannerConnection;->disconnect()V

    .line 6071
    iput-object v1, p0, Lcom/android/email/activity/MessageView$MediaScannerNotifier;->mContext:Landroid/content/Context;

    .line 6072
    iput-object v1, p0, Lcom/android/email/activity/MessageView$MediaScannerNotifier;->mHandler:Lcom/android/email/activity/MessageView$MessageViewHandler;

    .line 6074
    return-void
.end method
