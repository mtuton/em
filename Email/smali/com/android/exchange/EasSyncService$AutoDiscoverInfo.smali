.class Lcom/android/exchange/EasSyncService$AutoDiscoverInfo;
.super Ljava/lang/Object;
.source "EasSyncService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/exchange/EasSyncService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AutoDiscoverInfo"
.end annotation


# instance fields
.field RedirectPost:Lorg/apache/http/client/methods/HttpPost;

.field bundle:Landroid/os/Bundle;

.field isErrorTagPresent:Z

.field isRedirectTagPresent:Z

.field private mAutoDiscoverRetryCount:I

.field final synthetic this$0:Lcom/android/exchange/EasSyncService;


# direct methods
.method private constructor <init>(Lcom/android/exchange/EasSyncService;)V
    .locals 0
    .parameter

    .prologue
    .line 829
    iput-object p1, p0, Lcom/android/exchange/EasSyncService$AutoDiscoverInfo;->this$0:Lcom/android/exchange/EasSyncService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/exchange/EasSyncService;Lcom/android/exchange/EasSyncService$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 829
    invoke-direct {p0, p1}, Lcom/android/exchange/EasSyncService$AutoDiscoverInfo;-><init>(Lcom/android/exchange/EasSyncService;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/exchange/EasSyncService$AutoDiscoverInfo;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 829
    iget v0, p0, Lcom/android/exchange/EasSyncService$AutoDiscoverInfo;->mAutoDiscoverRetryCount:I

    return v0
.end method

.method static synthetic access$102(Lcom/android/exchange/EasSyncService$AutoDiscoverInfo;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 829
    iput p1, p0, Lcom/android/exchange/EasSyncService$AutoDiscoverInfo;->mAutoDiscoverRetryCount:I

    return p1
.end method

.method static synthetic access$108(Lcom/android/exchange/EasSyncService$AutoDiscoverInfo;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 829
    iget v0, p0, Lcom/android/exchange/EasSyncService$AutoDiscoverInfo;->mAutoDiscoverRetryCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/exchange/EasSyncService$AutoDiscoverInfo;->mAutoDiscoverRetryCount:I

    return v0
.end method
